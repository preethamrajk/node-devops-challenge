# node-devops-challenge

## Overview

The purpose of this exercise is to create a pipeline in Azure DevOps that will test, build & deploy this application.

The application is a NodeJS application — it uses `yarn` package manager.

The tests must be run using `yarn test` & the code must be built using `yarn build`.

The source requires a `Dockerfile` that is capable of running Node >=14.16.

## Expectations

- The source should deploy to an Azure Container Instance
- A valid Dockerfile should be added to the repo
- Terraform IaC is expected for all supporting resources

## Follow-up assessment

In a follow-up assessment we'll ask you to justify your approach & walk us through some additions.
