#!/bin/sh
set -eux

git config --global --add safe.directory '*'

echo "Excluded tags are: ${EXCLUDE_TAGS}"

python /entrypoint.py \
    ${ROOT:+"-p=$ROOT"} \
    ${HEAD:+"-r=$HEAD"} \
    ${BASE:+"-b=$BASE"} \
    ${IGNORED:+"-x=$IGNORED"} \
    ${INCLUDE:+"-i=$INCLUDE"} \
    ${LOG_LEVEL:+"--log-level=$LOG_LEVEL"} \
    ${TYPES:+"-t=$TYPES"} \
    ${N_PARENTS:+"--n_parents=$N_PARENTS"} \
    ${TAGS:+"-T=$TAGS"} \
    ${EXCLUDE_TAGS:+"--exclude_tags=$EXCLUDE_TAGS"}
