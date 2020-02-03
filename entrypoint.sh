#!/bin/bash

if ${INPUT_ADDED:-false}; then
  flags+=("--added")
fi

if ${INPUT_DELETED:-false}; then
  flags+=("--deleted")
fi

if ${INPUT_MODIFIED:-false}; then
  flags+=("--modified")
fi

objects="$(get-changed-objects ${flags[@]})"

echo "::set-output name=objects::${objects// /,}"