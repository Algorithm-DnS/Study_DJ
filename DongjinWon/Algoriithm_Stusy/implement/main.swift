//
//  main.swift
//  implement
//
//  Created by 원동진 on 2023/01/16.
//

import Foundation
//MARK: - 구현 예제 4-1
//let N = Int(readLine()!)!
//let input = readLine()!.split(separator: " ")
//let dx = [0,0,-1,1]
//let dy = [-1,1,0,0]
//let dir = ["L","R","U","D"]
//var X = 1
//var Y = 1
//var Nx = 0
//var Ny = 0
//
//
//for i in input{
//    for j in 0..<dir.count{
//        if i == dir[j] {
//            Nx = X + dx[j]
//            Ny = Y + dy[j]
//        }
//
//    }
//    if Nx < 1 || Ny < 1 || Nx > N || Ny > N{
//        continue
//    }
//    X = Nx
//    Y = Ny
//}
//print("\(X) \(Y)")
//
//MARK: - 예제 4-2
//let N = Int(readLine()!)!
//var count = 0
//for i in 0...N{
//    for j in 0...59 {
//        for k in 0...59 {
//           let time = String(i)+String(j)+String(k)
//            if time.contains("3") {
//                count += 1
//            }
//        }
//
//    }
//}
//
//print("\(count)")
//MARK: - 실전문제 2 왕실의 나이트
//struct stepModel {
//    var x : Int
//    var y : Int
//
//}
//
//let input = Array(readLine()!).map{String($0)}
//var x = Character(input[0]).unicodeScalars.first!.value - Character("a").unicodeScalars.first!.value + 1
//var y = input[1]
//let step = [stepModel(x:2,y:1),stepModel(x:-2,y:1),stepModel(x:2,y:-1),stepModel(x:-2,y:-1),stepModel(x:1,y:2),stepModel(x:-1,y:2),stepModel(x:1,y:-2),stepModel(x:-1,y:-2)]
//var count = 0
//for i in step{
//    let nextX = Int(x) + i.x
//    let nextY = Int(y)! + i.y
//    if 1 ... 8 ~= nextX && 1...8 ~= nextY {
//        count+=1
//    }
//}
//print("\(count)")
// MARK: -  게임 개발
//let input1 = readLine()!.split(separator: " ").map{Int($0)!}
//let N = input1[0]
//let M = input1[1]
//let input2 = readLine()!.split(separator: " ").map{Int($0)!}
//var x = input2[0]
//var y = input2[1]
//var dir = input2[2]
//var map  =  [[Int]]()
//for _ in 0..<M{
//    map.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//print("\(map)")
//let dx = [-1,0,1,0]
//let dy = [0,1,0,-1]
//func turnleft(){
//    dir -= 1
//    if dir == -1 {
//        dir = 3
//    }
//}
//var count = 1
//var turnT = 0
//var nx = 0
//var ny = 0
//
//while true {
//    turnleft()
//    nx = x + dx[dir]
//    ny = y + dy[dir]
//    // 왼쪽방향으로 간후 전진할수 있을경우
//    if map[nx][ny] == 0 {
//        map[nx][ny] = 1
//        x = nx
//        y = ny
//        count+=1
//        turnT =  0
//        continue
//    }else {
//        turnT += 1
//    }
//    // turtT+=1 이유 ? 4방향 가지다 가지못한다면 TunrT = 4를 이용하여 뒤로 가기 위함
//    if turnT == 4 {
//        // 후진은 반대로 -이기 때문에 빼줌
//        nx = x - dx[dir]
//        ny = y - dx[dir]
//        if map[nx][ny] == 0 {
//            x = nx
//            y = ny
//        }else{
//            break
//        }
//        turnT = 0
//    }
//}
//print("\(count)")
//MARK: - Q07 럭키스트레이트
//let input = Array(readLine()!).map{Int(String($0))!}
//let slicePoint = input.count/2
//let firstSlice = input.prefix(slicePoint)
//var firstSum = 0
//let secondSlice = input.suffix(slicePoint)
//var secondSum = 0
//for i in 0..<slicePoint{
//    firstSum += firstSlice[i]
//    secondSum += secondSlice[i+slicePoint]
//}
//if firstSum == secondSum {
//    print("LUCKY")
//}else{
//    print("READY")
//}
// MARK: - Q08 문자열 재정렬
//var sum = 0
//var input = Array(readLine()!).map{String($0)}.sorted()
//var result = ""
//let num = input.compactMap{String in Int(String)}
//for i in num{
//    sum+=i
//}
//input.removeSubrange(0..<num.count)
//for i in input{
//    result += i
//}
//print("\(result)\(sum)")

// MARK: - Q09 문자열 압축

//MARK: - 참조 : https://velog.io/@leeesangheee/Level-2-%EB%AC%B8%EC%9E%90%EC%97%B4-%EC%95%95%EC%B6%95-Swift
//func solution(_ s:String) -> Int {
//    // 문자열 길이 2이상은 압축이 되지 않음
//    // ab -> ab ,aa -> 2a 결국에 동일
//    if s.count <= 2 {
//        return s.count
//    }
//    var result : Int = s.count
//    for i in 1...(s.count/2) { //arrS.count/2 한이유 문자열이 8개인 경우 문자열을 5개씩 단위로 자를경우 결국에는 똑같은 문자열  ex) aabbc def 로나누면 결국엔 stirng값 동일함, 문자열 길이의 반까지만 압축이 가능함
//        let sliceStr = sliceString(str: s, step: i )
//        let compressString = compressStr(strArr: sliceStr)
//        let min = compressString.count
//        if min < result { result = min}
//    }
//    return result
//}
//func sliceString(str : String , step : Int) -> [String] {
//    var result : [String] = []
//    var temp = ""
//    for s in str{
//        temp+=String(s)
//        if temp.count >= step {
//            result.append(temp)
//            temp = ""
//        }
//    }
//    if temp != "" { result.append(temp)} // 홀수 일경우
//    return result
//}
//func compressStr(strArr :[String]) -> String {
//    var result : String = ""
//    var temp : String = ""
//    var count : Int = 1
//    for s in strArr{
//        if temp == s {
//            count+=1
//        }else{
//            if temp != ""{
//                result += (count > 1) ? "\(count)\(temp)" : "\(temp)"
//            }
//            temp = s
//            count = 1
//        }
//    }
//    if temp != "" {
//        result += (count > 1) ? "\(count)\(temp)" : "\(temp)"
//    }
//    return result
//
//}
//

// MARK: - Q12 기둥과 보설치
// 참조 : https://fomaios.tistory.com/entry/Swift-2020-KAKAO-BLIND-RECRUITMENT-%EA%B8%B0%EB%91%A5%EA%B3%BC-%EB%B3%B4-%EC%84%A4%EC%B9%98%ED%95%98%EA%B8%B0
//var pillar : [[Bool]] = [] //기둥
//var pillarPos : [(Int,Int)] = []
//var paper : [[Bool]] = [] // 보
//var paperPos : [(Int,Int)] = []
//func solution(_ n:Int, _ build_frame:[[Int]]) -> [[Int]] {
//    pillar = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
//    paper = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
//    for i in build_frame{
//        let x = i[0]
//        let y = i[1]
//        if i[3] == 1 { //설치
//            if i[2] == 0 { // 기둥일때
//                if checkPillar(x: x, y: y){
//                    pillar[x][y] = true
//                    pillarPos.append((x,y))
//                }
//            }else{// 보일때
//                if checkPaper(x: x, y: y, n: n){
//                    paper[x][y] = true
//                    paperPos.append((x,y))
//                }
//            }
//        }else { //삭제
//            if i[2] == 0{ //기둥일떄
//                pillar[x][y] = false
//                if let index = pillarPos.firstIndex(where: {$0 == (x,y)}){
//                    pillarPos.remove(at: index)
//                }
//
//                if !checkStructure(n: n){
//                    pillar[x][y] = true
//                    pillarPos.append((x,y))
//                }
//
//            }else{ //보일때
//                paper[x][y] = false
//                if let index = paperPos.firstIndex(where: {$0 == (x,y)}){
//                    paperPos.remove(at: index)
//                }
//                if !checkStructure(n: n){
//                    paper[x][y] = true
//                    paperPos.append((x,y))
//                }
//            }
//        }
//    }
//    let result = pillarPos.map{[$0.0,$0.1,0]} + paperPos.map{[$0.0,$0.1,1]}
//      return result.sorted { $0[0] == $1[0] ? $0[1] == $1[1] ? $0[2] < $1[2] : $0[1] < $1[1] : $0[0] < $1[0]
//      }
//}
//func checkPillar(x: Int ,y : Int)-> Bool{
//    if y == 0 || pillar[x][y-1] || paper[x][y]{
//        return true
//    }
//    if x > 0 {
//        if paper[x-1][y]{
//            return true
//        }
//    }
//    return false
//}
//func checkPaper(x: Int ,y : Int,n : Int)-> Bool{
//    if pillar[x][y-1] {
//        return true
//    }
//    if x < n {
//        if pillar[x+1][y-1]{
//            return true
//        }
//    }
//    if x > 0 && x < n{
//        if paper[x-1][y] && paper[x+1][y]{
//            return trure
//        }
//    }
//    return false
//}
//func checkStructure(n : Int) -> Bool{
//    for pillar in pillarPos{
//
//        if !checkPillar(x: pillar.0, y: pillar.1){
//
//            return false
//        }
//    }
//    for paper in paperPos{
//        if !checkPaper(x: paper.0, y: paper.1, n: n){
//
//            return false
//        }
//    }
//    return true
//}
//
//

//MARK: - Q13 치킨배달 백준 15686
//참고 : https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=gustn3964&logNo=222114676468
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var chicken : [Int] = [] , house : [Int] = []
//var answer = Int.max
//// 치킨집과 집의 위치
//for i in 0..<n {
//    let map = readLine()!.split(separator: " ").map{Int($0)!}
//    for j in 0..<n{
//        if map[j] == 1 {
//            house.append(i*n + j)
//        }
//        else if map[j] == 2{
//            chicken.append(i*n + j)
//        }
//    }
//}
////치킨 집 조합
//func combination(select : [Int], index : Int){
//    
//    if select.count == m {
//        answer = min(answer, minDist(selctChiken: select))
//    }else {
//        for i in index..<chicken.count{
//            combination(select: select+[chicken[i]], index: i+1)
//        }
//    }
//    
//}
////최소거리
//func minDist(selctChiken : [Int]) -> Int{
//    var dists = 0
//    for i in house {
//        let houseCoor = transInt(target: i)
//        var mindist = Int.max
//        for j in selctChiken {
//            let dist = distCal(r:transInt(target: j) , c: houseCoor)
//            mindist = min(mindist, dist)
//        }
//        
//        dists += mindist
//    }
//    return dists
//}
//// 정수 변환
//func transInt(target : Int) ->(Int,Int){
//    return (target/n ,target%n)
//}
//// 거리계산
//func distCal(r : (Int,Int) , c :(Int,Int)) -> Int{
//    return abs(r.0-c.0)+abs(r.1-c.1)
//}
//combination(select: [], index: 0)
//
//print("\(answer)")
//
//MARK: - 로봇청소기
/*
 로봇 청소기 , 방의 상태가 주어졌을때 청소하는 영역의 개수를 구하라
 로봋 청소기가 있는 방 N * M 직사각형 ,1 * 1 정사각형, 각각의 칸은 벽 또는 빈칸 , 청소기 방향 존재 동서 남북중 하나 , 방의 각 칸은 좌표(r,c) 북쪽 줄의 가장 서쪽 칸 좌표 0,0 / 남쪽의 가장 동쪽칸의 좌표 (N-1,M-1)
 청소기 동작
 1 빈방일 경우 청소ㅓ 진행
 2 현재 칸의 주변 4칸중 청소되지 않은 빈칸이 없는경우
 2-1 바라보는 방향을 유지한채로 한칸 후진할수 있다면 한칸 후진하고 1 번
 2-2 바라보는 방향의 뒤쪽칸이 벽이라 후진할수 없다면 작동 멈춤
 
 3 현재 칸의 주변 4칸중 청소되지 않은 빈칸이 있는 경우
3-1 반시계 방향으로 90도 회전
 2 바라보는 방향을 기준으로 압쪽칸이 청소되지 않은 빈칸인 경우 한칸 전진
 
 */
// 너무 어렵게 생각함 Bfs 나 dfs를 사용해야되는줄 알았지만 x
import Foundation
//참조 : https://sapjilkingios.tistory.com/entry/Swift%EA%B5%AC%ED%98%84-%EB%B0%B1%EC%A4%80-14503%EB%B2%88-%EB%A1%9C%EB%B4%87%EC%B2%AD%EC%86%8C%EA%B8%B0
let input = readLine()!.split(separator:" ").map{Int(String($0))!}
let (N,M) = (input[0],input[1]) // 방크기 N, M
var map = [[Int]]() // Map 좌표
let input2 = readLine()!.split(separator:" ").map{Int(String($0))!}
var (x,y,dir) = (input2[0],input2[1],input2[2]) // 청소기 좌표 x,y ,방향 dir
for _ in 0..<N {
    let input3 = readLine()!.split(separator:" ").map{Int(String($0))!}
    map.append(input3)
}
//상우하좌
var dx = [-1,0,1,0]
var dy = [0,1,0,-1]
var visited = Array(repeating: Array(repeating:false,count : M),count : N)
visited[x][y] = true
var result = 1
var cnt = 0 // 여기까지는 내가 쓴코드와 같았음
while true {
    // 방향 전환
    // for _ in 0..3  ~~ 이렇게 할필요가 없었다.. 반시계방향 돌린후 청소 가능하면 청소하면되기 때문
    dir-=1
    if dir == -1{ // 0일경우 -1 이되는데 3으로 넘어가면되기 때문
        dir=3
    }
    var nx = x + dx[dir] // 앞으로 이동
    var ny = y + dy[dir]
    if !visited[nx][ny] && map[nx][ny] != 1 { //청소 안했고 벽이 아니라면
        visited[nx][ny] = true // 이동하고 청소함
        x = nx // 이동한 기준을 청소기의 좌표로
        y = ny //
        result+=1 // 시간 흐름
        cnt = 0 // 방향 초기화
        continue
    }else{ // 청소를 했거나 벽이라면
        cnt+=1 // 회전만 하면 됨
    }
    if cnt == 4{ // 모든 부분 회전했을경우
        cnt = 0 // 회전 초기화
        nx = x - dx[dir] // 한칸 후진  ** 전진은 + 후진은 -
        ny = y - dy[dir] //
        if map[nx][ny] != 1{ // 후진 가능할 경우= 벽이 아닐경우
            x = nx
            y = ny
        }else{ // 벽일경우 stop
            break
        }
    }
}
print(result)

