---
layout: default
title: Engineers Checklist
nav_order: 2
has_children: false
parent: Welcome
---
# Customer Delivery Fundamentals Checklist

This checklist helps to ensure that our projects meet our Engineering Fundamentals.

## Source Control

- [ ] A clear responsibility for the main branch has been established in the team (we recommend only merging through pull-requests)
- [ ] There is a clear concensus on how to write commit-messages (see our recommendations under [Source Control](../../SourceControlDetails#write-good-commit-messages) for more details)
- [ ] Commit history is consistent and commit messages are informative.
- [ ] Secrets are never part of the commit history or made public.
- [ ] Public repositories follow the [OSS guidelines](source-control/readme.md#creating-a-new-repository), see `Required files in default branch for public repositories`.

More details on [Source Control](source-control/readme.md)

## Work Item Tracking

- [ ] All items are tracked in AzDevOps (or similar).
- [ ] Work items should be uniquely identifiable in some way (usually a number or identifier)
- [ ] Who works on which items should be visualised and obvious to the team.

## Testing

- [ ] Unit tests cover as much of the solution as feasible (>90% if possible).
- [ ] Bugs are covered by tests when found
- [ ] Integration tests run to test the solution end-to-end

More details on [Unit Testing](automated-testing/unit-testing/readme.md)

## Continuous Integration and Continuous Delivery

- [ ] The code is automatically built and tested when it is comitted (as a part of the pull-request, or on every commit, but at least before it reaches the main-branch)
- [ ] The resulting artifacts of the automated pipeline should be what goes on the servers, not something from one developer's computer.
- [ ] The main branch is kept in a shippable state

## Security - TO DO

- [ ] If there is personal or sensitive data in the solution the developers should not be able to access such sensitive production data except in specific cases
- [ ] Personal data for real persons must never be used for test or developments purposes, unless specific permission is given by those persons.
- [ ] Secrets should never be part of the solution, but placed in separate, secure locations.
- [ ] Do not write logon systems, use existing services for that.
- [ ] Do not store any personal data without purpose (and minimise that).
- [ ] Encryption for data in transit (and if necessary at rest) and password hashing.

## Observability

- [ ] Significant business and functional events are tracked and related metrics collected.
- [ ] Application faults and errors are logged.
- [ ] Health of the system is monitored.
- [ ] The client and server side observability data can be differentiated.
- [ ] Logging configuration can be modified without code changes (eg: verbose mode).
- [ ] [Incoming tracing context](observability/correlation-id.md) is propagated to allow for production issue debugging purposes.
- [ ] GDPR compliance is ensured regarding PII (Personally Identifiable Information).

## Process

- [ ] Daily stand-ups are usually a good idea. Try to have them early to start the day.
- [ ] Have someone "lead" the stand-up. This role can rotate if the team wants it.
- [ ] Focus status-updates on what lies ahead and any obstacles or missing knowledge. Try to make sure the people who are going to do a task has every chance of finishing it.
- [ ] Identify unclear or tasks that need further information and have them clarified/readied before tackling them
- [ ] Handle tasks that lead into each other separately - don't fall for the temptation to combine them
- [ ] Tech Lead (+ product-owner/others) have responsibility for backlog management and grooming.
- [ ] Working agreement between members of team and customer.

## Design Reviews

- [ ] Process for conducting design reviews is included in the [Working Agreement](/agile-development/team-agreements/working-agreements/readme.md)
- [ ] Design reviews for each major component of the solution are carried out and documented, including alternatives.
- [ ] Stories and/or PRs link to the design document.
- [ ] Each user story includes a task for design review by default, which is assigned or removed during sprint planning.
- [ ] Project advisors are invited to design reviews or asked to give feedback to the design decisions captured in documentation.
- [ ] Discover all the reviews that the customer's processes require and plan for them.

## Code Reviews

- [ ] Clear agreement in the team as to function of code reviews.
- [ ] Code review checklist or established process.
- [ ] A minimum number of reviewers (usually 2) for a PR merge is enforced by policy.
- [ ] Linters/Code Analyzers, unit tests and successful builds for PR merges are set up.
- [ ] Process to enforce a quick review turnaround.

More details on [Code Reviews](code-reviews/README.md)

## Retrospectives

- [ ] Set time for retrospectives each week/at the end of each sprint.
- [ ] 1-3 proposed experiments to be tried each week/sprint to improve the process.
- [ ] Experiments have owners and are added to project backlog.
- [ ] Longer retrospective for Milestones and project completion.

More details on [Retrospectives](agile-development/retrospectives/readme.md)

## Engineering Feedback

- [ ] Submit business and technical blockers that prevent project success
- [ ] Add suggestions for improvements to leveraged services and components
- [ ] Ensure feedback is detailed and repeatable

More details on [Engineering Feedback](engineering-feedback/readme.md)