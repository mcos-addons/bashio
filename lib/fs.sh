#!/usr/bin/env bash
# ==============================================================================
# MCOS · Bashio (muthur-command)
# Bash helpers for MCOS add-on containers; Supervisor REST API compatible.
#
# It contains a set of commonly used operations and can be used
# to be included in add-on scripts to reduce code duplication across add-ons.
# ==============================================================================

# ------------------------------------------------------------------------------
# Check whether or not a directory exists.
#
# Arguments:
#   $1 Path to directory
# ------------------------------------------------------------------------------
function bashio::fs.directory_exists() {
    local directory=${1}

    bashio::log.trace "${FUNCNAME[0]}" "$@"

    if [[ -d "${directory}" ]]; then
        return "${__BASHIO_EXIT_OK}"
    fi

    return "${__BASHIO_EXIT_NOK}"
}

# ------------------------------------------------------------------------------
# Check whether or not a file exists.
#
# Arguments:
#   $1 Path to file
# ------------------------------------------------------------------------------
function bashio::fs.file_exists() {
    local file=${1}

    bashio::log.trace "${FUNCNAME[0]}" "$@"

    if [[ -f "${file}" ]]; then
        return "${__BASHIO_EXIT_OK}"
    fi

    return "${__BASHIO_EXIT_NOK}"
}

# ------------------------------------------------------------------------------
# Check whether or not a device exists.
#
# Arguments:
#   $1 Path to device
# ------------------------------------------------------------------------------
function bashio::fs.device_exists() {
    local device=${1}

    bashio::log.trace "${FUNCNAME[0]}" "$@"

    if [[ -b "${device}" || -c "${device}" ]]; then
        return "${__BASHIO_EXIT_OK}"
    fi

    return "${__BASHIO_EXIT_NOK}"
}

# ------------------------------------------------------------------------------
# Check whether or not a socket exists.
#
# Arguments:
#   $1 Path to socket
# ------------------------------------------------------------------------------
function bashio::fs.socket_exists() {
    local socket=${1}

    bashio::log.trace "${FUNCNAME[0]}" "$@"

    if [[ -S "${socket}" ]]; then
        return "${__BASHIO_EXIT_OK}"
    fi

    return "${__BASHIO_EXIT_NOK}"
}
