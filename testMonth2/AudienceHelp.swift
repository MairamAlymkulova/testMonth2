

import Foundation

class AudienceHelp: Help{
    
    override func useHelp(question: Questions) -> Int {
        var audienceAnswer=0
        print("Вы решили воспользоваться подсказкой зала.")
        let one=Int.random(in: 1...200)
        let two=Int.random(in: 1...(200-one))
        let three=Int.random(in: 1...(200-one+two))
        let four=Int.random(in: 1...(200-one+two+three))
        let arrray=[one,two,three,four]
        audienceAnswer=arrray.firstIndex(of: arrray.max()!)!+1
        
        print("Большинство голосует за вариант \(audienceAnswer)")
        print("Вы принимаете этот вариант? (да/нет)")
        let answer=readLine()!
        if(answer=="да"){
            return audienceAnswer

        }else{
            print("Введите номер выбранного вами варианта ответа:")
             let ownAnswer=Int(readLine()!)!
            return ownAnswer
        }
    }
}
