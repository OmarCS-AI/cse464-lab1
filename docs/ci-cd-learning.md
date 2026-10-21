# CI/CD Learning Notes

## Goal
Practice a small CI/CD workflow using GitHub Actions and Docker without changing an active capstone repository.

## What the pipeline does
1. GitHub Actions starts automatically for pull requests to `main` and pushes to `main`.
2. The workflow checks out the repository on an Ubuntu runner.
3. Docker builds an Alpine-based image containing the project files.
4. The container runs `scripts/validate.sh`.
5. The validation script checks that the required project documentation exists and contains expected sections.
6. A second job runs only after validation succeeds and confirms that the project is ready for delivery.

## Why I structured it this way
I wanted the pipeline to do something specific to this repository rather than only print a test message. The validation step checks files that are part of this project, while Docker makes the test environment repeatable. Splitting the workflow into `build-and-test` and `delivery-check` also helped me understand job dependencies with `needs`.

## What I learned
- YAML indentation matters because it defines the workflow structure.
- A Dockerfile creates a repeatable environment for the validation command.
- Pull-request triggers let automated checks run before changes are merged.
- The `needs` setting prevents the delivery step from running unless the build-and-test job succeeds.
- Small automated checks can catch missing or incomplete files before code reaches the main branch.
