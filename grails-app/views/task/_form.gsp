<%@ page import="projecttracker.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="task.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${taskInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="task.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${projecttracker.Project.list()}" optionKey="id" required="" value="${taskInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'assignee', 'error')} required">
	<label for="assignee">
		<g:message code="task.assignee.label" default="Assignee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assignee" name="assignee.id" from="${projecttracker.EndUser.list()}" optionKey="id" required="" value="${taskInstance?.assignee?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="task.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${taskInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${taskInstance?.description}"/>

</div>

