---
name: creator-vetting
description: Vet an Instagram, TikTok or YouTube creator before paying them — measured median views, engagement by views, reach per follower, how often they beat their own norm, and a CPM from the user's budget. Use when the user asks whether a creator is worth it, how much to pay, whether followers are real, or wants to compare or shortlist creators.
---

# Creator vetting with SFOM.AI

You have the SFOM.AI MCP tools. They return **measured** numbers read from the
creator's public posts, not estimates. Never invent a creator statistic: if a
tool returns nothing, say the creator is not in the index yet and offer to pull
them (the tool does that on demand for the key owner's plan).

## Which tool

| User asks | Call |
|---|---|
| "Is @x worth paying / how good is @x" | `get_creator_report` (platform, handle without @) |
| "Compare @a and @b" | `compare_creators` (same platform) |
| "Find beauty creators over 100k" | `search_creators` (query, platform?, min_followers?) |
| "What did @x post lately" | `get_latest_posts` |
| "Are these TikTok views real" | `check_authenticity` (TikTok video id) |

If the user pastes a profile URL, extract the handle and the platform from it.

## How to read the report

Lead with the numbers a buyer decides on, in this order:

1. **Median views per post (180 days)** — what a typical post reaches. This is
   the denominator of everything. Not the best post, not the average.
2. **Reach per follower** = median views ÷ followers. Instagram median is about
   0.55; above 1 means the platform pushes the account past its own audience;
   under 0.2 means the follower count has run far ahead of the real audience.
3. **Engagement by views** = (likes + comments) ÷ views. Across 1,347 measured
   creators the median is 3.0%; above 4.7% is the top quarter. Do not judge by
   engagement ÷ followers — it punishes big accounts for reach, not quality.
4. **Own-norm multiple** — how far recent posts run above or below the
   creator's own median (×1.0 = a normal week, ×3 = something is working). Use
   it to say whether the account is rising, flat or fading right now.
5. **Cadence and last breakout** — posts per week, and when they last beat
   their norm. A long gap is an early warning before followers drop.

## CPM from the user's budget

If the user names a fee or budget: `CPM = fee ÷ (median views ÷ 1000)`. State it
plainly ("$1,500 for a 60k-median account is a $25 CPM") and compare with what
they pay for paid social for the same audience. A creator CPM above paid-social
CPM needs a reason: a format you cannot run as an ad, usage rights, or a
documented outperformance history.

## Output shape

- A one-line verdict first (worth it / worth it at a lower fee / skip), then
  the five numbers, then the reasoning. Keep it under 150 words unless asked.
- Always include the handle and platform you measured and the sample size the
  tool reports (how many posts). Never round a measured number into a claim
  the tool did not make.
- If the account's audience signals look mass-followed (follower/following
  ratio near or below 1) say so and recommend a smaller test deal.
- Offer the public report link for sharing:
  `https://www.sfom.ai/report/creator/<platform>/<handle>`.
