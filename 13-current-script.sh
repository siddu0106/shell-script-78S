#!/bin/bash

COURSE="Devops from current script"

echo "Before executing other script : $COURSE"
echo "Process Id of current script: $$"

./14-other-script.sh

echo "After executing other script : $COURSE"

