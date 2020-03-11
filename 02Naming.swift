/* 명명법, 콘솔로그, 문자열 보간법

1. 명명법

Lower Camel Case : fuction, method, variable, constant
	ex.) someVariableName

Upper Camel Case : type(class, struct, enum, extension…)
	ex.) Person, Point, Week

2. 콘솔로그 남기기
print 함수 : 단순 문자열 출력
dump 함수 : 인스턴스의 자세한 설명(description 프로퍼티)까지 출력

클래스의 인스턴스를 콘솔로그에 찍을때
딕셔너리를 좀더 예쁘게 찍어보고싶을때 'print'보다는 'dump'사용!

3. 문자열 보간법 (String Interpolation)
\()

*/

class KS {
	var student = ""
	var major = ""
	var score = 0
}

let ks = KS()
	ks.student = "박창민"
	ks.major = "CS"
	ks.score = 100

print(ks)
dump(ks)

print("")

let dic: [String : String] = ["KEY1": "VALUE1",
                              "KEY2" :"VALUE2"]
print(dic)
dump(dic)