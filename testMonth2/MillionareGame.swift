
import Foundation

class MillionareGame{
    
    var player: Player
    var questions: [Questions]
    var help: [Help]
    
    init(questions: [Questions]) {
        self.questions = questions
        self.player = Player(name: "", birth: "", gender: .female, maritalstatus: .single)
        self.help = [CallHelp(helpType: .call), AudienceHelp(helpType: .audienceHelp), FiftyfiftyHelp(helpType: .fiftyFifty)]
    }
    
    
    func addPlayersInfo() {
        print("Введите ФИО: ")
        let name = readLine()!
        print("Дата рождения:")
        let birthDate = readLine()!
        print("Пол")
        let gender = readLine()!
        print("Семейное положение")
        let maritalStatus = readLine()!
        
        self.player.name = name
        self.player.birth = birthDate
        self.player.gender = Gender(rawValue: gender) ?? .male
        self.player.maritalstatus = MaritalStatus(rawValue: maritalStatus) ?? .single
    }
    
    func playGame() {
        var score = 0
        var answer=true
        while answer{
            for question in questions {
                
                if question.type == .fix{
                    print( "Вопрос с несгораемой суммой!")
                }
                else{
                    print("Вопрос на \(question.prize) сом!")
                }
                print(question.question)
                score+=question.prize
                for (index,option) in question.answers.keys.enumerated() {
                    print("\(index+1). \(option)")
                }
                if(!help.isEmpty){
                    print("Вам доступны следующие подсказки: ")
                    for (index,helpOptions) in help.enumerated(){
                        print("\(index+1). \(helpOptions.helpType.rawValue)")
                        
                    }
                    print("Чтобы воспользоваться одной из подсказок введите номер варианта подсказки. Если вы не хотите использовать подсказку нажмите Enter")
                    if let input = Int(readLine()!){
                        let answerOption=help[input-1].useHelp(question: question)
                        help.remove(at: input-1)
                        answer=answerAnalyse(question: question, answerOption: answerOption, score: score)
                    }
                    else {
                        answer=answerAnalyse(question: question, answerOption: answerWithoutHelp(question:question), score: score)
                    }
                }else{
                    answer=answerAnalyse(question: question, answerOption: answerWithoutHelp(question:question), score: score)
                }
                
                print("--------------------")
                if(answer==false){
                    break
                }
            }
            if(answer){
                print("Позравляю! Вы стали миллионером!")
                answer=false
            }
        }
        
    }
    
    
    func answerWithoutHelp(question: Questions)->Int{
        print("Введите номер выбранного вами варианта ответа:")
        let userAnswer = Int(readLine()!)
        return userAnswer!
    }
    
    
    func answerAnalyse(question: Questions, answerOption: Int, score: Int)-> Bool{
        let score=score
        var answer=true
        var userAnswer=answerOption
        
        while userAnswer < 0 || userAnswer > 4 {
            print("Неверный ввод. Попробуйте еще раз.")
            userAnswer=Int(readLine()!)!
        }
        let answersArray=Array(question.answers.keys)
        let selectedOption = answersArray[userAnswer - 1]
        if question.answers[selectedOption] == true {
            print("Правильный ответ!")
            if question.type == .fix{
                player.prizeCount(prize: score)
            }
        } else {
            print("Неправильный ответ!")
            answer=false
            printScoreForWrongAnswer(score: player.getScore())
        }
        
        return answer
    }
    
    
    func printScoreForWrongAnswer(score: Int){
        print("Вы не стали миллионером (")
        if(score>0){
            print("Ваш выигрыш составляет \(player.getScore())")
            
        }
    }

}
