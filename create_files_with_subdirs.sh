#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
MAIN_DIR="project_$TIMESTAMP"
LOG_FILE="script.log"

log_action() {
    echo "[$(date +"%Y-%m-%d %H:%M:%S")] $1" >> "$LOG_FILE"
}

log_action "Script started"

mkdir "$MAIN_DIR"
log_action "Created main directory: $MAIN_DIR"

languages=("Python" "Java" "C++" "JavaScript" "Go" "Ruby" "Swift" "Kotlin" "Rust" "PHP")

for i in {101..110}
do
    SUBDIR="$MAIN_DIR/file$i"
    mkdir "$SUBDIR"
    log_action "Created subdirectory: $SUBDIR"

    index=0
    for j in {501..510}
    do
        FILE="$SUBDIR/tuser$j.txt"
        echo "${languages[$index]}" > "$FILE"
        log_action "Created file: $SUBDIR/tuser$j.txt"
        index=$((index + 1))
    done
done

log_action "Script finished successfully"
