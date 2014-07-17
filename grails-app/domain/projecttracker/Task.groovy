package projecttracker

class Task {
	String name
	String toString(){
		${"name"}
	}
	String description
	Date dueDate
	static belongsTo =[assignee:EndUser, project:Project]
	
    static constraints = {
		name()
		project()
		assignee()
		dueDate()
		description()
    }
}
