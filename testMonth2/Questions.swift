
import Foundation
struct Questions{
    var question: String
    var type: Type
    var prize: Int
    var answers: [String: Bool]
    
    mutating func deleteAnswer(key: String){
        answers.removeValue(forKey: key)
    }
}
