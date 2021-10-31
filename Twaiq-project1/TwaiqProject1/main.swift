

import Foundation

print(" To-Do-List 🗓 📌\n")
print("Enter any number to show the List: ", terminator: "")
var input = Utils.readInt()
let t = List()

while input != 0 {
    print(" - Type a number from the List 🗒 ")
    print(" 1: Add new ToDo ✍🏼\n 2: Delete ToDo ❌\n 3: Update ToDo 🔧\n 4: Browse your ToDo 🗓 \n 5: Reorder ToDo from near to far date 📆\n 6: Reorder ToDo from far to near date 📆\n 7: Write done to do check ✅ ")
    print("Enter number from List :")
    input = Utils.readInt()
    
    
    switch input {
    case 1:
        print("Enter name of ToDo: " , terminator: "")
        let xname = Utils.readString()
        print("Enter description of ToDo: ", terminator: "")
        let xdec = Utils.readString()
        print("Enter the deadline date of ToDo in this format dd/mm/yyyy: ", terminator: "")
        let xdat = Utils.readString()
        let deadline = t.getDateFrom(xdat)
        let xtodo = Task(xname,xdec,deadline)
        t.addtask(xtodo)
        t.printdetalis()
    case 2:
        t.printdetalis()
        print("- Enter number of ToDo you wanna be deleted ❌")
        var show = Utils.readInt()
        show -= 1
        t.removetask(show)
        
    case 3:
        t.printdetalis()
        print("- Enter number of Todo you wanaa be updated 🛠")
        var aupd = Utils.readInt()
        aupd -= 1
        print("new Name: " ,terminator: "")
        let newName = Utils.readString()
        print("new Description: ", terminator: "")
        let newDes = Utils.readString()
        print("new Date: " ,terminator: "")
        let adead = Utils.readString()
        let deadline = t.getDateFrom(adead)
        let bupd = Task(newName ,newDes ,deadline)
        t.update(bupd,aupd)
        t.printdetalis()
    case 4:
        print("Your Todos is :")
        t.printdetalis()
    case 5:
        t.sortToDoListn()
        t.printdetalis()
    case 6:
        t.sortToDoListf()
        t.printdetalis()
    case 7:
        t.printdetalis()
        print("Enter the number of ToDo to insert check " ,terminator: "")
        let ich = Utils.readString()
        print("write done to do of check👇🏼")
        t.printdetalis()
        let dch = Utils.readString()
        t.printdetalis()
        let check = "done"
        if check == "done" {
            print("  ✅  ")
            
        }
        
    default:
        print("you pressed on wrong number, please try again❗️")
    }
}
print("The App is Closed..🔒")







