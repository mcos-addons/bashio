#!/usr/bin/env bash
# ==============================================================================
# MCOS · Bashio (muthur-command)
# Bash helpers for MCOS add-on containers; Supervisor REST API compatible.
#
# It contains a set of commonly used operations and can be used
# to be included in add-on scripts to reduce code duplication across add-ons.
# ==============================================================================

# ------------------------------------------------------------------------------
# Checks if we are currently running in trace mode, based on the log module.
# ------------------------------------------------------------------------------
bashio::trace() {
    if [[ "${__BASHIO_LOG_LEVEL}" -lt "${__BASHIO_LOG_LEVEL_TRACE}" ]]; then
        return "${__BASHIO_EXIT_NOK}"
    fi

    return "${__BASHIO_EXIT_OK}"
}
