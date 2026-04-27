#!/bin/bash

set -euo pipefail

for file in *.m4a; do
  ffmpeg -i "$file" "${file%.m4a}".flac;
done