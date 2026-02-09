#!/bin/sh
export FILTER_DIR=/system/bin/cups/filter
export STATE_DIR=/data/gutenprint-printer-app
export STATE_FILE=/data/gutenprint-printer-app/gutenprint-printer-app.state
export PPD_DIRS=/system/etc/ppd:/system/bin/ppd
export CUPS_DEBUG_LOG=-
export CUPS_DEBUG_LEVEL=1
#export STP_DEBUG=0xff7ff7ff
export LD_LIBRARY_PATH=/system/lib64/printers
export BACKEND_DIR=/system/bin/backends
export HOME=/data
export SPOOL_DIR=/data/spool/
export CUPS_STATEDIR=/data/cups/run
export CUPS_DATADIR=/system/etc/cups
export CUPS_SERVERROOT=/data/cups/serverroot
export TMPDIR=/data/local/tmp
export TESTPAGE_DIR=/system/etc

mkdir -p $STATE_DIR $CUPS_STATEDIR > /dev/null 2>&1

gutenprint-printer-app $@
