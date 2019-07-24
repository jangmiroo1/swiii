let sum : (Int,Int) -> Int

sum = {(a:Int,b:Int) -> Int in
	return a+b
}

let sumResult = sum(10,20)
print(sumResult)

func calculate (a:Int, b:Int, method:(Int,Int)->Int) -> Int {
	return method(a,b)
}

let calculated = calculate(a:10,b:20,method:sum)
print(calculated)


//후행클로저 : 괄호바깥으로, 매개변수이름생략
//반환타입생략 : in 생략불가
//단축인자이름 : in 생략가능
//암시적 반환표현

let sample = calculate(a:10, b:20) {$0*$1}
print(sample)
