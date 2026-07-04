# EduForU — Requirements Discovery

> Draft based on initial brainstorming. Sections marked **TBD** need your validation.

## Positioning (one sentence)

**EduForU helps Arabic-speaking high school students in MENA learn coding through a personalized learning path — with tutors on a marketplace when they get stuck — instead of drowning in English-only YouTube tutorials with no clear progression.**

---

## Core triangle

| | Draft answer |
|---|---|
| **WHO** | Arabic-speaking high school students (14–18) in MENA learning to code (secondary: coding tutors on the marketplace) |
| **OUTCOME** | Go from “I want to learn programming” to building real projects with a clear weekly plan |
| **MECHANISM** | Coding diagnostic → personalized Arabic learning path → book a tutor when stuck |
| **INSTEAD OF** | English-only YouTube, random Udemy courses, WhatsApp tutor referrals with no structure |

---

## Worksheet answers

### 1. Primary user
**High school student (14–18), Arabic-speaking, in MENA** — motivated to learn coding (Python, web basics, etc.) but overwhelmed by unstructured English resources.

> Note: Marketplace model means **tutors/creators are a critical secondary user**. They supply paths, courses, and 1:1 sessions. Learner experience comes first; supply follows demand.

### 2. Their #1 painful job
**“I don’t know what to study next or if I’m on the right track.”**

Related pains to validate in interviews:
- Overwhelmed by too many free resources (YouTube, etc.)
- Courses don’t match their level or regional context (curriculum, language, exam systems)
- No accountability or progress signal
- Hard to find a trustworthy tutor when they get stuck

### 3. Success in 30 days
Learner can articulate:
- Their goal (e.g. “build a simple game”, “learn Python basics”, “prep for a coding club/competition”)
- A week-by-week Arabic plan tailored to their diagnostic results
- Measurable progress (lessons completed, coding exercises passed, maybe a small project started)
- Booked at least one tutor session when stuck (marketplace)

**Suggested v1 metric:** Week-2 retention (% who return after first week on their path).

### 4. Current workaround
- YouTube + Google for free content
- Global platforms (Coursera, Udemy, Khan) — often English-first, not MENA-contextual
- Private tutors via WhatsApp / referrals — no structured path
- School/university materials — not personalized to individual gaps

### 5. Why they’d switch
- **Personalized path** — not a 40-hour generic course when they only need 3 topics
- **MENA-relevant** — language, curriculum, local exams, cultural context
- **Design-led UX** — your edge: clarity and motivation, not another cluttered LMS
- **Human backup** — when stuck, book a tutor who sees their path and gaps (marketplace)

### 6. Who pays
**Marketplace model:**
- **Learners** pay for premium paths, courses, or tutor sessions
- **Platform** takes a transaction fee (e.g. 10–20% — **TBD**)
- **Tutors/creators** may pay for visibility or tools later (**TBD** — not v1)

Open question: Is there a free tier (basic diagnostic + limited path) to drive acquisition?

### 7. Your wedge
**Product / UX design** applied to **personalized STEM paths for MENA**.

You’re not competing on content volume (Khan has more). You’re competing on:
- Clarity of “what should I do today?”
- Feeling made *for them* (level, goal, region)
- Smooth handoff to a human when AI/path isn’t enough

### 8. v1 scope (one sentence)
> “The first version gives an Arabic-speaking high school student a coding diagnostic, a personalized multi-week learning path in Arabic, and the ability to book a coding tutor when they get stuck.”

### 9. Explicitly NOT v1
- Full school/LMS admin (grades, attendance, class rosters)
- All subjects — STEM only
- Corporate L&D / team training
- Video hosting platform (use embeds or Zoom links)
- AI tutor chat as core (**could** be v2)
- Global expansion beyond MENA
- Mobile native apps (responsive web is enough)
- White-label for academies

### 10. Geography & language
- **Primary market:** MENA
- **Language:** **Arabic-first** (UI, path content, diagnostic). English coding terms OK where standard.
- **Payments:** **TBD** — local methods (Mada, etc.), who pays (student vs parent)
- **Curriculum alignment:** Self-paced coding paths (not tied to national school curriculum for v1)

---

## User roles (v1)

| Role | Priority | Core jobs |
|------|----------|-----------|
| **Learner** | Primary | Onboard → diagnostic → follow path → track progress → book tutor |
| **Tutor / creator** | Secondary (supply) | Create profile → list offerings → deliver sessions → get paid |
| **Parent** | Out of v1 | — |
| **School admin** | Out of v1 | — |

---

## Functional requirements (draft MoSCoW)

### Must have (v1)
- [ ] Learner sign-up / sign-in
- [ ] Goal selection (e.g. “improve math”, “learn Python”, “exam prep”)
- [ ] Diagnostic assessment (adaptive or fixed — **TBD**)
- [ ] Generated learning path (ordered steps: topics, resources, practice)
- [ ] Progress tracking (completion, scores)
- [ ] Tutor marketplace listing (search/filter by subject, price, rating)
- [ ] Session booking + payment (marketplace transaction)
- [ ] Basic tutor profile and availability

### Should have (v1 if time)
- [ ] Email/SMS reminders (continue your path)
- [ ] Arabic RTL support
- [ ] Tutor sees learner’s path/gaps before session
- [ ] Reviews/ratings for tutors

### Could have (v2)
- [ ] AI-generated explanations or practice questions
- [ ] Cohort / group study
- [ ] Certificates or skill badges
- [ ] Parent progress view
- [ ] Creator-uploaded mini-courses

### Won’t (v1)
- See “Explicitly NOT v1” above

---

## Non-functional requirements (draft)

| Area | Draft |
|------|-------|
| **Platform** | Web-first, responsive |
| **Tenancy** | Multi-tenant SaaS (many learners + many tutors) |
| **Security** | Auth, payment PCI via provider (Stripe/HyperPay/etc.), encrypt PII |
| **Scale (launch)** | Hundreds of users — optimize for learning, not hyperscale |
| **Availability** | Standard SaaS; no hard 99.99% requirement at launch |
| **Localization** | RTL-ready architecture even if v1 ships EN-first |

---

## Resolved decisions

| Decision | Choice |
|----------|--------|
| Primary user | High school learner (14–18) |
| Subject v1 | Coding / programming |
| Region | MENA |
| Language | Arabic-first |
| Business model | Marketplace (transaction fee) |
| Personalization | Diagnostic → learning path |
| Your wedge | Design / UX |

## Open questions (resolve before building)

1. **First coding track?** Python basics vs web (HTML/CSS/JS) vs “build a game” — pick ONE path template for v1.
2. **Who pays?** Student directly, or parent/guardian (likely for high school — affects checkout UX).
3. **Chicken-and-egg:** Recruit ~10 Arabic-speaking coding tutors manually before launch?
4. **Diagnostic depth:** 5-minute quiz vs 20-minute hands-on coding challenge?
5. **Path content:** Curated free resources in Arabic, original micro-lessons, or tutor-created?
6. **Minor safety:** COPPA-style consent, parent email for accounts under 18?
7. **Payments:** HyperPay, Tap, Stripe — which supports your launch country?

---

## Validation plan (before code)

- [ ] Interview 5 STEM learners in MENA — confirm job #1 and willingness to pay
- [ ] Interview 3 tutors — would they join? What fee is acceptable?
- [ ] Map 2–3 competitors (local + global) — what’s table stakes?
- [ ] Pick ONE coding track for v1 path template (Python recommended — most beginner-friendly)
- [ ] Talk to 3 high school students in MENA who tried learning to code — what made them quit?

---

## Next step

Pick **first coding track** (Python vs web vs game-building) and **who pays** (student vs parent). Those two decisions unlock UX flows and payment design.
