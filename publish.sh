#!/usr/bin/env bash
# Публикация плагина SFOM.AI для Grok — ТРИ ШАГА, каждый можно запускать отдельно.
# Нужен залогиненный `gh` (gh auth status). Запускать из этой папки.
set -euo pipefail
cd "$(dirname "$0")"

step="${1:-all}"

if [[ "$step" == "repo" || "$step" == "all" ]]; then
  echo "== 1/3 Публичный репозиторий sfom777/sfom-grok-plugin и push"
  gh repo create sfom777/sfom-grok-plugin --public --source=. --remote=origin \
    --description "SFOM.AI for Grok — measured Instagram, TikTok and YouTube creator analytics as an MCP plugin (creator vetting, video breakdowns, niche trends, fake-view checks)" \
    --push
fi

if [[ "$step" == "pr" || "$step" == "all" ]]; then
  echo "== 2/3 PR в каталог xai-org/plugin-marketplace"
  SHA=$(git rev-parse HEAD)
  WORK=$(mktemp -d)
  gh repo fork xai-org/plugin-marketplace --clone --remote=false -- "$WORK/plugin-marketplace" >/dev/null
  cd "$WORK/plugin-marketplace"
  git checkout -q -b add-sfom-ai
  python3 - "$SHA" "$OLDPWD/docs/marketplace-entry.json" <<'PY'
import json,sys
sha, entry_path = sys.argv[1], sys.argv[2]
p = ".grok-plugin/marketplace.json"
d = json.load(open(p)); entry = json.load(open(entry_path)); entry["source"]["sha"] = sha
d["plugins"] = [x for x in d["plugins"] if x.get("name") != "sfom-ai"] + [entry]
json.dump(d, open(p, "w"), indent=2, ensure_ascii=False); open(p, "a").write("\n")
PY
  python3 scripts/generate-plugin-index.py
  python3 scripts/validate-catalog.py
  git add -A
  git commit -q -m "Add sfom-ai: creator analytics for Instagram, TikTok and YouTube (MCP + skills)"
  git push -q -u origin add-sfom-ai
  gh pr create --repo xai-org/plugin-marketplace --title "Add sfom-ai: creator analytics for Instagram, TikTok and YouTube" --body-file "$OLDPWD/docs/pr-body.md"
  cd "$OLDPWD"
fi

if [[ "$step" == "form" || "$step" == "all" ]]; then
  echo "== 3/3 Форма Grok Bot (вручную): https://x.ai → Grok Bot → Submit a plugin"
  echo "   Репозиторий: https://github.com/sfom777/sfom-grok-plugin"
  echo "   Логотип 1:1: assets/logo.png · Описание и инструкция теста: docs/listing.md и README.md"
  echo "   Шаблоны ботов (Creator Vetting Desk, Influencer Shortlist): docs/listing.md"
fi
