# Lab 3 - Solved Lab Activities (Planning with AI)

Scenario: Campus Event Management System. Students browse events, register, and get reminders; admins add and remove events.

## Activity 1: Draft the module breakdown
**Prompt:**
```
Act as a software project planner. Break the Campus Event Management System into 4-6 modules. For each module list 3-5 concrete engineering tasks. Give the result as a nested list.
```
**Result:** Five modules: Auth & Accounts, Event Catalogue, Registration, Reminders, Admin Console.
**Gaps found and added by hand:** session-token handling (Auth) and cancel registration (Registration).

## Activity 2: See the corrected breakdown as a whole
```
Campus Event Management System
|-- Auth & Accounts: login, roles, session tokens (added)
|-- Event Catalogue: data model, browse list, search/filter
|-- Registration: register, capacity check, cancel (added), my registrations
|-- Reminders: scheduling, delivery
`-- Admin Console: add event, remove event, notify on removal
```
Finding: the first draft treated Reminders as one afterthought task, although the brief names reminders explicitly. The tree makes that gap visible; a flat list hides it.

## Activity 3: Reshape into user stories and prioritise
**Prompt:**
```
Rewrite these tasks as user stories in the format 'As a <role>, I want <goal> so that <benefit>.' Then apply MoSCoW prioritisation (Must, Should, Could, Won't) to each, with a one-line justification per label.
```
- "As a student, I want to cancel my registration so that my spot frees up for someone else." -> **Must** (otherwise the registration count drifts from reality).
- "As an admin, I want to export attendance to CSV so that I can report numbers." -> **Could** (useful, but the system works without it at launch).

## Activity 4: Poke holes on purpose
**Prompt:** `What did you miss? List risks and gaps in this backlog.`
**Gap found:** no story covers an event being cancelled after students have already registered. Added as a backlog item (US-12).

## My own run (fill in)
- Date/time of session:
- Tool used (Claude / ChatGPT / Gemini / Copilot):
- Real output notes:
