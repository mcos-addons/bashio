#!/usr/bin/env bash
# ==============================================================================
# Muthur Command · Bashio
# Bash helpers for Muthur Command OS add-on containers; Supervisor REST API compatible.
#
# It contains a set of commonly used operations and can be used
# to be included in add-on scripts to reduce code duplication across add-ons.
# ==============================================================================

# ------------------------------------------------------------------------------
# Checks if we are currently running in debug mode, based on the log module.
# ------------------------------------------------------------------------------
bashio::debug() {
    if [[ "${__BASHIO_LOG_LEVEL}" -lt "${__BASHIO_LOG_LEVEL_DEBUG}" ]]; then
        return "${__BASHIO_EXIT_NOK}"
    fi

    return "${__BASHIO_EXIT_OK}"
}
