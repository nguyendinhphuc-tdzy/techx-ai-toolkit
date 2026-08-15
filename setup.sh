#!/usr/bin/env bash
# Cài đặt toàn bộ skills trong repo này vào thư mục skills của AI agent.
#
# Mặc định cài vào: ~/.claude/skills (Claude Code, cấp user — dùng được ở mọi project)
#
# Đổi đích cài đặt:
#   SKILLS_DEST="$HOME/.codex/skills" ./setup.sh        # Codex
#   SKILLS_DEST="./.claude/skills" ./setup.sh           # Claude Code, chỉ project này
#   SKILLS_DEST=/path/tuy-y ./setup.sh
#
# Chạy lại sau khi `git pull` để cập nhật skill mới nhất.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$REPO_DIR/skills"
SKILLS_DEST="${SKILLS_DEST:-$HOME/.claude/skills}"

if [[ ! -d "$SKILLS_SRC" ]]; then
    echo "Không tìm thấy thư mục skills:"
    echo "   $SKILLS_SRC"
    exit 1
fi

mkdir -p "$SKILLS_DEST"

installed=()

for skill_path in "$SKILLS_SRC"/*/; do
    [[ -f "$skill_path/SKILL.md" ]] || continue

    skill_name="$(basename "$skill_path")"

    rm -rf "$SKILLS_DEST/$skill_name"
    cp -R "$skill_path" "$SKILLS_DEST/$skill_name"

    installed+=("$skill_name")
done

if [[ ${#installed[@]} -eq 0 ]]; then
    echo "Không tìm thấy skill nào trong $SKILLS_SRC"
    exit 1
fi

echo
echo "Đã cài ${#installed[@]} skill vào:"
echo "   $SKILLS_DEST"
echo
for skill in "${installed[@]}"; do
    echo " - $skill"
done
echo
echo "Khởi động lại AI agent (hoặc mở session mới) để agent nạp skill vừa cài."
echo "Với Cursor / ChatGPT / công cụ không đọc thư mục skill trực tiếp, xem"
echo "hướng dẫn dán thủ công trong skills/README.md."
