// func

/* 1. 기본형태

func 함수이름(매개변수이름:매개변수타입, b:Int) -> 반환타입 {
    함수구현부
    return 반환값
} */

// sum 함수
func sum (a:Int, b:Int) -> Int {
    return a+b
}

let a = sum(a:3,b:5)
print(a)

// 4. 매개변수와 반환값이 없는 함수
func hello() {print("hello")}
hello()

// 함수 고급
// 1. 매개변수 기본 값
func greeting(friend:String, me:String = "changmini") {
    print("Hello \(friend)! I'm \(me).")
}

greeting(friend:"kobe") //호출시 생략가능
greeting(friend:"jordan", me:"messi") //override 느낌으로 사용가능

// 2. 전달인자 레이블
func greeting(to friend:String, from me:/String) {
    print("Hello \(friend)! I'm \(me).")
}

greeting(to: "hooah", from: "changmin")
// 함수내부 : 매개변수 이름사용, 함수호출 : 전달이자 레이블 사용

// 3. 가변 매개변수 : 여러개 받을때..
// 4. 데이터 타입으로서의 함수 : 함수를 타입으로 지정해서 값 받을때..


