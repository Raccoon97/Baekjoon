"""

문제
(A+B)%C는 ((A%C) + (B%C))%C 와 같을까?

(A×B)%C는 ((A%C) × (B%C))%C 와 같을까?

세 수 A, B, C가 주어졌을 때, 위의 네 가지 값을 구하는 프로그램을 작성하시오.

입력
첫째 줄에 A, B, C가 순서대로 주어진다. (2 ≤ A, B, C ≤ 10000)

출력
첫째 줄에 (A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C를 출력한다.

예제 입력 1
5 8 4
예제 출력 1
1
1
0
0

"""
import Foundation

let nums = readLine()!
let numsArr = nums.components(separatedBy: " ")
let bool_A = Int(numsArr[0])! >= 2 && Int(numsArr[1])! >= 2 && Int(numsArr[2])! >= 2
let bool_B = Int(numsArr[0])! <= 10000 && Int(numsArr[1])! <= 10000 && Int(numsArr[2])! <= 10000

let a = Int(numsArr[0])!
let b = Int(numsArr[1])!
let c = Int(numsArr[2])!

if bool_A && bool_B {
    print((a+b)%c)
    print(((a%c)+(b%c))%c)
    print((a*b)%c)
    print(((a%c)*(b%c))%c)

}
