
import Foundation

class CallHelp: Help{
    
    override func useHelp(question: Questions) -> Int {
        var friendAnswer=0
        print("Вы решили воспользоваться подсказкой звонок другу. Пожалуйста введите номер телефона: ")
        _=readLine()!
        print("calling...")
        friendAnswer=Int.random(in: 1...4)
        print("Ваш друг предлагает выбрать вариант \(friendAnswer)")
        print("Вы принимаете этот вариант? (да/нет)")
        let answer=readLine()!
        if(answer=="да"){
            return friendAnswer

        }else{
            print("Введите номер выбранного вами варианта ответа:")
             let ownAnswer=Int(readLine()!)!
            return ownAnswer
        }
    }
}
