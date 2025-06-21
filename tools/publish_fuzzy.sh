#!/bin/bash

title_part="$1"

# 제목 일부로 draft 내 파일 찾기
file=$(find _drafts -type f -iname "*${title_part}*.md" | head -n 1)

if [ -z "$file" ]; then
  echo "❌ '${title_part}'를 포함하는 draft 파일을 찾을 수 없습니다."
  exit 1
fi

echo "📤 게시 중: $file"
bundle exec jekyll publish "$file"

