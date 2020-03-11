/* Collection

Array - 순서가 있는 리스트 컬렉션
Dictionary - '키'와 '값'의 쌍으로 이루어진 컬렉션
Set - 순서가 없고, 멤버가 유일한 컬렉션 */

// 1. Array
// 멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입
var intArray: Array<Int> = Array<Int>()

// 위와 동일한 표현
// var intArray: Array<Int> = [Int]()
// var intArray: Array<Int> = []
// var intArray: [Int] = Array<Int>()
// var intArray: [Int] = [Int]()
// var intArray: [Int] = []
// var intArray = [Int]()

// Array 메소드
// 추가
intArray.append(1)
intArray.append(100)

print(intArray) // [1, 100]

// 확인
print(intArray.contains(100)) // true
print(intArray.contains(99)) // false

// 교체
intArray[0] = 99

// 삭제
intArray.remove(at: 0)
intArray.removeLast()
intArray.removeAll()

// 멤버 수 확인
print(intArray.count) // 0


// 2. Dictionary
// '키'와 '값'의 쌍으로 이루어진 컬렉션 타입, Set과 같이 순서가 없다.
var anyDictionary: Dictionary<String, Any> = [String: Any]()

// 위와 동일한 표현
// var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
// var anyDictionary: Dictionary <String, Any> = [:]
// var anyDictionary: [String: Any] = Dictionary<String, Any>()
// var anyDictionary: [String: Any] = [String: Any]()
// var anyDictionary: [String: Any] = [:]
// var anyDictionary = [String: Any]()

// Dictionary 메소드
// 추가
anyDictionary["name"] = "value"
anyDictionary["age"] = 25

print(anyDictionary) // ["age": 25, "name": "value"]

// 변경
anyDictionary["name"] = "changmin"
print(anyDictionary) // ["name": "changmin", "age": 25]

// 제거
anyDictionary.removeValue(forKey: "age")
anyDictionary["name"] = nil
print(anyDictionary) // [:]


// 3. Set
// 중복되지 않는 멤버가 순서없이 존재하는 컬렉션, 축약형 존재하지 않음
var intSet: Set<Int> = Set<Int>()

// Set 메소드
// 추가, 여러번해도 한번만 저장됨
intSet.insert(1)
intSet.insert(99)
intSet.insert(99)
intSet.insert(99)
intSet.insert(100)

print(intSet) // [1, 100, 99]

// 확인
print(intSet.contains(1)) // true
print(intSet.contains(2)) // false

// 삭제
intSet.remove(99)
intSet.removeFirst()

// 멤버 수 확인
intSet.count


// Set 집합
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 4, 5, 6, 7, 3, 1]

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 3, 4]

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [2, 1]

