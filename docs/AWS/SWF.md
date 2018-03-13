## Module AWS.SWF

<fullname>Amazon Simple Workflow Service</fullname> <p>The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to coordinate work across distributed components. In Amazon SWF, a <i>task</i> represents a logical unit of work that is performed by a component of your workflow. Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and concurrency in accordance with the logical flow of the application.</p> <p>Amazon SWF gives you full control over implementing tasks and coordinating them without worrying about underlying complexities such as tracking their progress and maintaining their state.</p> <p>This documentation serves as reference only. For a broader overview of the Amazon SWF programming model, see the <i> <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/">Amazon SWF Developer Guide</a> </i>.</p>

#### `countClosedWorkflowExecutions`

``` purescript
countClosedWorkflowExecutions :: forall eff. CountClosedWorkflowExecutionsInput -> Aff (exception :: EXCEPTION | eff) WorkflowExecutionCount
```

<p>Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `countOpenWorkflowExecutions`

``` purescript
countOpenWorkflowExecutions :: forall eff. CountOpenWorkflowExecutionsInput -> Aff (exception :: EXCEPTION | eff) WorkflowExecutionCount
```

<p>Returns the number of open workflow executions within the given domain that meet the specified filtering criteria.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `countPendingActivityTasks`

``` purescript
countPendingActivityTasks :: forall eff. CountPendingActivityTasksInput -> Aff (exception :: EXCEPTION | eff) PendingTaskCount
```

<p>Returns the estimated number of activity tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no activity task was ever scheduled in then <code>0</code> is returned.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `countPendingDecisionTasks`

``` purescript
countPendingDecisionTasks :: forall eff. CountPendingDecisionTasksInput -> Aff (exception :: EXCEPTION | eff) PendingTaskCount
```

<p>Returns the estimated number of decision tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no decision task was ever scheduled in then <code>0</code> is returned.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `deprecateActivityType`

``` purescript
deprecateActivityType :: forall eff. DeprecateActivityTypeInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deprecates the specified <i>activity type</i>. After an activity type has been deprecated, you cannot create new tasks of that activity type. Tasks of this type that were scheduled before the type was deprecated continue to run.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `deprecateDomain`

``` purescript
deprecateDomain :: forall eff. DeprecateDomainInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deprecates the specified domain. After a domain has been deprecated it cannot be used to create new workflow executions or register new types. However, you can still use visibility actions on this domain. Deprecating a domain also deprecates all activity and workflow types registered in the domain. Executions that were started before the domain was deprecated continues to run.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `deprecateWorkflowType`

``` purescript
deprecateWorkflowType :: forall eff. DeprecateWorkflowTypeInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deprecates the specified <i>workflow type</i>. After a workflow type has been deprecated, you cannot create new executions of that type. Executions that were started before the type was deprecated continues to run. A deprecated workflow type may still be used when calling visibility actions.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `describeActivityType`

``` purescript
describeActivityType :: forall eff. DescribeActivityTypeInput -> Aff (exception :: EXCEPTION | eff) ActivityTypeDetail
```

<p>Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `describeDomain`

``` purescript
describeDomain :: forall eff. DescribeDomainInput -> Aff (exception :: EXCEPTION | eff) DomainDetail
```

<p>Returns information about the specified domain, including description and status.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `describeWorkflowExecution`

``` purescript
describeWorkflowExecution :: forall eff. DescribeWorkflowExecutionInput -> Aff (exception :: EXCEPTION | eff) WorkflowExecutionDetail
```

<p>Returns information about the specified workflow execution including its type and some statistics.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `describeWorkflowType`

``` purescript
describeWorkflowType :: forall eff. DescribeWorkflowTypeInput -> Aff (exception :: EXCEPTION | eff) WorkflowTypeDetail
```

<p>Returns information about the specified <i>workflow type</i>. This includes configuration settings specified when the type was registered and other information such as creation date, current status, etc.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `getWorkflowExecutionHistory`

``` purescript
getWorkflowExecutionHistory :: forall eff. GetWorkflowExecutionHistoryInput -> Aff (exception :: EXCEPTION | eff) History
```

<p>Returns the history of the specified workflow execution. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `listActivityTypes`

``` purescript
listActivityTypes :: forall eff. ListActivityTypesInput -> Aff (exception :: EXCEPTION | eff) ActivityTypeInfos
```

<p>Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `listClosedWorkflowExecutions`

``` purescript
listClosedWorkflowExecutions :: forall eff. ListClosedWorkflowExecutionsInput -> Aff (exception :: EXCEPTION | eff) WorkflowExecutionInfos
```

<p>Returns a list of closed workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `listDomains`

``` purescript
listDomains :: forall eff. ListDomainsInput -> Aff (exception :: EXCEPTION | eff) DomainInfos
```

<p>Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains. The element must be set to <code>arn:aws:swf::AccountID:domain/*</code>, where <i>AccountID</i> is the account ID, with no dashes.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `listOpenWorkflowExecutions`

``` purescript
listOpenWorkflowExecutions :: forall eff. ListOpenWorkflowExecutionsInput -> Aff (exception :: EXCEPTION | eff) WorkflowExecutionInfos
```

<p>Returns a list of open workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `listWorkflowTypes`

``` purescript
listWorkflowTypes :: forall eff. ListWorkflowTypesInput -> Aff (exception :: EXCEPTION | eff) WorkflowTypeInfos
```

<p>Returns information about workflow types in the specified domain. The results may be split into multiple pages that can be retrieved by making the call repeatedly.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `pollForActivityTask`

``` purescript
pollForActivityTask :: forall eff. PollForActivityTaskInput -> Aff (exception :: EXCEPTION | eff) ActivityTask
```

<p>Used by workers to get an <a>ActivityTask</a> from the specified activity <code>taskList</code>. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available. The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns an empty result. An empty result, in this context, means that an ActivityTask is returned, but that the value of taskToken is an empty string. If a task is returned, the worker should use its type to identify and process it correctly.</p> <important> <p>Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `pollForDecisionTask`

``` purescript
pollForDecisionTask :: forall eff. PollForDecisionTaskInput -> Aff (exception :: EXCEPTION | eff) DecisionTask
```

<p>Used by deciders to get a <a>DecisionTask</a> from the specified decision <code>taskList</code>. A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task.</p> <p>This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of taskToken is an empty string.</p> <important> <p>Deciders should set their client side socket timeout to at least 70 seconds (10 seconds higher than the timeout).</p> </important> <important> <p>Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to <code>PollForDecisionTask</code> using the <code>nextPageToken</code> returned by the initial call. Note that you do <i>not</i> call <code>GetWorkflowExecutionHistory</code> with this <code>nextPageToken</code>. Instead, call <code>PollForDecisionTask</code> again.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `recordActivityTaskHeartbeat`

``` purescript
recordActivityTaskHeartbeat :: forall eff. RecordActivityTaskHeartbeatInput -> Aff (exception :: EXCEPTION | eff) ActivityTaskStatus
```

<p>Used by activity workers to report to the service that the <a>ActivityTask</a> represented by the specified <code>taskToken</code> is still making progress. The worker can also specify details of the progress, for example percent complete, using the <code>details</code> parameter. This action can also be used by the worker as a mechanism to check if cancellation is being requested for the activity task. If a cancellation is being attempted for the specified task, then the boolean <code>cancelRequested</code> flag returned by the service is set to <code>true</code>.</p> <p>This action resets the <code>taskHeartbeatTimeout</code> clock. The <code>taskHeartbeatTimeout</code> is specified in <a>RegisterActivityType</a>.</p> <p>This action doesn't in itself create an event in the workflow execution history. However, if the task times out, the workflow execution history contains a <code>ActivityTaskTimedOut</code> event that contains the information from the last heartbeat generated by the activity worker.</p> <note> <p>The <code>taskStartToCloseTimeout</code> of an activity type is the maximum duration of an activity task, regardless of the number of <a>RecordActivityTaskHeartbeat</a> requests received. The <code>taskStartToCloseTimeout</code> is also specified in <a>RegisterActivityType</a>.</p> </note> <note> <p>This operation is only useful for long-lived activities to report liveliness of the task and to determine if a cancellation is being attempted.</p> </note> <important> <p>If the <code>cancelRequested</code> flag returns <code>true</code>, a cancellation is being attempted. If the worker can cancel the activity, it should respond with <a>RespondActivityTaskCanceled</a>. Otherwise, it should ignore the cancellation request.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `registerActivityType`

``` purescript
registerActivityType :: forall eff. RegisterActivityTypeInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Registers a new <i>activity type</i> along with its configuration settings in the specified domain.</p> <important> <p>A <code>TypeAlreadyExists</code> fault is returned if the type already exists in the domain. You cannot change any configuration settings of the type after its registration, and it must be registered as a new version.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</p> </li> <li> <p> <code>name</code>: String constraint. The key is <code>swf:name</code>.</p> </li> <li> <p> <code>version</code>: String constraint. The key is <code>swf:version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `registerDomain`

``` purescript
registerDomain :: forall eff. RegisterDomainInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Registers a new domain.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>You cannot use an IAM policy to control domain access for this action. The name of the domain being registered is available as the resource of this action.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `registerWorkflowType`

``` purescript
registerWorkflowType :: forall eff. RegisterWorkflowTypeInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Registers a new <i>workflow type</i> and its configuration settings in the specified domain.</p> <p>The retention period for the workflow history is set by the <a>RegisterDomain</a> action.</p> <important> <p>If the type already exists, then a <code>TypeAlreadyExists</code> fault is returned. You cannot change the configuration settings of a workflow type once it is registered and it must be registered as a new version.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</p> </li> <li> <p> <code>name</code>: String constraint. The key is <code>swf:name</code>.</p> </li> <li> <p> <code>version</code>: String constraint. The key is <code>swf:version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `requestCancelWorkflowExecution`

``` purescript
requestCancelWorkflowExecution :: forall eff. RequestCancelWorkflowExecutionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Records a <code>WorkflowExecutionCancelRequested</code> event in the currently running workflow execution identified by the given domain, workflowId, and runId. This logically requests the cancellation of the workflow execution as a whole. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> <note> <p>If the runId isn't specified, the <code>WorkflowExecutionCancelRequested</code> event is recorded in the history of the current open workflow execution with the specified workflowId in the domain.</p> </note> <note> <p>Because this action allows the workflow to properly clean up and gracefully close, it should be used instead of <a>TerminateWorkflowExecution</a> when possible.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `respondActivityTaskCanceled`

``` purescript
respondActivityTaskCanceled :: forall eff. RespondActivityTaskCanceledInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> was successfully canceled. Additional <code>details</code> can be provided using the <code>details</code> argument.</p> <p>These <code>details</code> (if provided) appear in the <code>ActivityTaskCanceled</code> event added to the workflow history.</p> <important> <p>Only use this operation if the <code>canceled</code> flag of a <a>RecordActivityTaskHeartbeat</a> request returns <code>true</code> and if the activity can be safely undone or abandoned.</p> </important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, RespondActivityTaskCanceled, <a>RespondActivityTaskFailed</a>, or the task has <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `respondActivityTaskCompleted`

``` purescript
respondActivityTaskCompleted :: forall eff. RespondActivityTaskCompletedInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> completed successfully with a <code>result</code> (if provided). The <code>result</code> appears in the <code>ActivityTaskCompleted</code> event in the workflow history.</p> <important> <p>If the requested task doesn't complete successfully, use <a>RespondActivityTaskFailed</a> instead. If the worker finds that the task is canceled through the <code>canceled</code> flag returned by <a>RecordActivityTaskHeartbeat</a>, it should cancel the task, clean up and then call <a>RespondActivityTaskCanceled</a>.</p> </important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, <a>RespondActivityTaskCanceled</a>, <a>RespondActivityTaskFailed</a>, or the task has <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `respondActivityTaskFailed`

``` purescript
respondActivityTaskFailed :: forall eff. RespondActivityTaskFailedInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> has failed with <code>reason</code> (if specified). The <code>reason</code> and <code>details</code> appear in the <code>ActivityTaskFailed</code> event added to the workflow history.</p> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, <a>RespondActivityTaskCanceled</a>, RespondActivityTaskFailed, or the task has <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `respondDecisionTaskCompleted`

``` purescript
respondDecisionTaskCompleted :: forall eff. RespondDecisionTaskCompletedInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Used by deciders to tell the service that the <a>DecisionTask</a> identified by the <code>taskToken</code> has successfully completed. The <code>decisions</code> argument specifies the list of decisions made while processing the task.</p> <p>A <code>DecisionTaskCompleted</code> event is added to the workflow history. The <code>executionContext</code> specified is attached to the event in the workflow execution history.</p> <p> <b>Access Control</b> </p> <p>If an IAM policy grants permission to use <code>RespondDecisionTaskCompleted</code>, it can express permissions for the list of decisions in the <code>decisions</code> parameter. Each of the decisions has one or more parameters, much like a regular API call. To allow for policies to be as readable as possible, you can express permissions on decisions as if they were actual API calls, including applying conditions to some parameters. For more information, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `signalWorkflowExecution`

``` purescript
signalWorkflowExecution :: forall eff. SignalWorkflowExecutionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Records a <code>WorkflowExecutionSignaled</code> event in the workflow execution history and creates a decision task for the workflow execution identified by the given domain, workflowId and runId. The event is recorded with the specified user defined signalName and input (if provided).</p> <note> <p>If a runId isn't specified, then the <code>WorkflowExecutionSignaled</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</p> </note> <note> <p>If the specified workflow execution isn't open, this method fails with <code>UnknownResource</code>.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `startWorkflowExecution`

``` purescript
startWorkflowExecution :: forall eff. StartWorkflowExecutionInput -> Aff (exception :: EXCEPTION | eff) Run
```

<p>Starts an execution of the workflow type in the specified domain using the provided <code>workflowId</code> and input data.</p> <p>This action returns the newly started workflow execution.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.0</code>: The key is <code>swf:tagList.member.0</code>.</p> </li> <li> <p> <code>tagList.member.1</code>: The key is <code>swf:tagList.member.1</code>.</p> </li> <li> <p> <code>tagList.member.2</code>: The key is <code>swf:tagList.member.2</code>.</p> </li> <li> <p> <code>tagList.member.3</code>: The key is <code>swf:tagList.member.3</code>.</p> </li> <li> <p> <code>tagList.member.4</code>: The key is <code>swf:tagList.member.4</code>.</p> </li> <li> <p> <code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `terminateWorkflowExecution`

``` purescript
terminateWorkflowExecution :: forall eff. TerminateWorkflowExecutionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Records a <code>WorkflowExecutionTerminated</code> event and forces closure of the workflow execution identified by the given domain, runId, and workflowId. The child policy, registered with the workflow type or specified when starting this execution, is applied to any open child workflow executions of this workflow execution.</p> <important> <p>If the identified workflow execution was in progress, it is terminated immediately.</p> </important> <note> <p>If a runId isn't specified, then the <code>WorkflowExecutionTerminated</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</p> </note> <note> <p>You should consider using <a>RequestCancelWorkflowExecution</a> action instead because it allows the workflow to gracefully close while <a>TerminateWorkflowExecution</a> doesn't.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

#### `ActivityId`

``` purescript
newtype ActivityId
  = ActivityId String
```

##### Instances
``` purescript
Newtype ActivityId _
Generic ActivityId _
Show ActivityId
Decode ActivityId
Encode ActivityId
```

#### `ActivityTask`

``` purescript
newtype ActivityTask
  = ActivityTask { taskToken :: TaskToken, activityId :: ActivityId, startedEventId :: EventId, workflowExecution :: WorkflowExecution, activityType :: ActivityType, input :: NullOrUndefined (Data) }
```

<p>Unit of work sent to an activity worker.</p>

##### Instances
``` purescript
Newtype ActivityTask _
Generic ActivityTask _
Show ActivityTask
Decode ActivityTask
Encode ActivityTask
```

#### `newActivityTask`

``` purescript
newActivityTask :: ActivityId -> ActivityType -> EventId -> TaskToken -> WorkflowExecution -> ActivityTask
```

Constructs ActivityTask from required parameters

#### `newActivityTask'`

``` purescript
newActivityTask' :: ActivityId -> ActivityType -> EventId -> TaskToken -> WorkflowExecution -> ({ taskToken :: TaskToken, activityId :: ActivityId, startedEventId :: EventId, workflowExecution :: WorkflowExecution, activityType :: ActivityType, input :: NullOrUndefined (Data) } -> { taskToken :: TaskToken, activityId :: ActivityId, startedEventId :: EventId, workflowExecution :: WorkflowExecution, activityType :: ActivityType, input :: NullOrUndefined (Data) }) -> ActivityTask
```

Constructs ActivityTask's fields from required parameters

#### `ActivityTaskCancelRequestedEventAttributes`

``` purescript
newtype ActivityTaskCancelRequestedEventAttributes
  = ActivityTaskCancelRequestedEventAttributes { decisionTaskCompletedEventId :: EventId, activityId :: ActivityId }
```

<p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>

##### Instances
``` purescript
Newtype ActivityTaskCancelRequestedEventAttributes _
Generic ActivityTaskCancelRequestedEventAttributes _
Show ActivityTaskCancelRequestedEventAttributes
Decode ActivityTaskCancelRequestedEventAttributes
Encode ActivityTaskCancelRequestedEventAttributes
```

#### `newActivityTaskCancelRequestedEventAttributes`

``` purescript
newActivityTaskCancelRequestedEventAttributes :: ActivityId -> EventId -> ActivityTaskCancelRequestedEventAttributes
```

Constructs ActivityTaskCancelRequestedEventAttributes from required parameters

#### `newActivityTaskCancelRequestedEventAttributes'`

``` purescript
newActivityTaskCancelRequestedEventAttributes' :: ActivityId -> EventId -> ({ decisionTaskCompletedEventId :: EventId, activityId :: ActivityId } -> { decisionTaskCompletedEventId :: EventId, activityId :: ActivityId }) -> ActivityTaskCancelRequestedEventAttributes
```

Constructs ActivityTaskCancelRequestedEventAttributes's fields from required parameters

#### `ActivityTaskCanceledEventAttributes`

``` purescript
newtype ActivityTaskCanceledEventAttributes
  = ActivityTaskCanceledEventAttributes { details :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId, latestCancelRequestedEventId :: NullOrUndefined (EventId) }
```

<p>Provides the details of the <code>ActivityTaskCanceled</code> event.</p>

##### Instances
``` purescript
Newtype ActivityTaskCanceledEventAttributes _
Generic ActivityTaskCanceledEventAttributes _
Show ActivityTaskCanceledEventAttributes
Decode ActivityTaskCanceledEventAttributes
Encode ActivityTaskCanceledEventAttributes
```

#### `newActivityTaskCanceledEventAttributes`

``` purescript
newActivityTaskCanceledEventAttributes :: EventId -> EventId -> ActivityTaskCanceledEventAttributes
```

Constructs ActivityTaskCanceledEventAttributes from required parameters

#### `newActivityTaskCanceledEventAttributes'`

``` purescript
newActivityTaskCanceledEventAttributes' :: EventId -> EventId -> ({ details :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId, latestCancelRequestedEventId :: NullOrUndefined (EventId) } -> { details :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId, latestCancelRequestedEventId :: NullOrUndefined (EventId) }) -> ActivityTaskCanceledEventAttributes
```

Constructs ActivityTaskCanceledEventAttributes's fields from required parameters

#### `ActivityTaskCompletedEventAttributes`

``` purescript
newtype ActivityTaskCompletedEventAttributes
  = ActivityTaskCompletedEventAttributes { result :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>ActivityTaskCompleted</code> event.</p>

##### Instances
``` purescript
Newtype ActivityTaskCompletedEventAttributes _
Generic ActivityTaskCompletedEventAttributes _
Show ActivityTaskCompletedEventAttributes
Decode ActivityTaskCompletedEventAttributes
Encode ActivityTaskCompletedEventAttributes
```

#### `newActivityTaskCompletedEventAttributes`

``` purescript
newActivityTaskCompletedEventAttributes :: EventId -> EventId -> ActivityTaskCompletedEventAttributes
```

Constructs ActivityTaskCompletedEventAttributes from required parameters

#### `newActivityTaskCompletedEventAttributes'`

``` purescript
newActivityTaskCompletedEventAttributes' :: EventId -> EventId -> ({ result :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId } -> { result :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId }) -> ActivityTaskCompletedEventAttributes
```

Constructs ActivityTaskCompletedEventAttributes's fields from required parameters

#### `ActivityTaskFailedEventAttributes`

``` purescript
newtype ActivityTaskFailedEventAttributes
  = ActivityTaskFailedEventAttributes { reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>ActivityTaskFailed</code> event.</p>

##### Instances
``` purescript
Newtype ActivityTaskFailedEventAttributes _
Generic ActivityTaskFailedEventAttributes _
Show ActivityTaskFailedEventAttributes
Decode ActivityTaskFailedEventAttributes
Encode ActivityTaskFailedEventAttributes
```

#### `newActivityTaskFailedEventAttributes`

``` purescript
newActivityTaskFailedEventAttributes :: EventId -> EventId -> ActivityTaskFailedEventAttributes
```

Constructs ActivityTaskFailedEventAttributes from required parameters

#### `newActivityTaskFailedEventAttributes'`

``` purescript
newActivityTaskFailedEventAttributes' :: EventId -> EventId -> ({ reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId } -> { reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId }) -> ActivityTaskFailedEventAttributes
```

Constructs ActivityTaskFailedEventAttributes's fields from required parameters

#### `ActivityTaskScheduledEventAttributes`

``` purescript
newtype ActivityTaskScheduledEventAttributes
  = ActivityTaskScheduledEventAttributes { activityType :: ActivityType, activityId :: ActivityId, input :: NullOrUndefined (Data), control :: NullOrUndefined (Data), scheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), scheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), decisionTaskCompletedEventId :: EventId, heartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional) }
```

<p>Provides the details of the <code>ActivityTaskScheduled</code> event.</p>

##### Instances
``` purescript
Newtype ActivityTaskScheduledEventAttributes _
Generic ActivityTaskScheduledEventAttributes _
Show ActivityTaskScheduledEventAttributes
Decode ActivityTaskScheduledEventAttributes
Encode ActivityTaskScheduledEventAttributes
```

#### `newActivityTaskScheduledEventAttributes`

``` purescript
newActivityTaskScheduledEventAttributes :: ActivityId -> ActivityType -> EventId -> TaskList -> ActivityTaskScheduledEventAttributes
```

Constructs ActivityTaskScheduledEventAttributes from required parameters

#### `newActivityTaskScheduledEventAttributes'`

``` purescript
newActivityTaskScheduledEventAttributes' :: ActivityId -> ActivityType -> EventId -> TaskList -> ({ activityType :: ActivityType, activityId :: ActivityId, input :: NullOrUndefined (Data), control :: NullOrUndefined (Data), scheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), scheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), decisionTaskCompletedEventId :: EventId, heartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional) } -> { activityType :: ActivityType, activityId :: ActivityId, input :: NullOrUndefined (Data), control :: NullOrUndefined (Data), scheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), scheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), decisionTaskCompletedEventId :: EventId, heartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional) }) -> ActivityTaskScheduledEventAttributes
```

Constructs ActivityTaskScheduledEventAttributes's fields from required parameters

#### `ActivityTaskStartedEventAttributes`

``` purescript
newtype ActivityTaskStartedEventAttributes
  = ActivityTaskStartedEventAttributes { identity :: NullOrUndefined (Identity), scheduledEventId :: EventId }
```

<p>Provides the details of the <code>ActivityTaskStarted</code> event.</p>

##### Instances
``` purescript
Newtype ActivityTaskStartedEventAttributes _
Generic ActivityTaskStartedEventAttributes _
Show ActivityTaskStartedEventAttributes
Decode ActivityTaskStartedEventAttributes
Encode ActivityTaskStartedEventAttributes
```

#### `newActivityTaskStartedEventAttributes`

``` purescript
newActivityTaskStartedEventAttributes :: EventId -> ActivityTaskStartedEventAttributes
```

Constructs ActivityTaskStartedEventAttributes from required parameters

#### `newActivityTaskStartedEventAttributes'`

``` purescript
newActivityTaskStartedEventAttributes' :: EventId -> ({ identity :: NullOrUndefined (Identity), scheduledEventId :: EventId } -> { identity :: NullOrUndefined (Identity), scheduledEventId :: EventId }) -> ActivityTaskStartedEventAttributes
```

Constructs ActivityTaskStartedEventAttributes's fields from required parameters

#### `ActivityTaskStatus`

``` purescript
newtype ActivityTaskStatus
  = ActivityTaskStatus { cancelRequested :: Canceled }
```

<p>Status information about an activity task.</p>

##### Instances
``` purescript
Newtype ActivityTaskStatus _
Generic ActivityTaskStatus _
Show ActivityTaskStatus
Decode ActivityTaskStatus
Encode ActivityTaskStatus
```

#### `newActivityTaskStatus`

``` purescript
newActivityTaskStatus :: Canceled -> ActivityTaskStatus
```

Constructs ActivityTaskStatus from required parameters

#### `newActivityTaskStatus'`

``` purescript
newActivityTaskStatus' :: Canceled -> ({ cancelRequested :: Canceled } -> { cancelRequested :: Canceled }) -> ActivityTaskStatus
```

Constructs ActivityTaskStatus's fields from required parameters

#### `ActivityTaskTimedOutEventAttributes`

``` purescript
newtype ActivityTaskTimedOutEventAttributes
  = ActivityTaskTimedOutEventAttributes { timeoutType :: ActivityTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId, details :: NullOrUndefined (LimitedData) }
```

<p>Provides the details of the <code>ActivityTaskTimedOut</code> event.</p>

##### Instances
``` purescript
Newtype ActivityTaskTimedOutEventAttributes _
Generic ActivityTaskTimedOutEventAttributes _
Show ActivityTaskTimedOutEventAttributes
Decode ActivityTaskTimedOutEventAttributes
Encode ActivityTaskTimedOutEventAttributes
```

#### `newActivityTaskTimedOutEventAttributes`

``` purescript
newActivityTaskTimedOutEventAttributes :: EventId -> EventId -> ActivityTaskTimeoutType -> ActivityTaskTimedOutEventAttributes
```

Constructs ActivityTaskTimedOutEventAttributes from required parameters

#### `newActivityTaskTimedOutEventAttributes'`

``` purescript
newActivityTaskTimedOutEventAttributes' :: EventId -> EventId -> ActivityTaskTimeoutType -> ({ timeoutType :: ActivityTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId, details :: NullOrUndefined (LimitedData) } -> { timeoutType :: ActivityTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId, details :: NullOrUndefined (LimitedData) }) -> ActivityTaskTimedOutEventAttributes
```

Constructs ActivityTaskTimedOutEventAttributes's fields from required parameters

#### `ActivityTaskTimeoutType`

``` purescript
newtype ActivityTaskTimeoutType
  = ActivityTaskTimeoutType String
```

##### Instances
``` purescript
Newtype ActivityTaskTimeoutType _
Generic ActivityTaskTimeoutType _
Show ActivityTaskTimeoutType
Decode ActivityTaskTimeoutType
Encode ActivityTaskTimeoutType
```

#### `ActivityType`

``` purescript
newtype ActivityType
  = ActivityType { name :: Name, version :: Version }
```

<p>Represents an activity type.</p>

##### Instances
``` purescript
Newtype ActivityType _
Generic ActivityType _
Show ActivityType
Decode ActivityType
Encode ActivityType
```

#### `newActivityType`

``` purescript
newActivityType :: Name -> Version -> ActivityType
```

Constructs ActivityType from required parameters

#### `newActivityType'`

``` purescript
newActivityType' :: Name -> Version -> ({ name :: Name, version :: Version } -> { name :: Name, version :: Version }) -> ActivityType
```

Constructs ActivityType's fields from required parameters

#### `ActivityTypeConfiguration`

``` purescript
newtype ActivityTypeConfiguration
  = ActivityTypeConfiguration { defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultTaskScheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }
```

<p>Configuration settings registered with the activity type.</p>

##### Instances
``` purescript
Newtype ActivityTypeConfiguration _
Generic ActivityTypeConfiguration _
Show ActivityTypeConfiguration
Decode ActivityTypeConfiguration
Encode ActivityTypeConfiguration
```

#### `newActivityTypeConfiguration`

``` purescript
newActivityTypeConfiguration :: ActivityTypeConfiguration
```

Constructs ActivityTypeConfiguration from required parameters

#### `newActivityTypeConfiguration'`

``` purescript
newActivityTypeConfiguration' :: ({ defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultTaskScheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) } -> { defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultTaskScheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }) -> ActivityTypeConfiguration
```

Constructs ActivityTypeConfiguration's fields from required parameters

#### `ActivityTypeDetail`

``` purescript
newtype ActivityTypeDetail
  = ActivityTypeDetail { typeInfo :: ActivityTypeInfo, configuration :: ActivityTypeConfiguration }
```

<p>Detailed information about an activity type.</p>

##### Instances
``` purescript
Newtype ActivityTypeDetail _
Generic ActivityTypeDetail _
Show ActivityTypeDetail
Decode ActivityTypeDetail
Encode ActivityTypeDetail
```

#### `newActivityTypeDetail`

``` purescript
newActivityTypeDetail :: ActivityTypeConfiguration -> ActivityTypeInfo -> ActivityTypeDetail
```

Constructs ActivityTypeDetail from required parameters

#### `newActivityTypeDetail'`

``` purescript
newActivityTypeDetail' :: ActivityTypeConfiguration -> ActivityTypeInfo -> ({ typeInfo :: ActivityTypeInfo, configuration :: ActivityTypeConfiguration } -> { typeInfo :: ActivityTypeInfo, configuration :: ActivityTypeConfiguration }) -> ActivityTypeDetail
```

Constructs ActivityTypeDetail's fields from required parameters

#### `ActivityTypeInfo`

``` purescript
newtype ActivityTypeInfo
  = ActivityTypeInfo { activityType :: ActivityType, status :: RegistrationStatus, description :: NullOrUndefined (Description), creationDate :: Timestamp, deprecationDate :: NullOrUndefined (Timestamp) }
```

<p>Detailed information about an activity type.</p>

##### Instances
``` purescript
Newtype ActivityTypeInfo _
Generic ActivityTypeInfo _
Show ActivityTypeInfo
Decode ActivityTypeInfo
Encode ActivityTypeInfo
```

#### `newActivityTypeInfo`

``` purescript
newActivityTypeInfo :: ActivityType -> Timestamp -> RegistrationStatus -> ActivityTypeInfo
```

Constructs ActivityTypeInfo from required parameters

#### `newActivityTypeInfo'`

``` purescript
newActivityTypeInfo' :: ActivityType -> Timestamp -> RegistrationStatus -> ({ activityType :: ActivityType, status :: RegistrationStatus, description :: NullOrUndefined (Description), creationDate :: Timestamp, deprecationDate :: NullOrUndefined (Timestamp) } -> { activityType :: ActivityType, status :: RegistrationStatus, description :: NullOrUndefined (Description), creationDate :: Timestamp, deprecationDate :: NullOrUndefined (Timestamp) }) -> ActivityTypeInfo
```

Constructs ActivityTypeInfo's fields from required parameters

#### `ActivityTypeInfoList`

``` purescript
newtype ActivityTypeInfoList
  = ActivityTypeInfoList (Array ActivityTypeInfo)
```

##### Instances
``` purescript
Newtype ActivityTypeInfoList _
Generic ActivityTypeInfoList _
Show ActivityTypeInfoList
Decode ActivityTypeInfoList
Encode ActivityTypeInfoList
```

#### `ActivityTypeInfos`

``` purescript
newtype ActivityTypeInfos
  = ActivityTypeInfos { typeInfos :: ActivityTypeInfoList, nextPageToken :: NullOrUndefined (PageToken) }
```

<p>Contains a paginated list of activity type information structures.</p>

##### Instances
``` purescript
Newtype ActivityTypeInfos _
Generic ActivityTypeInfos _
Show ActivityTypeInfos
Decode ActivityTypeInfos
Encode ActivityTypeInfos
```

#### `newActivityTypeInfos`

``` purescript
newActivityTypeInfos :: ActivityTypeInfoList -> ActivityTypeInfos
```

Constructs ActivityTypeInfos from required parameters

#### `newActivityTypeInfos'`

``` purescript
newActivityTypeInfos' :: ActivityTypeInfoList -> ({ typeInfos :: ActivityTypeInfoList, nextPageToken :: NullOrUndefined (PageToken) } -> { typeInfos :: ActivityTypeInfoList, nextPageToken :: NullOrUndefined (PageToken) }) -> ActivityTypeInfos
```

Constructs ActivityTypeInfos's fields from required parameters

#### `Arn`

``` purescript
newtype Arn
  = Arn String
```

##### Instances
``` purescript
Newtype Arn _
Generic Arn _
Show Arn
Decode Arn
Encode Arn
```

#### `CancelTimerDecisionAttributes`

``` purescript
newtype CancelTimerDecisionAttributes
  = CancelTimerDecisionAttributes { timerId :: TimerId }
```

<p>Provides the details of the <code>CancelTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CancelTimerDecisionAttributes _
Generic CancelTimerDecisionAttributes _
Show CancelTimerDecisionAttributes
Decode CancelTimerDecisionAttributes
Encode CancelTimerDecisionAttributes
```

#### `newCancelTimerDecisionAttributes`

``` purescript
newCancelTimerDecisionAttributes :: TimerId -> CancelTimerDecisionAttributes
```

Constructs CancelTimerDecisionAttributes from required parameters

#### `newCancelTimerDecisionAttributes'`

``` purescript
newCancelTimerDecisionAttributes' :: TimerId -> ({ timerId :: TimerId } -> { timerId :: TimerId }) -> CancelTimerDecisionAttributes
```

Constructs CancelTimerDecisionAttributes's fields from required parameters

#### `CancelTimerFailedCause`

``` purescript
newtype CancelTimerFailedCause
  = CancelTimerFailedCause String
```

##### Instances
``` purescript
Newtype CancelTimerFailedCause _
Generic CancelTimerFailedCause _
Show CancelTimerFailedCause
Decode CancelTimerFailedCause
Encode CancelTimerFailedCause
```

#### `CancelTimerFailedEventAttributes`

``` purescript
newtype CancelTimerFailedEventAttributes
  = CancelTimerFailedEventAttributes { timerId :: TimerId, cause :: CancelTimerFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>CancelTimerFailed</code> event.</p>

##### Instances
``` purescript
Newtype CancelTimerFailedEventAttributes _
Generic CancelTimerFailedEventAttributes _
Show CancelTimerFailedEventAttributes
Decode CancelTimerFailedEventAttributes
Encode CancelTimerFailedEventAttributes
```

#### `newCancelTimerFailedEventAttributes`

``` purescript
newCancelTimerFailedEventAttributes :: CancelTimerFailedCause -> EventId -> TimerId -> CancelTimerFailedEventAttributes
```

Constructs CancelTimerFailedEventAttributes from required parameters

#### `newCancelTimerFailedEventAttributes'`

``` purescript
newCancelTimerFailedEventAttributes' :: CancelTimerFailedCause -> EventId -> TimerId -> ({ timerId :: TimerId, cause :: CancelTimerFailedCause, decisionTaskCompletedEventId :: EventId } -> { timerId :: TimerId, cause :: CancelTimerFailedCause, decisionTaskCompletedEventId :: EventId }) -> CancelTimerFailedEventAttributes
```

Constructs CancelTimerFailedEventAttributes's fields from required parameters

#### `CancelWorkflowExecutionDecisionAttributes`

``` purescript
newtype CancelWorkflowExecutionDecisionAttributes
  = CancelWorkflowExecutionDecisionAttributes { details :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>CancelWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CancelWorkflowExecutionDecisionAttributes _
Generic CancelWorkflowExecutionDecisionAttributes _
Show CancelWorkflowExecutionDecisionAttributes
Decode CancelWorkflowExecutionDecisionAttributes
Encode CancelWorkflowExecutionDecisionAttributes
```

#### `newCancelWorkflowExecutionDecisionAttributes`

``` purescript
newCancelWorkflowExecutionDecisionAttributes :: CancelWorkflowExecutionDecisionAttributes
```

Constructs CancelWorkflowExecutionDecisionAttributes from required parameters

#### `newCancelWorkflowExecutionDecisionAttributes'`

``` purescript
newCancelWorkflowExecutionDecisionAttributes' :: ({ details :: NullOrUndefined (Data) } -> { details :: NullOrUndefined (Data) }) -> CancelWorkflowExecutionDecisionAttributes
```

Constructs CancelWorkflowExecutionDecisionAttributes's fields from required parameters

#### `CancelWorkflowExecutionFailedCause`

``` purescript
newtype CancelWorkflowExecutionFailedCause
  = CancelWorkflowExecutionFailedCause String
```

##### Instances
``` purescript
Newtype CancelWorkflowExecutionFailedCause _
Generic CancelWorkflowExecutionFailedCause _
Show CancelWorkflowExecutionFailedCause
Decode CancelWorkflowExecutionFailedCause
Encode CancelWorkflowExecutionFailedCause
```

#### `CancelWorkflowExecutionFailedEventAttributes`

``` purescript
newtype CancelWorkflowExecutionFailedEventAttributes
  = CancelWorkflowExecutionFailedEventAttributes { cause :: CancelWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>CancelWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype CancelWorkflowExecutionFailedEventAttributes _
Generic CancelWorkflowExecutionFailedEventAttributes _
Show CancelWorkflowExecutionFailedEventAttributes
Decode CancelWorkflowExecutionFailedEventAttributes
Encode CancelWorkflowExecutionFailedEventAttributes
```

#### `newCancelWorkflowExecutionFailedEventAttributes`

``` purescript
newCancelWorkflowExecutionFailedEventAttributes :: CancelWorkflowExecutionFailedCause -> EventId -> CancelWorkflowExecutionFailedEventAttributes
```

Constructs CancelWorkflowExecutionFailedEventAttributes from required parameters

#### `newCancelWorkflowExecutionFailedEventAttributes'`

``` purescript
newCancelWorkflowExecutionFailedEventAttributes' :: CancelWorkflowExecutionFailedCause -> EventId -> ({ cause :: CancelWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId } -> { cause :: CancelWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }) -> CancelWorkflowExecutionFailedEventAttributes
```

Constructs CancelWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `Canceled`

``` purescript
newtype Canceled
  = Canceled Boolean
```

##### Instances
``` purescript
Newtype Canceled _
Generic Canceled _
Show Canceled
Decode Canceled
Encode Canceled
```

#### `CauseMessage`

``` purescript
newtype CauseMessage
  = CauseMessage String
```

##### Instances
``` purescript
Newtype CauseMessage _
Generic CauseMessage _
Show CauseMessage
Decode CauseMessage
Encode CauseMessage
```

#### `ChildPolicy`

``` purescript
newtype ChildPolicy
  = ChildPolicy String
```

##### Instances
``` purescript
Newtype ChildPolicy _
Generic ChildPolicy _
Show ChildPolicy
Decode ChildPolicy
Encode ChildPolicy
```

#### `ChildWorkflowExecutionCanceledEventAttributes`

``` purescript
newtype ChildWorkflowExecutionCanceledEventAttributes
  = ChildWorkflowExecutionCanceledEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, details :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId }
```

<p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>

##### Instances
``` purescript
Newtype ChildWorkflowExecutionCanceledEventAttributes _
Generic ChildWorkflowExecutionCanceledEventAttributes _
Show ChildWorkflowExecutionCanceledEventAttributes
Decode ChildWorkflowExecutionCanceledEventAttributes
Encode ChildWorkflowExecutionCanceledEventAttributes
```

#### `newChildWorkflowExecutionCanceledEventAttributes`

``` purescript
newChildWorkflowExecutionCanceledEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionCanceledEventAttributes
```

Constructs ChildWorkflowExecutionCanceledEventAttributes from required parameters

#### `newChildWorkflowExecutionCanceledEventAttributes'`

``` purescript
newChildWorkflowExecutionCanceledEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, details :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, details :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionCanceledEventAttributes
```

Constructs ChildWorkflowExecutionCanceledEventAttributes's fields from required parameters

#### `ChildWorkflowExecutionCompletedEventAttributes`

``` purescript
newtype ChildWorkflowExecutionCompletedEventAttributes
  = ChildWorkflowExecutionCompletedEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, result :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>

##### Instances
``` purescript
Newtype ChildWorkflowExecutionCompletedEventAttributes _
Generic ChildWorkflowExecutionCompletedEventAttributes _
Show ChildWorkflowExecutionCompletedEventAttributes
Decode ChildWorkflowExecutionCompletedEventAttributes
Encode ChildWorkflowExecutionCompletedEventAttributes
```

#### `newChildWorkflowExecutionCompletedEventAttributes`

``` purescript
newChildWorkflowExecutionCompletedEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionCompletedEventAttributes
```

Constructs ChildWorkflowExecutionCompletedEventAttributes from required parameters

#### `newChildWorkflowExecutionCompletedEventAttributes'`

``` purescript
newChildWorkflowExecutionCompletedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, result :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, result :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionCompletedEventAttributes
```

Constructs ChildWorkflowExecutionCompletedEventAttributes's fields from required parameters

#### `ChildWorkflowExecutionFailedEventAttributes`

``` purescript
newtype ChildWorkflowExecutionFailedEventAttributes
  = ChildWorkflowExecutionFailedEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>ChildWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype ChildWorkflowExecutionFailedEventAttributes _
Generic ChildWorkflowExecutionFailedEventAttributes _
Show ChildWorkflowExecutionFailedEventAttributes
Decode ChildWorkflowExecutionFailedEventAttributes
Encode ChildWorkflowExecutionFailedEventAttributes
```

#### `newChildWorkflowExecutionFailedEventAttributes`

``` purescript
newChildWorkflowExecutionFailedEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionFailedEventAttributes
```

Constructs ChildWorkflowExecutionFailedEventAttributes from required parameters

#### `newChildWorkflowExecutionFailedEventAttributes'`

``` purescript
newChildWorkflowExecutionFailedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionFailedEventAttributes
```

Constructs ChildWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `ChildWorkflowExecutionStartedEventAttributes`

``` purescript
newtype ChildWorkflowExecutionStartedEventAttributes
  = ChildWorkflowExecutionStartedEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, initiatedEventId :: EventId }
```

<p>Provides the details of the <code>ChildWorkflowExecutionStarted</code> event.</p>

##### Instances
``` purescript
Newtype ChildWorkflowExecutionStartedEventAttributes _
Generic ChildWorkflowExecutionStartedEventAttributes _
Show ChildWorkflowExecutionStartedEventAttributes
Decode ChildWorkflowExecutionStartedEventAttributes
Encode ChildWorkflowExecutionStartedEventAttributes
```

#### `newChildWorkflowExecutionStartedEventAttributes`

``` purescript
newChildWorkflowExecutionStartedEventAttributes :: EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionStartedEventAttributes
```

Constructs ChildWorkflowExecutionStartedEventAttributes from required parameters

#### `newChildWorkflowExecutionStartedEventAttributes'`

``` purescript
newChildWorkflowExecutionStartedEventAttributes' :: EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, initiatedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, initiatedEventId :: EventId }) -> ChildWorkflowExecutionStartedEventAttributes
```

Constructs ChildWorkflowExecutionStartedEventAttributes's fields from required parameters

#### `ChildWorkflowExecutionTerminatedEventAttributes`

``` purescript
newtype ChildWorkflowExecutionTerminatedEventAttributes
  = ChildWorkflowExecutionTerminatedEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, initiatedEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>

##### Instances
``` purescript
Newtype ChildWorkflowExecutionTerminatedEventAttributes _
Generic ChildWorkflowExecutionTerminatedEventAttributes _
Show ChildWorkflowExecutionTerminatedEventAttributes
Decode ChildWorkflowExecutionTerminatedEventAttributes
Encode ChildWorkflowExecutionTerminatedEventAttributes
```

#### `newChildWorkflowExecutionTerminatedEventAttributes`

``` purescript
newChildWorkflowExecutionTerminatedEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionTerminatedEventAttributes
```

Constructs ChildWorkflowExecutionTerminatedEventAttributes from required parameters

#### `newChildWorkflowExecutionTerminatedEventAttributes'`

``` purescript
newChildWorkflowExecutionTerminatedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionTerminatedEventAttributes
```

Constructs ChildWorkflowExecutionTerminatedEventAttributes's fields from required parameters

#### `ChildWorkflowExecutionTimedOutEventAttributes`

``` purescript
newtype ChildWorkflowExecutionTimedOutEventAttributes
  = ChildWorkflowExecutionTimedOutEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, timeoutType :: WorkflowExecutionTimeoutType, initiatedEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>

##### Instances
``` purescript
Newtype ChildWorkflowExecutionTimedOutEventAttributes _
Generic ChildWorkflowExecutionTimedOutEventAttributes _
Show ChildWorkflowExecutionTimedOutEventAttributes
Decode ChildWorkflowExecutionTimedOutEventAttributes
Encode ChildWorkflowExecutionTimedOutEventAttributes
```

#### `newChildWorkflowExecutionTimedOutEventAttributes`

``` purescript
newChildWorkflowExecutionTimedOutEventAttributes :: EventId -> EventId -> WorkflowExecutionTimeoutType -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionTimedOutEventAttributes
```

Constructs ChildWorkflowExecutionTimedOutEventAttributes from required parameters

#### `newChildWorkflowExecutionTimedOutEventAttributes'`

``` purescript
newChildWorkflowExecutionTimedOutEventAttributes' :: EventId -> EventId -> WorkflowExecutionTimeoutType -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, timeoutType :: WorkflowExecutionTimeoutType, initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, timeoutType :: WorkflowExecutionTimeoutType, initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionTimedOutEventAttributes
```

Constructs ChildWorkflowExecutionTimedOutEventAttributes's fields from required parameters

#### `CloseStatus`

``` purescript
newtype CloseStatus
  = CloseStatus String
```

##### Instances
``` purescript
Newtype CloseStatus _
Generic CloseStatus _
Show CloseStatus
Decode CloseStatus
Encode CloseStatus
```

#### `CloseStatusFilter`

``` purescript
newtype CloseStatusFilter
  = CloseStatusFilter { status :: CloseStatus }
```

<p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>

##### Instances
``` purescript
Newtype CloseStatusFilter _
Generic CloseStatusFilter _
Show CloseStatusFilter
Decode CloseStatusFilter
Encode CloseStatusFilter
```

#### `newCloseStatusFilter`

``` purescript
newCloseStatusFilter :: CloseStatus -> CloseStatusFilter
```

Constructs CloseStatusFilter from required parameters

#### `newCloseStatusFilter'`

``` purescript
newCloseStatusFilter' :: CloseStatus -> ({ status :: CloseStatus } -> { status :: CloseStatus }) -> CloseStatusFilter
```

Constructs CloseStatusFilter's fields from required parameters

#### `CompleteWorkflowExecutionDecisionAttributes`

``` purescript
newtype CompleteWorkflowExecutionDecisionAttributes
  = CompleteWorkflowExecutionDecisionAttributes { result :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>CompleteWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype CompleteWorkflowExecutionDecisionAttributes _
Generic CompleteWorkflowExecutionDecisionAttributes _
Show CompleteWorkflowExecutionDecisionAttributes
Decode CompleteWorkflowExecutionDecisionAttributes
Encode CompleteWorkflowExecutionDecisionAttributes
```

#### `newCompleteWorkflowExecutionDecisionAttributes`

``` purescript
newCompleteWorkflowExecutionDecisionAttributes :: CompleteWorkflowExecutionDecisionAttributes
```

Constructs CompleteWorkflowExecutionDecisionAttributes from required parameters

#### `newCompleteWorkflowExecutionDecisionAttributes'`

``` purescript
newCompleteWorkflowExecutionDecisionAttributes' :: ({ result :: NullOrUndefined (Data) } -> { result :: NullOrUndefined (Data) }) -> CompleteWorkflowExecutionDecisionAttributes
```

Constructs CompleteWorkflowExecutionDecisionAttributes's fields from required parameters

#### `CompleteWorkflowExecutionFailedCause`

``` purescript
newtype CompleteWorkflowExecutionFailedCause
  = CompleteWorkflowExecutionFailedCause String
```

##### Instances
``` purescript
Newtype CompleteWorkflowExecutionFailedCause _
Generic CompleteWorkflowExecutionFailedCause _
Show CompleteWorkflowExecutionFailedCause
Decode CompleteWorkflowExecutionFailedCause
Encode CompleteWorkflowExecutionFailedCause
```

#### `CompleteWorkflowExecutionFailedEventAttributes`

``` purescript
newtype CompleteWorkflowExecutionFailedEventAttributes
  = CompleteWorkflowExecutionFailedEventAttributes { cause :: CompleteWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype CompleteWorkflowExecutionFailedEventAttributes _
Generic CompleteWorkflowExecutionFailedEventAttributes _
Show CompleteWorkflowExecutionFailedEventAttributes
Decode CompleteWorkflowExecutionFailedEventAttributes
Encode CompleteWorkflowExecutionFailedEventAttributes
```

#### `newCompleteWorkflowExecutionFailedEventAttributes`

``` purescript
newCompleteWorkflowExecutionFailedEventAttributes :: CompleteWorkflowExecutionFailedCause -> EventId -> CompleteWorkflowExecutionFailedEventAttributes
```

Constructs CompleteWorkflowExecutionFailedEventAttributes from required parameters

#### `newCompleteWorkflowExecutionFailedEventAttributes'`

``` purescript
newCompleteWorkflowExecutionFailedEventAttributes' :: CompleteWorkflowExecutionFailedCause -> EventId -> ({ cause :: CompleteWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId } -> { cause :: CompleteWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }) -> CompleteWorkflowExecutionFailedEventAttributes
```

Constructs CompleteWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `ContinueAsNewWorkflowExecutionDecisionAttributes`

``` purescript
newtype ContinueAsNewWorkflowExecutionDecisionAttributes
  = ContinueAsNewWorkflowExecutionDecisionAttributes { input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), tagList :: NullOrUndefined (TagList), workflowTypeVersion :: NullOrUndefined (Version), lambdaRole :: NullOrUndefined (Arn) }
```

<p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tag</code> – A tag used to identify the workflow execution</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype ContinueAsNewWorkflowExecutionDecisionAttributes _
Generic ContinueAsNewWorkflowExecutionDecisionAttributes _
Show ContinueAsNewWorkflowExecutionDecisionAttributes
Decode ContinueAsNewWorkflowExecutionDecisionAttributes
Encode ContinueAsNewWorkflowExecutionDecisionAttributes
```

#### `newContinueAsNewWorkflowExecutionDecisionAttributes`

``` purescript
newContinueAsNewWorkflowExecutionDecisionAttributes :: ContinueAsNewWorkflowExecutionDecisionAttributes
```

Constructs ContinueAsNewWorkflowExecutionDecisionAttributes from required parameters

#### `newContinueAsNewWorkflowExecutionDecisionAttributes'`

``` purescript
newContinueAsNewWorkflowExecutionDecisionAttributes' :: ({ input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), tagList :: NullOrUndefined (TagList), workflowTypeVersion :: NullOrUndefined (Version), lambdaRole :: NullOrUndefined (Arn) } -> { input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), tagList :: NullOrUndefined (TagList), workflowTypeVersion :: NullOrUndefined (Version), lambdaRole :: NullOrUndefined (Arn) }) -> ContinueAsNewWorkflowExecutionDecisionAttributes
```

Constructs ContinueAsNewWorkflowExecutionDecisionAttributes's fields from required parameters

#### `ContinueAsNewWorkflowExecutionFailedCause`

``` purescript
newtype ContinueAsNewWorkflowExecutionFailedCause
  = ContinueAsNewWorkflowExecutionFailedCause String
```

##### Instances
``` purescript
Newtype ContinueAsNewWorkflowExecutionFailedCause _
Generic ContinueAsNewWorkflowExecutionFailedCause _
Show ContinueAsNewWorkflowExecutionFailedCause
Decode ContinueAsNewWorkflowExecutionFailedCause
Encode ContinueAsNewWorkflowExecutionFailedCause
```

#### `ContinueAsNewWorkflowExecutionFailedEventAttributes`

``` purescript
newtype ContinueAsNewWorkflowExecutionFailedEventAttributes
  = ContinueAsNewWorkflowExecutionFailedEventAttributes { cause :: ContinueAsNewWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype ContinueAsNewWorkflowExecutionFailedEventAttributes _
Generic ContinueAsNewWorkflowExecutionFailedEventAttributes _
Show ContinueAsNewWorkflowExecutionFailedEventAttributes
Decode ContinueAsNewWorkflowExecutionFailedEventAttributes
Encode ContinueAsNewWorkflowExecutionFailedEventAttributes
```

#### `newContinueAsNewWorkflowExecutionFailedEventAttributes`

``` purescript
newContinueAsNewWorkflowExecutionFailedEventAttributes :: ContinueAsNewWorkflowExecutionFailedCause -> EventId -> ContinueAsNewWorkflowExecutionFailedEventAttributes
```

Constructs ContinueAsNewWorkflowExecutionFailedEventAttributes from required parameters

#### `newContinueAsNewWorkflowExecutionFailedEventAttributes'`

``` purescript
newContinueAsNewWorkflowExecutionFailedEventAttributes' :: ContinueAsNewWorkflowExecutionFailedCause -> EventId -> ({ cause :: ContinueAsNewWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId } -> { cause :: ContinueAsNewWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }) -> ContinueAsNewWorkflowExecutionFailedEventAttributes
```

Constructs ContinueAsNewWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `Count`

``` purescript
newtype Count
  = Count Int
```

##### Instances
``` purescript
Newtype Count _
Generic Count _
Show Count
Decode Count
Encode Count
```

#### `CountClosedWorkflowExecutionsInput`

``` purescript
newtype CountClosedWorkflowExecutionsInput
  = CountClosedWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: NullOrUndefined (ExecutionTimeFilter), closeTimeFilter :: NullOrUndefined (ExecutionTimeFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter), typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), closeStatusFilter :: NullOrUndefined (CloseStatusFilter) }
```

##### Instances
``` purescript
Newtype CountClosedWorkflowExecutionsInput _
Generic CountClosedWorkflowExecutionsInput _
Show CountClosedWorkflowExecutionsInput
Decode CountClosedWorkflowExecutionsInput
Encode CountClosedWorkflowExecutionsInput
```

#### `newCountClosedWorkflowExecutionsInput`

``` purescript
newCountClosedWorkflowExecutionsInput :: DomainName -> CountClosedWorkflowExecutionsInput
```

Constructs CountClosedWorkflowExecutionsInput from required parameters

#### `newCountClosedWorkflowExecutionsInput'`

``` purescript
newCountClosedWorkflowExecutionsInput' :: DomainName -> ({ domain :: DomainName, startTimeFilter :: NullOrUndefined (ExecutionTimeFilter), closeTimeFilter :: NullOrUndefined (ExecutionTimeFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter), typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), closeStatusFilter :: NullOrUndefined (CloseStatusFilter) } -> { domain :: DomainName, startTimeFilter :: NullOrUndefined (ExecutionTimeFilter), closeTimeFilter :: NullOrUndefined (ExecutionTimeFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter), typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), closeStatusFilter :: NullOrUndefined (CloseStatusFilter) }) -> CountClosedWorkflowExecutionsInput
```

Constructs CountClosedWorkflowExecutionsInput's fields from required parameters

#### `CountOpenWorkflowExecutionsInput`

``` purescript
newtype CountOpenWorkflowExecutionsInput
  = CountOpenWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter) }
```

##### Instances
``` purescript
Newtype CountOpenWorkflowExecutionsInput _
Generic CountOpenWorkflowExecutionsInput _
Show CountOpenWorkflowExecutionsInput
Decode CountOpenWorkflowExecutionsInput
Encode CountOpenWorkflowExecutionsInput
```

#### `newCountOpenWorkflowExecutionsInput`

``` purescript
newCountOpenWorkflowExecutionsInput :: DomainName -> ExecutionTimeFilter -> CountOpenWorkflowExecutionsInput
```

Constructs CountOpenWorkflowExecutionsInput from required parameters

#### `newCountOpenWorkflowExecutionsInput'`

``` purescript
newCountOpenWorkflowExecutionsInput' :: DomainName -> ExecutionTimeFilter -> ({ domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter) } -> { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter) }) -> CountOpenWorkflowExecutionsInput
```

Constructs CountOpenWorkflowExecutionsInput's fields from required parameters

#### `CountPendingActivityTasksInput`

``` purescript
newtype CountPendingActivityTasksInput
  = CountPendingActivityTasksInput { domain :: DomainName, taskList :: TaskList }
```

##### Instances
``` purescript
Newtype CountPendingActivityTasksInput _
Generic CountPendingActivityTasksInput _
Show CountPendingActivityTasksInput
Decode CountPendingActivityTasksInput
Encode CountPendingActivityTasksInput
```

#### `newCountPendingActivityTasksInput`

``` purescript
newCountPendingActivityTasksInput :: DomainName -> TaskList -> CountPendingActivityTasksInput
```

Constructs CountPendingActivityTasksInput from required parameters

#### `newCountPendingActivityTasksInput'`

``` purescript
newCountPendingActivityTasksInput' :: DomainName -> TaskList -> ({ domain :: DomainName, taskList :: TaskList } -> { domain :: DomainName, taskList :: TaskList }) -> CountPendingActivityTasksInput
```

Constructs CountPendingActivityTasksInput's fields from required parameters

#### `CountPendingDecisionTasksInput`

``` purescript
newtype CountPendingDecisionTasksInput
  = CountPendingDecisionTasksInput { domain :: DomainName, taskList :: TaskList }
```

##### Instances
``` purescript
Newtype CountPendingDecisionTasksInput _
Generic CountPendingDecisionTasksInput _
Show CountPendingDecisionTasksInput
Decode CountPendingDecisionTasksInput
Encode CountPendingDecisionTasksInput
```

#### `newCountPendingDecisionTasksInput`

``` purescript
newCountPendingDecisionTasksInput :: DomainName -> TaskList -> CountPendingDecisionTasksInput
```

Constructs CountPendingDecisionTasksInput from required parameters

#### `newCountPendingDecisionTasksInput'`

``` purescript
newCountPendingDecisionTasksInput' :: DomainName -> TaskList -> ({ domain :: DomainName, taskList :: TaskList } -> { domain :: DomainName, taskList :: TaskList }) -> CountPendingDecisionTasksInput
```

Constructs CountPendingDecisionTasksInput's fields from required parameters

#### `Data`

``` purescript
newtype Data
  = Data String
```

##### Instances
``` purescript
Newtype Data _
Generic Data _
Show Data
Decode Data
Encode Data
```

#### `Decision`

``` purescript
newtype Decision
  = Decision { decisionType :: DecisionType, scheduleActivityTaskDecisionAttributes :: NullOrUndefined (ScheduleActivityTaskDecisionAttributes), requestCancelActivityTaskDecisionAttributes :: NullOrUndefined (RequestCancelActivityTaskDecisionAttributes), completeWorkflowExecutionDecisionAttributes :: NullOrUndefined (CompleteWorkflowExecutionDecisionAttributes), failWorkflowExecutionDecisionAttributes :: NullOrUndefined (FailWorkflowExecutionDecisionAttributes), cancelWorkflowExecutionDecisionAttributes :: NullOrUndefined (CancelWorkflowExecutionDecisionAttributes), continueAsNewWorkflowExecutionDecisionAttributes :: NullOrUndefined (ContinueAsNewWorkflowExecutionDecisionAttributes), recordMarkerDecisionAttributes :: NullOrUndefined (RecordMarkerDecisionAttributes), startTimerDecisionAttributes :: NullOrUndefined (StartTimerDecisionAttributes), cancelTimerDecisionAttributes :: NullOrUndefined (CancelTimerDecisionAttributes), signalExternalWorkflowExecutionDecisionAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionDecisionAttributes), requestCancelExternalWorkflowExecutionDecisionAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionDecisionAttributes), startChildWorkflowExecutionDecisionAttributes :: NullOrUndefined (StartChildWorkflowExecutionDecisionAttributes), scheduleLambdaFunctionDecisionAttributes :: NullOrUndefined (ScheduleLambdaFunctionDecisionAttributes) }
```

<p>Specifies a decision made by the decider. A decision can be one of these types:</p> <ul> <li> <p> <code>CancelTimer</code> – Cancels a previously started timer and records a <code>TimerCanceled</code> event in the history.</p> </li> <li> <p> <code>CancelWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCanceled</code> event in the history.</p> </li> <li> <p> <code>CompleteWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCompleted</code> event in the history .</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecution</code> – Closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run Id. A <code>WorkflowExecutionContinuedAsNew</code> event is recorded in the history.</p> </li> <li> <p> <code>FailWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionFailed</code> event in the history.</p> </li> <li> <p> <code>RecordMarker</code> – Records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they don't need to look at the history beyond the marker event.</p> </li> <li> <p> <code>RequestCancelActivityTask</code> – Attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it is canceled. If the activity task was already assigned to a worker, then the worker is informed that cancellation has been requested in the response to <a>RecordActivityTaskHeartbeat</a>.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecution</code> – Requests that a request be made to cancel the specified external workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>ScheduleActivityTask</code> – Schedules an activity task.</p> </li> <li> <p> <code>SignalExternalWorkflowExecution</code> – Requests a signal to be delivered to the specified external workflow execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>StartChildWorkflowExecution</code> – Requests that a child workflow execution be started and records a <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a separate workflow execution with its own history.</p> </li> <li> <p> <code>StartTimer</code> – Starts a timer for this workflow execution and records a <code>TimerStarted</code> event in the history. This timer fires after the specified delay and record a <code>TimerFired</code> event.</p> </li> </ul> <p> <b>Access Control</b> </p> <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <p> <b>Decision Failure</b> </p> <p>Decisions can fail for several reasons</p> <ul> <li> <p>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and therefore fails.</p> </li> <li> <p>A limit on your account was reached.</p> </li> <li> <p>The decision lacks sufficient permissions.</p> </li> </ul> <p>One of the following events might be added to the history to indicate an error. The event attribute's <code>cause</code> parameter indicates the cause. If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <ul> <li> <p> <code>ScheduleActivityTaskFailed</code> – A <code>ScheduleActivityTask</code> decision failed. This could happen if the activity type specified in the decision isn't registered, is in a deprecated state, or the decision isn't properly configured.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – A <code>RequestCancelActivityTask</code> decision failed. This could happen if there is no open activity task with the specified activityId.</p> </li> <li> <p> <code>StartTimerFailed</code> – A <code>StartTimer</code> decision failed. This could happen if there is another open timer with the same timerId.</p> </li> <li> <p> <code>CancelTimerFailed</code> – A <code>CancelTimer</code> decision failed. This could happen if there is no open timer with the specified timerId.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – A <code>StartChildWorkflowExecution</code> decision failed. This could happen if the workflow type specified isn't registered, is deprecated, or the decision isn't properly configured.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – A <code>SignalExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – A <code>RequestCancelExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A <code>CancelWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – A <code>CompleteWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – A <code>ContinueAsNewWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A <code>FailWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> </ul> <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p> <note> <p>A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>, <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An <code>UnhandledDecision</code> fault is returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call <a>RespondDecisionTaskCompleted</a> without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.</p> </note> <p> <b>How to Code a Decision</b> </p> <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p> <ul> <li> <p> <code> <a>ScheduleActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CompleteWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>FailWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RecordMarkerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>SignalExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartChildWorkflowExecutionDecisionAttributes</a> </code> </p> </li> </ul>

##### Instances
``` purescript
Newtype Decision _
Generic Decision _
Show Decision
Decode Decision
Encode Decision
```

#### `newDecision`

``` purescript
newDecision :: DecisionType -> Decision
```

Constructs Decision from required parameters

#### `newDecision'`

``` purescript
newDecision' :: DecisionType -> ({ decisionType :: DecisionType, scheduleActivityTaskDecisionAttributes :: NullOrUndefined (ScheduleActivityTaskDecisionAttributes), requestCancelActivityTaskDecisionAttributes :: NullOrUndefined (RequestCancelActivityTaskDecisionAttributes), completeWorkflowExecutionDecisionAttributes :: NullOrUndefined (CompleteWorkflowExecutionDecisionAttributes), failWorkflowExecutionDecisionAttributes :: NullOrUndefined (FailWorkflowExecutionDecisionAttributes), cancelWorkflowExecutionDecisionAttributes :: NullOrUndefined (CancelWorkflowExecutionDecisionAttributes), continueAsNewWorkflowExecutionDecisionAttributes :: NullOrUndefined (ContinueAsNewWorkflowExecutionDecisionAttributes), recordMarkerDecisionAttributes :: NullOrUndefined (RecordMarkerDecisionAttributes), startTimerDecisionAttributes :: NullOrUndefined (StartTimerDecisionAttributes), cancelTimerDecisionAttributes :: NullOrUndefined (CancelTimerDecisionAttributes), signalExternalWorkflowExecutionDecisionAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionDecisionAttributes), requestCancelExternalWorkflowExecutionDecisionAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionDecisionAttributes), startChildWorkflowExecutionDecisionAttributes :: NullOrUndefined (StartChildWorkflowExecutionDecisionAttributes), scheduleLambdaFunctionDecisionAttributes :: NullOrUndefined (ScheduleLambdaFunctionDecisionAttributes) } -> { decisionType :: DecisionType, scheduleActivityTaskDecisionAttributes :: NullOrUndefined (ScheduleActivityTaskDecisionAttributes), requestCancelActivityTaskDecisionAttributes :: NullOrUndefined (RequestCancelActivityTaskDecisionAttributes), completeWorkflowExecutionDecisionAttributes :: NullOrUndefined (CompleteWorkflowExecutionDecisionAttributes), failWorkflowExecutionDecisionAttributes :: NullOrUndefined (FailWorkflowExecutionDecisionAttributes), cancelWorkflowExecutionDecisionAttributes :: NullOrUndefined (CancelWorkflowExecutionDecisionAttributes), continueAsNewWorkflowExecutionDecisionAttributes :: NullOrUndefined (ContinueAsNewWorkflowExecutionDecisionAttributes), recordMarkerDecisionAttributes :: NullOrUndefined (RecordMarkerDecisionAttributes), startTimerDecisionAttributes :: NullOrUndefined (StartTimerDecisionAttributes), cancelTimerDecisionAttributes :: NullOrUndefined (CancelTimerDecisionAttributes), signalExternalWorkflowExecutionDecisionAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionDecisionAttributes), requestCancelExternalWorkflowExecutionDecisionAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionDecisionAttributes), startChildWorkflowExecutionDecisionAttributes :: NullOrUndefined (StartChildWorkflowExecutionDecisionAttributes), scheduleLambdaFunctionDecisionAttributes :: NullOrUndefined (ScheduleLambdaFunctionDecisionAttributes) }) -> Decision
```

Constructs Decision's fields from required parameters

#### `DecisionList`

``` purescript
newtype DecisionList
  = DecisionList (Array Decision)
```

##### Instances
``` purescript
Newtype DecisionList _
Generic DecisionList _
Show DecisionList
Decode DecisionList
Encode DecisionList
```

#### `DecisionTask`

``` purescript
newtype DecisionTask
  = DecisionTask { taskToken :: TaskToken, startedEventId :: EventId, workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, events :: HistoryEventList, nextPageToken :: NullOrUndefined (PageToken), previousStartedEventId :: NullOrUndefined (EventId) }
```

<p>A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.</p>

##### Instances
``` purescript
Newtype DecisionTask _
Generic DecisionTask _
Show DecisionTask
Decode DecisionTask
Encode DecisionTask
```

#### `newDecisionTask`

``` purescript
newDecisionTask :: HistoryEventList -> EventId -> TaskToken -> WorkflowExecution -> WorkflowType -> DecisionTask
```

Constructs DecisionTask from required parameters

#### `newDecisionTask'`

``` purescript
newDecisionTask' :: HistoryEventList -> EventId -> TaskToken -> WorkflowExecution -> WorkflowType -> ({ taskToken :: TaskToken, startedEventId :: EventId, workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, events :: HistoryEventList, nextPageToken :: NullOrUndefined (PageToken), previousStartedEventId :: NullOrUndefined (EventId) } -> { taskToken :: TaskToken, startedEventId :: EventId, workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, events :: HistoryEventList, nextPageToken :: NullOrUndefined (PageToken), previousStartedEventId :: NullOrUndefined (EventId) }) -> DecisionTask
```

Constructs DecisionTask's fields from required parameters

#### `DecisionTaskCompletedEventAttributes`

``` purescript
newtype DecisionTaskCompletedEventAttributes
  = DecisionTaskCompletedEventAttributes { executionContext :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>DecisionTaskCompleted</code> event.</p>

##### Instances
``` purescript
Newtype DecisionTaskCompletedEventAttributes _
Generic DecisionTaskCompletedEventAttributes _
Show DecisionTaskCompletedEventAttributes
Decode DecisionTaskCompletedEventAttributes
Encode DecisionTaskCompletedEventAttributes
```

#### `newDecisionTaskCompletedEventAttributes`

``` purescript
newDecisionTaskCompletedEventAttributes :: EventId -> EventId -> DecisionTaskCompletedEventAttributes
```

Constructs DecisionTaskCompletedEventAttributes from required parameters

#### `newDecisionTaskCompletedEventAttributes'`

``` purescript
newDecisionTaskCompletedEventAttributes' :: EventId -> EventId -> ({ executionContext :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId } -> { executionContext :: NullOrUndefined (Data), scheduledEventId :: EventId, startedEventId :: EventId }) -> DecisionTaskCompletedEventAttributes
```

Constructs DecisionTaskCompletedEventAttributes's fields from required parameters

#### `DecisionTaskScheduledEventAttributes`

``` purescript
newtype DecisionTaskScheduledEventAttributes
  = DecisionTaskScheduledEventAttributes { taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }
```

<p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>

##### Instances
``` purescript
Newtype DecisionTaskScheduledEventAttributes _
Generic DecisionTaskScheduledEventAttributes _
Show DecisionTaskScheduledEventAttributes
Decode DecisionTaskScheduledEventAttributes
Encode DecisionTaskScheduledEventAttributes
```

#### `newDecisionTaskScheduledEventAttributes`

``` purescript
newDecisionTaskScheduledEventAttributes :: TaskList -> DecisionTaskScheduledEventAttributes
```

Constructs DecisionTaskScheduledEventAttributes from required parameters

#### `newDecisionTaskScheduledEventAttributes'`

``` purescript
newDecisionTaskScheduledEventAttributes' :: TaskList -> ({ taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) } -> { taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }) -> DecisionTaskScheduledEventAttributes
```

Constructs DecisionTaskScheduledEventAttributes's fields from required parameters

#### `DecisionTaskStartedEventAttributes`

``` purescript
newtype DecisionTaskStartedEventAttributes
  = DecisionTaskStartedEventAttributes { identity :: NullOrUndefined (Identity), scheduledEventId :: EventId }
```

<p>Provides the details of the <code>DecisionTaskStarted</code> event.</p>

##### Instances
``` purescript
Newtype DecisionTaskStartedEventAttributes _
Generic DecisionTaskStartedEventAttributes _
Show DecisionTaskStartedEventAttributes
Decode DecisionTaskStartedEventAttributes
Encode DecisionTaskStartedEventAttributes
```

#### `newDecisionTaskStartedEventAttributes`

``` purescript
newDecisionTaskStartedEventAttributes :: EventId -> DecisionTaskStartedEventAttributes
```

Constructs DecisionTaskStartedEventAttributes from required parameters

#### `newDecisionTaskStartedEventAttributes'`

``` purescript
newDecisionTaskStartedEventAttributes' :: EventId -> ({ identity :: NullOrUndefined (Identity), scheduledEventId :: EventId } -> { identity :: NullOrUndefined (Identity), scheduledEventId :: EventId }) -> DecisionTaskStartedEventAttributes
```

Constructs DecisionTaskStartedEventAttributes's fields from required parameters

#### `DecisionTaskTimedOutEventAttributes`

``` purescript
newtype DecisionTaskTimedOutEventAttributes
  = DecisionTaskTimedOutEventAttributes { timeoutType :: DecisionTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId }
```

<p>Provides the details of the <code>DecisionTaskTimedOut</code> event.</p>

##### Instances
``` purescript
Newtype DecisionTaskTimedOutEventAttributes _
Generic DecisionTaskTimedOutEventAttributes _
Show DecisionTaskTimedOutEventAttributes
Decode DecisionTaskTimedOutEventAttributes
Encode DecisionTaskTimedOutEventAttributes
```

#### `newDecisionTaskTimedOutEventAttributes`

``` purescript
newDecisionTaskTimedOutEventAttributes :: EventId -> EventId -> DecisionTaskTimeoutType -> DecisionTaskTimedOutEventAttributes
```

Constructs DecisionTaskTimedOutEventAttributes from required parameters

#### `newDecisionTaskTimedOutEventAttributes'`

``` purescript
newDecisionTaskTimedOutEventAttributes' :: EventId -> EventId -> DecisionTaskTimeoutType -> ({ timeoutType :: DecisionTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId } -> { timeoutType :: DecisionTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId }) -> DecisionTaskTimedOutEventAttributes
```

Constructs DecisionTaskTimedOutEventAttributes's fields from required parameters

#### `DecisionTaskTimeoutType`

``` purescript
newtype DecisionTaskTimeoutType
  = DecisionTaskTimeoutType String
```

##### Instances
``` purescript
Newtype DecisionTaskTimeoutType _
Generic DecisionTaskTimeoutType _
Show DecisionTaskTimeoutType
Decode DecisionTaskTimeoutType
Encode DecisionTaskTimeoutType
```

#### `DecisionType`

``` purescript
newtype DecisionType
  = DecisionType String
```

##### Instances
``` purescript
Newtype DecisionType _
Generic DecisionType _
Show DecisionType
Decode DecisionType
Encode DecisionType
```

#### `DefaultUndefinedFault`

``` purescript
newtype DefaultUndefinedFault
  = DefaultUndefinedFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>The <code>StartWorkflowExecution</code> API action was called without the required parameters set.</p> <p>Some workflow execution parameters, such as the decision <code>taskList</code>, must be set to start the execution. However, these parameters might have been set as defaults when the workflow type was registered. In this case, you can omit these parameters from the <code>StartWorkflowExecution</code> call and Amazon SWF uses the values defined in the workflow type.</p> <note> <p>If these parameters aren't set and no default parameters were defined in the workflow type, this error is displayed.</p> </note>

##### Instances
``` purescript
Newtype DefaultUndefinedFault _
Generic DefaultUndefinedFault _
Show DefaultUndefinedFault
Decode DefaultUndefinedFault
Encode DefaultUndefinedFault
```

#### `newDefaultUndefinedFault`

``` purescript
newDefaultUndefinedFault :: DefaultUndefinedFault
```

Constructs DefaultUndefinedFault from required parameters

#### `newDefaultUndefinedFault'`

``` purescript
newDefaultUndefinedFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> DefaultUndefinedFault
```

Constructs DefaultUndefinedFault's fields from required parameters

#### `DeprecateActivityTypeInput`

``` purescript
newtype DeprecateActivityTypeInput
  = DeprecateActivityTypeInput { domain :: DomainName, activityType :: ActivityType }
```

##### Instances
``` purescript
Newtype DeprecateActivityTypeInput _
Generic DeprecateActivityTypeInput _
Show DeprecateActivityTypeInput
Decode DeprecateActivityTypeInput
Encode DeprecateActivityTypeInput
```

#### `newDeprecateActivityTypeInput`

``` purescript
newDeprecateActivityTypeInput :: ActivityType -> DomainName -> DeprecateActivityTypeInput
```

Constructs DeprecateActivityTypeInput from required parameters

#### `newDeprecateActivityTypeInput'`

``` purescript
newDeprecateActivityTypeInput' :: ActivityType -> DomainName -> ({ domain :: DomainName, activityType :: ActivityType } -> { domain :: DomainName, activityType :: ActivityType }) -> DeprecateActivityTypeInput
```

Constructs DeprecateActivityTypeInput's fields from required parameters

#### `DeprecateDomainInput`

``` purescript
newtype DeprecateDomainInput
  = DeprecateDomainInput { name :: DomainName }
```

##### Instances
``` purescript
Newtype DeprecateDomainInput _
Generic DeprecateDomainInput _
Show DeprecateDomainInput
Decode DeprecateDomainInput
Encode DeprecateDomainInput
```

#### `newDeprecateDomainInput`

``` purescript
newDeprecateDomainInput :: DomainName -> DeprecateDomainInput
```

Constructs DeprecateDomainInput from required parameters

#### `newDeprecateDomainInput'`

``` purescript
newDeprecateDomainInput' :: DomainName -> ({ name :: DomainName } -> { name :: DomainName }) -> DeprecateDomainInput
```

Constructs DeprecateDomainInput's fields from required parameters

#### `DeprecateWorkflowTypeInput`

``` purescript
newtype DeprecateWorkflowTypeInput
  = DeprecateWorkflowTypeInput { domain :: DomainName, workflowType :: WorkflowType }
```

##### Instances
``` purescript
Newtype DeprecateWorkflowTypeInput _
Generic DeprecateWorkflowTypeInput _
Show DeprecateWorkflowTypeInput
Decode DeprecateWorkflowTypeInput
Encode DeprecateWorkflowTypeInput
```

#### `newDeprecateWorkflowTypeInput`

``` purescript
newDeprecateWorkflowTypeInput :: DomainName -> WorkflowType -> DeprecateWorkflowTypeInput
```

Constructs DeprecateWorkflowTypeInput from required parameters

#### `newDeprecateWorkflowTypeInput'`

``` purescript
newDeprecateWorkflowTypeInput' :: DomainName -> WorkflowType -> ({ domain :: DomainName, workflowType :: WorkflowType } -> { domain :: DomainName, workflowType :: WorkflowType }) -> DeprecateWorkflowTypeInput
```

Constructs DeprecateWorkflowTypeInput's fields from required parameters

#### `DescribeActivityTypeInput`

``` purescript
newtype DescribeActivityTypeInput
  = DescribeActivityTypeInput { domain :: DomainName, activityType :: ActivityType }
```

##### Instances
``` purescript
Newtype DescribeActivityTypeInput _
Generic DescribeActivityTypeInput _
Show DescribeActivityTypeInput
Decode DescribeActivityTypeInput
Encode DescribeActivityTypeInput
```

#### `newDescribeActivityTypeInput`

``` purescript
newDescribeActivityTypeInput :: ActivityType -> DomainName -> DescribeActivityTypeInput
```

Constructs DescribeActivityTypeInput from required parameters

#### `newDescribeActivityTypeInput'`

``` purescript
newDescribeActivityTypeInput' :: ActivityType -> DomainName -> ({ domain :: DomainName, activityType :: ActivityType } -> { domain :: DomainName, activityType :: ActivityType }) -> DescribeActivityTypeInput
```

Constructs DescribeActivityTypeInput's fields from required parameters

#### `DescribeDomainInput`

``` purescript
newtype DescribeDomainInput
  = DescribeDomainInput { name :: DomainName }
```

##### Instances
``` purescript
Newtype DescribeDomainInput _
Generic DescribeDomainInput _
Show DescribeDomainInput
Decode DescribeDomainInput
Encode DescribeDomainInput
```

#### `newDescribeDomainInput`

``` purescript
newDescribeDomainInput :: DomainName -> DescribeDomainInput
```

Constructs DescribeDomainInput from required parameters

#### `newDescribeDomainInput'`

``` purescript
newDescribeDomainInput' :: DomainName -> ({ name :: DomainName } -> { name :: DomainName }) -> DescribeDomainInput
```

Constructs DescribeDomainInput's fields from required parameters

#### `DescribeWorkflowExecutionInput`

``` purescript
newtype DescribeWorkflowExecutionInput
  = DescribeWorkflowExecutionInput { domain :: DomainName, execution :: WorkflowExecution }
```

##### Instances
``` purescript
Newtype DescribeWorkflowExecutionInput _
Generic DescribeWorkflowExecutionInput _
Show DescribeWorkflowExecutionInput
Decode DescribeWorkflowExecutionInput
Encode DescribeWorkflowExecutionInput
```

#### `newDescribeWorkflowExecutionInput`

``` purescript
newDescribeWorkflowExecutionInput :: DomainName -> WorkflowExecution -> DescribeWorkflowExecutionInput
```

Constructs DescribeWorkflowExecutionInput from required parameters

#### `newDescribeWorkflowExecutionInput'`

``` purescript
newDescribeWorkflowExecutionInput' :: DomainName -> WorkflowExecution -> ({ domain :: DomainName, execution :: WorkflowExecution } -> { domain :: DomainName, execution :: WorkflowExecution }) -> DescribeWorkflowExecutionInput
```

Constructs DescribeWorkflowExecutionInput's fields from required parameters

#### `DescribeWorkflowTypeInput`

``` purescript
newtype DescribeWorkflowTypeInput
  = DescribeWorkflowTypeInput { domain :: DomainName, workflowType :: WorkflowType }
```

##### Instances
``` purescript
Newtype DescribeWorkflowTypeInput _
Generic DescribeWorkflowTypeInput _
Show DescribeWorkflowTypeInput
Decode DescribeWorkflowTypeInput
Encode DescribeWorkflowTypeInput
```

#### `newDescribeWorkflowTypeInput`

``` purescript
newDescribeWorkflowTypeInput :: DomainName -> WorkflowType -> DescribeWorkflowTypeInput
```

Constructs DescribeWorkflowTypeInput from required parameters

#### `newDescribeWorkflowTypeInput'`

``` purescript
newDescribeWorkflowTypeInput' :: DomainName -> WorkflowType -> ({ domain :: DomainName, workflowType :: WorkflowType } -> { domain :: DomainName, workflowType :: WorkflowType }) -> DescribeWorkflowTypeInput
```

Constructs DescribeWorkflowTypeInput's fields from required parameters

#### `Description`

``` purescript
newtype Description
  = Description String
```

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `DomainAlreadyExistsFault`

``` purescript
newtype DomainAlreadyExistsFault
  = DomainAlreadyExistsFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned if the specified domain already exists. You get this fault even if the existing domain is in deprecated status.</p>

##### Instances
``` purescript
Newtype DomainAlreadyExistsFault _
Generic DomainAlreadyExistsFault _
Show DomainAlreadyExistsFault
Decode DomainAlreadyExistsFault
Encode DomainAlreadyExistsFault
```

#### `newDomainAlreadyExistsFault`

``` purescript
newDomainAlreadyExistsFault :: DomainAlreadyExistsFault
```

Constructs DomainAlreadyExistsFault from required parameters

#### `newDomainAlreadyExistsFault'`

``` purescript
newDomainAlreadyExistsFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> DomainAlreadyExistsFault
```

Constructs DomainAlreadyExistsFault's fields from required parameters

#### `DomainConfiguration`

``` purescript
newtype DomainConfiguration
  = DomainConfiguration { workflowExecutionRetentionPeriodInDays :: DurationInDays }
```

<p>Contains the configuration settings of a domain.</p>

##### Instances
``` purescript
Newtype DomainConfiguration _
Generic DomainConfiguration _
Show DomainConfiguration
Decode DomainConfiguration
Encode DomainConfiguration
```

#### `newDomainConfiguration`

``` purescript
newDomainConfiguration :: DurationInDays -> DomainConfiguration
```

Constructs DomainConfiguration from required parameters

#### `newDomainConfiguration'`

``` purescript
newDomainConfiguration' :: DurationInDays -> ({ workflowExecutionRetentionPeriodInDays :: DurationInDays } -> { workflowExecutionRetentionPeriodInDays :: DurationInDays }) -> DomainConfiguration
```

Constructs DomainConfiguration's fields from required parameters

#### `DomainDeprecatedFault`

``` purescript
newtype DomainDeprecatedFault
  = DomainDeprecatedFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned when the specified domain has been deprecated.</p>

##### Instances
``` purescript
Newtype DomainDeprecatedFault _
Generic DomainDeprecatedFault _
Show DomainDeprecatedFault
Decode DomainDeprecatedFault
Encode DomainDeprecatedFault
```

#### `newDomainDeprecatedFault`

``` purescript
newDomainDeprecatedFault :: DomainDeprecatedFault
```

Constructs DomainDeprecatedFault from required parameters

#### `newDomainDeprecatedFault'`

``` purescript
newDomainDeprecatedFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> DomainDeprecatedFault
```

Constructs DomainDeprecatedFault's fields from required parameters

#### `DomainDetail`

``` purescript
newtype DomainDetail
  = DomainDetail { domainInfo :: DomainInfo, configuration :: DomainConfiguration }
```

<p>Contains details of a domain.</p>

##### Instances
``` purescript
Newtype DomainDetail _
Generic DomainDetail _
Show DomainDetail
Decode DomainDetail
Encode DomainDetail
```

#### `newDomainDetail`

``` purescript
newDomainDetail :: DomainConfiguration -> DomainInfo -> DomainDetail
```

Constructs DomainDetail from required parameters

#### `newDomainDetail'`

``` purescript
newDomainDetail' :: DomainConfiguration -> DomainInfo -> ({ domainInfo :: DomainInfo, configuration :: DomainConfiguration } -> { domainInfo :: DomainInfo, configuration :: DomainConfiguration }) -> DomainDetail
```

Constructs DomainDetail's fields from required parameters

#### `DomainInfo`

``` purescript
newtype DomainInfo
  = DomainInfo { name :: DomainName, status :: RegistrationStatus, description :: NullOrUndefined (Description) }
```

<p>Contains general information about a domain.</p>

##### Instances
``` purescript
Newtype DomainInfo _
Generic DomainInfo _
Show DomainInfo
Decode DomainInfo
Encode DomainInfo
```

#### `newDomainInfo`

``` purescript
newDomainInfo :: DomainName -> RegistrationStatus -> DomainInfo
```

Constructs DomainInfo from required parameters

#### `newDomainInfo'`

``` purescript
newDomainInfo' :: DomainName -> RegistrationStatus -> ({ name :: DomainName, status :: RegistrationStatus, description :: NullOrUndefined (Description) } -> { name :: DomainName, status :: RegistrationStatus, description :: NullOrUndefined (Description) }) -> DomainInfo
```

Constructs DomainInfo's fields from required parameters

#### `DomainInfoList`

``` purescript
newtype DomainInfoList
  = DomainInfoList (Array DomainInfo)
```

##### Instances
``` purescript
Newtype DomainInfoList _
Generic DomainInfoList _
Show DomainInfoList
Decode DomainInfoList
Encode DomainInfoList
```

#### `DomainInfos`

``` purescript
newtype DomainInfos
  = DomainInfos { domainInfos :: DomainInfoList, nextPageToken :: NullOrUndefined (PageToken) }
```

<p>Contains a paginated collection of DomainInfo structures.</p>

##### Instances
``` purescript
Newtype DomainInfos _
Generic DomainInfos _
Show DomainInfos
Decode DomainInfos
Encode DomainInfos
```

#### `newDomainInfos`

``` purescript
newDomainInfos :: DomainInfoList -> DomainInfos
```

Constructs DomainInfos from required parameters

#### `newDomainInfos'`

``` purescript
newDomainInfos' :: DomainInfoList -> ({ domainInfos :: DomainInfoList, nextPageToken :: NullOrUndefined (PageToken) } -> { domainInfos :: DomainInfoList, nextPageToken :: NullOrUndefined (PageToken) }) -> DomainInfos
```

Constructs DomainInfos's fields from required parameters

#### `DomainName`

``` purescript
newtype DomainName
  = DomainName String
```

##### Instances
``` purescript
Newtype DomainName _
Generic DomainName _
Show DomainName
Decode DomainName
Encode DomainName
```

#### `DurationInDays`

``` purescript
newtype DurationInDays
  = DurationInDays String
```

##### Instances
``` purescript
Newtype DurationInDays _
Generic DurationInDays _
Show DurationInDays
Decode DurationInDays
Encode DurationInDays
```

#### `DurationInSeconds`

``` purescript
newtype DurationInSeconds
  = DurationInSeconds String
```

##### Instances
``` purescript
Newtype DurationInSeconds _
Generic DurationInSeconds _
Show DurationInSeconds
Decode DurationInSeconds
Encode DurationInSeconds
```

#### `DurationInSecondsOptional`

``` purescript
newtype DurationInSecondsOptional
  = DurationInSecondsOptional String
```

##### Instances
``` purescript
Newtype DurationInSecondsOptional _
Generic DurationInSecondsOptional _
Show DurationInSecondsOptional
Decode DurationInSecondsOptional
Encode DurationInSecondsOptional
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `EventId`

``` purescript
newtype EventId
  = EventId Number
```

##### Instances
``` purescript
Newtype EventId _
Generic EventId _
Show EventId
Decode EventId
Encode EventId
```

#### `EventType`

``` purescript
newtype EventType
  = EventType String
```

##### Instances
``` purescript
Newtype EventType _
Generic EventType _
Show EventType
Decode EventType
Encode EventType
```

#### `ExecutionStatus`

``` purescript
newtype ExecutionStatus
  = ExecutionStatus String
```

##### Instances
``` purescript
Newtype ExecutionStatus _
Generic ExecutionStatus _
Show ExecutionStatus
Decode ExecutionStatus
Encode ExecutionStatus
```

#### `ExecutionTimeFilter`

``` purescript
newtype ExecutionTimeFilter
  = ExecutionTimeFilter { oldestDate :: Timestamp, latestDate :: NullOrUndefined (Timestamp) }
```

<p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href="https://en.wikipedia.org/wiki/Unix_time">Unix Time format</a>. For example: <code>"oldestDate": 1325376070.</code> </p>

##### Instances
``` purescript
Newtype ExecutionTimeFilter _
Generic ExecutionTimeFilter _
Show ExecutionTimeFilter
Decode ExecutionTimeFilter
Encode ExecutionTimeFilter
```

#### `newExecutionTimeFilter`

``` purescript
newExecutionTimeFilter :: Timestamp -> ExecutionTimeFilter
```

Constructs ExecutionTimeFilter from required parameters

#### `newExecutionTimeFilter'`

``` purescript
newExecutionTimeFilter' :: Timestamp -> ({ oldestDate :: Timestamp, latestDate :: NullOrUndefined (Timestamp) } -> { oldestDate :: Timestamp, latestDate :: NullOrUndefined (Timestamp) }) -> ExecutionTimeFilter
```

Constructs ExecutionTimeFilter's fields from required parameters

#### `ExternalWorkflowExecutionCancelRequestedEventAttributes`

``` purescript
newtype ExternalWorkflowExecutionCancelRequestedEventAttributes
  = ExternalWorkflowExecutionCancelRequestedEventAttributes { workflowExecution :: WorkflowExecution, initiatedEventId :: EventId }
```

<p>Provides the details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>

##### Instances
``` purescript
Newtype ExternalWorkflowExecutionCancelRequestedEventAttributes _
Generic ExternalWorkflowExecutionCancelRequestedEventAttributes _
Show ExternalWorkflowExecutionCancelRequestedEventAttributes
Decode ExternalWorkflowExecutionCancelRequestedEventAttributes
Encode ExternalWorkflowExecutionCancelRequestedEventAttributes
```

#### `newExternalWorkflowExecutionCancelRequestedEventAttributes`

``` purescript
newExternalWorkflowExecutionCancelRequestedEventAttributes :: EventId -> WorkflowExecution -> ExternalWorkflowExecutionCancelRequestedEventAttributes
```

Constructs ExternalWorkflowExecutionCancelRequestedEventAttributes from required parameters

#### `newExternalWorkflowExecutionCancelRequestedEventAttributes'`

``` purescript
newExternalWorkflowExecutionCancelRequestedEventAttributes' :: EventId -> WorkflowExecution -> ({ workflowExecution :: WorkflowExecution, initiatedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, initiatedEventId :: EventId }) -> ExternalWorkflowExecutionCancelRequestedEventAttributes
```

Constructs ExternalWorkflowExecutionCancelRequestedEventAttributes's fields from required parameters

#### `ExternalWorkflowExecutionSignaledEventAttributes`

``` purescript
newtype ExternalWorkflowExecutionSignaledEventAttributes
  = ExternalWorkflowExecutionSignaledEventAttributes { workflowExecution :: WorkflowExecution, initiatedEventId :: EventId }
```

<p>Provides the details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>

##### Instances
``` purescript
Newtype ExternalWorkflowExecutionSignaledEventAttributes _
Generic ExternalWorkflowExecutionSignaledEventAttributes _
Show ExternalWorkflowExecutionSignaledEventAttributes
Decode ExternalWorkflowExecutionSignaledEventAttributes
Encode ExternalWorkflowExecutionSignaledEventAttributes
```

#### `newExternalWorkflowExecutionSignaledEventAttributes`

``` purescript
newExternalWorkflowExecutionSignaledEventAttributes :: EventId -> WorkflowExecution -> ExternalWorkflowExecutionSignaledEventAttributes
```

Constructs ExternalWorkflowExecutionSignaledEventAttributes from required parameters

#### `newExternalWorkflowExecutionSignaledEventAttributes'`

``` purescript
newExternalWorkflowExecutionSignaledEventAttributes' :: EventId -> WorkflowExecution -> ({ workflowExecution :: WorkflowExecution, initiatedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, initiatedEventId :: EventId }) -> ExternalWorkflowExecutionSignaledEventAttributes
```

Constructs ExternalWorkflowExecutionSignaledEventAttributes's fields from required parameters

#### `FailWorkflowExecutionDecisionAttributes`

``` purescript
newtype FailWorkflowExecutionDecisionAttributes
  = FailWorkflowExecutionDecisionAttributes { reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>FailWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype FailWorkflowExecutionDecisionAttributes _
Generic FailWorkflowExecutionDecisionAttributes _
Show FailWorkflowExecutionDecisionAttributes
Decode FailWorkflowExecutionDecisionAttributes
Encode FailWorkflowExecutionDecisionAttributes
```

#### `newFailWorkflowExecutionDecisionAttributes`

``` purescript
newFailWorkflowExecutionDecisionAttributes :: FailWorkflowExecutionDecisionAttributes
```

Constructs FailWorkflowExecutionDecisionAttributes from required parameters

#### `newFailWorkflowExecutionDecisionAttributes'`

``` purescript
newFailWorkflowExecutionDecisionAttributes' :: ({ reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) } -> { reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) }) -> FailWorkflowExecutionDecisionAttributes
```

Constructs FailWorkflowExecutionDecisionAttributes's fields from required parameters

#### `FailWorkflowExecutionFailedCause`

``` purescript
newtype FailWorkflowExecutionFailedCause
  = FailWorkflowExecutionFailedCause String
```

##### Instances
``` purescript
Newtype FailWorkflowExecutionFailedCause _
Generic FailWorkflowExecutionFailedCause _
Show FailWorkflowExecutionFailedCause
Decode FailWorkflowExecutionFailedCause
Encode FailWorkflowExecutionFailedCause
```

#### `FailWorkflowExecutionFailedEventAttributes`

``` purescript
newtype FailWorkflowExecutionFailedEventAttributes
  = FailWorkflowExecutionFailedEventAttributes { cause :: FailWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>FailWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype FailWorkflowExecutionFailedEventAttributes _
Generic FailWorkflowExecutionFailedEventAttributes _
Show FailWorkflowExecutionFailedEventAttributes
Decode FailWorkflowExecutionFailedEventAttributes
Encode FailWorkflowExecutionFailedEventAttributes
```

#### `newFailWorkflowExecutionFailedEventAttributes`

``` purescript
newFailWorkflowExecutionFailedEventAttributes :: FailWorkflowExecutionFailedCause -> EventId -> FailWorkflowExecutionFailedEventAttributes
```

Constructs FailWorkflowExecutionFailedEventAttributes from required parameters

#### `newFailWorkflowExecutionFailedEventAttributes'`

``` purescript
newFailWorkflowExecutionFailedEventAttributes' :: FailWorkflowExecutionFailedCause -> EventId -> ({ cause :: FailWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId } -> { cause :: FailWorkflowExecutionFailedCause, decisionTaskCompletedEventId :: EventId }) -> FailWorkflowExecutionFailedEventAttributes
```

Constructs FailWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `FailureReason`

``` purescript
newtype FailureReason
  = FailureReason String
```

##### Instances
``` purescript
Newtype FailureReason _
Generic FailureReason _
Show FailureReason
Decode FailureReason
Encode FailureReason
```

#### `FunctionId`

``` purescript
newtype FunctionId
  = FunctionId String
```

##### Instances
``` purescript
Newtype FunctionId _
Generic FunctionId _
Show FunctionId
Decode FunctionId
Encode FunctionId
```

#### `FunctionInput`

``` purescript
newtype FunctionInput
  = FunctionInput String
```

##### Instances
``` purescript
Newtype FunctionInput _
Generic FunctionInput _
Show FunctionInput
Decode FunctionInput
Encode FunctionInput
```

#### `FunctionName`

``` purescript
newtype FunctionName
  = FunctionName String
```

##### Instances
``` purescript
Newtype FunctionName _
Generic FunctionName _
Show FunctionName
Decode FunctionName
Encode FunctionName
```

#### `GetWorkflowExecutionHistoryInput`

``` purescript
newtype GetWorkflowExecutionHistoryInput
  = GetWorkflowExecutionHistoryInput { domain :: DomainName, execution :: WorkflowExecution, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }
```

##### Instances
``` purescript
Newtype GetWorkflowExecutionHistoryInput _
Generic GetWorkflowExecutionHistoryInput _
Show GetWorkflowExecutionHistoryInput
Decode GetWorkflowExecutionHistoryInput
Encode GetWorkflowExecutionHistoryInput
```

#### `newGetWorkflowExecutionHistoryInput`

``` purescript
newGetWorkflowExecutionHistoryInput :: DomainName -> WorkflowExecution -> GetWorkflowExecutionHistoryInput
```

Constructs GetWorkflowExecutionHistoryInput from required parameters

#### `newGetWorkflowExecutionHistoryInput'`

``` purescript
newGetWorkflowExecutionHistoryInput' :: DomainName -> WorkflowExecution -> ({ domain :: DomainName, execution :: WorkflowExecution, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) } -> { domain :: DomainName, execution :: WorkflowExecution, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }) -> GetWorkflowExecutionHistoryInput
```

Constructs GetWorkflowExecutionHistoryInput's fields from required parameters

#### `History`

``` purescript
newtype History
  = History { events :: HistoryEventList, nextPageToken :: NullOrUndefined (PageToken) }
```

<p>Paginated representation of a workflow history for a workflow execution. This is the up to date, complete and authoritative record of the events related to all tasks and events in the life of the workflow execution.</p>

##### Instances
``` purescript
Newtype History _
Generic History _
Show History
Decode History
Encode History
```

#### `newHistory`

``` purescript
newHistory :: HistoryEventList -> History
```

Constructs History from required parameters

#### `newHistory'`

``` purescript
newHistory' :: HistoryEventList -> ({ events :: HistoryEventList, nextPageToken :: NullOrUndefined (PageToken) } -> { events :: HistoryEventList, nextPageToken :: NullOrUndefined (PageToken) }) -> History
```

Constructs History's fields from required parameters

#### `HistoryEvent`

``` purescript
newtype HistoryEvent
  = HistoryEvent { eventTimestamp :: Timestamp, eventType :: EventType, eventId :: EventId, workflowExecutionStartedEventAttributes :: NullOrUndefined (WorkflowExecutionStartedEventAttributes), workflowExecutionCompletedEventAttributes :: NullOrUndefined (WorkflowExecutionCompletedEventAttributes), completeWorkflowExecutionFailedEventAttributes :: NullOrUndefined (CompleteWorkflowExecutionFailedEventAttributes), workflowExecutionFailedEventAttributes :: NullOrUndefined (WorkflowExecutionFailedEventAttributes), failWorkflowExecutionFailedEventAttributes :: NullOrUndefined (FailWorkflowExecutionFailedEventAttributes), workflowExecutionTimedOutEventAttributes :: NullOrUndefined (WorkflowExecutionTimedOutEventAttributes), workflowExecutionCanceledEventAttributes :: NullOrUndefined (WorkflowExecutionCanceledEventAttributes), cancelWorkflowExecutionFailedEventAttributes :: NullOrUndefined (CancelWorkflowExecutionFailedEventAttributes), workflowExecutionContinuedAsNewEventAttributes :: NullOrUndefined (WorkflowExecutionContinuedAsNewEventAttributes), continueAsNewWorkflowExecutionFailedEventAttributes :: NullOrUndefined (ContinueAsNewWorkflowExecutionFailedEventAttributes), workflowExecutionTerminatedEventAttributes :: NullOrUndefined (WorkflowExecutionTerminatedEventAttributes), workflowExecutionCancelRequestedEventAttributes :: NullOrUndefined (WorkflowExecutionCancelRequestedEventAttributes), decisionTaskScheduledEventAttributes :: NullOrUndefined (DecisionTaskScheduledEventAttributes), decisionTaskStartedEventAttributes :: NullOrUndefined (DecisionTaskStartedEventAttributes), decisionTaskCompletedEventAttributes :: NullOrUndefined (DecisionTaskCompletedEventAttributes), decisionTaskTimedOutEventAttributes :: NullOrUndefined (DecisionTaskTimedOutEventAttributes), activityTaskScheduledEventAttributes :: NullOrUndefined (ActivityTaskScheduledEventAttributes), activityTaskStartedEventAttributes :: NullOrUndefined (ActivityTaskStartedEventAttributes), activityTaskCompletedEventAttributes :: NullOrUndefined (ActivityTaskCompletedEventAttributes), activityTaskFailedEventAttributes :: NullOrUndefined (ActivityTaskFailedEventAttributes), activityTaskTimedOutEventAttributes :: NullOrUndefined (ActivityTaskTimedOutEventAttributes), activityTaskCanceledEventAttributes :: NullOrUndefined (ActivityTaskCanceledEventAttributes), activityTaskCancelRequestedEventAttributes :: NullOrUndefined (ActivityTaskCancelRequestedEventAttributes), workflowExecutionSignaledEventAttributes :: NullOrUndefined (WorkflowExecutionSignaledEventAttributes), markerRecordedEventAttributes :: NullOrUndefined (MarkerRecordedEventAttributes), recordMarkerFailedEventAttributes :: NullOrUndefined (RecordMarkerFailedEventAttributes), timerStartedEventAttributes :: NullOrUndefined (TimerStartedEventAttributes), timerFiredEventAttributes :: NullOrUndefined (TimerFiredEventAttributes), timerCanceledEventAttributes :: NullOrUndefined (TimerCanceledEventAttributes), startChildWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (StartChildWorkflowExecutionInitiatedEventAttributes), childWorkflowExecutionStartedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionStartedEventAttributes), childWorkflowExecutionCompletedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionCompletedEventAttributes), childWorkflowExecutionFailedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionFailedEventAttributes), childWorkflowExecutionTimedOutEventAttributes :: NullOrUndefined (ChildWorkflowExecutionTimedOutEventAttributes), childWorkflowExecutionCanceledEventAttributes :: NullOrUndefined (ChildWorkflowExecutionCanceledEventAttributes), childWorkflowExecutionTerminatedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionTerminatedEventAttributes), signalExternalWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionInitiatedEventAttributes), externalWorkflowExecutionSignaledEventAttributes :: NullOrUndefined (ExternalWorkflowExecutionSignaledEventAttributes), signalExternalWorkflowExecutionFailedEventAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionFailedEventAttributes), externalWorkflowExecutionCancelRequestedEventAttributes :: NullOrUndefined (ExternalWorkflowExecutionCancelRequestedEventAttributes), requestCancelExternalWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes), requestCancelExternalWorkflowExecutionFailedEventAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionFailedEventAttributes), scheduleActivityTaskFailedEventAttributes :: NullOrUndefined (ScheduleActivityTaskFailedEventAttributes), requestCancelActivityTaskFailedEventAttributes :: NullOrUndefined (RequestCancelActivityTaskFailedEventAttributes), startTimerFailedEventAttributes :: NullOrUndefined (StartTimerFailedEventAttributes), cancelTimerFailedEventAttributes :: NullOrUndefined (CancelTimerFailedEventAttributes), startChildWorkflowExecutionFailedEventAttributes :: NullOrUndefined (StartChildWorkflowExecutionFailedEventAttributes), lambdaFunctionScheduledEventAttributes :: NullOrUndefined (LambdaFunctionScheduledEventAttributes), lambdaFunctionStartedEventAttributes :: NullOrUndefined (LambdaFunctionStartedEventAttributes), lambdaFunctionCompletedEventAttributes :: NullOrUndefined (LambdaFunctionCompletedEventAttributes), lambdaFunctionFailedEventAttributes :: NullOrUndefined (LambdaFunctionFailedEventAttributes), lambdaFunctionTimedOutEventAttributes :: NullOrUndefined (LambdaFunctionTimedOutEventAttributes), scheduleLambdaFunctionFailedEventAttributes :: NullOrUndefined (ScheduleLambdaFunctionFailedEventAttributes), startLambdaFunctionFailedEventAttributes :: NullOrUndefined (StartLambdaFunctionFailedEventAttributes) }
```

<p>Event within a workflow execution. A history event can be one of these types:</p> <ul> <li> <p> <code>ActivityTaskCancelRequested</code> – A <code>RequestCancelActivityTask</code> decision was received by the system.</p> </li> <li> <p> <code>ActivityTaskCanceled</code> – The activity task was successfully canceled.</p> </li> <li> <p> <code>ActivityTaskCompleted</code> – An activity worker successfully completed an activity task by calling <a>RespondActivityTaskCompleted</a>.</p> </li> <li> <p> <code>ActivityTaskFailed</code> – An activity worker failed an activity task by calling <a>RespondActivityTaskFailed</a>.</p> </li> <li> <p> <code>ActivityTaskScheduled</code> – An activity task was scheduled for execution.</p> </li> <li> <p> <code>ActivityTaskStarted</code> – The scheduled activity task was dispatched to a worker.</p> </li> <li> <p> <code>ActivityTaskTimedOut</code> – The activity task timed out.</p> </li> <li> <p> <code>CancelTimerFailed</code> – Failed to process CancelTimer decision. This happens when the decision isn't configured properly, for example no timer exists with the specified timer Id.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A request to cancel a workflow execution failed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCanceled</code> – A child workflow execution, started by this workflow execution, was canceled and closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCompleted</code> – A child workflow execution, started by this workflow execution, completed successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionFailed</code> – A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionStarted</code> – A child workflow execution was successfully started.</p> </li> <li> <p> <code>ChildWorkflowExecutionTerminated</code> – A child workflow execution, started by this workflow execution, was terminated.</p> </li> <li> <p> <code>ChildWorkflowExecutionTimedOut</code> – A child workflow execution, started by this workflow execution, timed out and was closed.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – The workflow execution failed to complete.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – The workflow execution failed to complete after being continued as a new workflow execution.</p> </li> <li> <p> <code>DecisionTaskCompleted</code> – The decider successfully completed a decision task by calling <a>RespondDecisionTaskCompleted</a>.</p> </li> <li> <p> <code>DecisionTaskScheduled</code> – A decision task was scheduled for the workflow execution.</p> </li> <li> <p> <code>DecisionTaskStarted</code> – The decision task was dispatched to a decider.</p> </li> <li> <p> <code>DecisionTaskTimedOut</code> – The decision task timed out.</p> </li> <li> <p> <code>ExternalWorkflowExecutionCancelRequested</code> – Request to cancel an external workflow execution was successfully delivered to the target execution.</p> </li> <li> <p> <code>ExternalWorkflowExecutionSignaled</code> – A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A request to mark a workflow execution as failed, itself failed.</p> </li> <li> <p> <code>MarkerRecorded</code> – A marker was recorded in the workflow history as the result of a <code>RecordMarker</code> decision.</p> </li> <li> <p> <code>RecordMarkerFailed</code> – A <code>RecordMarker</code> decision was returned as failed.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – Failed to process RequestCancelActivityTask decision. This happens when the decision isn't configured properly.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – Request to cancel an external workflow execution failed.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionInitiated</code> – A request was made to request the cancellation of an external workflow execution.</p> </li> <li> <p> <code>ScheduleActivityTaskFailed</code> – Failed to process ScheduleActivityTask decision. This happens when the decision isn't configured properly, for example the activity type specified isn't registered.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – The request to signal an external workflow execution failed.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionInitiated</code> – A request to signal an external workflow was made.</p> </li> <li> <p> <code>StartActivityTaskFailed</code> – A scheduled activity task failed to start.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – Failed to process StartChildWorkflowExecution decision. This happens when the decision isn't configured properly, for example the workflow type specified isn't registered.</p> </li> <li> <p> <code>StartChildWorkflowExecutionInitiated</code> – A request was made to start a child workflow execution.</p> </li> <li> <p> <code>StartTimerFailed</code> – Failed to process StartTimer decision. This happens when the decision isn't configured properly, for example a timer already exists with the specified timer Id.</p> </li> <li> <p> <code>TimerCanceled</code> – A timer, previously started for this workflow execution, was successfully canceled.</p> </li> <li> <p> <code>TimerFired</code> – A timer, previously started for this workflow execution, fired.</p> </li> <li> <p> <code>TimerStarted</code> – A timer was started for the workflow execution due to a <code>StartTimer</code> decision.</p> </li> <li> <p> <code>WorkflowExecutionCancelRequested</code> – A request to cancel this workflow execution was made.</p> </li> <li> <p> <code>WorkflowExecutionCanceled</code> – The workflow execution was successfully canceled and closed.</p> </li> <li> <p> <code>WorkflowExecutionCompleted</code> – The workflow execution was closed due to successful completion.</p> </li> <li> <p> <code>WorkflowExecutionContinuedAsNew</code> – The workflow execution was closed and a new execution of the same type was created with the same workflowId.</p> </li> <li> <p> <code>WorkflowExecutionFailed</code> – The workflow execution closed due to a failure.</p> </li> <li> <p> <code>WorkflowExecutionSignaled</code> – An external signal was received for the workflow execution.</p> </li> <li> <p> <code>WorkflowExecutionStarted</code> – The workflow execution was started.</p> </li> <li> <p> <code>WorkflowExecutionTerminated</code> – The workflow execution was terminated.</p> </li> <li> <p> <code>WorkflowExecutionTimedOut</code> – The workflow execution was closed because a time out was exceeded.</p> </li> </ul>

##### Instances
``` purescript
Newtype HistoryEvent _
Generic HistoryEvent _
Show HistoryEvent
Decode HistoryEvent
Encode HistoryEvent
```

#### `newHistoryEvent`

``` purescript
newHistoryEvent :: EventId -> Timestamp -> EventType -> HistoryEvent
```

Constructs HistoryEvent from required parameters

#### `newHistoryEvent'`

``` purescript
newHistoryEvent' :: EventId -> Timestamp -> EventType -> ({ eventTimestamp :: Timestamp, eventType :: EventType, eventId :: EventId, workflowExecutionStartedEventAttributes :: NullOrUndefined (WorkflowExecutionStartedEventAttributes), workflowExecutionCompletedEventAttributes :: NullOrUndefined (WorkflowExecutionCompletedEventAttributes), completeWorkflowExecutionFailedEventAttributes :: NullOrUndefined (CompleteWorkflowExecutionFailedEventAttributes), workflowExecutionFailedEventAttributes :: NullOrUndefined (WorkflowExecutionFailedEventAttributes), failWorkflowExecutionFailedEventAttributes :: NullOrUndefined (FailWorkflowExecutionFailedEventAttributes), workflowExecutionTimedOutEventAttributes :: NullOrUndefined (WorkflowExecutionTimedOutEventAttributes), workflowExecutionCanceledEventAttributes :: NullOrUndefined (WorkflowExecutionCanceledEventAttributes), cancelWorkflowExecutionFailedEventAttributes :: NullOrUndefined (CancelWorkflowExecutionFailedEventAttributes), workflowExecutionContinuedAsNewEventAttributes :: NullOrUndefined (WorkflowExecutionContinuedAsNewEventAttributes), continueAsNewWorkflowExecutionFailedEventAttributes :: NullOrUndefined (ContinueAsNewWorkflowExecutionFailedEventAttributes), workflowExecutionTerminatedEventAttributes :: NullOrUndefined (WorkflowExecutionTerminatedEventAttributes), workflowExecutionCancelRequestedEventAttributes :: NullOrUndefined (WorkflowExecutionCancelRequestedEventAttributes), decisionTaskScheduledEventAttributes :: NullOrUndefined (DecisionTaskScheduledEventAttributes), decisionTaskStartedEventAttributes :: NullOrUndefined (DecisionTaskStartedEventAttributes), decisionTaskCompletedEventAttributes :: NullOrUndefined (DecisionTaskCompletedEventAttributes), decisionTaskTimedOutEventAttributes :: NullOrUndefined (DecisionTaskTimedOutEventAttributes), activityTaskScheduledEventAttributes :: NullOrUndefined (ActivityTaskScheduledEventAttributes), activityTaskStartedEventAttributes :: NullOrUndefined (ActivityTaskStartedEventAttributes), activityTaskCompletedEventAttributes :: NullOrUndefined (ActivityTaskCompletedEventAttributes), activityTaskFailedEventAttributes :: NullOrUndefined (ActivityTaskFailedEventAttributes), activityTaskTimedOutEventAttributes :: NullOrUndefined (ActivityTaskTimedOutEventAttributes), activityTaskCanceledEventAttributes :: NullOrUndefined (ActivityTaskCanceledEventAttributes), activityTaskCancelRequestedEventAttributes :: NullOrUndefined (ActivityTaskCancelRequestedEventAttributes), workflowExecutionSignaledEventAttributes :: NullOrUndefined (WorkflowExecutionSignaledEventAttributes), markerRecordedEventAttributes :: NullOrUndefined (MarkerRecordedEventAttributes), recordMarkerFailedEventAttributes :: NullOrUndefined (RecordMarkerFailedEventAttributes), timerStartedEventAttributes :: NullOrUndefined (TimerStartedEventAttributes), timerFiredEventAttributes :: NullOrUndefined (TimerFiredEventAttributes), timerCanceledEventAttributes :: NullOrUndefined (TimerCanceledEventAttributes), startChildWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (StartChildWorkflowExecutionInitiatedEventAttributes), childWorkflowExecutionStartedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionStartedEventAttributes), childWorkflowExecutionCompletedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionCompletedEventAttributes), childWorkflowExecutionFailedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionFailedEventAttributes), childWorkflowExecutionTimedOutEventAttributes :: NullOrUndefined (ChildWorkflowExecutionTimedOutEventAttributes), childWorkflowExecutionCanceledEventAttributes :: NullOrUndefined (ChildWorkflowExecutionCanceledEventAttributes), childWorkflowExecutionTerminatedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionTerminatedEventAttributes), signalExternalWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionInitiatedEventAttributes), externalWorkflowExecutionSignaledEventAttributes :: NullOrUndefined (ExternalWorkflowExecutionSignaledEventAttributes), signalExternalWorkflowExecutionFailedEventAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionFailedEventAttributes), externalWorkflowExecutionCancelRequestedEventAttributes :: NullOrUndefined (ExternalWorkflowExecutionCancelRequestedEventAttributes), requestCancelExternalWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes), requestCancelExternalWorkflowExecutionFailedEventAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionFailedEventAttributes), scheduleActivityTaskFailedEventAttributes :: NullOrUndefined (ScheduleActivityTaskFailedEventAttributes), requestCancelActivityTaskFailedEventAttributes :: NullOrUndefined (RequestCancelActivityTaskFailedEventAttributes), startTimerFailedEventAttributes :: NullOrUndefined (StartTimerFailedEventAttributes), cancelTimerFailedEventAttributes :: NullOrUndefined (CancelTimerFailedEventAttributes), startChildWorkflowExecutionFailedEventAttributes :: NullOrUndefined (StartChildWorkflowExecutionFailedEventAttributes), lambdaFunctionScheduledEventAttributes :: NullOrUndefined (LambdaFunctionScheduledEventAttributes), lambdaFunctionStartedEventAttributes :: NullOrUndefined (LambdaFunctionStartedEventAttributes), lambdaFunctionCompletedEventAttributes :: NullOrUndefined (LambdaFunctionCompletedEventAttributes), lambdaFunctionFailedEventAttributes :: NullOrUndefined (LambdaFunctionFailedEventAttributes), lambdaFunctionTimedOutEventAttributes :: NullOrUndefined (LambdaFunctionTimedOutEventAttributes), scheduleLambdaFunctionFailedEventAttributes :: NullOrUndefined (ScheduleLambdaFunctionFailedEventAttributes), startLambdaFunctionFailedEventAttributes :: NullOrUndefined (StartLambdaFunctionFailedEventAttributes) } -> { eventTimestamp :: Timestamp, eventType :: EventType, eventId :: EventId, workflowExecutionStartedEventAttributes :: NullOrUndefined (WorkflowExecutionStartedEventAttributes), workflowExecutionCompletedEventAttributes :: NullOrUndefined (WorkflowExecutionCompletedEventAttributes), completeWorkflowExecutionFailedEventAttributes :: NullOrUndefined (CompleteWorkflowExecutionFailedEventAttributes), workflowExecutionFailedEventAttributes :: NullOrUndefined (WorkflowExecutionFailedEventAttributes), failWorkflowExecutionFailedEventAttributes :: NullOrUndefined (FailWorkflowExecutionFailedEventAttributes), workflowExecutionTimedOutEventAttributes :: NullOrUndefined (WorkflowExecutionTimedOutEventAttributes), workflowExecutionCanceledEventAttributes :: NullOrUndefined (WorkflowExecutionCanceledEventAttributes), cancelWorkflowExecutionFailedEventAttributes :: NullOrUndefined (CancelWorkflowExecutionFailedEventAttributes), workflowExecutionContinuedAsNewEventAttributes :: NullOrUndefined (WorkflowExecutionContinuedAsNewEventAttributes), continueAsNewWorkflowExecutionFailedEventAttributes :: NullOrUndefined (ContinueAsNewWorkflowExecutionFailedEventAttributes), workflowExecutionTerminatedEventAttributes :: NullOrUndefined (WorkflowExecutionTerminatedEventAttributes), workflowExecutionCancelRequestedEventAttributes :: NullOrUndefined (WorkflowExecutionCancelRequestedEventAttributes), decisionTaskScheduledEventAttributes :: NullOrUndefined (DecisionTaskScheduledEventAttributes), decisionTaskStartedEventAttributes :: NullOrUndefined (DecisionTaskStartedEventAttributes), decisionTaskCompletedEventAttributes :: NullOrUndefined (DecisionTaskCompletedEventAttributes), decisionTaskTimedOutEventAttributes :: NullOrUndefined (DecisionTaskTimedOutEventAttributes), activityTaskScheduledEventAttributes :: NullOrUndefined (ActivityTaskScheduledEventAttributes), activityTaskStartedEventAttributes :: NullOrUndefined (ActivityTaskStartedEventAttributes), activityTaskCompletedEventAttributes :: NullOrUndefined (ActivityTaskCompletedEventAttributes), activityTaskFailedEventAttributes :: NullOrUndefined (ActivityTaskFailedEventAttributes), activityTaskTimedOutEventAttributes :: NullOrUndefined (ActivityTaskTimedOutEventAttributes), activityTaskCanceledEventAttributes :: NullOrUndefined (ActivityTaskCanceledEventAttributes), activityTaskCancelRequestedEventAttributes :: NullOrUndefined (ActivityTaskCancelRequestedEventAttributes), workflowExecutionSignaledEventAttributes :: NullOrUndefined (WorkflowExecutionSignaledEventAttributes), markerRecordedEventAttributes :: NullOrUndefined (MarkerRecordedEventAttributes), recordMarkerFailedEventAttributes :: NullOrUndefined (RecordMarkerFailedEventAttributes), timerStartedEventAttributes :: NullOrUndefined (TimerStartedEventAttributes), timerFiredEventAttributes :: NullOrUndefined (TimerFiredEventAttributes), timerCanceledEventAttributes :: NullOrUndefined (TimerCanceledEventAttributes), startChildWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (StartChildWorkflowExecutionInitiatedEventAttributes), childWorkflowExecutionStartedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionStartedEventAttributes), childWorkflowExecutionCompletedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionCompletedEventAttributes), childWorkflowExecutionFailedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionFailedEventAttributes), childWorkflowExecutionTimedOutEventAttributes :: NullOrUndefined (ChildWorkflowExecutionTimedOutEventAttributes), childWorkflowExecutionCanceledEventAttributes :: NullOrUndefined (ChildWorkflowExecutionCanceledEventAttributes), childWorkflowExecutionTerminatedEventAttributes :: NullOrUndefined (ChildWorkflowExecutionTerminatedEventAttributes), signalExternalWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionInitiatedEventAttributes), externalWorkflowExecutionSignaledEventAttributes :: NullOrUndefined (ExternalWorkflowExecutionSignaledEventAttributes), signalExternalWorkflowExecutionFailedEventAttributes :: NullOrUndefined (SignalExternalWorkflowExecutionFailedEventAttributes), externalWorkflowExecutionCancelRequestedEventAttributes :: NullOrUndefined (ExternalWorkflowExecutionCancelRequestedEventAttributes), requestCancelExternalWorkflowExecutionInitiatedEventAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes), requestCancelExternalWorkflowExecutionFailedEventAttributes :: NullOrUndefined (RequestCancelExternalWorkflowExecutionFailedEventAttributes), scheduleActivityTaskFailedEventAttributes :: NullOrUndefined (ScheduleActivityTaskFailedEventAttributes), requestCancelActivityTaskFailedEventAttributes :: NullOrUndefined (RequestCancelActivityTaskFailedEventAttributes), startTimerFailedEventAttributes :: NullOrUndefined (StartTimerFailedEventAttributes), cancelTimerFailedEventAttributes :: NullOrUndefined (CancelTimerFailedEventAttributes), startChildWorkflowExecutionFailedEventAttributes :: NullOrUndefined (StartChildWorkflowExecutionFailedEventAttributes), lambdaFunctionScheduledEventAttributes :: NullOrUndefined (LambdaFunctionScheduledEventAttributes), lambdaFunctionStartedEventAttributes :: NullOrUndefined (LambdaFunctionStartedEventAttributes), lambdaFunctionCompletedEventAttributes :: NullOrUndefined (LambdaFunctionCompletedEventAttributes), lambdaFunctionFailedEventAttributes :: NullOrUndefined (LambdaFunctionFailedEventAttributes), lambdaFunctionTimedOutEventAttributes :: NullOrUndefined (LambdaFunctionTimedOutEventAttributes), scheduleLambdaFunctionFailedEventAttributes :: NullOrUndefined (ScheduleLambdaFunctionFailedEventAttributes), startLambdaFunctionFailedEventAttributes :: NullOrUndefined (StartLambdaFunctionFailedEventAttributes) }) -> HistoryEvent
```

Constructs HistoryEvent's fields from required parameters

#### `HistoryEventList`

``` purescript
newtype HistoryEventList
  = HistoryEventList (Array HistoryEvent)
```

##### Instances
``` purescript
Newtype HistoryEventList _
Generic HistoryEventList _
Show HistoryEventList
Decode HistoryEventList
Encode HistoryEventList
```

#### `Identity`

``` purescript
newtype Identity
  = Identity String
```

##### Instances
``` purescript
Newtype Identity _
Generic Identity _
Show Identity
Decode Identity
Encode Identity
```

#### `LambdaFunctionCompletedEventAttributes`

``` purescript
newtype LambdaFunctionCompletedEventAttributes
  = LambdaFunctionCompletedEventAttributes { scheduledEventId :: EventId, startedEventId :: EventId, result :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set for other event types.</p>

##### Instances
``` purescript
Newtype LambdaFunctionCompletedEventAttributes _
Generic LambdaFunctionCompletedEventAttributes _
Show LambdaFunctionCompletedEventAttributes
Decode LambdaFunctionCompletedEventAttributes
Encode LambdaFunctionCompletedEventAttributes
```

#### `newLambdaFunctionCompletedEventAttributes`

``` purescript
newLambdaFunctionCompletedEventAttributes :: EventId -> EventId -> LambdaFunctionCompletedEventAttributes
```

Constructs LambdaFunctionCompletedEventAttributes from required parameters

#### `newLambdaFunctionCompletedEventAttributes'`

``` purescript
newLambdaFunctionCompletedEventAttributes' :: EventId -> EventId -> ({ scheduledEventId :: EventId, startedEventId :: EventId, result :: NullOrUndefined (Data) } -> { scheduledEventId :: EventId, startedEventId :: EventId, result :: NullOrUndefined (Data) }) -> LambdaFunctionCompletedEventAttributes
```

Constructs LambdaFunctionCompletedEventAttributes's fields from required parameters

#### `LambdaFunctionFailedEventAttributes`

``` purescript
newtype LambdaFunctionFailedEventAttributes
  = LambdaFunctionFailedEventAttributes { scheduledEventId :: EventId, startedEventId :: EventId, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for other event types.</p>

##### Instances
``` purescript
Newtype LambdaFunctionFailedEventAttributes _
Generic LambdaFunctionFailedEventAttributes _
Show LambdaFunctionFailedEventAttributes
Decode LambdaFunctionFailedEventAttributes
Encode LambdaFunctionFailedEventAttributes
```

#### `newLambdaFunctionFailedEventAttributes`

``` purescript
newLambdaFunctionFailedEventAttributes :: EventId -> EventId -> LambdaFunctionFailedEventAttributes
```

Constructs LambdaFunctionFailedEventAttributes from required parameters

#### `newLambdaFunctionFailedEventAttributes'`

``` purescript
newLambdaFunctionFailedEventAttributes' :: EventId -> EventId -> ({ scheduledEventId :: EventId, startedEventId :: EventId, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) } -> { scheduledEventId :: EventId, startedEventId :: EventId, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) }) -> LambdaFunctionFailedEventAttributes
```

Constructs LambdaFunctionFailedEventAttributes's fields from required parameters

#### `LambdaFunctionScheduledEventAttributes`

``` purescript
newtype LambdaFunctionScheduledEventAttributes
  = LambdaFunctionScheduledEventAttributes { id :: FunctionId, name :: FunctionName, control :: NullOrUndefined (Data), input :: NullOrUndefined (FunctionInput), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set for other event types.</p>

##### Instances
``` purescript
Newtype LambdaFunctionScheduledEventAttributes _
Generic LambdaFunctionScheduledEventAttributes _
Show LambdaFunctionScheduledEventAttributes
Decode LambdaFunctionScheduledEventAttributes
Encode LambdaFunctionScheduledEventAttributes
```

#### `newLambdaFunctionScheduledEventAttributes`

``` purescript
newLambdaFunctionScheduledEventAttributes :: EventId -> FunctionId -> FunctionName -> LambdaFunctionScheduledEventAttributes
```

Constructs LambdaFunctionScheduledEventAttributes from required parameters

#### `newLambdaFunctionScheduledEventAttributes'`

``` purescript
newLambdaFunctionScheduledEventAttributes' :: EventId -> FunctionId -> FunctionName -> ({ id :: FunctionId, name :: FunctionName, control :: NullOrUndefined (Data), input :: NullOrUndefined (FunctionInput), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), decisionTaskCompletedEventId :: EventId } -> { id :: FunctionId, name :: FunctionName, control :: NullOrUndefined (Data), input :: NullOrUndefined (FunctionInput), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), decisionTaskCompletedEventId :: EventId }) -> LambdaFunctionScheduledEventAttributes
```

Constructs LambdaFunctionScheduledEventAttributes's fields from required parameters

#### `LambdaFunctionStartedEventAttributes`

``` purescript
newtype LambdaFunctionStartedEventAttributes
  = LambdaFunctionStartedEventAttributes { scheduledEventId :: EventId }
```

<p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for other event types.</p>

##### Instances
``` purescript
Newtype LambdaFunctionStartedEventAttributes _
Generic LambdaFunctionStartedEventAttributes _
Show LambdaFunctionStartedEventAttributes
Decode LambdaFunctionStartedEventAttributes
Encode LambdaFunctionStartedEventAttributes
```

#### `newLambdaFunctionStartedEventAttributes`

``` purescript
newLambdaFunctionStartedEventAttributes :: EventId -> LambdaFunctionStartedEventAttributes
```

Constructs LambdaFunctionStartedEventAttributes from required parameters

#### `newLambdaFunctionStartedEventAttributes'`

``` purescript
newLambdaFunctionStartedEventAttributes' :: EventId -> ({ scheduledEventId :: EventId } -> { scheduledEventId :: EventId }) -> LambdaFunctionStartedEventAttributes
```

Constructs LambdaFunctionStartedEventAttributes's fields from required parameters

#### `LambdaFunctionTimedOutEventAttributes`

``` purescript
newtype LambdaFunctionTimedOutEventAttributes
  = LambdaFunctionTimedOutEventAttributes { scheduledEventId :: EventId, startedEventId :: EventId, timeoutType :: NullOrUndefined (LambdaFunctionTimeoutType) }
```

<p>Provides details of the <code>LambdaFunctionTimedOut</code> event.</p>

##### Instances
``` purescript
Newtype LambdaFunctionTimedOutEventAttributes _
Generic LambdaFunctionTimedOutEventAttributes _
Show LambdaFunctionTimedOutEventAttributes
Decode LambdaFunctionTimedOutEventAttributes
Encode LambdaFunctionTimedOutEventAttributes
```

#### `newLambdaFunctionTimedOutEventAttributes`

``` purescript
newLambdaFunctionTimedOutEventAttributes :: EventId -> EventId -> LambdaFunctionTimedOutEventAttributes
```

Constructs LambdaFunctionTimedOutEventAttributes from required parameters

#### `newLambdaFunctionTimedOutEventAttributes'`

``` purescript
newLambdaFunctionTimedOutEventAttributes' :: EventId -> EventId -> ({ scheduledEventId :: EventId, startedEventId :: EventId, timeoutType :: NullOrUndefined (LambdaFunctionTimeoutType) } -> { scheduledEventId :: EventId, startedEventId :: EventId, timeoutType :: NullOrUndefined (LambdaFunctionTimeoutType) }) -> LambdaFunctionTimedOutEventAttributes
```

Constructs LambdaFunctionTimedOutEventAttributes's fields from required parameters

#### `LambdaFunctionTimeoutType`

``` purescript
newtype LambdaFunctionTimeoutType
  = LambdaFunctionTimeoutType String
```

##### Instances
``` purescript
Newtype LambdaFunctionTimeoutType _
Generic LambdaFunctionTimeoutType _
Show LambdaFunctionTimeoutType
Decode LambdaFunctionTimeoutType
Encode LambdaFunctionTimeoutType
```

#### `LimitExceededFault`

``` purescript
newtype LimitExceededFault
  = LimitExceededFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.</p>

##### Instances
``` purescript
Newtype LimitExceededFault _
Generic LimitExceededFault _
Show LimitExceededFault
Decode LimitExceededFault
Encode LimitExceededFault
```

#### `newLimitExceededFault`

``` purescript
newLimitExceededFault :: LimitExceededFault
```

Constructs LimitExceededFault from required parameters

#### `newLimitExceededFault'`

``` purescript
newLimitExceededFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> LimitExceededFault
```

Constructs LimitExceededFault's fields from required parameters

#### `LimitedData`

``` purescript
newtype LimitedData
  = LimitedData String
```

##### Instances
``` purescript
Newtype LimitedData _
Generic LimitedData _
Show LimitedData
Decode LimitedData
Encode LimitedData
```

#### `ListActivityTypesInput`

``` purescript
newtype ListActivityTypesInput
  = ListActivityTypesInput { domain :: DomainName, name :: NullOrUndefined (Name), registrationStatus :: RegistrationStatus, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }
```

##### Instances
``` purescript
Newtype ListActivityTypesInput _
Generic ListActivityTypesInput _
Show ListActivityTypesInput
Decode ListActivityTypesInput
Encode ListActivityTypesInput
```

#### `newListActivityTypesInput`

``` purescript
newListActivityTypesInput :: DomainName -> RegistrationStatus -> ListActivityTypesInput
```

Constructs ListActivityTypesInput from required parameters

#### `newListActivityTypesInput'`

``` purescript
newListActivityTypesInput' :: DomainName -> RegistrationStatus -> ({ domain :: DomainName, name :: NullOrUndefined (Name), registrationStatus :: RegistrationStatus, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) } -> { domain :: DomainName, name :: NullOrUndefined (Name), registrationStatus :: RegistrationStatus, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }) -> ListActivityTypesInput
```

Constructs ListActivityTypesInput's fields from required parameters

#### `ListClosedWorkflowExecutionsInput`

``` purescript
newtype ListClosedWorkflowExecutionsInput
  = ListClosedWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: NullOrUndefined (ExecutionTimeFilter), closeTimeFilter :: NullOrUndefined (ExecutionTimeFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter), closeStatusFilter :: NullOrUndefined (CloseStatusFilter), typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }
```

##### Instances
``` purescript
Newtype ListClosedWorkflowExecutionsInput _
Generic ListClosedWorkflowExecutionsInput _
Show ListClosedWorkflowExecutionsInput
Decode ListClosedWorkflowExecutionsInput
Encode ListClosedWorkflowExecutionsInput
```

#### `newListClosedWorkflowExecutionsInput`

``` purescript
newListClosedWorkflowExecutionsInput :: DomainName -> ListClosedWorkflowExecutionsInput
```

Constructs ListClosedWorkflowExecutionsInput from required parameters

#### `newListClosedWorkflowExecutionsInput'`

``` purescript
newListClosedWorkflowExecutionsInput' :: DomainName -> ({ domain :: DomainName, startTimeFilter :: NullOrUndefined (ExecutionTimeFilter), closeTimeFilter :: NullOrUndefined (ExecutionTimeFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter), closeStatusFilter :: NullOrUndefined (CloseStatusFilter), typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) } -> { domain :: DomainName, startTimeFilter :: NullOrUndefined (ExecutionTimeFilter), closeTimeFilter :: NullOrUndefined (ExecutionTimeFilter), executionFilter :: NullOrUndefined (WorkflowExecutionFilter), closeStatusFilter :: NullOrUndefined (CloseStatusFilter), typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }) -> ListClosedWorkflowExecutionsInput
```

Constructs ListClosedWorkflowExecutionsInput's fields from required parameters

#### `ListDomainsInput`

``` purescript
newtype ListDomainsInput
  = ListDomainsInput { nextPageToken :: NullOrUndefined (PageToken), registrationStatus :: RegistrationStatus, maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }
```

##### Instances
``` purescript
Newtype ListDomainsInput _
Generic ListDomainsInput _
Show ListDomainsInput
Decode ListDomainsInput
Encode ListDomainsInput
```

#### `newListDomainsInput`

``` purescript
newListDomainsInput :: RegistrationStatus -> ListDomainsInput
```

Constructs ListDomainsInput from required parameters

#### `newListDomainsInput'`

``` purescript
newListDomainsInput' :: RegistrationStatus -> ({ nextPageToken :: NullOrUndefined (PageToken), registrationStatus :: RegistrationStatus, maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) } -> { nextPageToken :: NullOrUndefined (PageToken), registrationStatus :: RegistrationStatus, maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }) -> ListDomainsInput
```

Constructs ListDomainsInput's fields from required parameters

#### `ListOpenWorkflowExecutionsInput`

``` purescript
newtype ListOpenWorkflowExecutionsInput
  = ListOpenWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder), executionFilter :: NullOrUndefined (WorkflowExecutionFilter) }
```

##### Instances
``` purescript
Newtype ListOpenWorkflowExecutionsInput _
Generic ListOpenWorkflowExecutionsInput _
Show ListOpenWorkflowExecutionsInput
Decode ListOpenWorkflowExecutionsInput
Encode ListOpenWorkflowExecutionsInput
```

#### `newListOpenWorkflowExecutionsInput`

``` purescript
newListOpenWorkflowExecutionsInput :: DomainName -> ExecutionTimeFilter -> ListOpenWorkflowExecutionsInput
```

Constructs ListOpenWorkflowExecutionsInput from required parameters

#### `newListOpenWorkflowExecutionsInput'`

``` purescript
newListOpenWorkflowExecutionsInput' :: DomainName -> ExecutionTimeFilter -> ({ domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder), executionFilter :: NullOrUndefined (WorkflowExecutionFilter) } -> { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: NullOrUndefined (WorkflowTypeFilter), tagFilter :: NullOrUndefined (TagFilter), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder), executionFilter :: NullOrUndefined (WorkflowExecutionFilter) }) -> ListOpenWorkflowExecutionsInput
```

Constructs ListOpenWorkflowExecutionsInput's fields from required parameters

#### `ListWorkflowTypesInput`

``` purescript
newtype ListWorkflowTypesInput
  = ListWorkflowTypesInput { domain :: DomainName, name :: NullOrUndefined (Name), registrationStatus :: RegistrationStatus, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }
```

##### Instances
``` purescript
Newtype ListWorkflowTypesInput _
Generic ListWorkflowTypesInput _
Show ListWorkflowTypesInput
Decode ListWorkflowTypesInput
Encode ListWorkflowTypesInput
```

#### `newListWorkflowTypesInput`

``` purescript
newListWorkflowTypesInput :: DomainName -> RegistrationStatus -> ListWorkflowTypesInput
```

Constructs ListWorkflowTypesInput from required parameters

#### `newListWorkflowTypesInput'`

``` purescript
newListWorkflowTypesInput' :: DomainName -> RegistrationStatus -> ({ domain :: DomainName, name :: NullOrUndefined (Name), registrationStatus :: RegistrationStatus, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) } -> { domain :: DomainName, name :: NullOrUndefined (Name), registrationStatus :: RegistrationStatus, nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }) -> ListWorkflowTypesInput
```

Constructs ListWorkflowTypesInput's fields from required parameters

#### `MarkerName`

``` purescript
newtype MarkerName
  = MarkerName String
```

##### Instances
``` purescript
Newtype MarkerName _
Generic MarkerName _
Show MarkerName
Decode MarkerName
Encode MarkerName
```

#### `MarkerRecordedEventAttributes`

``` purescript
newtype MarkerRecordedEventAttributes
  = MarkerRecordedEventAttributes { markerName :: MarkerName, details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>MarkerRecorded</code> event.</p>

##### Instances
``` purescript
Newtype MarkerRecordedEventAttributes _
Generic MarkerRecordedEventAttributes _
Show MarkerRecordedEventAttributes
Decode MarkerRecordedEventAttributes
Encode MarkerRecordedEventAttributes
```

#### `newMarkerRecordedEventAttributes`

``` purescript
newMarkerRecordedEventAttributes :: EventId -> MarkerName -> MarkerRecordedEventAttributes
```

Constructs MarkerRecordedEventAttributes from required parameters

#### `newMarkerRecordedEventAttributes'`

``` purescript
newMarkerRecordedEventAttributes' :: EventId -> MarkerName -> ({ markerName :: MarkerName, details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId } -> { markerName :: MarkerName, details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }) -> MarkerRecordedEventAttributes
```

Constructs MarkerRecordedEventAttributes's fields from required parameters

#### `Name`

``` purescript
newtype Name
  = Name String
```

##### Instances
``` purescript
Newtype Name _
Generic Name _
Show Name
Decode Name
Encode Name
```

#### `OpenDecisionTasksCount`

``` purescript
newtype OpenDecisionTasksCount
  = OpenDecisionTasksCount Int
```

##### Instances
``` purescript
Newtype OpenDecisionTasksCount _
Generic OpenDecisionTasksCount _
Show OpenDecisionTasksCount
Decode OpenDecisionTasksCount
Encode OpenDecisionTasksCount
```

#### `OperationNotPermittedFault`

``` purescript
newtype OperationNotPermittedFault
  = OperationNotPermittedFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned when the caller doesn't have sufficient permissions to invoke the action.</p>

##### Instances
``` purescript
Newtype OperationNotPermittedFault _
Generic OperationNotPermittedFault _
Show OperationNotPermittedFault
Decode OperationNotPermittedFault
Encode OperationNotPermittedFault
```

#### `newOperationNotPermittedFault`

``` purescript
newOperationNotPermittedFault :: OperationNotPermittedFault
```

Constructs OperationNotPermittedFault from required parameters

#### `newOperationNotPermittedFault'`

``` purescript
newOperationNotPermittedFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> OperationNotPermittedFault
```

Constructs OperationNotPermittedFault's fields from required parameters

#### `PageSize`

``` purescript
newtype PageSize
  = PageSize Int
```

##### Instances
``` purescript
Newtype PageSize _
Generic PageSize _
Show PageSize
Decode PageSize
Encode PageSize
```

#### `PageToken`

``` purescript
newtype PageToken
  = PageToken String
```

##### Instances
``` purescript
Newtype PageToken _
Generic PageToken _
Show PageToken
Decode PageToken
Encode PageToken
```

#### `PendingTaskCount`

``` purescript
newtype PendingTaskCount
  = PendingTaskCount { count :: Count, truncated :: NullOrUndefined (Truncated) }
```

<p>Contains the count of tasks in a task list.</p>

##### Instances
``` purescript
Newtype PendingTaskCount _
Generic PendingTaskCount _
Show PendingTaskCount
Decode PendingTaskCount
Encode PendingTaskCount
```

#### `newPendingTaskCount`

``` purescript
newPendingTaskCount :: Count -> PendingTaskCount
```

Constructs PendingTaskCount from required parameters

#### `newPendingTaskCount'`

``` purescript
newPendingTaskCount' :: Count -> ({ count :: Count, truncated :: NullOrUndefined (Truncated) } -> { count :: Count, truncated :: NullOrUndefined (Truncated) }) -> PendingTaskCount
```

Constructs PendingTaskCount's fields from required parameters

#### `PollForActivityTaskInput`

``` purescript
newtype PollForActivityTaskInput
  = PollForActivityTaskInput { domain :: DomainName, taskList :: TaskList, identity :: NullOrUndefined (Identity) }
```

##### Instances
``` purescript
Newtype PollForActivityTaskInput _
Generic PollForActivityTaskInput _
Show PollForActivityTaskInput
Decode PollForActivityTaskInput
Encode PollForActivityTaskInput
```

#### `newPollForActivityTaskInput`

``` purescript
newPollForActivityTaskInput :: DomainName -> TaskList -> PollForActivityTaskInput
```

Constructs PollForActivityTaskInput from required parameters

#### `newPollForActivityTaskInput'`

``` purescript
newPollForActivityTaskInput' :: DomainName -> TaskList -> ({ domain :: DomainName, taskList :: TaskList, identity :: NullOrUndefined (Identity) } -> { domain :: DomainName, taskList :: TaskList, identity :: NullOrUndefined (Identity) }) -> PollForActivityTaskInput
```

Constructs PollForActivityTaskInput's fields from required parameters

#### `PollForDecisionTaskInput`

``` purescript
newtype PollForDecisionTaskInput
  = PollForDecisionTaskInput { domain :: DomainName, taskList :: TaskList, identity :: NullOrUndefined (Identity), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }
```

##### Instances
``` purescript
Newtype PollForDecisionTaskInput _
Generic PollForDecisionTaskInput _
Show PollForDecisionTaskInput
Decode PollForDecisionTaskInput
Encode PollForDecisionTaskInput
```

#### `newPollForDecisionTaskInput`

``` purescript
newPollForDecisionTaskInput :: DomainName -> TaskList -> PollForDecisionTaskInput
```

Constructs PollForDecisionTaskInput from required parameters

#### `newPollForDecisionTaskInput'`

``` purescript
newPollForDecisionTaskInput' :: DomainName -> TaskList -> ({ domain :: DomainName, taskList :: TaskList, identity :: NullOrUndefined (Identity), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) } -> { domain :: DomainName, taskList :: TaskList, identity :: NullOrUndefined (Identity), nextPageToken :: NullOrUndefined (PageToken), maximumPageSize :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder) }) -> PollForDecisionTaskInput
```

Constructs PollForDecisionTaskInput's fields from required parameters

#### `RecordActivityTaskHeartbeatInput`

``` purescript
newtype RecordActivityTaskHeartbeatInput
  = RecordActivityTaskHeartbeatInput { taskToken :: TaskToken, details :: NullOrUndefined (LimitedData) }
```

##### Instances
``` purescript
Newtype RecordActivityTaskHeartbeatInput _
Generic RecordActivityTaskHeartbeatInput _
Show RecordActivityTaskHeartbeatInput
Decode RecordActivityTaskHeartbeatInput
Encode RecordActivityTaskHeartbeatInput
```

#### `newRecordActivityTaskHeartbeatInput`

``` purescript
newRecordActivityTaskHeartbeatInput :: TaskToken -> RecordActivityTaskHeartbeatInput
```

Constructs RecordActivityTaskHeartbeatInput from required parameters

#### `newRecordActivityTaskHeartbeatInput'`

``` purescript
newRecordActivityTaskHeartbeatInput' :: TaskToken -> ({ taskToken :: TaskToken, details :: NullOrUndefined (LimitedData) } -> { taskToken :: TaskToken, details :: NullOrUndefined (LimitedData) }) -> RecordActivityTaskHeartbeatInput
```

Constructs RecordActivityTaskHeartbeatInput's fields from required parameters

#### `RecordMarkerDecisionAttributes`

``` purescript
newtype RecordMarkerDecisionAttributes
  = RecordMarkerDecisionAttributes { markerName :: MarkerName, details :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>RecordMarker</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype RecordMarkerDecisionAttributes _
Generic RecordMarkerDecisionAttributes _
Show RecordMarkerDecisionAttributes
Decode RecordMarkerDecisionAttributes
Encode RecordMarkerDecisionAttributes
```

#### `newRecordMarkerDecisionAttributes`

``` purescript
newRecordMarkerDecisionAttributes :: MarkerName -> RecordMarkerDecisionAttributes
```

Constructs RecordMarkerDecisionAttributes from required parameters

#### `newRecordMarkerDecisionAttributes'`

``` purescript
newRecordMarkerDecisionAttributes' :: MarkerName -> ({ markerName :: MarkerName, details :: NullOrUndefined (Data) } -> { markerName :: MarkerName, details :: NullOrUndefined (Data) }) -> RecordMarkerDecisionAttributes
```

Constructs RecordMarkerDecisionAttributes's fields from required parameters

#### `RecordMarkerFailedCause`

``` purescript
newtype RecordMarkerFailedCause
  = RecordMarkerFailedCause String
```

##### Instances
``` purescript
Newtype RecordMarkerFailedCause _
Generic RecordMarkerFailedCause _
Show RecordMarkerFailedCause
Decode RecordMarkerFailedCause
Encode RecordMarkerFailedCause
```

#### `RecordMarkerFailedEventAttributes`

``` purescript
newtype RecordMarkerFailedEventAttributes
  = RecordMarkerFailedEventAttributes { markerName :: MarkerName, cause :: RecordMarkerFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>RecordMarkerFailed</code> event.</p>

##### Instances
``` purescript
Newtype RecordMarkerFailedEventAttributes _
Generic RecordMarkerFailedEventAttributes _
Show RecordMarkerFailedEventAttributes
Decode RecordMarkerFailedEventAttributes
Encode RecordMarkerFailedEventAttributes
```

#### `newRecordMarkerFailedEventAttributes`

``` purescript
newRecordMarkerFailedEventAttributes :: RecordMarkerFailedCause -> EventId -> MarkerName -> RecordMarkerFailedEventAttributes
```

Constructs RecordMarkerFailedEventAttributes from required parameters

#### `newRecordMarkerFailedEventAttributes'`

``` purescript
newRecordMarkerFailedEventAttributes' :: RecordMarkerFailedCause -> EventId -> MarkerName -> ({ markerName :: MarkerName, cause :: RecordMarkerFailedCause, decisionTaskCompletedEventId :: EventId } -> { markerName :: MarkerName, cause :: RecordMarkerFailedCause, decisionTaskCompletedEventId :: EventId }) -> RecordMarkerFailedEventAttributes
```

Constructs RecordMarkerFailedEventAttributes's fields from required parameters

#### `RegisterActivityTypeInput`

``` purescript
newtype RegisterActivityTypeInput
  = RegisterActivityTypeInput { domain :: DomainName, name :: Name, version :: Version, description :: NullOrUndefined (Description), defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultTaskScheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }
```

##### Instances
``` purescript
Newtype RegisterActivityTypeInput _
Generic RegisterActivityTypeInput _
Show RegisterActivityTypeInput
Decode RegisterActivityTypeInput
Encode RegisterActivityTypeInput
```

#### `newRegisterActivityTypeInput`

``` purescript
newRegisterActivityTypeInput :: DomainName -> Name -> Version -> RegisterActivityTypeInput
```

Constructs RegisterActivityTypeInput from required parameters

#### `newRegisterActivityTypeInput'`

``` purescript
newRegisterActivityTypeInput' :: DomainName -> Name -> Version -> ({ domain :: DomainName, name :: Name, version :: Version, description :: NullOrUndefined (Description), defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultTaskScheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) } -> { domain :: DomainName, name :: Name, version :: Version, description :: NullOrUndefined (Description), defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultTaskScheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }) -> RegisterActivityTypeInput
```

Constructs RegisterActivityTypeInput's fields from required parameters

#### `RegisterDomainInput`

``` purescript
newtype RegisterDomainInput
  = RegisterDomainInput { name :: DomainName, description :: NullOrUndefined (Description), workflowExecutionRetentionPeriodInDays :: DurationInDays }
```

##### Instances
``` purescript
Newtype RegisterDomainInput _
Generic RegisterDomainInput _
Show RegisterDomainInput
Decode RegisterDomainInput
Encode RegisterDomainInput
```

#### `newRegisterDomainInput`

``` purescript
newRegisterDomainInput :: DomainName -> DurationInDays -> RegisterDomainInput
```

Constructs RegisterDomainInput from required parameters

#### `newRegisterDomainInput'`

``` purescript
newRegisterDomainInput' :: DomainName -> DurationInDays -> ({ name :: DomainName, description :: NullOrUndefined (Description), workflowExecutionRetentionPeriodInDays :: DurationInDays } -> { name :: DomainName, description :: NullOrUndefined (Description), workflowExecutionRetentionPeriodInDays :: DurationInDays }) -> RegisterDomainInput
```

Constructs RegisterDomainInput's fields from required parameters

#### `RegisterWorkflowTypeInput`

``` purescript
newtype RegisterWorkflowTypeInput
  = RegisterWorkflowTypeInput { domain :: DomainName, name :: Name, version :: Version, description :: NullOrUndefined (Description), defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultChildPolicy :: NullOrUndefined (ChildPolicy), defaultLambdaRole :: NullOrUndefined (Arn) }
```

##### Instances
``` purescript
Newtype RegisterWorkflowTypeInput _
Generic RegisterWorkflowTypeInput _
Show RegisterWorkflowTypeInput
Decode RegisterWorkflowTypeInput
Encode RegisterWorkflowTypeInput
```

#### `newRegisterWorkflowTypeInput`

``` purescript
newRegisterWorkflowTypeInput :: DomainName -> Name -> Version -> RegisterWorkflowTypeInput
```

Constructs RegisterWorkflowTypeInput from required parameters

#### `newRegisterWorkflowTypeInput'`

``` purescript
newRegisterWorkflowTypeInput' :: DomainName -> Name -> Version -> ({ domain :: DomainName, name :: Name, version :: Version, description :: NullOrUndefined (Description), defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultChildPolicy :: NullOrUndefined (ChildPolicy), defaultLambdaRole :: NullOrUndefined (Arn) } -> { domain :: DomainName, name :: Name, version :: Version, description :: NullOrUndefined (Description), defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultChildPolicy :: NullOrUndefined (ChildPolicy), defaultLambdaRole :: NullOrUndefined (Arn) }) -> RegisterWorkflowTypeInput
```

Constructs RegisterWorkflowTypeInput's fields from required parameters

#### `RegistrationStatus`

``` purescript
newtype RegistrationStatus
  = RegistrationStatus String
```

##### Instances
``` purescript
Newtype RegistrationStatus _
Generic RegistrationStatus _
Show RegistrationStatus
Decode RegistrationStatus
Encode RegistrationStatus
```

#### `RequestCancelActivityTaskDecisionAttributes`

``` purescript
newtype RequestCancelActivityTaskDecisionAttributes
  = RequestCancelActivityTaskDecisionAttributes { activityId :: ActivityId }
```

<p>Provides the details of the <code>RequestCancelActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype RequestCancelActivityTaskDecisionAttributes _
Generic RequestCancelActivityTaskDecisionAttributes _
Show RequestCancelActivityTaskDecisionAttributes
Decode RequestCancelActivityTaskDecisionAttributes
Encode RequestCancelActivityTaskDecisionAttributes
```

#### `newRequestCancelActivityTaskDecisionAttributes`

``` purescript
newRequestCancelActivityTaskDecisionAttributes :: ActivityId -> RequestCancelActivityTaskDecisionAttributes
```

Constructs RequestCancelActivityTaskDecisionAttributes from required parameters

#### `newRequestCancelActivityTaskDecisionAttributes'`

``` purescript
newRequestCancelActivityTaskDecisionAttributes' :: ActivityId -> ({ activityId :: ActivityId } -> { activityId :: ActivityId }) -> RequestCancelActivityTaskDecisionAttributes
```

Constructs RequestCancelActivityTaskDecisionAttributes's fields from required parameters

#### `RequestCancelActivityTaskFailedCause`

``` purescript
newtype RequestCancelActivityTaskFailedCause
  = RequestCancelActivityTaskFailedCause String
```

##### Instances
``` purescript
Newtype RequestCancelActivityTaskFailedCause _
Generic RequestCancelActivityTaskFailedCause _
Show RequestCancelActivityTaskFailedCause
Decode RequestCancelActivityTaskFailedCause
Encode RequestCancelActivityTaskFailedCause
```

#### `RequestCancelActivityTaskFailedEventAttributes`

``` purescript
newtype RequestCancelActivityTaskFailedEventAttributes
  = RequestCancelActivityTaskFailedEventAttributes { activityId :: ActivityId, cause :: RequestCancelActivityTaskFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>RequestCancelActivityTaskFailed</code> event.</p>

##### Instances
``` purescript
Newtype RequestCancelActivityTaskFailedEventAttributes _
Generic RequestCancelActivityTaskFailedEventAttributes _
Show RequestCancelActivityTaskFailedEventAttributes
Decode RequestCancelActivityTaskFailedEventAttributes
Encode RequestCancelActivityTaskFailedEventAttributes
```

#### `newRequestCancelActivityTaskFailedEventAttributes`

``` purescript
newRequestCancelActivityTaskFailedEventAttributes :: ActivityId -> RequestCancelActivityTaskFailedCause -> EventId -> RequestCancelActivityTaskFailedEventAttributes
```

Constructs RequestCancelActivityTaskFailedEventAttributes from required parameters

#### `newRequestCancelActivityTaskFailedEventAttributes'`

``` purescript
newRequestCancelActivityTaskFailedEventAttributes' :: ActivityId -> RequestCancelActivityTaskFailedCause -> EventId -> ({ activityId :: ActivityId, cause :: RequestCancelActivityTaskFailedCause, decisionTaskCompletedEventId :: EventId } -> { activityId :: ActivityId, cause :: RequestCancelActivityTaskFailedCause, decisionTaskCompletedEventId :: EventId }) -> RequestCancelActivityTaskFailedEventAttributes
```

Constructs RequestCancelActivityTaskFailedEventAttributes's fields from required parameters

#### `RequestCancelExternalWorkflowExecutionDecisionAttributes`

``` purescript
newtype RequestCancelExternalWorkflowExecutionDecisionAttributes
  = RequestCancelExternalWorkflowExecutionDecisionAttributes { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), control :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype RequestCancelExternalWorkflowExecutionDecisionAttributes _
Generic RequestCancelExternalWorkflowExecutionDecisionAttributes _
Show RequestCancelExternalWorkflowExecutionDecisionAttributes
Decode RequestCancelExternalWorkflowExecutionDecisionAttributes
Encode RequestCancelExternalWorkflowExecutionDecisionAttributes
```

#### `newRequestCancelExternalWorkflowExecutionDecisionAttributes`

``` purescript
newRequestCancelExternalWorkflowExecutionDecisionAttributes :: WorkflowId -> RequestCancelExternalWorkflowExecutionDecisionAttributes
```

Constructs RequestCancelExternalWorkflowExecutionDecisionAttributes from required parameters

#### `newRequestCancelExternalWorkflowExecutionDecisionAttributes'`

``` purescript
newRequestCancelExternalWorkflowExecutionDecisionAttributes' :: WorkflowId -> ({ workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), control :: NullOrUndefined (Data) } -> { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), control :: NullOrUndefined (Data) }) -> RequestCancelExternalWorkflowExecutionDecisionAttributes
```

Constructs RequestCancelExternalWorkflowExecutionDecisionAttributes's fields from required parameters

#### `RequestCancelExternalWorkflowExecutionFailedCause`

``` purescript
newtype RequestCancelExternalWorkflowExecutionFailedCause
  = RequestCancelExternalWorkflowExecutionFailedCause String
```

##### Instances
``` purescript
Newtype RequestCancelExternalWorkflowExecutionFailedCause _
Generic RequestCancelExternalWorkflowExecutionFailedCause _
Show RequestCancelExternalWorkflowExecutionFailedCause
Decode RequestCancelExternalWorkflowExecutionFailedCause
Encode RequestCancelExternalWorkflowExecutionFailedCause
```

#### `RequestCancelExternalWorkflowExecutionFailedEventAttributes`

``` purescript
newtype RequestCancelExternalWorkflowExecutionFailedEventAttributes
  = RequestCancelExternalWorkflowExecutionFailedEventAttributes { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), cause :: RequestCancelExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype RequestCancelExternalWorkflowExecutionFailedEventAttributes _
Generic RequestCancelExternalWorkflowExecutionFailedEventAttributes _
Show RequestCancelExternalWorkflowExecutionFailedEventAttributes
Decode RequestCancelExternalWorkflowExecutionFailedEventAttributes
Encode RequestCancelExternalWorkflowExecutionFailedEventAttributes
```

#### `newRequestCancelExternalWorkflowExecutionFailedEventAttributes`

``` purescript
newRequestCancelExternalWorkflowExecutionFailedEventAttributes :: RequestCancelExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> RequestCancelExternalWorkflowExecutionFailedEventAttributes
```

Constructs RequestCancelExternalWorkflowExecutionFailedEventAttributes from required parameters

#### `newRequestCancelExternalWorkflowExecutionFailedEventAttributes'`

``` purescript
newRequestCancelExternalWorkflowExecutionFailedEventAttributes' :: RequestCancelExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), cause :: RequestCancelExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) } -> { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), cause :: RequestCancelExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }) -> RequestCancelExternalWorkflowExecutionFailedEventAttributes
```

Constructs RequestCancelExternalWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `RequestCancelExternalWorkflowExecutionInitiatedEventAttributes`

``` purescript
newtype RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
  = RequestCancelExternalWorkflowExecutionInitiatedEventAttributes { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>

##### Instances
``` purescript
Newtype RequestCancelExternalWorkflowExecutionInitiatedEventAttributes _
Generic RequestCancelExternalWorkflowExecutionInitiatedEventAttributes _
Show RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
Decode RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
Encode RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
```

#### `newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes`

``` purescript
newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: EventId -> WorkflowId -> RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
```

Constructs RequestCancelExternalWorkflowExecutionInitiatedEventAttributes from required parameters

#### `newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes'`

``` purescript
newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes' :: EventId -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) } -> { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }) -> RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
```

Constructs RequestCancelExternalWorkflowExecutionInitiatedEventAttributes's fields from required parameters

#### `RequestCancelWorkflowExecutionInput`

``` purescript
newtype RequestCancelWorkflowExecutionInput
  = RequestCancelWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional) }
```

##### Instances
``` purescript
Newtype RequestCancelWorkflowExecutionInput _
Generic RequestCancelWorkflowExecutionInput _
Show RequestCancelWorkflowExecutionInput
Decode RequestCancelWorkflowExecutionInput
Encode RequestCancelWorkflowExecutionInput
```

#### `newRequestCancelWorkflowExecutionInput`

``` purescript
newRequestCancelWorkflowExecutionInput :: DomainName -> WorkflowId -> RequestCancelWorkflowExecutionInput
```

Constructs RequestCancelWorkflowExecutionInput from required parameters

#### `newRequestCancelWorkflowExecutionInput'`

``` purescript
newRequestCancelWorkflowExecutionInput' :: DomainName -> WorkflowId -> ({ domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional) } -> { domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional) }) -> RequestCancelWorkflowExecutionInput
```

Constructs RequestCancelWorkflowExecutionInput's fields from required parameters

#### `RespondActivityTaskCanceledInput`

``` purescript
newtype RespondActivityTaskCanceledInput
  = RespondActivityTaskCanceledInput { taskToken :: TaskToken, details :: NullOrUndefined (Data) }
```

##### Instances
``` purescript
Newtype RespondActivityTaskCanceledInput _
Generic RespondActivityTaskCanceledInput _
Show RespondActivityTaskCanceledInput
Decode RespondActivityTaskCanceledInput
Encode RespondActivityTaskCanceledInput
```

#### `newRespondActivityTaskCanceledInput`

``` purescript
newRespondActivityTaskCanceledInput :: TaskToken -> RespondActivityTaskCanceledInput
```

Constructs RespondActivityTaskCanceledInput from required parameters

#### `newRespondActivityTaskCanceledInput'`

``` purescript
newRespondActivityTaskCanceledInput' :: TaskToken -> ({ taskToken :: TaskToken, details :: NullOrUndefined (Data) } -> { taskToken :: TaskToken, details :: NullOrUndefined (Data) }) -> RespondActivityTaskCanceledInput
```

Constructs RespondActivityTaskCanceledInput's fields from required parameters

#### `RespondActivityTaskCompletedInput`

``` purescript
newtype RespondActivityTaskCompletedInput
  = RespondActivityTaskCompletedInput { taskToken :: TaskToken, result :: NullOrUndefined (Data) }
```

##### Instances
``` purescript
Newtype RespondActivityTaskCompletedInput _
Generic RespondActivityTaskCompletedInput _
Show RespondActivityTaskCompletedInput
Decode RespondActivityTaskCompletedInput
Encode RespondActivityTaskCompletedInput
```

#### `newRespondActivityTaskCompletedInput`

``` purescript
newRespondActivityTaskCompletedInput :: TaskToken -> RespondActivityTaskCompletedInput
```

Constructs RespondActivityTaskCompletedInput from required parameters

#### `newRespondActivityTaskCompletedInput'`

``` purescript
newRespondActivityTaskCompletedInput' :: TaskToken -> ({ taskToken :: TaskToken, result :: NullOrUndefined (Data) } -> { taskToken :: TaskToken, result :: NullOrUndefined (Data) }) -> RespondActivityTaskCompletedInput
```

Constructs RespondActivityTaskCompletedInput's fields from required parameters

#### `RespondActivityTaskFailedInput`

``` purescript
newtype RespondActivityTaskFailedInput
  = RespondActivityTaskFailedInput { taskToken :: TaskToken, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) }
```

##### Instances
``` purescript
Newtype RespondActivityTaskFailedInput _
Generic RespondActivityTaskFailedInput _
Show RespondActivityTaskFailedInput
Decode RespondActivityTaskFailedInput
Encode RespondActivityTaskFailedInput
```

#### `newRespondActivityTaskFailedInput`

``` purescript
newRespondActivityTaskFailedInput :: TaskToken -> RespondActivityTaskFailedInput
```

Constructs RespondActivityTaskFailedInput from required parameters

#### `newRespondActivityTaskFailedInput'`

``` purescript
newRespondActivityTaskFailedInput' :: TaskToken -> ({ taskToken :: TaskToken, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) } -> { taskToken :: TaskToken, reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data) }) -> RespondActivityTaskFailedInput
```

Constructs RespondActivityTaskFailedInput's fields from required parameters

#### `RespondDecisionTaskCompletedInput`

``` purescript
newtype RespondDecisionTaskCompletedInput
  = RespondDecisionTaskCompletedInput { taskToken :: TaskToken, decisions :: NullOrUndefined (DecisionList), executionContext :: NullOrUndefined (Data) }
```

<p>Input data for a TaskCompleted response to a decision task.</p>

##### Instances
``` purescript
Newtype RespondDecisionTaskCompletedInput _
Generic RespondDecisionTaskCompletedInput _
Show RespondDecisionTaskCompletedInput
Decode RespondDecisionTaskCompletedInput
Encode RespondDecisionTaskCompletedInput
```

#### `newRespondDecisionTaskCompletedInput`

``` purescript
newRespondDecisionTaskCompletedInput :: TaskToken -> RespondDecisionTaskCompletedInput
```

Constructs RespondDecisionTaskCompletedInput from required parameters

#### `newRespondDecisionTaskCompletedInput'`

``` purescript
newRespondDecisionTaskCompletedInput' :: TaskToken -> ({ taskToken :: TaskToken, decisions :: NullOrUndefined (DecisionList), executionContext :: NullOrUndefined (Data) } -> { taskToken :: TaskToken, decisions :: NullOrUndefined (DecisionList), executionContext :: NullOrUndefined (Data) }) -> RespondDecisionTaskCompletedInput
```

Constructs RespondDecisionTaskCompletedInput's fields from required parameters

#### `ReverseOrder`

``` purescript
newtype ReverseOrder
  = ReverseOrder Boolean
```

##### Instances
``` purescript
Newtype ReverseOrder _
Generic ReverseOrder _
Show ReverseOrder
Decode ReverseOrder
Encode ReverseOrder
```

#### `Run`

``` purescript
newtype Run
  = Run { runId :: NullOrUndefined (WorkflowRunId) }
```

<p>Specifies the <code>runId</code> of a workflow execution.</p>

##### Instances
``` purescript
Newtype Run _
Generic Run _
Show Run
Decode Run
Encode Run
```

#### `newRun`

``` purescript
newRun :: Run
```

Constructs Run from required parameters

#### `newRun'`

``` purescript
newRun' :: ({ runId :: NullOrUndefined (WorkflowRunId) } -> { runId :: NullOrUndefined (WorkflowRunId) }) -> Run
```

Constructs Run's fields from required parameters

#### `ScheduleActivityTaskDecisionAttributes`

``` purescript
newtype ScheduleActivityTaskDecisionAttributes
  = ScheduleActivityTaskDecisionAttributes { activityType :: ActivityType, activityId :: ActivityId, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), scheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), scheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), heartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional) }
```

<p>Provides the details of the <code>ScheduleActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code> – String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code> – String constraint. The key is <code>swf:activityType.version</code>.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype ScheduleActivityTaskDecisionAttributes _
Generic ScheduleActivityTaskDecisionAttributes _
Show ScheduleActivityTaskDecisionAttributes
Decode ScheduleActivityTaskDecisionAttributes
Encode ScheduleActivityTaskDecisionAttributes
```

#### `newScheduleActivityTaskDecisionAttributes`

``` purescript
newScheduleActivityTaskDecisionAttributes :: ActivityId -> ActivityType -> ScheduleActivityTaskDecisionAttributes
```

Constructs ScheduleActivityTaskDecisionAttributes from required parameters

#### `newScheduleActivityTaskDecisionAttributes'`

``` purescript
newScheduleActivityTaskDecisionAttributes' :: ActivityId -> ActivityType -> ({ activityType :: ActivityType, activityId :: ActivityId, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), scheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), scheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), heartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional) } -> { activityType :: ActivityType, activityId :: ActivityId, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), scheduleToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), scheduleToStartTimeout :: NullOrUndefined (DurationInSecondsOptional), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), heartbeatTimeout :: NullOrUndefined (DurationInSecondsOptional) }) -> ScheduleActivityTaskDecisionAttributes
```

Constructs ScheduleActivityTaskDecisionAttributes's fields from required parameters

#### `ScheduleActivityTaskFailedCause`

``` purescript
newtype ScheduleActivityTaskFailedCause
  = ScheduleActivityTaskFailedCause String
```

##### Instances
``` purescript
Newtype ScheduleActivityTaskFailedCause _
Generic ScheduleActivityTaskFailedCause _
Show ScheduleActivityTaskFailedCause
Decode ScheduleActivityTaskFailedCause
Encode ScheduleActivityTaskFailedCause
```

#### `ScheduleActivityTaskFailedEventAttributes`

``` purescript
newtype ScheduleActivityTaskFailedEventAttributes
  = ScheduleActivityTaskFailedEventAttributes { activityType :: ActivityType, activityId :: ActivityId, cause :: ScheduleActivityTaskFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>ScheduleActivityTaskFailed</code> event.</p>

##### Instances
``` purescript
Newtype ScheduleActivityTaskFailedEventAttributes _
Generic ScheduleActivityTaskFailedEventAttributes _
Show ScheduleActivityTaskFailedEventAttributes
Decode ScheduleActivityTaskFailedEventAttributes
Encode ScheduleActivityTaskFailedEventAttributes
```

#### `newScheduleActivityTaskFailedEventAttributes`

``` purescript
newScheduleActivityTaskFailedEventAttributes :: ActivityId -> ActivityType -> ScheduleActivityTaskFailedCause -> EventId -> ScheduleActivityTaskFailedEventAttributes
```

Constructs ScheduleActivityTaskFailedEventAttributes from required parameters

#### `newScheduleActivityTaskFailedEventAttributes'`

``` purescript
newScheduleActivityTaskFailedEventAttributes' :: ActivityId -> ActivityType -> ScheduleActivityTaskFailedCause -> EventId -> ({ activityType :: ActivityType, activityId :: ActivityId, cause :: ScheduleActivityTaskFailedCause, decisionTaskCompletedEventId :: EventId } -> { activityType :: ActivityType, activityId :: ActivityId, cause :: ScheduleActivityTaskFailedCause, decisionTaskCompletedEventId :: EventId }) -> ScheduleActivityTaskFailedEventAttributes
```

Constructs ScheduleActivityTaskFailedEventAttributes's fields from required parameters

#### `ScheduleLambdaFunctionDecisionAttributes`

``` purescript
newtype ScheduleLambdaFunctionDecisionAttributes
  = ScheduleLambdaFunctionDecisionAttributes { id :: FunctionId, name :: FunctionName, control :: NullOrUndefined (Data), input :: NullOrUndefined (FunctionInput), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }
```

<p>Decision attributes specified in <code>scheduleLambdaFunctionDecisionAttributes</code> within the list of decisions <code>decisions</code> passed to <a>RespondDecisionTaskCompleted</a>.</p>

##### Instances
``` purescript
Newtype ScheduleLambdaFunctionDecisionAttributes _
Generic ScheduleLambdaFunctionDecisionAttributes _
Show ScheduleLambdaFunctionDecisionAttributes
Decode ScheduleLambdaFunctionDecisionAttributes
Encode ScheduleLambdaFunctionDecisionAttributes
```

#### `newScheduleLambdaFunctionDecisionAttributes`

``` purescript
newScheduleLambdaFunctionDecisionAttributes :: FunctionId -> FunctionName -> ScheduleLambdaFunctionDecisionAttributes
```

Constructs ScheduleLambdaFunctionDecisionAttributes from required parameters

#### `newScheduleLambdaFunctionDecisionAttributes'`

``` purescript
newScheduleLambdaFunctionDecisionAttributes' :: FunctionId -> FunctionName -> ({ id :: FunctionId, name :: FunctionName, control :: NullOrUndefined (Data), input :: NullOrUndefined (FunctionInput), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) } -> { id :: FunctionId, name :: FunctionName, control :: NullOrUndefined (Data), input :: NullOrUndefined (FunctionInput), startToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional) }) -> ScheduleLambdaFunctionDecisionAttributes
```

Constructs ScheduleLambdaFunctionDecisionAttributes's fields from required parameters

#### `ScheduleLambdaFunctionFailedCause`

``` purescript
newtype ScheduleLambdaFunctionFailedCause
  = ScheduleLambdaFunctionFailedCause String
```

##### Instances
``` purescript
Newtype ScheduleLambdaFunctionFailedCause _
Generic ScheduleLambdaFunctionFailedCause _
Show ScheduleLambdaFunctionFailedCause
Decode ScheduleLambdaFunctionFailedCause
Encode ScheduleLambdaFunctionFailedCause
```

#### `ScheduleLambdaFunctionFailedEventAttributes`

``` purescript
newtype ScheduleLambdaFunctionFailedEventAttributes
  = ScheduleLambdaFunctionFailedEventAttributes { id :: FunctionId, name :: FunctionName, cause :: ScheduleLambdaFunctionFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't set for other event types.</p>

##### Instances
``` purescript
Newtype ScheduleLambdaFunctionFailedEventAttributes _
Generic ScheduleLambdaFunctionFailedEventAttributes _
Show ScheduleLambdaFunctionFailedEventAttributes
Decode ScheduleLambdaFunctionFailedEventAttributes
Encode ScheduleLambdaFunctionFailedEventAttributes
```

#### `newScheduleLambdaFunctionFailedEventAttributes`

``` purescript
newScheduleLambdaFunctionFailedEventAttributes :: ScheduleLambdaFunctionFailedCause -> EventId -> FunctionId -> FunctionName -> ScheduleLambdaFunctionFailedEventAttributes
```

Constructs ScheduleLambdaFunctionFailedEventAttributes from required parameters

#### `newScheduleLambdaFunctionFailedEventAttributes'`

``` purescript
newScheduleLambdaFunctionFailedEventAttributes' :: ScheduleLambdaFunctionFailedCause -> EventId -> FunctionId -> FunctionName -> ({ id :: FunctionId, name :: FunctionName, cause :: ScheduleLambdaFunctionFailedCause, decisionTaskCompletedEventId :: EventId } -> { id :: FunctionId, name :: FunctionName, cause :: ScheduleLambdaFunctionFailedCause, decisionTaskCompletedEventId :: EventId }) -> ScheduleLambdaFunctionFailedEventAttributes
```

Constructs ScheduleLambdaFunctionFailedEventAttributes's fields from required parameters

#### `SignalExternalWorkflowExecutionDecisionAttributes`

``` purescript
newtype SignalExternalWorkflowExecutionDecisionAttributes
  = SignalExternalWorkflowExecutionDecisionAttributes { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data), control :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype SignalExternalWorkflowExecutionDecisionAttributes _
Generic SignalExternalWorkflowExecutionDecisionAttributes _
Show SignalExternalWorkflowExecutionDecisionAttributes
Decode SignalExternalWorkflowExecutionDecisionAttributes
Encode SignalExternalWorkflowExecutionDecisionAttributes
```

#### `newSignalExternalWorkflowExecutionDecisionAttributes`

``` purescript
newSignalExternalWorkflowExecutionDecisionAttributes :: SignalName -> WorkflowId -> SignalExternalWorkflowExecutionDecisionAttributes
```

Constructs SignalExternalWorkflowExecutionDecisionAttributes from required parameters

#### `newSignalExternalWorkflowExecutionDecisionAttributes'`

``` purescript
newSignalExternalWorkflowExecutionDecisionAttributes' :: SignalName -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data), control :: NullOrUndefined (Data) } -> { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data), control :: NullOrUndefined (Data) }) -> SignalExternalWorkflowExecutionDecisionAttributes
```

Constructs SignalExternalWorkflowExecutionDecisionAttributes's fields from required parameters

#### `SignalExternalWorkflowExecutionFailedCause`

``` purescript
newtype SignalExternalWorkflowExecutionFailedCause
  = SignalExternalWorkflowExecutionFailedCause String
```

##### Instances
``` purescript
Newtype SignalExternalWorkflowExecutionFailedCause _
Generic SignalExternalWorkflowExecutionFailedCause _
Show SignalExternalWorkflowExecutionFailedCause
Decode SignalExternalWorkflowExecutionFailedCause
Encode SignalExternalWorkflowExecutionFailedCause
```

#### `SignalExternalWorkflowExecutionFailedEventAttributes`

``` purescript
newtype SignalExternalWorkflowExecutionFailedEventAttributes
  = SignalExternalWorkflowExecutionFailedEventAttributes { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), cause :: SignalExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype SignalExternalWorkflowExecutionFailedEventAttributes _
Generic SignalExternalWorkflowExecutionFailedEventAttributes _
Show SignalExternalWorkflowExecutionFailedEventAttributes
Decode SignalExternalWorkflowExecutionFailedEventAttributes
Encode SignalExternalWorkflowExecutionFailedEventAttributes
```

#### `newSignalExternalWorkflowExecutionFailedEventAttributes`

``` purescript
newSignalExternalWorkflowExecutionFailedEventAttributes :: SignalExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> SignalExternalWorkflowExecutionFailedEventAttributes
```

Constructs SignalExternalWorkflowExecutionFailedEventAttributes from required parameters

#### `newSignalExternalWorkflowExecutionFailedEventAttributes'`

``` purescript
newSignalExternalWorkflowExecutionFailedEventAttributes' :: SignalExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), cause :: SignalExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) } -> { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), cause :: SignalExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }) -> SignalExternalWorkflowExecutionFailedEventAttributes
```

Constructs SignalExternalWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `SignalExternalWorkflowExecutionInitiatedEventAttributes`

``` purescript
newtype SignalExternalWorkflowExecutionInitiatedEventAttributes
  = SignalExternalWorkflowExecutionInitiatedEventAttributes { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>

##### Instances
``` purescript
Newtype SignalExternalWorkflowExecutionInitiatedEventAttributes _
Generic SignalExternalWorkflowExecutionInitiatedEventAttributes _
Show SignalExternalWorkflowExecutionInitiatedEventAttributes
Decode SignalExternalWorkflowExecutionInitiatedEventAttributes
Encode SignalExternalWorkflowExecutionInitiatedEventAttributes
```

#### `newSignalExternalWorkflowExecutionInitiatedEventAttributes`

``` purescript
newSignalExternalWorkflowExecutionInitiatedEventAttributes :: EventId -> SignalName -> WorkflowId -> SignalExternalWorkflowExecutionInitiatedEventAttributes
```

Constructs SignalExternalWorkflowExecutionInitiatedEventAttributes from required parameters

#### `newSignalExternalWorkflowExecutionInitiatedEventAttributes'`

``` purescript
newSignalExternalWorkflowExecutionInitiatedEventAttributes' :: EventId -> SignalName -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) } -> { workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }) -> SignalExternalWorkflowExecutionInitiatedEventAttributes
```

Constructs SignalExternalWorkflowExecutionInitiatedEventAttributes's fields from required parameters

#### `SignalName`

``` purescript
newtype SignalName
  = SignalName String
```

##### Instances
``` purescript
Newtype SignalName _
Generic SignalName _
Show SignalName
Decode SignalName
Encode SignalName
```

#### `SignalWorkflowExecutionInput`

``` purescript
newtype SignalWorkflowExecutionInput
  = SignalWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data) }
```

##### Instances
``` purescript
Newtype SignalWorkflowExecutionInput _
Generic SignalWorkflowExecutionInput _
Show SignalWorkflowExecutionInput
Decode SignalWorkflowExecutionInput
Encode SignalWorkflowExecutionInput
```

#### `newSignalWorkflowExecutionInput`

``` purescript
newSignalWorkflowExecutionInput :: DomainName -> SignalName -> WorkflowId -> SignalWorkflowExecutionInput
```

Constructs SignalWorkflowExecutionInput from required parameters

#### `newSignalWorkflowExecutionInput'`

``` purescript
newSignalWorkflowExecutionInput' :: DomainName -> SignalName -> WorkflowId -> ({ domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data) } -> { domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), signalName :: SignalName, input :: NullOrUndefined (Data) }) -> SignalWorkflowExecutionInput
```

Constructs SignalWorkflowExecutionInput's fields from required parameters

#### `StartChildWorkflowExecutionDecisionAttributes`

``` purescript
newtype StartChildWorkflowExecutionDecisionAttributes
  = StartChildWorkflowExecutionDecisionAttributes { workflowType :: WorkflowType, workflowId :: WorkflowId, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), tagList :: NullOrUndefined (TagList), lambdaRole :: NullOrUndefined (Arn) }
```

<p>Provides the details of the <code>StartChildWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.N</code> – The key is "swf:tagList.N" where N is the tag number from 0 to 4, inclusive.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code> – String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype StartChildWorkflowExecutionDecisionAttributes _
Generic StartChildWorkflowExecutionDecisionAttributes _
Show StartChildWorkflowExecutionDecisionAttributes
Decode StartChildWorkflowExecutionDecisionAttributes
Encode StartChildWorkflowExecutionDecisionAttributes
```

#### `newStartChildWorkflowExecutionDecisionAttributes`

``` purescript
newStartChildWorkflowExecutionDecisionAttributes :: WorkflowId -> WorkflowType -> StartChildWorkflowExecutionDecisionAttributes
```

Constructs StartChildWorkflowExecutionDecisionAttributes from required parameters

#### `newStartChildWorkflowExecutionDecisionAttributes'`

``` purescript
newStartChildWorkflowExecutionDecisionAttributes' :: WorkflowId -> WorkflowType -> ({ workflowType :: WorkflowType, workflowId :: WorkflowId, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), tagList :: NullOrUndefined (TagList), lambdaRole :: NullOrUndefined (Arn) } -> { workflowType :: WorkflowType, workflowId :: WorkflowId, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), tagList :: NullOrUndefined (TagList), lambdaRole :: NullOrUndefined (Arn) }) -> StartChildWorkflowExecutionDecisionAttributes
```

Constructs StartChildWorkflowExecutionDecisionAttributes's fields from required parameters

#### `StartChildWorkflowExecutionFailedCause`

``` purescript
newtype StartChildWorkflowExecutionFailedCause
  = StartChildWorkflowExecutionFailedCause String
```

##### Instances
``` purescript
Newtype StartChildWorkflowExecutionFailedCause _
Generic StartChildWorkflowExecutionFailedCause _
Show StartChildWorkflowExecutionFailedCause
Decode StartChildWorkflowExecutionFailedCause
Encode StartChildWorkflowExecutionFailedCause
```

#### `StartChildWorkflowExecutionFailedEventAttributes`

``` purescript
newtype StartChildWorkflowExecutionFailedEventAttributes
  = StartChildWorkflowExecutionFailedEventAttributes { workflowType :: WorkflowType, cause :: StartChildWorkflowExecutionFailedCause, workflowId :: WorkflowId, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }
```

<p>Provides the details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype StartChildWorkflowExecutionFailedEventAttributes _
Generic StartChildWorkflowExecutionFailedEventAttributes _
Show StartChildWorkflowExecutionFailedEventAttributes
Decode StartChildWorkflowExecutionFailedEventAttributes
Encode StartChildWorkflowExecutionFailedEventAttributes
```

#### `newStartChildWorkflowExecutionFailedEventAttributes`

``` purescript
newStartChildWorkflowExecutionFailedEventAttributes :: StartChildWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> WorkflowType -> StartChildWorkflowExecutionFailedEventAttributes
```

Constructs StartChildWorkflowExecutionFailedEventAttributes from required parameters

#### `newStartChildWorkflowExecutionFailedEventAttributes'`

``` purescript
newStartChildWorkflowExecutionFailedEventAttributes' :: StartChildWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> WorkflowType -> ({ workflowType :: WorkflowType, cause :: StartChildWorkflowExecutionFailedCause, workflowId :: WorkflowId, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) } -> { workflowType :: WorkflowType, cause :: StartChildWorkflowExecutionFailedCause, workflowId :: WorkflowId, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: NullOrUndefined (Data) }) -> StartChildWorkflowExecutionFailedEventAttributes
```

Constructs StartChildWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `StartChildWorkflowExecutionInitiatedEventAttributes`

``` purescript
newtype StartChildWorkflowExecutionInitiatedEventAttributes
  = StartChildWorkflowExecutionInitiatedEventAttributes { workflowId :: WorkflowId, workflowType :: WorkflowType, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), decisionTaskCompletedEventId :: EventId, childPolicy :: ChildPolicy, taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), tagList :: NullOrUndefined (TagList), lambdaRole :: NullOrUndefined (Arn) }
```

<p>Provides the details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>

##### Instances
``` purescript
Newtype StartChildWorkflowExecutionInitiatedEventAttributes _
Generic StartChildWorkflowExecutionInitiatedEventAttributes _
Show StartChildWorkflowExecutionInitiatedEventAttributes
Decode StartChildWorkflowExecutionInitiatedEventAttributes
Encode StartChildWorkflowExecutionInitiatedEventAttributes
```

#### `newStartChildWorkflowExecutionInitiatedEventAttributes`

``` purescript
newStartChildWorkflowExecutionInitiatedEventAttributes :: ChildPolicy -> EventId -> TaskList -> WorkflowId -> WorkflowType -> StartChildWorkflowExecutionInitiatedEventAttributes
```

Constructs StartChildWorkflowExecutionInitiatedEventAttributes from required parameters

#### `newStartChildWorkflowExecutionInitiatedEventAttributes'`

``` purescript
newStartChildWorkflowExecutionInitiatedEventAttributes' :: ChildPolicy -> EventId -> TaskList -> WorkflowId -> WorkflowType -> ({ workflowId :: WorkflowId, workflowType :: WorkflowType, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), decisionTaskCompletedEventId :: EventId, childPolicy :: ChildPolicy, taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), tagList :: NullOrUndefined (TagList), lambdaRole :: NullOrUndefined (Arn) } -> { workflowId :: WorkflowId, workflowType :: WorkflowType, control :: NullOrUndefined (Data), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), decisionTaskCompletedEventId :: EventId, childPolicy :: ChildPolicy, taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), tagList :: NullOrUndefined (TagList), lambdaRole :: NullOrUndefined (Arn) }) -> StartChildWorkflowExecutionInitiatedEventAttributes
```

Constructs StartChildWorkflowExecutionInitiatedEventAttributes's fields from required parameters

#### `StartLambdaFunctionFailedCause`

``` purescript
newtype StartLambdaFunctionFailedCause
  = StartLambdaFunctionFailedCause String
```

##### Instances
``` purescript
Newtype StartLambdaFunctionFailedCause _
Generic StartLambdaFunctionFailedCause _
Show StartLambdaFunctionFailedCause
Decode StartLambdaFunctionFailedCause
Encode StartLambdaFunctionFailedCause
```

#### `StartLambdaFunctionFailedEventAttributes`

``` purescript
newtype StartLambdaFunctionFailedEventAttributes
  = StartLambdaFunctionFailedEventAttributes { scheduledEventId :: NullOrUndefined (EventId), cause :: NullOrUndefined (StartLambdaFunctionFailedCause), message :: NullOrUndefined (CauseMessage) }
```

<p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set for other event types.</p>

##### Instances
``` purescript
Newtype StartLambdaFunctionFailedEventAttributes _
Generic StartLambdaFunctionFailedEventAttributes _
Show StartLambdaFunctionFailedEventAttributes
Decode StartLambdaFunctionFailedEventAttributes
Encode StartLambdaFunctionFailedEventAttributes
```

#### `newStartLambdaFunctionFailedEventAttributes`

``` purescript
newStartLambdaFunctionFailedEventAttributes :: StartLambdaFunctionFailedEventAttributes
```

Constructs StartLambdaFunctionFailedEventAttributes from required parameters

#### `newStartLambdaFunctionFailedEventAttributes'`

``` purescript
newStartLambdaFunctionFailedEventAttributes' :: ({ scheduledEventId :: NullOrUndefined (EventId), cause :: NullOrUndefined (StartLambdaFunctionFailedCause), message :: NullOrUndefined (CauseMessage) } -> { scheduledEventId :: NullOrUndefined (EventId), cause :: NullOrUndefined (StartLambdaFunctionFailedCause), message :: NullOrUndefined (CauseMessage) }) -> StartLambdaFunctionFailedEventAttributes
```

Constructs StartLambdaFunctionFailedEventAttributes's fields from required parameters

#### `StartTimerDecisionAttributes`

``` purescript
newtype StartTimerDecisionAttributes
  = StartTimerDecisionAttributes { timerId :: TimerId, control :: NullOrUndefined (Data), startToFireTimeout :: DurationInSeconds }
```

<p>Provides the details of the <code>StartTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype StartTimerDecisionAttributes _
Generic StartTimerDecisionAttributes _
Show StartTimerDecisionAttributes
Decode StartTimerDecisionAttributes
Encode StartTimerDecisionAttributes
```

#### `newStartTimerDecisionAttributes`

``` purescript
newStartTimerDecisionAttributes :: DurationInSeconds -> TimerId -> StartTimerDecisionAttributes
```

Constructs StartTimerDecisionAttributes from required parameters

#### `newStartTimerDecisionAttributes'`

``` purescript
newStartTimerDecisionAttributes' :: DurationInSeconds -> TimerId -> ({ timerId :: TimerId, control :: NullOrUndefined (Data), startToFireTimeout :: DurationInSeconds } -> { timerId :: TimerId, control :: NullOrUndefined (Data), startToFireTimeout :: DurationInSeconds }) -> StartTimerDecisionAttributes
```

Constructs StartTimerDecisionAttributes's fields from required parameters

#### `StartTimerFailedCause`

``` purescript
newtype StartTimerFailedCause
  = StartTimerFailedCause String
```

##### Instances
``` purescript
Newtype StartTimerFailedCause _
Generic StartTimerFailedCause _
Show StartTimerFailedCause
Decode StartTimerFailedCause
Encode StartTimerFailedCause
```

#### `StartTimerFailedEventAttributes`

``` purescript
newtype StartTimerFailedEventAttributes
  = StartTimerFailedEventAttributes { timerId :: TimerId, cause :: StartTimerFailedCause, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>StartTimerFailed</code> event.</p>

##### Instances
``` purescript
Newtype StartTimerFailedEventAttributes _
Generic StartTimerFailedEventAttributes _
Show StartTimerFailedEventAttributes
Decode StartTimerFailedEventAttributes
Encode StartTimerFailedEventAttributes
```

#### `newStartTimerFailedEventAttributes`

``` purescript
newStartTimerFailedEventAttributes :: StartTimerFailedCause -> EventId -> TimerId -> StartTimerFailedEventAttributes
```

Constructs StartTimerFailedEventAttributes from required parameters

#### `newStartTimerFailedEventAttributes'`

``` purescript
newStartTimerFailedEventAttributes' :: StartTimerFailedCause -> EventId -> TimerId -> ({ timerId :: TimerId, cause :: StartTimerFailedCause, decisionTaskCompletedEventId :: EventId } -> { timerId :: TimerId, cause :: StartTimerFailedCause, decisionTaskCompletedEventId :: EventId }) -> StartTimerFailedEventAttributes
```

Constructs StartTimerFailedEventAttributes's fields from required parameters

#### `StartWorkflowExecutionInput`

``` purescript
newtype StartWorkflowExecutionInput
  = StartWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, workflowType :: WorkflowType, taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), tagList :: NullOrUndefined (TagList), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), lambdaRole :: NullOrUndefined (Arn) }
```

##### Instances
``` purescript
Newtype StartWorkflowExecutionInput _
Generic StartWorkflowExecutionInput _
Show StartWorkflowExecutionInput
Decode StartWorkflowExecutionInput
Encode StartWorkflowExecutionInput
```

#### `newStartWorkflowExecutionInput`

``` purescript
newStartWorkflowExecutionInput :: DomainName -> WorkflowId -> WorkflowType -> StartWorkflowExecutionInput
```

Constructs StartWorkflowExecutionInput from required parameters

#### `newStartWorkflowExecutionInput'`

``` purescript
newStartWorkflowExecutionInput' :: DomainName -> WorkflowId -> WorkflowType -> ({ domain :: DomainName, workflowId :: WorkflowId, workflowType :: WorkflowType, taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), tagList :: NullOrUndefined (TagList), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), lambdaRole :: NullOrUndefined (Arn) } -> { domain :: DomainName, workflowId :: WorkflowId, workflowType :: WorkflowType, taskList :: NullOrUndefined (TaskList), taskPriority :: NullOrUndefined (TaskPriority), input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), tagList :: NullOrUndefined (TagList), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: NullOrUndefined (ChildPolicy), lambdaRole :: NullOrUndefined (Arn) }) -> StartWorkflowExecutionInput
```

Constructs StartWorkflowExecutionInput's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag String
```

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `TagFilter`

``` purescript
newtype TagFilter
  = TagFilter { tag :: Tag }
```

<p>Used to filter the workflow executions in visibility APIs based on a tag.</p>

##### Instances
``` purescript
Newtype TagFilter _
Generic TagFilter _
Show TagFilter
Decode TagFilter
Encode TagFilter
```

#### `newTagFilter`

``` purescript
newTagFilter :: Tag -> TagFilter
```

Constructs TagFilter from required parameters

#### `newTagFilter'`

``` purescript
newTagFilter' :: Tag -> ({ tag :: Tag } -> { tag :: Tag }) -> TagFilter
```

Constructs TagFilter's fields from required parameters

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TaskList`

``` purescript
newtype TaskList
  = TaskList { name :: Name }
```

<p>Represents a task list.</p>

##### Instances
``` purescript
Newtype TaskList _
Generic TaskList _
Show TaskList
Decode TaskList
Encode TaskList
```

#### `newTaskList`

``` purescript
newTaskList :: Name -> TaskList
```

Constructs TaskList from required parameters

#### `newTaskList'`

``` purescript
newTaskList' :: Name -> ({ name :: Name } -> { name :: Name }) -> TaskList
```

Constructs TaskList's fields from required parameters

#### `TaskPriority`

``` purescript
newtype TaskPriority
  = TaskPriority String
```

##### Instances
``` purescript
Newtype TaskPriority _
Generic TaskPriority _
Show TaskPriority
Decode TaskPriority
Encode TaskPriority
```

#### `TaskToken`

``` purescript
newtype TaskToken
  = TaskToken String
```

##### Instances
``` purescript
Newtype TaskToken _
Generic TaskToken _
Show TaskToken
Decode TaskToken
Encode TaskToken
```

#### `TerminateReason`

``` purescript
newtype TerminateReason
  = TerminateReason String
```

##### Instances
``` purescript
Newtype TerminateReason _
Generic TerminateReason _
Show TerminateReason
Decode TerminateReason
Encode TerminateReason
```

#### `TerminateWorkflowExecutionInput`

``` purescript
newtype TerminateWorkflowExecutionInput
  = TerminateWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), reason :: NullOrUndefined (TerminateReason), details :: NullOrUndefined (Data), childPolicy :: NullOrUndefined (ChildPolicy) }
```

##### Instances
``` purescript
Newtype TerminateWorkflowExecutionInput _
Generic TerminateWorkflowExecutionInput _
Show TerminateWorkflowExecutionInput
Decode TerminateWorkflowExecutionInput
Encode TerminateWorkflowExecutionInput
```

#### `newTerminateWorkflowExecutionInput`

``` purescript
newTerminateWorkflowExecutionInput :: DomainName -> WorkflowId -> TerminateWorkflowExecutionInput
```

Constructs TerminateWorkflowExecutionInput from required parameters

#### `newTerminateWorkflowExecutionInput'`

``` purescript
newTerminateWorkflowExecutionInput' :: DomainName -> WorkflowId -> ({ domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), reason :: NullOrUndefined (TerminateReason), details :: NullOrUndefined (Data), childPolicy :: NullOrUndefined (ChildPolicy) } -> { domain :: DomainName, workflowId :: WorkflowId, runId :: NullOrUndefined (WorkflowRunIdOptional), reason :: NullOrUndefined (TerminateReason), details :: NullOrUndefined (Data), childPolicy :: NullOrUndefined (ChildPolicy) }) -> TerminateWorkflowExecutionInput
```

Constructs TerminateWorkflowExecutionInput's fields from required parameters

#### `TimerCanceledEventAttributes`

``` purescript
newtype TimerCanceledEventAttributes
  = TimerCanceledEventAttributes { timerId :: TimerId, startedEventId :: EventId, decisionTaskCompletedEventId :: EventId }
```

<p> Provides the details of the <code>TimerCanceled</code> event. </p>

##### Instances
``` purescript
Newtype TimerCanceledEventAttributes _
Generic TimerCanceledEventAttributes _
Show TimerCanceledEventAttributes
Decode TimerCanceledEventAttributes
Encode TimerCanceledEventAttributes
```

#### `newTimerCanceledEventAttributes`

``` purescript
newTimerCanceledEventAttributes :: EventId -> EventId -> TimerId -> TimerCanceledEventAttributes
```

Constructs TimerCanceledEventAttributes from required parameters

#### `newTimerCanceledEventAttributes'`

``` purescript
newTimerCanceledEventAttributes' :: EventId -> EventId -> TimerId -> ({ timerId :: TimerId, startedEventId :: EventId, decisionTaskCompletedEventId :: EventId } -> { timerId :: TimerId, startedEventId :: EventId, decisionTaskCompletedEventId :: EventId }) -> TimerCanceledEventAttributes
```

Constructs TimerCanceledEventAttributes's fields from required parameters

#### `TimerFiredEventAttributes`

``` purescript
newtype TimerFiredEventAttributes
  = TimerFiredEventAttributes { timerId :: TimerId, startedEventId :: EventId }
```

<p>Provides the details of the <code>TimerFired</code> event.</p>

##### Instances
``` purescript
Newtype TimerFiredEventAttributes _
Generic TimerFiredEventAttributes _
Show TimerFiredEventAttributes
Decode TimerFiredEventAttributes
Encode TimerFiredEventAttributes
```

#### `newTimerFiredEventAttributes`

``` purescript
newTimerFiredEventAttributes :: EventId -> TimerId -> TimerFiredEventAttributes
```

Constructs TimerFiredEventAttributes from required parameters

#### `newTimerFiredEventAttributes'`

``` purescript
newTimerFiredEventAttributes' :: EventId -> TimerId -> ({ timerId :: TimerId, startedEventId :: EventId } -> { timerId :: TimerId, startedEventId :: EventId }) -> TimerFiredEventAttributes
```

Constructs TimerFiredEventAttributes's fields from required parameters

#### `TimerId`

``` purescript
newtype TimerId
  = TimerId String
```

##### Instances
``` purescript
Newtype TimerId _
Generic TimerId _
Show TimerId
Decode TimerId
Encode TimerId
```

#### `TimerStartedEventAttributes`

``` purescript
newtype TimerStartedEventAttributes
  = TimerStartedEventAttributes { timerId :: TimerId, control :: NullOrUndefined (Data), startToFireTimeout :: DurationInSeconds, decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>TimerStarted</code> event.</p>

##### Instances
``` purescript
Newtype TimerStartedEventAttributes _
Generic TimerStartedEventAttributes _
Show TimerStartedEventAttributes
Decode TimerStartedEventAttributes
Encode TimerStartedEventAttributes
```

#### `newTimerStartedEventAttributes`

``` purescript
newTimerStartedEventAttributes :: EventId -> DurationInSeconds -> TimerId -> TimerStartedEventAttributes
```

Constructs TimerStartedEventAttributes from required parameters

#### `newTimerStartedEventAttributes'`

``` purescript
newTimerStartedEventAttributes' :: EventId -> DurationInSeconds -> TimerId -> ({ timerId :: TimerId, control :: NullOrUndefined (Data), startToFireTimeout :: DurationInSeconds, decisionTaskCompletedEventId :: EventId } -> { timerId :: TimerId, control :: NullOrUndefined (Data), startToFireTimeout :: DurationInSeconds, decisionTaskCompletedEventId :: EventId }) -> TimerStartedEventAttributes
```

Constructs TimerStartedEventAttributes's fields from required parameters

#### `Truncated`

``` purescript
newtype Truncated
  = Truncated Boolean
```

##### Instances
``` purescript
Newtype Truncated _
Generic Truncated _
Show Truncated
Decode Truncated
Encode Truncated
```

#### `TypeAlreadyExistsFault`

``` purescript
newtype TypeAlreadyExistsFault
  = TypeAlreadyExistsFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned if the type already exists in the specified domain. You get this fault even if the existing type is in deprecated status. You can specify another version if the intent is to create a new distinct version of the type.</p>

##### Instances
``` purescript
Newtype TypeAlreadyExistsFault _
Generic TypeAlreadyExistsFault _
Show TypeAlreadyExistsFault
Decode TypeAlreadyExistsFault
Encode TypeAlreadyExistsFault
```

#### `newTypeAlreadyExistsFault`

``` purescript
newTypeAlreadyExistsFault :: TypeAlreadyExistsFault
```

Constructs TypeAlreadyExistsFault from required parameters

#### `newTypeAlreadyExistsFault'`

``` purescript
newTypeAlreadyExistsFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> TypeAlreadyExistsFault
```

Constructs TypeAlreadyExistsFault's fields from required parameters

#### `TypeDeprecatedFault`

``` purescript
newtype TypeDeprecatedFault
  = TypeDeprecatedFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned when the specified activity or workflow type was already deprecated.</p>

##### Instances
``` purescript
Newtype TypeDeprecatedFault _
Generic TypeDeprecatedFault _
Show TypeDeprecatedFault
Decode TypeDeprecatedFault
Encode TypeDeprecatedFault
```

#### `newTypeDeprecatedFault`

``` purescript
newTypeDeprecatedFault :: TypeDeprecatedFault
```

Constructs TypeDeprecatedFault from required parameters

#### `newTypeDeprecatedFault'`

``` purescript
newTypeDeprecatedFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> TypeDeprecatedFault
```

Constructs TypeDeprecatedFault's fields from required parameters

#### `UnknownResourceFault`

``` purescript
newtype UnknownResourceFault
  = UnknownResourceFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.</p>

##### Instances
``` purescript
Newtype UnknownResourceFault _
Generic UnknownResourceFault _
Show UnknownResourceFault
Decode UnknownResourceFault
Encode UnknownResourceFault
```

#### `newUnknownResourceFault`

``` purescript
newUnknownResourceFault :: UnknownResourceFault
```

Constructs UnknownResourceFault from required parameters

#### `newUnknownResourceFault'`

``` purescript
newUnknownResourceFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> UnknownResourceFault
```

Constructs UnknownResourceFault's fields from required parameters

#### `Version`

``` purescript
newtype Version
  = Version String
```

##### Instances
``` purescript
Newtype Version _
Generic Version _
Show Version
Decode Version
Encode Version
```

#### `VersionOptional`

``` purescript
newtype VersionOptional
  = VersionOptional String
```

##### Instances
``` purescript
Newtype VersionOptional _
Generic VersionOptional _
Show VersionOptional
Decode VersionOptional
Encode VersionOptional
```

#### `WorkflowExecution`

``` purescript
newtype WorkflowExecution
  = WorkflowExecution { workflowId :: WorkflowId, runId :: WorkflowRunId }
```

<p>Represents a workflow execution.</p>

##### Instances
``` purescript
Newtype WorkflowExecution _
Generic WorkflowExecution _
Show WorkflowExecution
Decode WorkflowExecution
Encode WorkflowExecution
```

#### `newWorkflowExecution`

``` purescript
newWorkflowExecution :: WorkflowRunId -> WorkflowId -> WorkflowExecution
```

Constructs WorkflowExecution from required parameters

#### `newWorkflowExecution'`

``` purescript
newWorkflowExecution' :: WorkflowRunId -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: WorkflowRunId } -> { workflowId :: WorkflowId, runId :: WorkflowRunId }) -> WorkflowExecution
```

Constructs WorkflowExecution's fields from required parameters

#### `WorkflowExecutionAlreadyStartedFault`

``` purescript
newtype WorkflowExecutionAlreadyStartedFault
  = WorkflowExecutionAlreadyStartedFault { message :: NullOrUndefined (ErrorMessage) }
```

<p>Returned by <a>StartWorkflowExecution</a> when an open execution with the same workflowId is already running in the specified domain.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionAlreadyStartedFault _
Generic WorkflowExecutionAlreadyStartedFault _
Show WorkflowExecutionAlreadyStartedFault
Decode WorkflowExecutionAlreadyStartedFault
Encode WorkflowExecutionAlreadyStartedFault
```

#### `newWorkflowExecutionAlreadyStartedFault`

``` purescript
newWorkflowExecutionAlreadyStartedFault :: WorkflowExecutionAlreadyStartedFault
```

Constructs WorkflowExecutionAlreadyStartedFault from required parameters

#### `newWorkflowExecutionAlreadyStartedFault'`

``` purescript
newWorkflowExecutionAlreadyStartedFault' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> WorkflowExecutionAlreadyStartedFault
```

Constructs WorkflowExecutionAlreadyStartedFault's fields from required parameters

#### `WorkflowExecutionCancelRequestedCause`

``` purescript
newtype WorkflowExecutionCancelRequestedCause
  = WorkflowExecutionCancelRequestedCause String
```

##### Instances
``` purescript
Newtype WorkflowExecutionCancelRequestedCause _
Generic WorkflowExecutionCancelRequestedCause _
Show WorkflowExecutionCancelRequestedCause
Decode WorkflowExecutionCancelRequestedCause
Encode WorkflowExecutionCancelRequestedCause
```

#### `WorkflowExecutionCancelRequestedEventAttributes`

``` purescript
newtype WorkflowExecutionCancelRequestedEventAttributes
  = WorkflowExecutionCancelRequestedEventAttributes { externalWorkflowExecution :: NullOrUndefined (WorkflowExecution), externalInitiatedEventId :: NullOrUndefined (EventId), cause :: NullOrUndefined (WorkflowExecutionCancelRequestedCause) }
```

<p>Provides the details of the <code>WorkflowExecutionCancelRequested</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionCancelRequestedEventAttributes _
Generic WorkflowExecutionCancelRequestedEventAttributes _
Show WorkflowExecutionCancelRequestedEventAttributes
Decode WorkflowExecutionCancelRequestedEventAttributes
Encode WorkflowExecutionCancelRequestedEventAttributes
```

#### `newWorkflowExecutionCancelRequestedEventAttributes`

``` purescript
newWorkflowExecutionCancelRequestedEventAttributes :: WorkflowExecutionCancelRequestedEventAttributes
```

Constructs WorkflowExecutionCancelRequestedEventAttributes from required parameters

#### `newWorkflowExecutionCancelRequestedEventAttributes'`

``` purescript
newWorkflowExecutionCancelRequestedEventAttributes' :: ({ externalWorkflowExecution :: NullOrUndefined (WorkflowExecution), externalInitiatedEventId :: NullOrUndefined (EventId), cause :: NullOrUndefined (WorkflowExecutionCancelRequestedCause) } -> { externalWorkflowExecution :: NullOrUndefined (WorkflowExecution), externalInitiatedEventId :: NullOrUndefined (EventId), cause :: NullOrUndefined (WorkflowExecutionCancelRequestedCause) }) -> WorkflowExecutionCancelRequestedEventAttributes
```

Constructs WorkflowExecutionCancelRequestedEventAttributes's fields from required parameters

#### `WorkflowExecutionCanceledEventAttributes`

``` purescript
newtype WorkflowExecutionCanceledEventAttributes
  = WorkflowExecutionCanceledEventAttributes { details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>WorkflowExecutionCanceled</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionCanceledEventAttributes _
Generic WorkflowExecutionCanceledEventAttributes _
Show WorkflowExecutionCanceledEventAttributes
Decode WorkflowExecutionCanceledEventAttributes
Encode WorkflowExecutionCanceledEventAttributes
```

#### `newWorkflowExecutionCanceledEventAttributes`

``` purescript
newWorkflowExecutionCanceledEventAttributes :: EventId -> WorkflowExecutionCanceledEventAttributes
```

Constructs WorkflowExecutionCanceledEventAttributes from required parameters

#### `newWorkflowExecutionCanceledEventAttributes'`

``` purescript
newWorkflowExecutionCanceledEventAttributes' :: EventId -> ({ details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId } -> { details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }) -> WorkflowExecutionCanceledEventAttributes
```

Constructs WorkflowExecutionCanceledEventAttributes's fields from required parameters

#### `WorkflowExecutionCompletedEventAttributes`

``` purescript
newtype WorkflowExecutionCompletedEventAttributes
  = WorkflowExecutionCompletedEventAttributes { result :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>WorkflowExecutionCompleted</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionCompletedEventAttributes _
Generic WorkflowExecutionCompletedEventAttributes _
Show WorkflowExecutionCompletedEventAttributes
Decode WorkflowExecutionCompletedEventAttributes
Encode WorkflowExecutionCompletedEventAttributes
```

#### `newWorkflowExecutionCompletedEventAttributes`

``` purescript
newWorkflowExecutionCompletedEventAttributes :: EventId -> WorkflowExecutionCompletedEventAttributes
```

Constructs WorkflowExecutionCompletedEventAttributes from required parameters

#### `newWorkflowExecutionCompletedEventAttributes'`

``` purescript
newWorkflowExecutionCompletedEventAttributes' :: EventId -> ({ result :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId } -> { result :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }) -> WorkflowExecutionCompletedEventAttributes
```

Constructs WorkflowExecutionCompletedEventAttributes's fields from required parameters

#### `WorkflowExecutionConfiguration`

``` purescript
newtype WorkflowExecutionConfiguration
  = WorkflowExecutionConfiguration { taskStartToCloseTimeout :: DurationInSeconds, executionStartToCloseTimeout :: DurationInSeconds, taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), childPolicy :: ChildPolicy, lambdaRole :: NullOrUndefined (Arn) }
```

<p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionConfiguration _
Generic WorkflowExecutionConfiguration _
Show WorkflowExecutionConfiguration
Decode WorkflowExecutionConfiguration
Encode WorkflowExecutionConfiguration
```

#### `newWorkflowExecutionConfiguration`

``` purescript
newWorkflowExecutionConfiguration :: ChildPolicy -> DurationInSeconds -> TaskList -> DurationInSeconds -> WorkflowExecutionConfiguration
```

Constructs WorkflowExecutionConfiguration from required parameters

#### `newWorkflowExecutionConfiguration'`

``` purescript
newWorkflowExecutionConfiguration' :: ChildPolicy -> DurationInSeconds -> TaskList -> DurationInSeconds -> ({ taskStartToCloseTimeout :: DurationInSeconds, executionStartToCloseTimeout :: DurationInSeconds, taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), childPolicy :: ChildPolicy, lambdaRole :: NullOrUndefined (Arn) } -> { taskStartToCloseTimeout :: DurationInSeconds, executionStartToCloseTimeout :: DurationInSeconds, taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), childPolicy :: ChildPolicy, lambdaRole :: NullOrUndefined (Arn) }) -> WorkflowExecutionConfiguration
```

Constructs WorkflowExecutionConfiguration's fields from required parameters

#### `WorkflowExecutionContinuedAsNewEventAttributes`

``` purescript
newtype WorkflowExecutionContinuedAsNewEventAttributes
  = WorkflowExecutionContinuedAsNewEventAttributes { input :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId, newExecutionRunId :: WorkflowRunId, executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: ChildPolicy, tagList :: NullOrUndefined (TagList), workflowType :: WorkflowType, lambdaRole :: NullOrUndefined (Arn) }
```

<p>Provides the details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionContinuedAsNewEventAttributes _
Generic WorkflowExecutionContinuedAsNewEventAttributes _
Show WorkflowExecutionContinuedAsNewEventAttributes
Decode WorkflowExecutionContinuedAsNewEventAttributes
Encode WorkflowExecutionContinuedAsNewEventAttributes
```

#### `newWorkflowExecutionContinuedAsNewEventAttributes`

``` purescript
newWorkflowExecutionContinuedAsNewEventAttributes :: ChildPolicy -> EventId -> WorkflowRunId -> TaskList -> WorkflowType -> WorkflowExecutionContinuedAsNewEventAttributes
```

Constructs WorkflowExecutionContinuedAsNewEventAttributes from required parameters

#### `newWorkflowExecutionContinuedAsNewEventAttributes'`

``` purescript
newWorkflowExecutionContinuedAsNewEventAttributes' :: ChildPolicy -> EventId -> WorkflowRunId -> TaskList -> WorkflowType -> ({ input :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId, newExecutionRunId :: WorkflowRunId, executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: ChildPolicy, tagList :: NullOrUndefined (TagList), workflowType :: WorkflowType, lambdaRole :: NullOrUndefined (Arn) } -> { input :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId, newExecutionRunId :: WorkflowRunId, executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: ChildPolicy, tagList :: NullOrUndefined (TagList), workflowType :: WorkflowType, lambdaRole :: NullOrUndefined (Arn) }) -> WorkflowExecutionContinuedAsNewEventAttributes
```

Constructs WorkflowExecutionContinuedAsNewEventAttributes's fields from required parameters

#### `WorkflowExecutionCount`

``` purescript
newtype WorkflowExecutionCount
  = WorkflowExecutionCount { count :: Count, truncated :: NullOrUndefined (Truncated) }
```

<p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or <a>CountClosedWorkflowExecutions</a> </p>

##### Instances
``` purescript
Newtype WorkflowExecutionCount _
Generic WorkflowExecutionCount _
Show WorkflowExecutionCount
Decode WorkflowExecutionCount
Encode WorkflowExecutionCount
```

#### `newWorkflowExecutionCount`

``` purescript
newWorkflowExecutionCount :: Count -> WorkflowExecutionCount
```

Constructs WorkflowExecutionCount from required parameters

#### `newWorkflowExecutionCount'`

``` purescript
newWorkflowExecutionCount' :: Count -> ({ count :: Count, truncated :: NullOrUndefined (Truncated) } -> { count :: Count, truncated :: NullOrUndefined (Truncated) }) -> WorkflowExecutionCount
```

Constructs WorkflowExecutionCount's fields from required parameters

#### `WorkflowExecutionDetail`

``` purescript
newtype WorkflowExecutionDetail
  = WorkflowExecutionDetail { executionInfo :: WorkflowExecutionInfo, executionConfiguration :: WorkflowExecutionConfiguration, openCounts :: WorkflowExecutionOpenCounts, latestActivityTaskTimestamp :: NullOrUndefined (Timestamp), latestExecutionContext :: NullOrUndefined (Data) }
```

<p>Contains details about a workflow execution.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionDetail _
Generic WorkflowExecutionDetail _
Show WorkflowExecutionDetail
Decode WorkflowExecutionDetail
Encode WorkflowExecutionDetail
```

#### `newWorkflowExecutionDetail`

``` purescript
newWorkflowExecutionDetail :: WorkflowExecutionConfiguration -> WorkflowExecutionInfo -> WorkflowExecutionOpenCounts -> WorkflowExecutionDetail
```

Constructs WorkflowExecutionDetail from required parameters

#### `newWorkflowExecutionDetail'`

``` purescript
newWorkflowExecutionDetail' :: WorkflowExecutionConfiguration -> WorkflowExecutionInfo -> WorkflowExecutionOpenCounts -> ({ executionInfo :: WorkflowExecutionInfo, executionConfiguration :: WorkflowExecutionConfiguration, openCounts :: WorkflowExecutionOpenCounts, latestActivityTaskTimestamp :: NullOrUndefined (Timestamp), latestExecutionContext :: NullOrUndefined (Data) } -> { executionInfo :: WorkflowExecutionInfo, executionConfiguration :: WorkflowExecutionConfiguration, openCounts :: WorkflowExecutionOpenCounts, latestActivityTaskTimestamp :: NullOrUndefined (Timestamp), latestExecutionContext :: NullOrUndefined (Data) }) -> WorkflowExecutionDetail
```

Constructs WorkflowExecutionDetail's fields from required parameters

#### `WorkflowExecutionFailedEventAttributes`

``` purescript
newtype WorkflowExecutionFailedEventAttributes
  = WorkflowExecutionFailedEventAttributes { reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }
```

<p>Provides the details of the <code>WorkflowExecutionFailed</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionFailedEventAttributes _
Generic WorkflowExecutionFailedEventAttributes _
Show WorkflowExecutionFailedEventAttributes
Decode WorkflowExecutionFailedEventAttributes
Encode WorkflowExecutionFailedEventAttributes
```

#### `newWorkflowExecutionFailedEventAttributes`

``` purescript
newWorkflowExecutionFailedEventAttributes :: EventId -> WorkflowExecutionFailedEventAttributes
```

Constructs WorkflowExecutionFailedEventAttributes from required parameters

#### `newWorkflowExecutionFailedEventAttributes'`

``` purescript
newWorkflowExecutionFailedEventAttributes' :: EventId -> ({ reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId } -> { reason :: NullOrUndefined (FailureReason), details :: NullOrUndefined (Data), decisionTaskCompletedEventId :: EventId }) -> WorkflowExecutionFailedEventAttributes
```

Constructs WorkflowExecutionFailedEventAttributes's fields from required parameters

#### `WorkflowExecutionFilter`

``` purescript
newtype WorkflowExecutionFilter
  = WorkflowExecutionFilter { workflowId :: WorkflowId }
```

<p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionFilter _
Generic WorkflowExecutionFilter _
Show WorkflowExecutionFilter
Decode WorkflowExecutionFilter
Encode WorkflowExecutionFilter
```

#### `newWorkflowExecutionFilter`

``` purescript
newWorkflowExecutionFilter :: WorkflowId -> WorkflowExecutionFilter
```

Constructs WorkflowExecutionFilter from required parameters

#### `newWorkflowExecutionFilter'`

``` purescript
newWorkflowExecutionFilter' :: WorkflowId -> ({ workflowId :: WorkflowId } -> { workflowId :: WorkflowId }) -> WorkflowExecutionFilter
```

Constructs WorkflowExecutionFilter's fields from required parameters

#### `WorkflowExecutionInfo`

``` purescript
newtype WorkflowExecutionInfo
  = WorkflowExecutionInfo { execution :: WorkflowExecution, workflowType :: WorkflowType, startTimestamp :: Timestamp, closeTimestamp :: NullOrUndefined (Timestamp), executionStatus :: ExecutionStatus, closeStatus :: NullOrUndefined (CloseStatus), parent :: NullOrUndefined (WorkflowExecution), tagList :: NullOrUndefined (TagList), cancelRequested :: NullOrUndefined (Canceled) }
```

<p>Contains information about a workflow execution.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionInfo _
Generic WorkflowExecutionInfo _
Show WorkflowExecutionInfo
Decode WorkflowExecutionInfo
Encode WorkflowExecutionInfo
```

#### `newWorkflowExecutionInfo`

``` purescript
newWorkflowExecutionInfo :: WorkflowExecution -> ExecutionStatus -> Timestamp -> WorkflowType -> WorkflowExecutionInfo
```

Constructs WorkflowExecutionInfo from required parameters

#### `newWorkflowExecutionInfo'`

``` purescript
newWorkflowExecutionInfo' :: WorkflowExecution -> ExecutionStatus -> Timestamp -> WorkflowType -> ({ execution :: WorkflowExecution, workflowType :: WorkflowType, startTimestamp :: Timestamp, closeTimestamp :: NullOrUndefined (Timestamp), executionStatus :: ExecutionStatus, closeStatus :: NullOrUndefined (CloseStatus), parent :: NullOrUndefined (WorkflowExecution), tagList :: NullOrUndefined (TagList), cancelRequested :: NullOrUndefined (Canceled) } -> { execution :: WorkflowExecution, workflowType :: WorkflowType, startTimestamp :: Timestamp, closeTimestamp :: NullOrUndefined (Timestamp), executionStatus :: ExecutionStatus, closeStatus :: NullOrUndefined (CloseStatus), parent :: NullOrUndefined (WorkflowExecution), tagList :: NullOrUndefined (TagList), cancelRequested :: NullOrUndefined (Canceled) }) -> WorkflowExecutionInfo
```

Constructs WorkflowExecutionInfo's fields from required parameters

#### `WorkflowExecutionInfoList`

``` purescript
newtype WorkflowExecutionInfoList
  = WorkflowExecutionInfoList (Array WorkflowExecutionInfo)
```

##### Instances
``` purescript
Newtype WorkflowExecutionInfoList _
Generic WorkflowExecutionInfoList _
Show WorkflowExecutionInfoList
Decode WorkflowExecutionInfoList
Encode WorkflowExecutionInfoList
```

#### `WorkflowExecutionInfos`

``` purescript
newtype WorkflowExecutionInfos
  = WorkflowExecutionInfos { executionInfos :: WorkflowExecutionInfoList, nextPageToken :: NullOrUndefined (PageToken) }
```

<p>Contains a paginated list of information about workflow executions.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionInfos _
Generic WorkflowExecutionInfos _
Show WorkflowExecutionInfos
Decode WorkflowExecutionInfos
Encode WorkflowExecutionInfos
```

#### `newWorkflowExecutionInfos`

``` purescript
newWorkflowExecutionInfos :: WorkflowExecutionInfoList -> WorkflowExecutionInfos
```

Constructs WorkflowExecutionInfos from required parameters

#### `newWorkflowExecutionInfos'`

``` purescript
newWorkflowExecutionInfos' :: WorkflowExecutionInfoList -> ({ executionInfos :: WorkflowExecutionInfoList, nextPageToken :: NullOrUndefined (PageToken) } -> { executionInfos :: WorkflowExecutionInfoList, nextPageToken :: NullOrUndefined (PageToken) }) -> WorkflowExecutionInfos
```

Constructs WorkflowExecutionInfos's fields from required parameters

#### `WorkflowExecutionOpenCounts`

``` purescript
newtype WorkflowExecutionOpenCounts
  = WorkflowExecutionOpenCounts { openActivityTasks :: Count, openDecisionTasks :: OpenDecisionTasksCount, openTimers :: Count, openChildWorkflowExecutions :: Count, openLambdaFunctions :: NullOrUndefined (Count) }
```

<p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionOpenCounts _
Generic WorkflowExecutionOpenCounts _
Show WorkflowExecutionOpenCounts
Decode WorkflowExecutionOpenCounts
Encode WorkflowExecutionOpenCounts
```

#### `newWorkflowExecutionOpenCounts`

``` purescript
newWorkflowExecutionOpenCounts :: Count -> Count -> OpenDecisionTasksCount -> Count -> WorkflowExecutionOpenCounts
```

Constructs WorkflowExecutionOpenCounts from required parameters

#### `newWorkflowExecutionOpenCounts'`

``` purescript
newWorkflowExecutionOpenCounts' :: Count -> Count -> OpenDecisionTasksCount -> Count -> ({ openActivityTasks :: Count, openDecisionTasks :: OpenDecisionTasksCount, openTimers :: Count, openChildWorkflowExecutions :: Count, openLambdaFunctions :: NullOrUndefined (Count) } -> { openActivityTasks :: Count, openDecisionTasks :: OpenDecisionTasksCount, openTimers :: Count, openChildWorkflowExecutions :: Count, openLambdaFunctions :: NullOrUndefined (Count) }) -> WorkflowExecutionOpenCounts
```

Constructs WorkflowExecutionOpenCounts's fields from required parameters

#### `WorkflowExecutionSignaledEventAttributes`

``` purescript
newtype WorkflowExecutionSignaledEventAttributes
  = WorkflowExecutionSignaledEventAttributes { signalName :: SignalName, input :: NullOrUndefined (Data), externalWorkflowExecution :: NullOrUndefined (WorkflowExecution), externalInitiatedEventId :: NullOrUndefined (EventId) }
```

<p>Provides the details of the <code>WorkflowExecutionSignaled</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionSignaledEventAttributes _
Generic WorkflowExecutionSignaledEventAttributes _
Show WorkflowExecutionSignaledEventAttributes
Decode WorkflowExecutionSignaledEventAttributes
Encode WorkflowExecutionSignaledEventAttributes
```

#### `newWorkflowExecutionSignaledEventAttributes`

``` purescript
newWorkflowExecutionSignaledEventAttributes :: SignalName -> WorkflowExecutionSignaledEventAttributes
```

Constructs WorkflowExecutionSignaledEventAttributes from required parameters

#### `newWorkflowExecutionSignaledEventAttributes'`

``` purescript
newWorkflowExecutionSignaledEventAttributes' :: SignalName -> ({ signalName :: SignalName, input :: NullOrUndefined (Data), externalWorkflowExecution :: NullOrUndefined (WorkflowExecution), externalInitiatedEventId :: NullOrUndefined (EventId) } -> { signalName :: SignalName, input :: NullOrUndefined (Data), externalWorkflowExecution :: NullOrUndefined (WorkflowExecution), externalInitiatedEventId :: NullOrUndefined (EventId) }) -> WorkflowExecutionSignaledEventAttributes
```

Constructs WorkflowExecutionSignaledEventAttributes's fields from required parameters

#### `WorkflowExecutionStartedEventAttributes`

``` purescript
newtype WorkflowExecutionStartedEventAttributes
  = WorkflowExecutionStartedEventAttributes { input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: ChildPolicy, taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), workflowType :: WorkflowType, tagList :: NullOrUndefined (TagList), continuedExecutionRunId :: NullOrUndefined (WorkflowRunIdOptional), parentWorkflowExecution :: NullOrUndefined (WorkflowExecution), parentInitiatedEventId :: NullOrUndefined (EventId), lambdaRole :: NullOrUndefined (Arn) }
```

<p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionStartedEventAttributes _
Generic WorkflowExecutionStartedEventAttributes _
Show WorkflowExecutionStartedEventAttributes
Decode WorkflowExecutionStartedEventAttributes
Encode WorkflowExecutionStartedEventAttributes
```

#### `newWorkflowExecutionStartedEventAttributes`

``` purescript
newWorkflowExecutionStartedEventAttributes :: ChildPolicy -> TaskList -> WorkflowType -> WorkflowExecutionStartedEventAttributes
```

Constructs WorkflowExecutionStartedEventAttributes from required parameters

#### `newWorkflowExecutionStartedEventAttributes'`

``` purescript
newWorkflowExecutionStartedEventAttributes' :: ChildPolicy -> TaskList -> WorkflowType -> ({ input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: ChildPolicy, taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), workflowType :: WorkflowType, tagList :: NullOrUndefined (TagList), continuedExecutionRunId :: NullOrUndefined (WorkflowRunIdOptional), parentWorkflowExecution :: NullOrUndefined (WorkflowExecution), parentInitiatedEventId :: NullOrUndefined (EventId), lambdaRole :: NullOrUndefined (Arn) } -> { input :: NullOrUndefined (Data), executionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), taskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), childPolicy :: ChildPolicy, taskList :: TaskList, taskPriority :: NullOrUndefined (TaskPriority), workflowType :: WorkflowType, tagList :: NullOrUndefined (TagList), continuedExecutionRunId :: NullOrUndefined (WorkflowRunIdOptional), parentWorkflowExecution :: NullOrUndefined (WorkflowExecution), parentInitiatedEventId :: NullOrUndefined (EventId), lambdaRole :: NullOrUndefined (Arn) }) -> WorkflowExecutionStartedEventAttributes
```

Constructs WorkflowExecutionStartedEventAttributes's fields from required parameters

#### `WorkflowExecutionTerminatedCause`

``` purescript
newtype WorkflowExecutionTerminatedCause
  = WorkflowExecutionTerminatedCause String
```

##### Instances
``` purescript
Newtype WorkflowExecutionTerminatedCause _
Generic WorkflowExecutionTerminatedCause _
Show WorkflowExecutionTerminatedCause
Decode WorkflowExecutionTerminatedCause
Encode WorkflowExecutionTerminatedCause
```

#### `WorkflowExecutionTerminatedEventAttributes`

``` purescript
newtype WorkflowExecutionTerminatedEventAttributes
  = WorkflowExecutionTerminatedEventAttributes { reason :: NullOrUndefined (TerminateReason), details :: NullOrUndefined (Data), childPolicy :: ChildPolicy, cause :: NullOrUndefined (WorkflowExecutionTerminatedCause) }
```

<p>Provides the details of the <code>WorkflowExecutionTerminated</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionTerminatedEventAttributes _
Generic WorkflowExecutionTerminatedEventAttributes _
Show WorkflowExecutionTerminatedEventAttributes
Decode WorkflowExecutionTerminatedEventAttributes
Encode WorkflowExecutionTerminatedEventAttributes
```

#### `newWorkflowExecutionTerminatedEventAttributes`

``` purescript
newWorkflowExecutionTerminatedEventAttributes :: ChildPolicy -> WorkflowExecutionTerminatedEventAttributes
```

Constructs WorkflowExecutionTerminatedEventAttributes from required parameters

#### `newWorkflowExecutionTerminatedEventAttributes'`

``` purescript
newWorkflowExecutionTerminatedEventAttributes' :: ChildPolicy -> ({ reason :: NullOrUndefined (TerminateReason), details :: NullOrUndefined (Data), childPolicy :: ChildPolicy, cause :: NullOrUndefined (WorkflowExecutionTerminatedCause) } -> { reason :: NullOrUndefined (TerminateReason), details :: NullOrUndefined (Data), childPolicy :: ChildPolicy, cause :: NullOrUndefined (WorkflowExecutionTerminatedCause) }) -> WorkflowExecutionTerminatedEventAttributes
```

Constructs WorkflowExecutionTerminatedEventAttributes's fields from required parameters

#### `WorkflowExecutionTimedOutEventAttributes`

``` purescript
newtype WorkflowExecutionTimedOutEventAttributes
  = WorkflowExecutionTimedOutEventAttributes { timeoutType :: WorkflowExecutionTimeoutType, childPolicy :: ChildPolicy }
```

<p>Provides the details of the <code>WorkflowExecutionTimedOut</code> event.</p>

##### Instances
``` purescript
Newtype WorkflowExecutionTimedOutEventAttributes _
Generic WorkflowExecutionTimedOutEventAttributes _
Show WorkflowExecutionTimedOutEventAttributes
Decode WorkflowExecutionTimedOutEventAttributes
Encode WorkflowExecutionTimedOutEventAttributes
```

#### `newWorkflowExecutionTimedOutEventAttributes`

``` purescript
newWorkflowExecutionTimedOutEventAttributes :: ChildPolicy -> WorkflowExecutionTimeoutType -> WorkflowExecutionTimedOutEventAttributes
```

Constructs WorkflowExecutionTimedOutEventAttributes from required parameters

#### `newWorkflowExecutionTimedOutEventAttributes'`

``` purescript
newWorkflowExecutionTimedOutEventAttributes' :: ChildPolicy -> WorkflowExecutionTimeoutType -> ({ timeoutType :: WorkflowExecutionTimeoutType, childPolicy :: ChildPolicy } -> { timeoutType :: WorkflowExecutionTimeoutType, childPolicy :: ChildPolicy }) -> WorkflowExecutionTimedOutEventAttributes
```

Constructs WorkflowExecutionTimedOutEventAttributes's fields from required parameters

#### `WorkflowExecutionTimeoutType`

``` purescript
newtype WorkflowExecutionTimeoutType
  = WorkflowExecutionTimeoutType String
```

##### Instances
``` purescript
Newtype WorkflowExecutionTimeoutType _
Generic WorkflowExecutionTimeoutType _
Show WorkflowExecutionTimeoutType
Decode WorkflowExecutionTimeoutType
Encode WorkflowExecutionTimeoutType
```

#### `WorkflowId`

``` purescript
newtype WorkflowId
  = WorkflowId String
```

##### Instances
``` purescript
Newtype WorkflowId _
Generic WorkflowId _
Show WorkflowId
Decode WorkflowId
Encode WorkflowId
```

#### `WorkflowRunId`

``` purescript
newtype WorkflowRunId
  = WorkflowRunId String
```

##### Instances
``` purescript
Newtype WorkflowRunId _
Generic WorkflowRunId _
Show WorkflowRunId
Decode WorkflowRunId
Encode WorkflowRunId
```

#### `WorkflowRunIdOptional`

``` purescript
newtype WorkflowRunIdOptional
  = WorkflowRunIdOptional String
```

##### Instances
``` purescript
Newtype WorkflowRunIdOptional _
Generic WorkflowRunIdOptional _
Show WorkflowRunIdOptional
Decode WorkflowRunIdOptional
Encode WorkflowRunIdOptional
```

#### `WorkflowType`

``` purescript
newtype WorkflowType
  = WorkflowType { name :: Name, version :: Version }
```

<p>Represents a workflow type.</p>

##### Instances
``` purescript
Newtype WorkflowType _
Generic WorkflowType _
Show WorkflowType
Decode WorkflowType
Encode WorkflowType
```

#### `newWorkflowType`

``` purescript
newWorkflowType :: Name -> Version -> WorkflowType
```

Constructs WorkflowType from required parameters

#### `newWorkflowType'`

``` purescript
newWorkflowType' :: Name -> Version -> ({ name :: Name, version :: Version } -> { name :: Name, version :: Version }) -> WorkflowType
```

Constructs WorkflowType's fields from required parameters

#### `WorkflowTypeConfiguration`

``` purescript
newtype WorkflowTypeConfiguration
  = WorkflowTypeConfiguration { defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultChildPolicy :: NullOrUndefined (ChildPolicy), defaultLambdaRole :: NullOrUndefined (Arn) }
```

<p>The configuration settings of a workflow type.</p>

##### Instances
``` purescript
Newtype WorkflowTypeConfiguration _
Generic WorkflowTypeConfiguration _
Show WorkflowTypeConfiguration
Decode WorkflowTypeConfiguration
Encode WorkflowTypeConfiguration
```

#### `newWorkflowTypeConfiguration`

``` purescript
newWorkflowTypeConfiguration :: WorkflowTypeConfiguration
```

Constructs WorkflowTypeConfiguration from required parameters

#### `newWorkflowTypeConfiguration'`

``` purescript
newWorkflowTypeConfiguration' :: ({ defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultChildPolicy :: NullOrUndefined (ChildPolicy), defaultLambdaRole :: NullOrUndefined (Arn) } -> { defaultTaskStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: NullOrUndefined (DurationInSecondsOptional), defaultTaskList :: NullOrUndefined (TaskList), defaultTaskPriority :: NullOrUndefined (TaskPriority), defaultChildPolicy :: NullOrUndefined (ChildPolicy), defaultLambdaRole :: NullOrUndefined (Arn) }) -> WorkflowTypeConfiguration
```

Constructs WorkflowTypeConfiguration's fields from required parameters

#### `WorkflowTypeDetail`

``` purescript
newtype WorkflowTypeDetail
  = WorkflowTypeDetail { typeInfo :: WorkflowTypeInfo, configuration :: WorkflowTypeConfiguration }
```

<p>Contains details about a workflow type.</p>

##### Instances
``` purescript
Newtype WorkflowTypeDetail _
Generic WorkflowTypeDetail _
Show WorkflowTypeDetail
Decode WorkflowTypeDetail
Encode WorkflowTypeDetail
```

#### `newWorkflowTypeDetail`

``` purescript
newWorkflowTypeDetail :: WorkflowTypeConfiguration -> WorkflowTypeInfo -> WorkflowTypeDetail
```

Constructs WorkflowTypeDetail from required parameters

#### `newWorkflowTypeDetail'`

``` purescript
newWorkflowTypeDetail' :: WorkflowTypeConfiguration -> WorkflowTypeInfo -> ({ typeInfo :: WorkflowTypeInfo, configuration :: WorkflowTypeConfiguration } -> { typeInfo :: WorkflowTypeInfo, configuration :: WorkflowTypeConfiguration }) -> WorkflowTypeDetail
```

Constructs WorkflowTypeDetail's fields from required parameters

#### `WorkflowTypeFilter`

``` purescript
newtype WorkflowTypeFilter
  = WorkflowTypeFilter { name :: Name, version :: NullOrUndefined (VersionOptional) }
```

<p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>

##### Instances
``` purescript
Newtype WorkflowTypeFilter _
Generic WorkflowTypeFilter _
Show WorkflowTypeFilter
Decode WorkflowTypeFilter
Encode WorkflowTypeFilter
```

#### `newWorkflowTypeFilter`

``` purescript
newWorkflowTypeFilter :: Name -> WorkflowTypeFilter
```

Constructs WorkflowTypeFilter from required parameters

#### `newWorkflowTypeFilter'`

``` purescript
newWorkflowTypeFilter' :: Name -> ({ name :: Name, version :: NullOrUndefined (VersionOptional) } -> { name :: Name, version :: NullOrUndefined (VersionOptional) }) -> WorkflowTypeFilter
```

Constructs WorkflowTypeFilter's fields from required parameters

#### `WorkflowTypeInfo`

``` purescript
newtype WorkflowTypeInfo
  = WorkflowTypeInfo { workflowType :: WorkflowType, status :: RegistrationStatus, description :: NullOrUndefined (Description), creationDate :: Timestamp, deprecationDate :: NullOrUndefined (Timestamp) }
```

<p>Contains information about a workflow type.</p>

##### Instances
``` purescript
Newtype WorkflowTypeInfo _
Generic WorkflowTypeInfo _
Show WorkflowTypeInfo
Decode WorkflowTypeInfo
Encode WorkflowTypeInfo
```

#### `newWorkflowTypeInfo`

``` purescript
newWorkflowTypeInfo :: Timestamp -> RegistrationStatus -> WorkflowType -> WorkflowTypeInfo
```

Constructs WorkflowTypeInfo from required parameters

#### `newWorkflowTypeInfo'`

``` purescript
newWorkflowTypeInfo' :: Timestamp -> RegistrationStatus -> WorkflowType -> ({ workflowType :: WorkflowType, status :: RegistrationStatus, description :: NullOrUndefined (Description), creationDate :: Timestamp, deprecationDate :: NullOrUndefined (Timestamp) } -> { workflowType :: WorkflowType, status :: RegistrationStatus, description :: NullOrUndefined (Description), creationDate :: Timestamp, deprecationDate :: NullOrUndefined (Timestamp) }) -> WorkflowTypeInfo
```

Constructs WorkflowTypeInfo's fields from required parameters

#### `WorkflowTypeInfoList`

``` purescript
newtype WorkflowTypeInfoList
  = WorkflowTypeInfoList (Array WorkflowTypeInfo)
```

##### Instances
``` purescript
Newtype WorkflowTypeInfoList _
Generic WorkflowTypeInfoList _
Show WorkflowTypeInfoList
Decode WorkflowTypeInfoList
Encode WorkflowTypeInfoList
```

#### `WorkflowTypeInfos`

``` purescript
newtype WorkflowTypeInfos
  = WorkflowTypeInfos { typeInfos :: WorkflowTypeInfoList, nextPageToken :: NullOrUndefined (PageToken) }
```

<p>Contains a paginated list of information structures about workflow types.</p>

##### Instances
``` purescript
Newtype WorkflowTypeInfos _
Generic WorkflowTypeInfos _
Show WorkflowTypeInfos
Decode WorkflowTypeInfos
Encode WorkflowTypeInfos
```

#### `newWorkflowTypeInfos`

``` purescript
newWorkflowTypeInfos :: WorkflowTypeInfoList -> WorkflowTypeInfos
```

Constructs WorkflowTypeInfos from required parameters

#### `newWorkflowTypeInfos'`

``` purescript
newWorkflowTypeInfos' :: WorkflowTypeInfoList -> ({ typeInfos :: WorkflowTypeInfoList, nextPageToken :: NullOrUndefined (PageToken) } -> { typeInfos :: WorkflowTypeInfoList, nextPageToken :: NullOrUndefined (PageToken) }) -> WorkflowTypeInfos
```

Constructs WorkflowTypeInfos's fields from required parameters


