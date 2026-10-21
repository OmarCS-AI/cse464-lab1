# Professional Git Workflow Notes

## Purpose
This guide records the workflow practiced in this repository and explains why each step is useful in team software development.

## 1. Keep `main` stable
The `main` branch represents the stable version of the project. New work should be developed separately so incomplete changes do not immediately affect the main project.

## 2. Create a focused feature branch
For this practice project, the work was completed on `feature/professional-git-workflow`. A descriptive branch name makes the purpose of the work clear to teammates.

## 3. Make small, descriptive commits
Instead of putting every change into one large commit, the project uses separate commits for documentation and the task tracker. Smaller commits make history easier to understand and review.

## 4. Review the branch through a pull request
A pull request provides a place to compare the feature branch with `main`, summarize the purpose of the change, and review what will be merged.

## 5. Merge after review
After checking the changed files, the feature branch can be merged back into `main`. The result is a traceable history showing what changed and how the work moved through the workflow.

## What I learned from the workflow
The most important idea is that Git is more than saving versions of files. Branches, commits, and pull requests create a structured collaboration process. A clear history makes it easier to understand changes, recover from mistakes, and work with other developers without overwriting each other's work.
