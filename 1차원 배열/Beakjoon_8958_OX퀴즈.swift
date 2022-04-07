"""

"OOXXOXXOOO"와 같은 OX퀴즈의 결과가 있다. O는 문제를 맞은 것이고, X는 문제를 틀린 것이다. 문제를 맞은 경우 그 문제의 점수는 그 문제까지 연속된 O의 개수가 된다. 예를 들어, 10번 문제의 점수는 3이 된다.

"OOXXOXXOOO"의 점수는 1+2+0+0+1+0+0+1+2+3 = 10점이다.

OX퀴즈의 결과가 주어졌을 때, 점수를 구하는 프로그램을 작성하시오.

입력
첫째 줄에 테스트 케이스의 개수가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, 길이가 0보다 크고 80보다 작은 문자열이 주어진다. 문자열은 O와 X만으로 이루어져 있다.

출력
각 테스트 케이스마다 점수를 출력한다.

예제 입력 1
5
OOXXOXXOOO
OOXXOOXXOO
OXOXOXOXOXOXOX
OOOOOOOOOO
OOOOXOOOOXOOOOX

예제 출력 1
10
9
7
55
30

"""
let count: Int = Int(readLine()!)!

for _ in 0..<count {
    print(readLine()!.split(separator: "X").reduce(0) { // 입력과 동시에 "X" 를 기준으로 나누면서 reduce 한다.
                                                        // reduce --> 컨테이너 내부의 요소들을 하나로 합치는 기능을 하는 고차함수,
                                                        // 만약 배열이라면 배열의 모든 값을 전달 인자로 받아 클로저의 연산 결과로 합해준다.
        $0 + ($1.count * ($1.count + 1) / 2) // 등차수열 제 1항부터 제 n항까지의 합
    })
}


// 아래가 내가 짠 코드.. 클로저를 잘 활용해보자..
//import Foundation
//
//let inputNum = Int(readLine()!)!
//
//var score = 0
//var totalScore = 0
//var totalScoreArray: Array<Int>
//var sequence = 0
//
//for _ in 0..<inputNum{
//    let scoreState = readLine()!.components(separatedBy: "X")
//    for item in scoreState{
//        if item == "" {
//            continue
//        } else {
//            for _ in item{
//                sequence += 1
//                score += sequence
//            }
//            totalScore += score
//            score = 0
//            sequence = 0
//        }
//    }
//    totalScoreArray.append(totalScore)
//}
//
//for item in totalScoreArray{
//    print(item)
//}


