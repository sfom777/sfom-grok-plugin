## Add `sfom-ai` — creator analytics for Instagram, TikTok and YouTube

**What it is.** An MCP server (`https://www.sfom.ai/api/mcp`) plus three skills and a `/vet-creator` command that give Grok measured creator analytics for brands and agencies: median views per post over 180 days, engagement by views, reach per follower, the creator's own-norm multiple, video breakdowns, niche trends and TikTok fake-view checks. Numbers are read from public posts — nothing estimated.

**Category.** `marketing` — the catalog has ads (omneky) and an AI marketer (helena) but no creator / influencer data source yet.

**Source.** Remote, pinned: `https://github.com/sfom777/sfom-grok-plugin.git` @ the SHA in the entry. MIT.

**Auth.** `X-API-Key` header from the `SFOM_API_KEY` environment variable (see `.mcp.json`); free key, no card, at https://www.sfom.ai/register?source=grok. A `?key=` query fallback exists for clients that cannot send headers.

**Tested.** Installed locally and exercised `get_creator_report`, `get_trend_report`, `get_video_report` through the MCP endpoint; testing steps for reviewers are in the README.

**Homepage.** https://www.sfom.ai/grok
