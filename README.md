# ColdBox API Module Template

Use this template to start a new API wrapper in the format of a ColdBox module.

## Getting Started

1. Clone this repo
2. Wipe the `.git/` directory and reinit git - `rm -rf .git && git init`
3. Replace `@MODULE_SLUG@` with your module slug, i.e. `cfynab`
4. Replace `@MODULE_NAME@` with your module name, i.e. `cfYNAB`
5. Replace `@API_NAME@` with the name of the API in uppercase, i.e. `STRAVA`
6. Replace `@GITHUB_USER@` with your github user name, i.e. `michaelborn`
7. Create a new github repository
8. Configure the following secrets in the github repository:
   1. `FORGEBOX_TOKEN` - grab this from your [Forgebox profile](https://www.forgebox.io/profile#apitoken)
   2. `GH_TOKEN` - grab this from your [Github Developer settings](https://github.com/settings/tokens)
   3. `@API_NAME@_API_KEY` - Used for github actions tests. `@API_NAME@_API_KEY=mySecretKey`
   4. `@API_NAME@_API_URL` - Used for github actions tests. `@API_NAME@_API_URL=https://sandbox.finnhub.io/api/v1`
9. Code, test, and push to a github repository to use the github actions build.
10. Profit. 💰

## Features

* Github Actions configuration
  * Run `cfformat` for consistent cfscript syntax
  * Run module unit tests
  * Release new module versions using Semantic Release
  * 

# @MODULE_NAME@ CFML API wrapper

Wraps the [@MODULE_NAME@](https://@MODULE_SLUG@.io) API for easy CFML usage using the [Hyper](https://github.com/elpete/hyper) ColdBox module.

![@MODULE_NAME@ Release](https://github.com/@GITHUB_USER@/@MODULE_SLUG@/actions/workflows/release.yml/badge.svg?branch=main)

## Getting Started

1. Install this module - `box install @MODULE_NAME@`
2. Configure @MODULE_NAME@ API secrets using `.env`
3. OR configure @MODULE_NAME@ API via ColdBox `moduleSettings`

## Environment Variable Configuration

@MODULE_NAME@ can mainly be configured using environment variables:

* `@API_NAME@_API_KEY` - Required API key for authenticating with the @MODULE_NAME@ API
* `@API_NAME@_API_URL` - base URL of the @MODULE_NAME@ API.

You'll need to either use `commandbox-dotenv` to automatically populate environment variables from the `.env` file on server start, or manually read this file to populate environment variables inside your application.

```bash
# .env file
# @MODULE_NAME@ API Credentials
@API_NAME@_API_KEY=
@API_NAME@_API_URL=https://@MODULE_SLUG@.io/api/v1
```

## ColdBox Module Configuration via ModuleSettings

Set this in `config/ColdBox.cfc` in the `configure()` method:

```js
moduleSettings.@MODULE_SLUG@ = {
    apiKey : "blablasecret",
    apiURL : "my.url"
};
```