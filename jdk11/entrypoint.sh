#!/bin/sh -l

set -e

echo "==========Starting Maven Commands=========="

sh -c "mvn $1"

echo "==========Finished Maven Commands=========="
