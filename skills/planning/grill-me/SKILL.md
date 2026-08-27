---
name: grill-me
description: "Challenge a plan or proposal with adversarial reasoning to expose hidden assumptions, missing edge cases, and weak decision points."
version: 1.0.0
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [planning, reasoning, critique, validation, risk]
---

# Grill Me

Use this skill when the user wants a plan stress-tested before execution. The goal is not to be negative; it is to pressure-test the idea before you commit to it.

## Objective

Examine the proposed plan, architecture, or decision. Identify:
- hidden assumptions
- unclear dependencies
- missing validation steps
- likely failure modes
- trade-offs and alternatives
- what would make the plan brittle or too optimistic

## Output format

Return:
1. A one-paragraph summary of the plan
2. A concise list of assumptions being made
3. The hardest questions that should be answered before moving forward
4. The top 3 risks or failure modes
5. A better version of the plan, if needed
6. A recommended next step to keep the plan safe and actionable

## Rules

- Be direct but constructive
- Ask difficult questions early
- Prefer concrete risk signals over generic caution
- If evidence is missing, call it out explicitly
- If a simpler plan is safer, recommend it
