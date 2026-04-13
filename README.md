# MCOS · Bashio (`muthur-command/bashio`)

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md)

[![GitHub Actions][github-actions-shield]][github-actions]
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]

[![Discord][discord-shield]][discord]

[![Sponsor Frenck via GitHub Sponsors][github-sponsors-shield]][github-sponsors]

[![Support Frenck on Patreon][patreon-shield]][patreon]

## About

Bashio is a bash function library for use with Muthur Command add-ons.

It contains a set of commonly used operations and can be used
to be included in add-ons to reduce code duplication across add-ons and
therefore making it easier to develop and maintain add-ons.

Main goals:

- Reduce the number of operations needed in add-ons.
- Reduce the amount of code needed in add-ons.
- Make add-on code more readable.
- Providing a trusted and tested code base.

Quicker add-on development, by allowing you to focus on the add-on logic
instead of other things.

## Installation

The library is installed in the Muthur Command Community Add-ons base images and
the official Muthur Command base images.

Currently available base images:

- [Home Assistant Community Add-ons Alpine Base Image][base-alpine]
- [Home Assistant Community Add-ons Alpine Python Base Image][base-alpine-python]
- [Home Assistant Community Add-ons Debian Base Image][base-debian]
- [Home Assistant Community Add-ons Ubuntu Base Image][base-ubuntu]
- [Official Home Assistant Alpine Docker Base Image][home-assistant-base]
- [Official Home Assistant Alpine Python Docker Base Image][home-assistant-base]
- [Official Home Assistant Debian Docker Base Image][home-assistant-base]
- [Official Home Assistant Raspbian Docker Base Image][home-assistant-base]
- [Official Home Assistant Ubuntu Docker Base Image][home-assistant-base]

Using those images as the base for your Home Assistant add-on will provide this
function library out of the box. Our base images are updated frequently and
provide the minimal needed base image for a great add-on.

If you want to add Bashio to your own images, please take a look at the
Dockerfile of the above base images to see how they are added at build time.

## Configuration

Configuring a Bash script to use the Bashio library is fairly easy. Simply
replace the shebang of your script file, from `bash` to `bashio`.

Before example:

```bash
#!/usr/bin/env bash
set -e

CONFIG_PATH=/data/options.json

USERNAME=$(jq --raw-output '.username // empty' $CONFIG_PATH)

echo "${USERNAME}"
```

After example with Bashio:

```bash
#!/usr/bin/env bashio

USERNAME=$(bashio::config 'username')
bashio::log.info "${USERNAME}"
```

See the **`lib/`** modules for available functions.

## CI

Workflows under **`.github/workflows/`** run Markdown, Shellcheck, Yamllint, and Prettier checks.

## License

**MIT** — see **LICENSE.md**. Upstream copyright (Franck Nijhof et al.) retained. Add a **NOTICE** for the MCOS fork when legal approves.

## Links

- Issues / PRs: **`https://github.com/mcio-addons/bashio`** (adjust if your fork URL differs)
- Upstream: **`https://github.com/hassio-addons/bashio`**
- Base images: **`https://github.com/mcio-addons/docker-base`**
