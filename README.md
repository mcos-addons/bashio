# Muthur Command Community Add-ons: Bashio

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

- [Muthur Command Community Add-ons Alpine Base Image][base-alpine]
- [Muthur Command Community Add-ons Alpine Python Base Image][base-alpine-python]
- [Muthur Command Community Add-ons Debian Base Image][base-debian]
- [Muthur Command Community Add-ons Ubuntu Base Image][base-ubuntu]
- [Official Muthur Command Alpine Docker Base Image][home-assistant-base]
- [Official Muthur Command Alpine Python Docker Base Image][home-assistant-base]
- [Official Muthur Command Debian Docker Base Image][home-assistant-base]
- [Official Muthur Command Raspbian Docker Base Image][home-assistant-base]
- [Official Muthur Command Ubuntu Docker Base Image][home-assistant-base]

Using those images as the base for your Muthur Command add-on will provide this
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

## Functions

Bashio has more than 250+ functions available: communicating with
the Supervisor API, Have I Been Pwned, file system, logging, configuration handling
and a lot more!

The best way to get around would be by looking at the different modules
available in the [`lib`](lib) folder. Each module has its own file, and each
function has been documented inside the codebase.

Furthermore, Bashio is used by the
[Muthur Command Community Add-ons project][repository], those add-ons will be
a great resource of practical examples.

## Known issues and limitations

- Some parts of the Supervisor API are not implemented yet.

## Changelog & Releases

This repository keeps a change log using [GitHub's releases][releases]
functionality. The format of the log is based on
[Keep a Changelog][keepchangelog].

Releases are based on [Semantic Versioning][semver], and use the format
of `MAJOR.MINOR.PATCH`. In a nutshell, the version will be incremented
based on the following:

- `MAJOR`: Incompatible or major changes.
- `MINOR`: Backwards-compatible new features and enhancements.
- `PATCH`: Backwards-compatible bugfixes and package updates.

## Support

Got questions?

You have several options to get them answered:

- The [Muthur Command Community Add-ons Discord chat server][discord] for add-on
  support and feature requests.
- You could also [open an issue here][issue] GitHub.

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We have set up a separate document containing our
[contribution guidelines](CONTRIBUTING.md).

Thank you for being involved! :heart_eyes:

## Authors & contributors

The original setup of this repository is by [Franck Nijhof][frenck].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## Origin

- **Upstream:**
  [hassio-addons/bashio](https://github.com/hassio-addons/bashio) —
  Bash helpers for Home Assistant Community Add-on base images, from which
  this tree was ported.
- **In this repo:** **Muthur Command** keeps this copy for Muthur Command OS CI
  and images; helpers and behavior may diverge from upstream over time.
- **License:** Code inherited from upstream remains **MIT**; see
  [`LICENSE.md`](./LICENSE.md).

## License

**MIT** — see **[LICENSE.md](LICENSE.md)** for the full license text.

[base-alpine-python]: https://github.com/mcio-addons/addon-base-python
[base-alpine]: https://github.com/mcio-addons/addon-base
[base-debian]: https://github.com/mcio-addons/addon-debian-base
[base-ubuntu]: https://github.com/mcio-addons/addon-ubuntu-base
[commits-shield]: https://img.shields.io/github/commit-activity/y/mcio-addons/bashio.svg
[commits]: https://github.com/mcio-addons/bashio/commits/master
[contributors]: https://github.com/mcio-addons/bashio/graphs/contributors
[discord-shield]: https://img.shields.io/discord/478094546522079232.svg
[discord]: https://discord.me/mcioaddons
[frenck]: https://github.com/frenck
[github-actions-shield]: https://github.com/mcio-addons/bashio/workflows/CI/badge.svg
[github-actions]: https://github.com/mcio-addons/bashio/actions
[github-sponsors-shield]: https://frenck.dev/wp-content/uploads/2019/12/github_sponsor.png
[github-sponsors]: https://github.com/sponsors/frenck
[home-assistant-base]: https://github.com/home-assistant/docker-base
[issue]: https://github.com/mcio-addons/bashio/issues
[keepchangelog]: http://keepachangelog.com/en/1.0.0/
[license-shield]: https://img.shields.io/github/license/mcio-addons/bashio.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2025.svg
[patreon-shield]: https://frenck.dev/wp-content/uploads/2019/12/patreon.png
[patreon]: https://www.patreon.com/frenck
[project-stage-shield]: https://img.shields.io/badge/project%20stage-experimental-yellow.svg
[releases-shield]: https://img.shields.io/github/release/mcio-addons/bashio.svg
[releases]: https://github.com/mcio-addons/bashio/releases
[repository]: https://github.com/mcio-addons/repository
[semver]: http://semver.org/spec/v2.0.0
