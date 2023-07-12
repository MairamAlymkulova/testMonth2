
import Foundation

enum Gender: String{
    case male="м"
    case female="ж"
}
enum MaritalStatus: String{
    case single = "холост"
    case married = "женат"
    case widowed = "вдовец"
    case divorced = "разведен"
}
enum Type{
    case low
    case fix
    case medium
    case high
}
enum HelpType: String{
    case call="Звонок другу"
    case audienceHelp="Помощь зала"
    case fiftyFifty="50/50"
}
