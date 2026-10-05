# Lab 3 - Graded Lab Tasks (10 marks)

## Task 1 (3 marks): Reconciled work-breakdown structure
Every row traces to a quoted brief phrase or is tagged ADDED with a reason.

| Module | Task | Brief phrase / tag | ADDED reason |
|--------|------|--------------------|--------------|
| 1 Auth & Accounts | 1.1 Account creation and login | ADDED | Brief never mentions accounts, but students and admins must be told apart |
| | 1.2 Role-based access (student/admin) | "admins add and remove events" | |
| | 1.3 Session-token handling | ADDED | Omitted by the model; needed by every logged-in feature |
| 2 Event Catalogue | 2.1 Event data model (title, date, venue, capacity) | "browse events" | |
| | 2.2 Event listing / browse page | "students browse events" | |
| | 2.3 Search and filter | ADDED | Browsing becomes unusable as the list grows |
| 3 Registration | 3.1 Register for an event | "register" | |
| | 3.2 Seat-capacity check | ADDED | Prevents over-booking |
| | 3.3 Cancel a registration | ADDED | Omitted by the model; counts drift without it |
| | 3.4 View my registrations | ADDED | Students need to see their sign-ups |
| 4 Reminders | 4.1 Reminder scheduling | "get reminders" | |
| | 4.2 Reminder delivery | "get reminders" | |
| 5 Admin Console | 5.1 Add an event | "admins add ... events" | |
| | 5.2 Remove an event | "admins ... remove events" | |
| | 5.3 Notify registered students on removal | ADDED | Removal after registration leaves students uninformed |

**Invented task (quoted as the model produced it):**
> "Payment Gateway Integration: integrate Stripe/JazzCash so students can purchase tickets for paid events."

The brief says nothing about payments, prices or tickets. The model over-read "register for events" as "buy a ticket".

**Omitted by the model:** session-token handling; cancel registration; Reminders as its own module.

## Task 2 (3 marks): Backlog (at least 10 stories)

| ID | User story | MoSCoW | Justification |
|----|-----------|--------|---------------|
| US-01 | As a student, I want to log in so that I can use personalised features. | Must | Nothing works without identity |
| US-02 | As a student, I want to browse upcoming events so that I can find ones I like. | Must | Core purpose |
| US-03 | As a student, I want to register for an event so that I secure a place. | Must | Core purpose |
| US-04 | As a student, I want to cancel my registration so that my spot frees up for someone else. | Must | Counts drift otherwise |
| US-05 | As a student, I want a reminder before an event so that I do not forget. | Must | Explicit in the brief |
| US-06 | As an admin, I want to add an event so that students can register for it. | Must | Without events the system is empty |
| US-07 | As an admin, I want to remove an event so that cancelled events disappear. | Must | Explicit in the brief |
| US-08 | As a student, I want to view my registrations so that I can see my schedule. | Should | Confirmation message covers launch |
| US-09 | As a student, I want a waitlist for full events so that I get a seat if someone cancels. | Should | Improves fairness, not essential |
| US-10 | As a student, I want to choose my reminder channel so that I get alerts where I prefer. | Could | Default channel is enough |
| US-11 | As an admin, I want to edit an event so that I can fix mistakes. | Should | Workaround: remove and re-add |
| US-12 | As a student, I want to be told when an event I registered for is cancelled so that I do not travel for nothing. | Should | Closes the cancellation gap |
| US-13 | As an admin, I want to export attendance to CSV so that I can report numbers. | Could | Not needed for launch |
| US-14 | As a student, I want to pay for tickets online so that I can join paid events. | Won't | Not in the brief; the model's invented task |
| US-15 | As an admin, I want slots blocked during Friday prayer and adjusted for Ramadan timings so that events never clash with campus hours. | Should | Local campus rule (Task 3) |

**Three defended Must labels:**
1. **US-04 (Must) vs US-09 (Should):** without cancelling, the seat count can never go back up, so data goes wrong the first time anyone changes their mind. A waitlist only improves fairness on full events.
2. **US-05 (Must) vs US-10 (Could):** reminders are named in the brief, so one default reminder must ship. Choosing the channel is an enhancement on a working reminder.
3. **US-06 (Must) vs US-11 (Should):** with no way to add events there is nothing to browse or register for. Editing can be worked around by removing and re-adding.

## Task 3 (2 marks): A gap the model cannot see
**Requirement:** "Events must not be scheduled during the Friday congregational prayer window, and allowed event hours must change during Ramadan to follow the campus timetable."
**Why no model could produce it:** the exact prayer window and Ramadan timetable are local facts about my campus that appear nowhere in the brief.
**Backlog row:** US-15, Should.
> Replace this with a requirement that is genuinely true for your campus.

## Task 4 (2 marks): Honest prompt ledger
> Replace with your real prompts. Keep at least two failed or superseded attempts.

| # | Prompt | Result | What I changed and why |
|---|--------|--------|------------------------|
| 1 | "Plan a campus event system." | Failed: vague, generic essay | Added role, output shape, module count |
| 2 | "Act as a software project planner. Break the Campus Event Management System into 4-6 modules..." | Superseded: invented a payment task, skipped session tokens and cancel | Reconciled by hand; banned inventing tasks |
| 3 | "Same as before, but only include tasks supported by this brief: [brief]. Mark additions as ADDED." | Better: no payment task, additions labelled | Moved on to stories |
| 4 | "Rewrite these tasks as user stories ... apply MoSCoW with a justification per label." | Worked but labelled almost everything Must | Asked for justifications and argued by hand |
| 5 | "What did you miss? List risks and gaps in this backlog." | Found the cancelled-after-registration gap | Added US-12 |

## Take-home
Plan a small app idea of your own with the same flow, then write a short note: was the assistant more or less useful with less obvious context, and when should you plan first and consult the model second?
