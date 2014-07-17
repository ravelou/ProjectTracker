package projecttracker

class EndUser {
	String userName
	String password
	String fullName
	
	String toString() {
		"${userName}"
	}
	static hasMany = [project : Project, task : Task]
    static constraints = {
		fullName()
		userName()
		password()
		
    }
}
