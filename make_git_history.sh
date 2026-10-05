#!/bin/bash
# Run from the repo root AFTER git init. Creates traceable commits so
# "what the AI proposed" and "what we decided" stay separable.
git add wbs_v1_ai_first_draft.md
git commit -m "Lab 3: AI first-draft WBS (raw model output)"
git add wbs_v2_reconciled.md
git commit -m "Lab 3: reconcile WBS against brief (remove invented payments, add omitted tasks)"
git add Lab03_Backlog.xlsx
git commit -m "Lab 3: backlog with MoSCoW, defences, local gap, prompt ledger"
git add .
git commit -m "Lab 3: activities, graded tasks, docs"
