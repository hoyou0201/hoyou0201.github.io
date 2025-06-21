#!/bin/bash

number="$1"
title="$2"

blog_title="[백준 C++] ${number}번 ${title}"
bundle exec jekyll draft "$blog_title"
