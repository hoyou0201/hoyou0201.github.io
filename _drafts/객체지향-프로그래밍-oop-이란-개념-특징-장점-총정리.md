---
layout: post
title: 객체지향 프로그래밍(OOP)이란? 개념, 특징, 장점 총정리
description: 객체지향 프로그래밍의 정의를 실전 예제와 함께 정리한 완벽 가이드입니다.
categories: [프로그래밍, 객체지향]
tags: [OOP, 객체지향 프로그래밍]
author: 최호성
---
## 객체지향이란?
개발을 할 때 객체를 지향하며 개발을 하는 것을 객체 지향이라 합니다. 여기서 객체란 무엇이냐? 상태와 행동을 갖는 하나의 단위 입니다. 상태는 데이터를 담을 수 있다는 것을 의미하고 행동은 함수를 갖는다는 것을 의미합니다. 보통 class를 객체로 이해하는데 정확히는 class로 만들어진 인스턴스가 객체입니다.
```java 
public class Cat{
    String name;
    int age;

    public Cat(String name, int age){
        this.name = name;
        this.age = age;
    }

    public void Crying(){
        System.out.println("냐옹");
    }
    public void Eat(string food){
        System.out.println(food+"를 먹었다!!");
    }

    public String GetName(){
        return name;
    }
    public int GetAge(){
        return age;
    }

    public void SetName(String name){
        this.name = name;
    }
    public void SetAge(int age){
        this.age = age;
    }

}

public class Main{
    public static void main(String[] args){
        Cat cat1 = new Cat("나비" ,2);
    }
}
```
이 코드에서 위쪽에서 Cat을 정의하고 있는 pubilc class Cat은 객체가 아닙니다. main함수에서 생성된 cat1이 바로 객체입니다. 객체 지향은 이러한 객체들의 관계로 개발을 하는 것입니다. 각각의 객체가 책임을 갖고 서로와 협력하여 프로젝트를 구성합니다.
## 객체지향의 특징
객체지향은 객체를 사용하므로써 객체를 사용하지 않았을때보다 몇가지 뚜렷한 장점을 가집니다.
- 수정이 쉬워진다. 
- 확장 또한 쉬워집니다. 
- 대규모 프로젝트에서 다른사람들과 협력해서 코드를 짤때 편합니다.
하지만 당연히 장점만 있는것은 아니고 단점도 존재합니다.
- 보통 객체지향적으로 짜지 않았을때보다 속도가 느려 작은 프로젝트에서는 적합하지 않습니다.
- 객체지향적으로 너무 짜려다 보면 불필요하게 코드가 길어질 수 있습니다.
- 
