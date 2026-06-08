#!/bin/bash
# Helper script to play video without interfering with X11 threading
# This script detaches the process cleanly from the parent's X11 context

# Close stdin, stdout, stderr to prevent inheriting X11 file descriptors
exec </dev/null
exec >/dev/null 2>&1

# Execute omxplayer with all arguments
exec "$@"
