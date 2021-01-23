#!/bin/bash

echo Running... &&
service ssh start && service --status-all && tail -f /dev/null
