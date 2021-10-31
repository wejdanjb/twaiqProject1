
import Foundation

class Task{
    var name : String
    var description : String
    var deadline : Date?
    init(_ name: String, _ description: String, _ deadline: Date?) {
        self.name = name
        self.description = description
        self.deadline = deadline
    }
}

