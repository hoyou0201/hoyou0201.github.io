---
layout: post
title: 'C++ STL multiset 완전 정복: 정렬과 중복을 동시에 잡는 컨테이너'
description: C++ STL의 multiset은 정렬과 중복 허용을 모두 만족하는 컨테이너입니다. 사용법, 특성, 그리고 실전 예제를 통해
  확실히 이해해보세요.
categories:
- 프로그래밍
- C++
tags:
- C++
- STL
- multiset
- 알고리즘
author: 최호성
date: 2025-06-29 15:20 +0900
---
> 중복을 허용하면서 자동 정렬까지 해주는 컨테이너가 있다면? `multiset`이 그 해답입니다. `set`과 비슷하지만, 중복을 허용한다는 점에서 알고리즘 문제에서 유용하게 쓰입니다.

## multiset이란?

`multiset`은 C++ STL(Standard Template Library)의 **연관 컨테이너(associative container)** 중 하나입니다. 내부적으로 **이진 탐색 트리(BST)** 구조를 기반으로 하며, 요소를 자동으로 **정렬**하며, **중복된 값을 허용**합니다.

```cpp
#include <iostream>
#include <set>
using namespace std;

int main() {
    multiset<int> ms = {5, 1, 3, 3, 2};
    for (int x : ms) {
        cout << x << " ";
    }
    // 출력: 1 2 3 3 5
}
```
## 주요 특징
| 특징 | 설명                                      |
| ---- | ----------------------------------------- |
| 정렬 | 항상 오름차순 정렬됨 (기본)               |
| 중복 | 허용	같은 값을 여러 번 삽입 가능          |
| 탐색 | 속도	평균 O(log n)                        |
| 내부 | 구조	Red-Black Tree (균형 이진 탐색 트리) |

## 주요 멤버 함수
### 1. 삽입: `insert(value)`
```cpp
ms.insert(3);
```
### 2. 삭제: `erase(value)` 또는 `erase(iterator)`
```cpp
ms.erase(3); // 모든 3 삭제
ms.erase(ms.find(3)); // 3 중 하나만 삭제
```
### 3. 탐색: `find(value)`
```cpp
auto it = ms.find(3);
if (it != ms.end()) cout << "찾음!";
```
### 4. 개수 세기: `count(value)`
```cpp
cout << ms.count(3); // 3이 몇 개 있는지 반환
```
### 5. 범위 탐색: `lower_bound`, `upper_bound`, `equal_range`
```cpp
auto range = ms.equal_range(3);
for (auto it = range.first; it != range.second; ++it)
    cout << *it << " ";
```
## 실전 사용 예제: sliding window 중위값
`nums` 배열이 주어질때 k가 3이라면 각 배열에서 연속된 3개마다 중위값을 찾는 문제이다.
예를 들어 nums의 처음 3개인 `1,3,-1`의 중위값은 1이고, 그다음 `3,-1,-3`의 중위값은 -1이다. 
```cpp
int nums[] = {1, 3, -1, -3, 5, 3, 6, 7};
multiset<int> window;
vector<int> result = vector<int>();
int k = 3;

for (int i = 0; i < nums.size(); ++i) {
    window.insert(nums[i]);

    if (i >= k) {
        window.erase(window.find(nums[i - k]));
    }

    if (i >= k - 1) {
        auto it = window.begin();
        advance(it, k / 2);
        result.push_back(*it); // 중간값
    }
}
```
## 언제 사용할까?
- 중복된 값들을 정렬된 상태로 유지할 때

- 우선순위 큐처럼 정렬된 값을 유지하면서 조건에 따라 삭제할 때
- 우선순위 큐처럼 정렬된 값이 필요하면서 중간의 값도 접근해야할 때

## 마무리
`multiset`은 사용 빈도가 높은 편은 아니지만, **정렬**과 **중복 허용**이라는 강력한 특성을 가진 컨테이너입니다. 알고리즘 문제나 실무에서도 특정 조건에 딱 맞는 경우가 많기 때문에, 제대로 이해하고 있다면 분명히 무기가 됩니다.
