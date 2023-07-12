
import Foundation
struct Player{
    var name: String
    var birth: String
    var gender: Gender
    var maritalstatus: MaritalStatus
     var prize: Int = 0
    
    mutating func prizeCount(prize: Int) {
        self.prize=prize
    }
    func getScore() -> Int{
        return self.prize
    }
}
