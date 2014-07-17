<%@ page import="projecttracker.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${projectInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${projectInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="project.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${projectInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'billingType', 'error')} required">
	<label for="billingType">
		<g:message code="project.billingType.label" default="Billing Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="billingType" from="${projectInstance.constraints.billingType.inList}" required="" value="${projectInstance?.billingType}" valueMessagePrefix="project.billingType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="project.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${projecttracker.EndUser.list()}" optionKey="id" required="" value="${projectInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'task', 'error')} ">
	<label for="task">
		<g:message code="project.task.label" default="Task" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.task?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

