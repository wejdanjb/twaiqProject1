


import Foundation

class List {
    var task:[Task]
    init () {
        self.task = []
    }
    func getDateFrom(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy"
        dateFormatter.timeZone = .init(abbreviation: "GMT")
        guard let date = dateFormatter.date(from: dateString)
        else {
            return nil
        }
        return date
    }
    func formateDate(_ date: Date) -> String {
        let formatter      = DateFormatter()
        formatter.timeZone   = .current
        formatter.locale    = .current
        formatter.dateFormat  = "dd/MM/yy"
        return formatter.string(from: date)
    }
    
    func addtask(_ t: Task){
        task.append(t)
        
    }
    func removetask(_ index: Int) {
        task.remove(at: index)
        print(" - the ToDodo was be Deletated Successfully 👌🏼💯")
    }
    func printdetalis(){
        for (i ,value) in task.enumerated() {
            print("\n\(i+1):(name is) ⇾",value.name, "(description is) ⇾", value.description, "(deadline date is) ⇾",value.deadline)
        }
    }
    func update (_ a:Task , _ index : Int){
        task[index].name = a.name
        task[index].description = a.description
        task[index].deadline = a.deadline
    }
    func sortToDoListn(){
        task = task.sorted(by: { firstToDo, secondToDo in
            if let firstDate = firstToDo.deadline, let secondDate = secondToDo.deadline {
                return firstDate < secondDate
            } else {
                return false
            }
        })
    }
    
    
    func sortToDoListf(){
        task = task.sorted(by: { firstToDo, secondToDo in
            if let firstDate = firstToDo.deadline, let secondDate = secondToDo.deadline {
                return firstDate > secondDate
            } else {
                return false
            }
        })
    }
    
    
    
    
}








