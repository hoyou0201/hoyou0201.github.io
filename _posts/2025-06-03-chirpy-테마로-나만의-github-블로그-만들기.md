---
layout: post
title: Chirpy 테마로 나만의 GitHub 블로그 만들기
date: 2025-06-03 17:27 +0900
---
공부하면서 배운 내용을 정리하고, 개발한 프로젝트를 소개할 수 있는 **개인 기술 블로그**를 만들고 싶다면  
**GitHub Pages + Jekyll + Chirpy 테마** 조합은 강력한 선택입니다.

이 글은 **컴퓨터공학과 학생의 입장에서**, GitHub 블로그를 처음부터 끝까지 만드는 방법을 **자세하고 쉽게** 설명합니다.

---

## 🧰 1. 사전 준비

### 설치 필요 없음 ✅  
Chirpy는 GitHub에서 호스팅되고 자동으로 배포되기 때문에 **초보자도 노트북만 있으면 바로 시작**할 수 있어요.

### 그래도 알아두면 좋은 개념

| 개념 | 설명 |
|------|------|
| **GitHub Pages** | GitHub 저장소를 웹사이트로 공개할 수 있는 무료 서비스 |
| **Jekyll** | 마크다운(.md)을 HTML로 바꿔주는 정적 사이트 생성기 |
| **Chirpy** | Jekyll용 블로그 테마. 깔끔하고 기능이 많음 |
| **Markdown** | 블로그 글 작성에 쓰이는 간단한 문서 형식 |

---
## 📦 2. 블로그 프로젝트 시작하기

### 1단계: Chirpy 테마 Fork 하기  
- 링크: [https://github.com/cotes2020/jekyll-theme-chirpy](https://github.com/cotes2020/jekyll-theme-chirpy)  
- GitHub 오른쪽 위 **Fork 버튼** 클릭 → 내 계정으로 복사

### 2단계: 저장소 이름 변경 (매우 중요)
- 포크시 저장소 이름을 바꿔주어야 함 
- 이름을 다음과 같이 변경:  [내GitHub유저명].github.io
- 예: `hongjildong.github.io`

> GitHub Pages는 저장소 이름이 정확히 저 형식이어야 배포가 됩니다.
조금 기다리면 포크된 새로운 저장소가 만들어집니다.

---

## ⚙️ 3. GitHub Pages 설정

### 설정 방법:
1. `Action` 탭에서 초록색 버튼을 눌러 Action 활성화
2. `Settings > Pages` 메뉴로 이동  
3. `Build and deployment>Source`를 `GitHub Action`으로 변경
4. `Jekyll`이 자동으로 잡히면 성공

주소가 바로 안만들어져도 걱정하지 마세요. 아래 과정들을 따라하다보면 자동으로 생길거에요.

---

## 🛠️ 4. 블로그 초기화

### 초기화 방법
- 터미널에 `bash tools/init.sh`를 입력하면 자동으로 초기화 시켜줘요
- 초기화가 끝나면 기본으로 있던 블로그 글들과 설정들이 모두 삭제돼요

## 5. 사용자 정보 설정하기

### 설정 방법:
- `_config.yml`파일에 들어가서 정보를 수정하면 돼요

| 주요 항목 | 설명 |
|------|-----|
| **lang** | 기본 언어입니다. 한국어는 ko로 바꿔주세요. |
| **timezone** | 시간대 입니다. `Asia/Seoul`로 작성해주시면 돼요. |
| **tagline** | 블로그 로고 아래 짧은 소개 문구 입니다. |
| **description** | SEO(검색 최적화)와 피드에 사용돼요. |
| **url** | `https://아이디.github.io`를 입력해주시면 돼요. (사용중인 도메인이 있다면 그걸 입력하세요) |
| **theme_mode** | `dark`어두운테마 `light`밝은테마 빈칸으로 놔두면 사용자 설정에 따라 바뀝니다. |
| **social** | 사용하는 계정링크를 입력해주세요 |

나머지는 그냥 놔두셔도 되구 필요하시면 입력하셔도 좋습니다.

## 6. 테스트

### 로컬에서 테스트 방법
- 터미널에 `bundle exec jekyll serve`를 입력하면 [http://127.0.0.1:4000/](http://127.0.0.1:4000/)에서 자신이 만든 블로그를 확인할 수 있어요.

### 실제 블로그로 확인
- 지금까지 한 작업들을 깃허브에 커밋하고 푸시하면 깃허브가 자동으로 블로그를 빌드해줍니다.
- `Action`탭에 들어가면 빌드 중인것을 확인 할 수 있고 빌드가 끝난다면 `https://아이디.github.io`링크에서 자신의 페이지를 확인 할 수 있습니다
> ⚠️ 커밋을 할때 오류가 생긴다면 형식을 지키지 않아서 그렇습니다. chirpy는 기본적으로 Conventional Commits 규칙을 따르도록 설정되어 있습니다.
>  이 설정이 싫으시다면 터미널에 `npm uninstall @commitlint/cli @commitlint/config-conventional`을 입력하고 `.husky/commit-msg`과 `.github/workflows/commitlint.yml`파일을 지우시고 다시 커밋을 하면 제대로 될 것입니다.
> 만약 충돌이 나서 푸시가 안된다면 강제로 init한 내용을 푸시하시면 됩니다.
{: .prompt-warning }





