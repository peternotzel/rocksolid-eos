#!/usr/bin/env bash
# Builds dist/rocksolid.zip for upload to Claude (Cowork / claude.ai / desktop):
# Customize -> Skills -> Add -> Upload skill.
set -euo pipefail
cd "$(dirname "$0")/.."
SKILL_PARENT="plugins/rocksolid/skills"
mkdir -p dist
rm -f dist/rocksolid.zip
( cd "$SKILL_PARENT" && zip -rq ../../../dist/rocksolid.zip rocksolid -x '*.DS_Store' )
echo "Built dist/rocksolid.zip ($(unzip -l dist/rocksolid.zip | tail -1 | awk '{print $2}') files)"
