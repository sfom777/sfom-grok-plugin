# SFOM.AI for Grok — creator analytics

Measured Instagram, TikTok and YouTube creator stats inside Grok: median views,
engagement by views, reach per follower, the creator's **own-norm multiple**,
video breakdowns, niche trends and TikTok fake-view checks. Built for brands and
agencies deciding who to pay. Numbers are read from public posts — nothing is
estimated or generated.

- Website: https://www.sfom.ai · Plugin page: https://www.sfom.ai/grok
- Free API key (no card): https://www.sfom.ai/register?source=grok
- MCP endpoint: `https://www.sfom.ai/api/mcp` (JSON-RPC 2.0, Streamable HTTP)

## What's inside

| Component | What it does |
|---|---|
| MCP server `sfom-ai` | 11 tools: `get_creator_report`, `compare_creators`, `search_creators`, `get_latest_posts`, `get_video_report`, `check_authenticity`, `get_trend_report`, `my_accounts`, `my_analytics`, `my_latest_posts`, `social_query` |
| Skill `creator-vetting` | How to read a creator report like a media buyer; CPM from a budget |
| Skill `video-breakdown` | Why a video worked, measured against its author's own norm |
| Skill `niche-trends` | What is working in a niche right now, with real hooks |
| Command `/vet-creator` | `/vet-creator instagram @handle 1500` |

## Install

1. Get a free key at https://www.sfom.ai/register?source=grok → Settings → API.
   Keys look like `vmx_…`. The free tier covers 1,000 enriched reads a month.
2. **Grok Build**: add the plugin from the marketplace (search "SFOM.AI"), then
   set the environment variable `SFOM_API_KEY` to your key.
3. **Grok Bot / any MCP client** (no environment variables): connect the server
   by URL with the key as a query parameter —
   `https://www.sfom.ai/api/mcp?key=vmx_…` — or send it as the `X-API-Key`
   header. Keys are revocable in Settings → API.

## Try it

- "Is @builtwithtools on Instagram worth $1,500 a post?"
- "Compare @a and @b on TikTok for a skincare campaign."
- "Why did this Reel work: https://www.instagram.com/reel/…"
- "What is working in real estate Reels this week?"
- "Find fitness creators over 100k followers with real reach."

## Testing instructions (for reviewers)

1. Create a free account at https://www.sfom.ai/register?source=grok and copy
   an API key from Settings → API.
2. Install the plugin; set `SFOM_API_KEY` (Grok Build) or connect
   `https://www.sfom.ai/api/mcp?key=<your key>` (Grok Bot).
3. Ask: "Is @builtwithtools on Instagram worth paying $1,500 a post?" — the
   reply should quote measured median views, reach per follower, engagement by
   views and a CPM, and link to
   https://www.sfom.ai/report/creator/instagram/builtwithtools.
4. Ask: "What is trending in beauty right now?" — the reply should list real
   videos with views, the views÷followers coefficient and hooks.

## Privacy and data

The MCP server receives the handle, video id or niche you ask about and your
API key. It reads public posts only; it never asks for your Instagram, TikTok
or YouTube password. Usage is metered against your SFOM.AI plan. Terms:
https://www.sfom.ai/terms · Privacy: https://www.sfom.ai/privacy

## Pricing

Free: 1,000 enriched reads a month, one key. Paid plans add on-demand analysis
of creators not yet in the index, more keys and higher limits —
https://www.sfom.ai/developers.

## License

MIT for the plugin files in this repository. The SFOM.AI service is governed by
its own terms.
