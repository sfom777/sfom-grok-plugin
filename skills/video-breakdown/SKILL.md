---
name: video-breakdown
description: Explain why a specific Instagram Reel, TikTok or YouTube Short performed — views against the creator's own norm, hook, engagement, virality — and how to reproduce the format. Use when the user pastes a video link or asks why a video went viral or whether a sponsored post underperformed.
---

# Video breakdown with SFOM.AI

Call `get_video_report` with the platform and the video id taken from the
link (`/reel/<id>`, `/p/<id>`, `/video/<id>`, `/shorts/<id>`). For TikTok, add
`check_authenticity` when the user doubts the views.

Read the report in this order:

1. **Views as a multiple of the author's own median.** This is the headline. A
   12M-follower account doing ×1.2 had a normal week; an 8k account doing ×20
   found a format. Never rank by raw views.
2. **Hook** — the opening line the report quotes. Name the mechanism
   (contradiction, open loop, number, direct address, mid-action start,
   reveal, confession) and say why it fits the niche.
3. **Engagement by views** vs the platform median of about 3%, and the
   views÷followers coefficient (how far it travelled beyond the audience).
4. **Fake-view signal** (TikTok): report the percentage and the risk level the
   tool returns; do not speculate beyond it.

For "did my sponsored post flop because of the brand integration?": compare
the sponsored post's own-norm multiple with the creator's organic posts from
the same month (`get_latest_posts`). If both are low, the account was fading;
if only the sponsored one is low, the integration cost reach.

End with two or three concrete, reproducible instructions ("open on the number,
cut before second two, caption mirrors the spoken hook"), never "post
consistently". Share link: `https://www.sfom.ai/report/video/<platform>/<id>`.
