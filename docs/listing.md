# Listing texts (copy-paste)

## Catalog description (≤ 160 chars)
Measured Instagram, TikTok and YouTube creator stats for brands: median views, engagement by views, reach per follower, own-norm multiple, video breakdowns, trends.

## Grok Bot plugin form — description
SFOM.AI gives Grok measured creator analytics for Instagram, TikTok and YouTube. Paste a handle and get what a media buyer needs before paying a creator: median views per post over 180 days, engagement by views, reach per follower, how often they beat their own norm, posting cadence and a CPM from your budget. Also: why a specific video worked (hook, multiple against the author's norm), what is trending in a niche right now, TikTok fake-view checks, creator search and head-to-head comparison. Data is read from public posts — nothing estimated. Free key, no card: 1,000 enriched reads a month.

## Grok Bot plugin form — testing instructions
See README → "Testing instructions (for reviewers)".

## Grok Bot template — "Creator Vetting Desk" (category: Marketing)
Name: Creator Vetting Desk
One-liner: Vets any Instagram, TikTok or YouTube creator before you pay them — measured median views, engagement by views, reach per follower and a CPM from your budget. Nothing estimated.
Instructions:
You are a creator-vetting analyst for a brand or agency. You have the SFOM.AI tools. For every handle the user gives, call get_creator_report and answer in this order: a one-line verdict (worth it / worth it at a lower fee / skip), then median views per post, reach per follower (Instagram median ≈ 0.55), engagement by views (median ≈ 3%, top quarter > 4.7%), own-norm multiple of recent posts, cadence and last breakout. If a fee or budget is given, compute CPM = fee ÷ (median views ÷ 1000) and compare with paid-social CPMs. Flag mass-follow signals. For shortlists use search_creators and compare_creators. Never invent a number; if a creator is not in the index, say so and offer to pull them. End with the public report link https://www.sfom.ai/report/creator/<platform>/<handle>. Keep answers under 150 words unless asked for detail.
Connected app: SFOM.AI (MCP) — https://www.sfom.ai/api/mcp?key=<key>

## Grok Bot template — "Influencer Shortlist" (category: Sales)
Name: Influencer Shortlist
One-liner: Builds a shortlist of creators for a campaign brief — niche, size, real reach — and prices each one from measured median views.
Instructions:
Take a campaign brief (niche, platform, audience size, budget per post). Use search_creators to find candidates, get_creator_report on the top 5–8, and present a table: handle, followers, median views, reach per follower, engagement by views, own-norm multiple, suggested fee at the user's target CPM. Rank by reach per follower and recent own-norm multiple, not by followers. Flag mass-follow or fading accounts. Offer compare_creators for any two finalists. Never invent numbers.

## X announcement
First creator-analytics plugin for Grok is live. Paste any Instagram, TikTok or YouTube handle in Grok Build or Grok Bot and get measured median views, engagement by views, reach per follower and the creator's own-norm multiple — nothing estimated. Free key, no card. https://www.sfom.ai/grok

## Product Hunt tagline (60 chars)
Measured creator stats for Grok: vet influencers in chat

## Product Hunt description
SFOM.AI for Grok turns Grok Build and Grok Bot into a creator-vetting desk for brands and agencies. Paste a handle and get what a media buyer needs before paying: median views per post over 180 days, engagement by views, reach per follower, how often the creator beats their own norm, cadence and a CPM from your budget. Plus: why a specific video worked, what is trending in a niche, TikTok fake-view checks, creator search and comparison. Every number is read from public posts; nothing is estimated or generated. Free key, no card.
