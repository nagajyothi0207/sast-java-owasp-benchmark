#!/bin/sh

case "$1" in
-q|--quiet) quiet="-D-Dorg.owasp.esapi.logSpecial.discard=true"; shift  ;;
*)          quiet=""    ;;
esac
mvn -X ${quiet} initialize
mvn -X ${quiet} clean package cargo:run -Pdeploy
