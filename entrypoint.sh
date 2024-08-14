#!/bin/sh

# Trap SIGTERM and forward it to the child process
trap 'echo "SIGTERM received. Terminating..."; kill -TERM "$pid"; wait "$pid"; exit 143;' TERM

# Start the Firebase emulators in the background
firebase emulators:start --import=./firebase/data --export-on-exit=./firebase/data &
pid=$!

# Wait indefinitely, allowing the signal to be trapped
wait $pid