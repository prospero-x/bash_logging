#!/usr/bin/env bash

source ./logging.sh

MYVAR=foo

LOG_LEVEL=WARN
echo first try with log level: $LOG_LEVEL

log_trace Hello, World!
log_debug my var is $MYVAR
log_info Hello, World!
log_warn Hello, World!
log_error Hello, World!
echo
echo


LOG_LEVEL=TRACE
echo second pass with log level: $LOG_LEVEL
log_trace Hello, World!
log_debug my var is $MYVAR
log_info Hello, World!
log_warn Hello, World!
log_error Hello, World!

# Fatal exits the program
log_fatal Hello, World!
