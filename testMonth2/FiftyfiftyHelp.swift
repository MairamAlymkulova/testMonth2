
import Foundation

class FiftyfiftyHelp: Help{
    
    override func useHelp(question: Questions) -> Int {
        var question=question
        var dictionary:[String:Int]=[:]
        print("Вы решили воспользоваться подсказкой 50/50.")
        for (index, answer) in question.answers.enumerated() {
            dictionary[answer.key]=index
        }
        for answer in question.answers{
            if(answer.value == false){
                question.deleteAnswer(key: answer.key)
                dictionary.removeValue(forKey: answer.key)
            }
            if(dictionary.count==2){
                break
            }
            
        }
        print("Оставшиеся варианты ответа:")
        for (answer,index) in dictionary{
            print("\(index+1). \(answer)")
        }
            print("Введите номер выбранного вами варианта ответа:")
             let ownAnswer=Int(readLine()!)!
            return ownAnswer
    }
}
