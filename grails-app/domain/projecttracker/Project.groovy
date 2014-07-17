package projecttracker

class Project {
	String name
	String description
	String billingType
	Date dueDate
	static belongsTo = [owner : EndUser]
	static hasMany = [task:Task]

	String toString() {
		"${name}"
	}
    static constraints = {
		name(balnk:false, unique:true)
		description()
		dueDate(min:new Date())
		billingType(inList:["Oui","Non"])
		
    }
}
