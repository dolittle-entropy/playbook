---
layout: default
title: TypeScript
nav_order: 2
has_children: false
grand_parent: Working on a Team
parent: Code Reviews
---
# TypeScript Code Reviews

## Style Guide

We use [`Prettier`](https://prettier.io/) to do code formatting for TypeScript. Using an automated code formatting tool like Prettier enforces a well accepted style guide that was collaboratively built by a wide range of companies including Microsoft, Facebook, and AirBnB. It is highly recommended that you use one of the native editor integrations and enable format on save. In addition, by default, we use the following overrides (shown here in the config format for VSCode) to standardize on single quotes and a 4-space indent:

```json
{
    ...
    "prettier.singleQuote": true,
    "prettier.tabWidth": 4,
    "prettier.printWidth": 80
}
```

## Linter

We recommend developers to use `ESLint`. We highly recommend using an editor integration like [vscode-eslint](https://github.com/Microsoft/vscode-eslint) to provide realtime feedback.

**Note: TSLint is deprecated in favour for ESLint**

## Git Commit Pre-Hook
It is recommended to automate running ESLint as a pre-commit hook to ensure formatting rules are followed regardless of editor that is used. Depending on your needs, it can be set to fix any auto fixable errors automatically. The negative side of auto fixing is that it's changing the code without a developers knowledge, which may not be desired.

Recommended: [lint-staged and husky](https://github.com/okonet/lint-staged#installation-and-setup)

-   `husky` is a popular tool for running pre-commit hooks and preventing commits whose hooks fail.
-   `lint-staged` ensures that only staged files get checked to determine if the pre-commit hooks need to be run.

Recommended: [@typescript-eslint/eslint-plugin](https://www.npmjs.com/package/@typescript-eslint/eslint-plugin)

-   This set of basic ESlint that are valid for Typescript. These can be used as they are or overridden as needed.

## Formatting/Linting Conflicts

`Prettier` plays well with ESlint, and can be run as an ESlint rule for all code formatting rules. This allows ESlint to focus on other non-formatting rules, which it is good at.

### Set up Prettier and ESlint

TBD

## YAML

A 4-space indent makes YAML difficult to read, so you might consider adding the following to the `VSCode` User or Workspace Settings.

```json
{
    ...
    "[yaml]": {
        "editor.insertSpaces": true,
        "editor.tabSize": 2,
        "editor.autoIndent": false
    }
}
```

You will then need to exclude YAML files from `Prettier` by adding a .prettierignore file to the root of our project:

```
**/*.yaml
```

## Code Review Checklist

In addition to the [general Code Review checklist](../CodeReviews.md), you should also look for these additional TypeScript related code review items:

1.  [ ] Does the code stick to our formating and code standards? Does running prettier and TSLint over the code should yield no warnings or errors respectively?
1.  [ ] Does the change reimplement code that would be better served by pulling in a well known module from the ecosystem?

If you have great suggestions for things folks should be thinking about during a TypeScript code review, please feel free to submit a pull request.
