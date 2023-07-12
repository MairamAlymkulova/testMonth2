
import Foundation

class Help{
    var helpType: HelpType
    init(helpType: HelpType) {
        self.helpType = helpType
    }
    
    func useHelp(question: Questions)->Int{
        return 0
    }
}
