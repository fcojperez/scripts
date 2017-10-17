#!/bin/bash

test "$(whoami)" != 'root' && (echo "your $USER is using a non-privileged account" ; exit 1)

