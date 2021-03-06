## Module AWS.SWF.Types

#### `options`

``` purescript
options :: Options
```

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
  = ActivityTask { taskToken :: TaskToken, activityId :: ActivityId, startedEventId :: EventId, workflowExecution :: WorkflowExecution, activityType :: ActivityType, input :: Maybe (Data) }
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
newActivityTask' :: ActivityId -> ActivityType -> EventId -> TaskToken -> WorkflowExecution -> ({ taskToken :: TaskToken, activityId :: ActivityId, startedEventId :: EventId, workflowExecution :: WorkflowExecution, activityType :: ActivityType, input :: Maybe (Data) } -> { taskToken :: TaskToken, activityId :: ActivityId, startedEventId :: EventId, workflowExecution :: WorkflowExecution, activityType :: ActivityType, input :: Maybe (Data) }) -> ActivityTask
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
  = ActivityTaskCanceledEventAttributes { details :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId, latestCancelRequestedEventId :: Maybe (EventId) }
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
newActivityTaskCanceledEventAttributes' :: EventId -> EventId -> ({ details :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId, latestCancelRequestedEventId :: Maybe (EventId) } -> { details :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId, latestCancelRequestedEventId :: Maybe (EventId) }) -> ActivityTaskCanceledEventAttributes
```

Constructs ActivityTaskCanceledEventAttributes's fields from required parameters

#### `ActivityTaskCompletedEventAttributes`

``` purescript
newtype ActivityTaskCompletedEventAttributes
  = ActivityTaskCompletedEventAttributes { result :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId }
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
newActivityTaskCompletedEventAttributes' :: EventId -> EventId -> ({ result :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId } -> { result :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId }) -> ActivityTaskCompletedEventAttributes
```

Constructs ActivityTaskCompletedEventAttributes's fields from required parameters

#### `ActivityTaskFailedEventAttributes`

``` purescript
newtype ActivityTaskFailedEventAttributes
  = ActivityTaskFailedEventAttributes { reason :: Maybe (FailureReason), details :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId }
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
newActivityTaskFailedEventAttributes' :: EventId -> EventId -> ({ reason :: Maybe (FailureReason), details :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId } -> { reason :: Maybe (FailureReason), details :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId }) -> ActivityTaskFailedEventAttributes
```

Constructs ActivityTaskFailedEventAttributes's fields from required parameters

#### `ActivityTaskScheduledEventAttributes`

``` purescript
newtype ActivityTaskScheduledEventAttributes
  = ActivityTaskScheduledEventAttributes { activityType :: ActivityType, activityId :: ActivityId, input :: Maybe (Data), control :: Maybe (Data), scheduleToStartTimeout :: Maybe (DurationInSecondsOptional), scheduleToCloseTimeout :: Maybe (DurationInSecondsOptional), startToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), decisionTaskCompletedEventId :: EventId, heartbeatTimeout :: Maybe (DurationInSecondsOptional) }
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
newActivityTaskScheduledEventAttributes' :: ActivityId -> ActivityType -> EventId -> TaskList -> ({ activityType :: ActivityType, activityId :: ActivityId, input :: Maybe (Data), control :: Maybe (Data), scheduleToStartTimeout :: Maybe (DurationInSecondsOptional), scheduleToCloseTimeout :: Maybe (DurationInSecondsOptional), startToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), decisionTaskCompletedEventId :: EventId, heartbeatTimeout :: Maybe (DurationInSecondsOptional) } -> { activityType :: ActivityType, activityId :: ActivityId, input :: Maybe (Data), control :: Maybe (Data), scheduleToStartTimeout :: Maybe (DurationInSecondsOptional), scheduleToCloseTimeout :: Maybe (DurationInSecondsOptional), startToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), decisionTaskCompletedEventId :: EventId, heartbeatTimeout :: Maybe (DurationInSecondsOptional) }) -> ActivityTaskScheduledEventAttributes
```

Constructs ActivityTaskScheduledEventAttributes's fields from required parameters

#### `ActivityTaskStartedEventAttributes`

``` purescript
newtype ActivityTaskStartedEventAttributes
  = ActivityTaskStartedEventAttributes { identity :: Maybe (Identity), scheduledEventId :: EventId }
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
newActivityTaskStartedEventAttributes' :: EventId -> ({ identity :: Maybe (Identity), scheduledEventId :: EventId } -> { identity :: Maybe (Identity), scheduledEventId :: EventId }) -> ActivityTaskStartedEventAttributes
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
  = ActivityTaskTimedOutEventAttributes { timeoutType :: ActivityTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId, details :: Maybe (LimitedData) }
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
newActivityTaskTimedOutEventAttributes' :: EventId -> EventId -> ActivityTaskTimeoutType -> ({ timeoutType :: ActivityTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId, details :: Maybe (LimitedData) } -> { timeoutType :: ActivityTaskTimeoutType, scheduledEventId :: EventId, startedEventId :: EventId, details :: Maybe (LimitedData) }) -> ActivityTaskTimedOutEventAttributes
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
  = ActivityTypeConfiguration { defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultTaskScheduleToStartTimeout :: Maybe (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: Maybe (DurationInSecondsOptional) }
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
newActivityTypeConfiguration' :: ({ defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultTaskScheduleToStartTimeout :: Maybe (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: Maybe (DurationInSecondsOptional) } -> { defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultTaskScheduleToStartTimeout :: Maybe (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: Maybe (DurationInSecondsOptional) }) -> ActivityTypeConfiguration
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
  = ActivityTypeInfo { activityType :: ActivityType, status :: RegistrationStatus, description :: Maybe (Description), creationDate :: Timestamp, deprecationDate :: Maybe (Timestamp) }
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
newActivityTypeInfo' :: ActivityType -> Timestamp -> RegistrationStatus -> ({ activityType :: ActivityType, status :: RegistrationStatus, description :: Maybe (Description), creationDate :: Timestamp, deprecationDate :: Maybe (Timestamp) } -> { activityType :: ActivityType, status :: RegistrationStatus, description :: Maybe (Description), creationDate :: Timestamp, deprecationDate :: Maybe (Timestamp) }) -> ActivityTypeInfo
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
  = ActivityTypeInfos { typeInfos :: ActivityTypeInfoList, nextPageToken :: Maybe (PageToken) }
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
newActivityTypeInfos' :: ActivityTypeInfoList -> ({ typeInfos :: ActivityTypeInfoList, nextPageToken :: Maybe (PageToken) } -> { typeInfos :: ActivityTypeInfoList, nextPageToken :: Maybe (PageToken) }) -> ActivityTypeInfos
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
  = CancelWorkflowExecutionDecisionAttributes { details :: Maybe (Data) }
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
newCancelWorkflowExecutionDecisionAttributes' :: ({ details :: Maybe (Data) } -> { details :: Maybe (Data) }) -> CancelWorkflowExecutionDecisionAttributes
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
  = ChildWorkflowExecutionCanceledEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, details :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId }
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
newChildWorkflowExecutionCanceledEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, details :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, details :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionCanceledEventAttributes
```

Constructs ChildWorkflowExecutionCanceledEventAttributes's fields from required parameters

#### `ChildWorkflowExecutionCompletedEventAttributes`

``` purescript
newtype ChildWorkflowExecutionCompletedEventAttributes
  = ChildWorkflowExecutionCompletedEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, result :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId }
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
newChildWorkflowExecutionCompletedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, result :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, result :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionCompletedEventAttributes
```

Constructs ChildWorkflowExecutionCompletedEventAttributes's fields from required parameters

#### `ChildWorkflowExecutionFailedEventAttributes`

``` purescript
newtype ChildWorkflowExecutionFailedEventAttributes
  = ChildWorkflowExecutionFailedEventAttributes { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, reason :: Maybe (FailureReason), details :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId }
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
newChildWorkflowExecutionFailedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ({ workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, reason :: Maybe (FailureReason), details :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId } -> { workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, reason :: Maybe (FailureReason), details :: Maybe (Data), initiatedEventId :: EventId, startedEventId :: EventId }) -> ChildWorkflowExecutionFailedEventAttributes
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
  = CompleteWorkflowExecutionDecisionAttributes { result :: Maybe (Data) }
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
newCompleteWorkflowExecutionDecisionAttributes' :: ({ result :: Maybe (Data) } -> { result :: Maybe (Data) }) -> CompleteWorkflowExecutionDecisionAttributes
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
  = ContinueAsNewWorkflowExecutionDecisionAttributes { input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), tagList :: Maybe (TagList), workflowTypeVersion :: Maybe (Version), lambdaRole :: Maybe (Arn) }
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
newContinueAsNewWorkflowExecutionDecisionAttributes' :: ({ input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), tagList :: Maybe (TagList), workflowTypeVersion :: Maybe (Version), lambdaRole :: Maybe (Arn) } -> { input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), tagList :: Maybe (TagList), workflowTypeVersion :: Maybe (Version), lambdaRole :: Maybe (Arn) }) -> ContinueAsNewWorkflowExecutionDecisionAttributes
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
  = CountClosedWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: Maybe (ExecutionTimeFilter), closeTimeFilter :: Maybe (ExecutionTimeFilter), executionFilter :: Maybe (WorkflowExecutionFilter), typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), closeStatusFilter :: Maybe (CloseStatusFilter) }
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
newCountClosedWorkflowExecutionsInput' :: DomainName -> ({ domain :: DomainName, startTimeFilter :: Maybe (ExecutionTimeFilter), closeTimeFilter :: Maybe (ExecutionTimeFilter), executionFilter :: Maybe (WorkflowExecutionFilter), typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), closeStatusFilter :: Maybe (CloseStatusFilter) } -> { domain :: DomainName, startTimeFilter :: Maybe (ExecutionTimeFilter), closeTimeFilter :: Maybe (ExecutionTimeFilter), executionFilter :: Maybe (WorkflowExecutionFilter), typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), closeStatusFilter :: Maybe (CloseStatusFilter) }) -> CountClosedWorkflowExecutionsInput
```

Constructs CountClosedWorkflowExecutionsInput's fields from required parameters

#### `CountOpenWorkflowExecutionsInput`

``` purescript
newtype CountOpenWorkflowExecutionsInput
  = CountOpenWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), executionFilter :: Maybe (WorkflowExecutionFilter) }
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
newCountOpenWorkflowExecutionsInput' :: DomainName -> ExecutionTimeFilter -> ({ domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), executionFilter :: Maybe (WorkflowExecutionFilter) } -> { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), executionFilter :: Maybe (WorkflowExecutionFilter) }) -> CountOpenWorkflowExecutionsInput
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
  = Decision { decisionType :: DecisionType, scheduleActivityTaskDecisionAttributes :: Maybe (ScheduleActivityTaskDecisionAttributes), requestCancelActivityTaskDecisionAttributes :: Maybe (RequestCancelActivityTaskDecisionAttributes), completeWorkflowExecutionDecisionAttributes :: Maybe (CompleteWorkflowExecutionDecisionAttributes), failWorkflowExecutionDecisionAttributes :: Maybe (FailWorkflowExecutionDecisionAttributes), cancelWorkflowExecutionDecisionAttributes :: Maybe (CancelWorkflowExecutionDecisionAttributes), continueAsNewWorkflowExecutionDecisionAttributes :: Maybe (ContinueAsNewWorkflowExecutionDecisionAttributes), recordMarkerDecisionAttributes :: Maybe (RecordMarkerDecisionAttributes), startTimerDecisionAttributes :: Maybe (StartTimerDecisionAttributes), cancelTimerDecisionAttributes :: Maybe (CancelTimerDecisionAttributes), signalExternalWorkflowExecutionDecisionAttributes :: Maybe (SignalExternalWorkflowExecutionDecisionAttributes), requestCancelExternalWorkflowExecutionDecisionAttributes :: Maybe (RequestCancelExternalWorkflowExecutionDecisionAttributes), startChildWorkflowExecutionDecisionAttributes :: Maybe (StartChildWorkflowExecutionDecisionAttributes), scheduleLambdaFunctionDecisionAttributes :: Maybe (ScheduleLambdaFunctionDecisionAttributes) }
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
newDecision' :: DecisionType -> ({ decisionType :: DecisionType, scheduleActivityTaskDecisionAttributes :: Maybe (ScheduleActivityTaskDecisionAttributes), requestCancelActivityTaskDecisionAttributes :: Maybe (RequestCancelActivityTaskDecisionAttributes), completeWorkflowExecutionDecisionAttributes :: Maybe (CompleteWorkflowExecutionDecisionAttributes), failWorkflowExecutionDecisionAttributes :: Maybe (FailWorkflowExecutionDecisionAttributes), cancelWorkflowExecutionDecisionAttributes :: Maybe (CancelWorkflowExecutionDecisionAttributes), continueAsNewWorkflowExecutionDecisionAttributes :: Maybe (ContinueAsNewWorkflowExecutionDecisionAttributes), recordMarkerDecisionAttributes :: Maybe (RecordMarkerDecisionAttributes), startTimerDecisionAttributes :: Maybe (StartTimerDecisionAttributes), cancelTimerDecisionAttributes :: Maybe (CancelTimerDecisionAttributes), signalExternalWorkflowExecutionDecisionAttributes :: Maybe (SignalExternalWorkflowExecutionDecisionAttributes), requestCancelExternalWorkflowExecutionDecisionAttributes :: Maybe (RequestCancelExternalWorkflowExecutionDecisionAttributes), startChildWorkflowExecutionDecisionAttributes :: Maybe (StartChildWorkflowExecutionDecisionAttributes), scheduleLambdaFunctionDecisionAttributes :: Maybe (ScheduleLambdaFunctionDecisionAttributes) } -> { decisionType :: DecisionType, scheduleActivityTaskDecisionAttributes :: Maybe (ScheduleActivityTaskDecisionAttributes), requestCancelActivityTaskDecisionAttributes :: Maybe (RequestCancelActivityTaskDecisionAttributes), completeWorkflowExecutionDecisionAttributes :: Maybe (CompleteWorkflowExecutionDecisionAttributes), failWorkflowExecutionDecisionAttributes :: Maybe (FailWorkflowExecutionDecisionAttributes), cancelWorkflowExecutionDecisionAttributes :: Maybe (CancelWorkflowExecutionDecisionAttributes), continueAsNewWorkflowExecutionDecisionAttributes :: Maybe (ContinueAsNewWorkflowExecutionDecisionAttributes), recordMarkerDecisionAttributes :: Maybe (RecordMarkerDecisionAttributes), startTimerDecisionAttributes :: Maybe (StartTimerDecisionAttributes), cancelTimerDecisionAttributes :: Maybe (CancelTimerDecisionAttributes), signalExternalWorkflowExecutionDecisionAttributes :: Maybe (SignalExternalWorkflowExecutionDecisionAttributes), requestCancelExternalWorkflowExecutionDecisionAttributes :: Maybe (RequestCancelExternalWorkflowExecutionDecisionAttributes), startChildWorkflowExecutionDecisionAttributes :: Maybe (StartChildWorkflowExecutionDecisionAttributes), scheduleLambdaFunctionDecisionAttributes :: Maybe (ScheduleLambdaFunctionDecisionAttributes) }) -> Decision
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
  = DecisionTask { taskToken :: TaskToken, startedEventId :: EventId, workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, events :: HistoryEventList, nextPageToken :: Maybe (PageToken), previousStartedEventId :: Maybe (EventId) }
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
newDecisionTask' :: HistoryEventList -> EventId -> TaskToken -> WorkflowExecution -> WorkflowType -> ({ taskToken :: TaskToken, startedEventId :: EventId, workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, events :: HistoryEventList, nextPageToken :: Maybe (PageToken), previousStartedEventId :: Maybe (EventId) } -> { taskToken :: TaskToken, startedEventId :: EventId, workflowExecution :: WorkflowExecution, workflowType :: WorkflowType, events :: HistoryEventList, nextPageToken :: Maybe (PageToken), previousStartedEventId :: Maybe (EventId) }) -> DecisionTask
```

Constructs DecisionTask's fields from required parameters

#### `DecisionTaskCompletedEventAttributes`

``` purescript
newtype DecisionTaskCompletedEventAttributes
  = DecisionTaskCompletedEventAttributes { executionContext :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId }
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
newDecisionTaskCompletedEventAttributes' :: EventId -> EventId -> ({ executionContext :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId } -> { executionContext :: Maybe (Data), scheduledEventId :: EventId, startedEventId :: EventId }) -> DecisionTaskCompletedEventAttributes
```

Constructs DecisionTaskCompletedEventAttributes's fields from required parameters

#### `DecisionTaskScheduledEventAttributes`

``` purescript
newtype DecisionTaskScheduledEventAttributes
  = DecisionTaskScheduledEventAttributes { taskList :: TaskList, taskPriority :: Maybe (TaskPriority), startToCloseTimeout :: Maybe (DurationInSecondsOptional) }
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
newDecisionTaskScheduledEventAttributes' :: TaskList -> ({ taskList :: TaskList, taskPriority :: Maybe (TaskPriority), startToCloseTimeout :: Maybe (DurationInSecondsOptional) } -> { taskList :: TaskList, taskPriority :: Maybe (TaskPriority), startToCloseTimeout :: Maybe (DurationInSecondsOptional) }) -> DecisionTaskScheduledEventAttributes
```

Constructs DecisionTaskScheduledEventAttributes's fields from required parameters

#### `DecisionTaskStartedEventAttributes`

``` purescript
newtype DecisionTaskStartedEventAttributes
  = DecisionTaskStartedEventAttributes { identity :: Maybe (Identity), scheduledEventId :: EventId }
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
newDecisionTaskStartedEventAttributes' :: EventId -> ({ identity :: Maybe (Identity), scheduledEventId :: EventId } -> { identity :: Maybe (Identity), scheduledEventId :: EventId }) -> DecisionTaskStartedEventAttributes
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
  = DefaultUndefinedFault { message :: Maybe (ErrorMessage) }
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
newDefaultUndefinedFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DefaultUndefinedFault
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
  = DomainAlreadyExistsFault { message :: Maybe (ErrorMessage) }
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
newDomainAlreadyExistsFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DomainAlreadyExistsFault
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
  = DomainDeprecatedFault { message :: Maybe (ErrorMessage) }
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
newDomainDeprecatedFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> DomainDeprecatedFault
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
  = DomainInfo { name :: DomainName, status :: RegistrationStatus, description :: Maybe (Description) }
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
newDomainInfo' :: DomainName -> RegistrationStatus -> ({ name :: DomainName, status :: RegistrationStatus, description :: Maybe (Description) } -> { name :: DomainName, status :: RegistrationStatus, description :: Maybe (Description) }) -> DomainInfo
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
  = DomainInfos { domainInfos :: DomainInfoList, nextPageToken :: Maybe (PageToken) }
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
newDomainInfos' :: DomainInfoList -> ({ domainInfos :: DomainInfoList, nextPageToken :: Maybe (PageToken) } -> { domainInfos :: DomainInfoList, nextPageToken :: Maybe (PageToken) }) -> DomainInfos
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
  = ExecutionTimeFilter { oldestDate :: Timestamp, latestDate :: Maybe (Timestamp) }
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
newExecutionTimeFilter' :: Timestamp -> ({ oldestDate :: Timestamp, latestDate :: Maybe (Timestamp) } -> { oldestDate :: Timestamp, latestDate :: Maybe (Timestamp) }) -> ExecutionTimeFilter
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
  = FailWorkflowExecutionDecisionAttributes { reason :: Maybe (FailureReason), details :: Maybe (Data) }
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
newFailWorkflowExecutionDecisionAttributes' :: ({ reason :: Maybe (FailureReason), details :: Maybe (Data) } -> { reason :: Maybe (FailureReason), details :: Maybe (Data) }) -> FailWorkflowExecutionDecisionAttributes
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
  = GetWorkflowExecutionHistoryInput { domain :: DomainName, execution :: WorkflowExecution, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }
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
newGetWorkflowExecutionHistoryInput' :: DomainName -> WorkflowExecution -> ({ domain :: DomainName, execution :: WorkflowExecution, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) } -> { domain :: DomainName, execution :: WorkflowExecution, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }) -> GetWorkflowExecutionHistoryInput
```

Constructs GetWorkflowExecutionHistoryInput's fields from required parameters

#### `History`

``` purescript
newtype History
  = History { events :: HistoryEventList, nextPageToken :: Maybe (PageToken) }
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
newHistory' :: HistoryEventList -> ({ events :: HistoryEventList, nextPageToken :: Maybe (PageToken) } -> { events :: HistoryEventList, nextPageToken :: Maybe (PageToken) }) -> History
```

Constructs History's fields from required parameters

#### `HistoryEvent`

``` purescript
newtype HistoryEvent
  = HistoryEvent { eventTimestamp :: Timestamp, eventType :: EventType, eventId :: EventId, workflowExecutionStartedEventAttributes :: Maybe (WorkflowExecutionStartedEventAttributes), workflowExecutionCompletedEventAttributes :: Maybe (WorkflowExecutionCompletedEventAttributes), completeWorkflowExecutionFailedEventAttributes :: Maybe (CompleteWorkflowExecutionFailedEventAttributes), workflowExecutionFailedEventAttributes :: Maybe (WorkflowExecutionFailedEventAttributes), failWorkflowExecutionFailedEventAttributes :: Maybe (FailWorkflowExecutionFailedEventAttributes), workflowExecutionTimedOutEventAttributes :: Maybe (WorkflowExecutionTimedOutEventAttributes), workflowExecutionCanceledEventAttributes :: Maybe (WorkflowExecutionCanceledEventAttributes), cancelWorkflowExecutionFailedEventAttributes :: Maybe (CancelWorkflowExecutionFailedEventAttributes), workflowExecutionContinuedAsNewEventAttributes :: Maybe (WorkflowExecutionContinuedAsNewEventAttributes), continueAsNewWorkflowExecutionFailedEventAttributes :: Maybe (ContinueAsNewWorkflowExecutionFailedEventAttributes), workflowExecutionTerminatedEventAttributes :: Maybe (WorkflowExecutionTerminatedEventAttributes), workflowExecutionCancelRequestedEventAttributes :: Maybe (WorkflowExecutionCancelRequestedEventAttributes), decisionTaskScheduledEventAttributes :: Maybe (DecisionTaskScheduledEventAttributes), decisionTaskStartedEventAttributes :: Maybe (DecisionTaskStartedEventAttributes), decisionTaskCompletedEventAttributes :: Maybe (DecisionTaskCompletedEventAttributes), decisionTaskTimedOutEventAttributes :: Maybe (DecisionTaskTimedOutEventAttributes), activityTaskScheduledEventAttributes :: Maybe (ActivityTaskScheduledEventAttributes), activityTaskStartedEventAttributes :: Maybe (ActivityTaskStartedEventAttributes), activityTaskCompletedEventAttributes :: Maybe (ActivityTaskCompletedEventAttributes), activityTaskFailedEventAttributes :: Maybe (ActivityTaskFailedEventAttributes), activityTaskTimedOutEventAttributes :: Maybe (ActivityTaskTimedOutEventAttributes), activityTaskCanceledEventAttributes :: Maybe (ActivityTaskCanceledEventAttributes), activityTaskCancelRequestedEventAttributes :: Maybe (ActivityTaskCancelRequestedEventAttributes), workflowExecutionSignaledEventAttributes :: Maybe (WorkflowExecutionSignaledEventAttributes), markerRecordedEventAttributes :: Maybe (MarkerRecordedEventAttributes), recordMarkerFailedEventAttributes :: Maybe (RecordMarkerFailedEventAttributes), timerStartedEventAttributes :: Maybe (TimerStartedEventAttributes), timerFiredEventAttributes :: Maybe (TimerFiredEventAttributes), timerCanceledEventAttributes :: Maybe (TimerCanceledEventAttributes), startChildWorkflowExecutionInitiatedEventAttributes :: Maybe (StartChildWorkflowExecutionInitiatedEventAttributes), childWorkflowExecutionStartedEventAttributes :: Maybe (ChildWorkflowExecutionStartedEventAttributes), childWorkflowExecutionCompletedEventAttributes :: Maybe (ChildWorkflowExecutionCompletedEventAttributes), childWorkflowExecutionFailedEventAttributes :: Maybe (ChildWorkflowExecutionFailedEventAttributes), childWorkflowExecutionTimedOutEventAttributes :: Maybe (ChildWorkflowExecutionTimedOutEventAttributes), childWorkflowExecutionCanceledEventAttributes :: Maybe (ChildWorkflowExecutionCanceledEventAttributes), childWorkflowExecutionTerminatedEventAttributes :: Maybe (ChildWorkflowExecutionTerminatedEventAttributes), signalExternalWorkflowExecutionInitiatedEventAttributes :: Maybe (SignalExternalWorkflowExecutionInitiatedEventAttributes), externalWorkflowExecutionSignaledEventAttributes :: Maybe (ExternalWorkflowExecutionSignaledEventAttributes), signalExternalWorkflowExecutionFailedEventAttributes :: Maybe (SignalExternalWorkflowExecutionFailedEventAttributes), externalWorkflowExecutionCancelRequestedEventAttributes :: Maybe (ExternalWorkflowExecutionCancelRequestedEventAttributes), requestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Maybe (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes), requestCancelExternalWorkflowExecutionFailedEventAttributes :: Maybe (RequestCancelExternalWorkflowExecutionFailedEventAttributes), scheduleActivityTaskFailedEventAttributes :: Maybe (ScheduleActivityTaskFailedEventAttributes), requestCancelActivityTaskFailedEventAttributes :: Maybe (RequestCancelActivityTaskFailedEventAttributes), startTimerFailedEventAttributes :: Maybe (StartTimerFailedEventAttributes), cancelTimerFailedEventAttributes :: Maybe (CancelTimerFailedEventAttributes), startChildWorkflowExecutionFailedEventAttributes :: Maybe (StartChildWorkflowExecutionFailedEventAttributes), lambdaFunctionScheduledEventAttributes :: Maybe (LambdaFunctionScheduledEventAttributes), lambdaFunctionStartedEventAttributes :: Maybe (LambdaFunctionStartedEventAttributes), lambdaFunctionCompletedEventAttributes :: Maybe (LambdaFunctionCompletedEventAttributes), lambdaFunctionFailedEventAttributes :: Maybe (LambdaFunctionFailedEventAttributes), lambdaFunctionTimedOutEventAttributes :: Maybe (LambdaFunctionTimedOutEventAttributes), scheduleLambdaFunctionFailedEventAttributes :: Maybe (ScheduleLambdaFunctionFailedEventAttributes), startLambdaFunctionFailedEventAttributes :: Maybe (StartLambdaFunctionFailedEventAttributes) }
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
newHistoryEvent' :: EventId -> Timestamp -> EventType -> ({ eventTimestamp :: Timestamp, eventType :: EventType, eventId :: EventId, workflowExecutionStartedEventAttributes :: Maybe (WorkflowExecutionStartedEventAttributes), workflowExecutionCompletedEventAttributes :: Maybe (WorkflowExecutionCompletedEventAttributes), completeWorkflowExecutionFailedEventAttributes :: Maybe (CompleteWorkflowExecutionFailedEventAttributes), workflowExecutionFailedEventAttributes :: Maybe (WorkflowExecutionFailedEventAttributes), failWorkflowExecutionFailedEventAttributes :: Maybe (FailWorkflowExecutionFailedEventAttributes), workflowExecutionTimedOutEventAttributes :: Maybe (WorkflowExecutionTimedOutEventAttributes), workflowExecutionCanceledEventAttributes :: Maybe (WorkflowExecutionCanceledEventAttributes), cancelWorkflowExecutionFailedEventAttributes :: Maybe (CancelWorkflowExecutionFailedEventAttributes), workflowExecutionContinuedAsNewEventAttributes :: Maybe (WorkflowExecutionContinuedAsNewEventAttributes), continueAsNewWorkflowExecutionFailedEventAttributes :: Maybe (ContinueAsNewWorkflowExecutionFailedEventAttributes), workflowExecutionTerminatedEventAttributes :: Maybe (WorkflowExecutionTerminatedEventAttributes), workflowExecutionCancelRequestedEventAttributes :: Maybe (WorkflowExecutionCancelRequestedEventAttributes), decisionTaskScheduledEventAttributes :: Maybe (DecisionTaskScheduledEventAttributes), decisionTaskStartedEventAttributes :: Maybe (DecisionTaskStartedEventAttributes), decisionTaskCompletedEventAttributes :: Maybe (DecisionTaskCompletedEventAttributes), decisionTaskTimedOutEventAttributes :: Maybe (DecisionTaskTimedOutEventAttributes), activityTaskScheduledEventAttributes :: Maybe (ActivityTaskScheduledEventAttributes), activityTaskStartedEventAttributes :: Maybe (ActivityTaskStartedEventAttributes), activityTaskCompletedEventAttributes :: Maybe (ActivityTaskCompletedEventAttributes), activityTaskFailedEventAttributes :: Maybe (ActivityTaskFailedEventAttributes), activityTaskTimedOutEventAttributes :: Maybe (ActivityTaskTimedOutEventAttributes), activityTaskCanceledEventAttributes :: Maybe (ActivityTaskCanceledEventAttributes), activityTaskCancelRequestedEventAttributes :: Maybe (ActivityTaskCancelRequestedEventAttributes), workflowExecutionSignaledEventAttributes :: Maybe (WorkflowExecutionSignaledEventAttributes), markerRecordedEventAttributes :: Maybe (MarkerRecordedEventAttributes), recordMarkerFailedEventAttributes :: Maybe (RecordMarkerFailedEventAttributes), timerStartedEventAttributes :: Maybe (TimerStartedEventAttributes), timerFiredEventAttributes :: Maybe (TimerFiredEventAttributes), timerCanceledEventAttributes :: Maybe (TimerCanceledEventAttributes), startChildWorkflowExecutionInitiatedEventAttributes :: Maybe (StartChildWorkflowExecutionInitiatedEventAttributes), childWorkflowExecutionStartedEventAttributes :: Maybe (ChildWorkflowExecutionStartedEventAttributes), childWorkflowExecutionCompletedEventAttributes :: Maybe (ChildWorkflowExecutionCompletedEventAttributes), childWorkflowExecutionFailedEventAttributes :: Maybe (ChildWorkflowExecutionFailedEventAttributes), childWorkflowExecutionTimedOutEventAttributes :: Maybe (ChildWorkflowExecutionTimedOutEventAttributes), childWorkflowExecutionCanceledEventAttributes :: Maybe (ChildWorkflowExecutionCanceledEventAttributes), childWorkflowExecutionTerminatedEventAttributes :: Maybe (ChildWorkflowExecutionTerminatedEventAttributes), signalExternalWorkflowExecutionInitiatedEventAttributes :: Maybe (SignalExternalWorkflowExecutionInitiatedEventAttributes), externalWorkflowExecutionSignaledEventAttributes :: Maybe (ExternalWorkflowExecutionSignaledEventAttributes), signalExternalWorkflowExecutionFailedEventAttributes :: Maybe (SignalExternalWorkflowExecutionFailedEventAttributes), externalWorkflowExecutionCancelRequestedEventAttributes :: Maybe (ExternalWorkflowExecutionCancelRequestedEventAttributes), requestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Maybe (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes), requestCancelExternalWorkflowExecutionFailedEventAttributes :: Maybe (RequestCancelExternalWorkflowExecutionFailedEventAttributes), scheduleActivityTaskFailedEventAttributes :: Maybe (ScheduleActivityTaskFailedEventAttributes), requestCancelActivityTaskFailedEventAttributes :: Maybe (RequestCancelActivityTaskFailedEventAttributes), startTimerFailedEventAttributes :: Maybe (StartTimerFailedEventAttributes), cancelTimerFailedEventAttributes :: Maybe (CancelTimerFailedEventAttributes), startChildWorkflowExecutionFailedEventAttributes :: Maybe (StartChildWorkflowExecutionFailedEventAttributes), lambdaFunctionScheduledEventAttributes :: Maybe (LambdaFunctionScheduledEventAttributes), lambdaFunctionStartedEventAttributes :: Maybe (LambdaFunctionStartedEventAttributes), lambdaFunctionCompletedEventAttributes :: Maybe (LambdaFunctionCompletedEventAttributes), lambdaFunctionFailedEventAttributes :: Maybe (LambdaFunctionFailedEventAttributes), lambdaFunctionTimedOutEventAttributes :: Maybe (LambdaFunctionTimedOutEventAttributes), scheduleLambdaFunctionFailedEventAttributes :: Maybe (ScheduleLambdaFunctionFailedEventAttributes), startLambdaFunctionFailedEventAttributes :: Maybe (StartLambdaFunctionFailedEventAttributes) } -> { eventTimestamp :: Timestamp, eventType :: EventType, eventId :: EventId, workflowExecutionStartedEventAttributes :: Maybe (WorkflowExecutionStartedEventAttributes), workflowExecutionCompletedEventAttributes :: Maybe (WorkflowExecutionCompletedEventAttributes), completeWorkflowExecutionFailedEventAttributes :: Maybe (CompleteWorkflowExecutionFailedEventAttributes), workflowExecutionFailedEventAttributes :: Maybe (WorkflowExecutionFailedEventAttributes), failWorkflowExecutionFailedEventAttributes :: Maybe (FailWorkflowExecutionFailedEventAttributes), workflowExecutionTimedOutEventAttributes :: Maybe (WorkflowExecutionTimedOutEventAttributes), workflowExecutionCanceledEventAttributes :: Maybe (WorkflowExecutionCanceledEventAttributes), cancelWorkflowExecutionFailedEventAttributes :: Maybe (CancelWorkflowExecutionFailedEventAttributes), workflowExecutionContinuedAsNewEventAttributes :: Maybe (WorkflowExecutionContinuedAsNewEventAttributes), continueAsNewWorkflowExecutionFailedEventAttributes :: Maybe (ContinueAsNewWorkflowExecutionFailedEventAttributes), workflowExecutionTerminatedEventAttributes :: Maybe (WorkflowExecutionTerminatedEventAttributes), workflowExecutionCancelRequestedEventAttributes :: Maybe (WorkflowExecutionCancelRequestedEventAttributes), decisionTaskScheduledEventAttributes :: Maybe (DecisionTaskScheduledEventAttributes), decisionTaskStartedEventAttributes :: Maybe (DecisionTaskStartedEventAttributes), decisionTaskCompletedEventAttributes :: Maybe (DecisionTaskCompletedEventAttributes), decisionTaskTimedOutEventAttributes :: Maybe (DecisionTaskTimedOutEventAttributes), activityTaskScheduledEventAttributes :: Maybe (ActivityTaskScheduledEventAttributes), activityTaskStartedEventAttributes :: Maybe (ActivityTaskStartedEventAttributes), activityTaskCompletedEventAttributes :: Maybe (ActivityTaskCompletedEventAttributes), activityTaskFailedEventAttributes :: Maybe (ActivityTaskFailedEventAttributes), activityTaskTimedOutEventAttributes :: Maybe (ActivityTaskTimedOutEventAttributes), activityTaskCanceledEventAttributes :: Maybe (ActivityTaskCanceledEventAttributes), activityTaskCancelRequestedEventAttributes :: Maybe (ActivityTaskCancelRequestedEventAttributes), workflowExecutionSignaledEventAttributes :: Maybe (WorkflowExecutionSignaledEventAttributes), markerRecordedEventAttributes :: Maybe (MarkerRecordedEventAttributes), recordMarkerFailedEventAttributes :: Maybe (RecordMarkerFailedEventAttributes), timerStartedEventAttributes :: Maybe (TimerStartedEventAttributes), timerFiredEventAttributes :: Maybe (TimerFiredEventAttributes), timerCanceledEventAttributes :: Maybe (TimerCanceledEventAttributes), startChildWorkflowExecutionInitiatedEventAttributes :: Maybe (StartChildWorkflowExecutionInitiatedEventAttributes), childWorkflowExecutionStartedEventAttributes :: Maybe (ChildWorkflowExecutionStartedEventAttributes), childWorkflowExecutionCompletedEventAttributes :: Maybe (ChildWorkflowExecutionCompletedEventAttributes), childWorkflowExecutionFailedEventAttributes :: Maybe (ChildWorkflowExecutionFailedEventAttributes), childWorkflowExecutionTimedOutEventAttributes :: Maybe (ChildWorkflowExecutionTimedOutEventAttributes), childWorkflowExecutionCanceledEventAttributes :: Maybe (ChildWorkflowExecutionCanceledEventAttributes), childWorkflowExecutionTerminatedEventAttributes :: Maybe (ChildWorkflowExecutionTerminatedEventAttributes), signalExternalWorkflowExecutionInitiatedEventAttributes :: Maybe (SignalExternalWorkflowExecutionInitiatedEventAttributes), externalWorkflowExecutionSignaledEventAttributes :: Maybe (ExternalWorkflowExecutionSignaledEventAttributes), signalExternalWorkflowExecutionFailedEventAttributes :: Maybe (SignalExternalWorkflowExecutionFailedEventAttributes), externalWorkflowExecutionCancelRequestedEventAttributes :: Maybe (ExternalWorkflowExecutionCancelRequestedEventAttributes), requestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Maybe (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes), requestCancelExternalWorkflowExecutionFailedEventAttributes :: Maybe (RequestCancelExternalWorkflowExecutionFailedEventAttributes), scheduleActivityTaskFailedEventAttributes :: Maybe (ScheduleActivityTaskFailedEventAttributes), requestCancelActivityTaskFailedEventAttributes :: Maybe (RequestCancelActivityTaskFailedEventAttributes), startTimerFailedEventAttributes :: Maybe (StartTimerFailedEventAttributes), cancelTimerFailedEventAttributes :: Maybe (CancelTimerFailedEventAttributes), startChildWorkflowExecutionFailedEventAttributes :: Maybe (StartChildWorkflowExecutionFailedEventAttributes), lambdaFunctionScheduledEventAttributes :: Maybe (LambdaFunctionScheduledEventAttributes), lambdaFunctionStartedEventAttributes :: Maybe (LambdaFunctionStartedEventAttributes), lambdaFunctionCompletedEventAttributes :: Maybe (LambdaFunctionCompletedEventAttributes), lambdaFunctionFailedEventAttributes :: Maybe (LambdaFunctionFailedEventAttributes), lambdaFunctionTimedOutEventAttributes :: Maybe (LambdaFunctionTimedOutEventAttributes), scheduleLambdaFunctionFailedEventAttributes :: Maybe (ScheduleLambdaFunctionFailedEventAttributes), startLambdaFunctionFailedEventAttributes :: Maybe (StartLambdaFunctionFailedEventAttributes) }) -> HistoryEvent
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
  = LambdaFunctionCompletedEventAttributes { scheduledEventId :: EventId, startedEventId :: EventId, result :: Maybe (Data) }
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
newLambdaFunctionCompletedEventAttributes' :: EventId -> EventId -> ({ scheduledEventId :: EventId, startedEventId :: EventId, result :: Maybe (Data) } -> { scheduledEventId :: EventId, startedEventId :: EventId, result :: Maybe (Data) }) -> LambdaFunctionCompletedEventAttributes
```

Constructs LambdaFunctionCompletedEventAttributes's fields from required parameters

#### `LambdaFunctionFailedEventAttributes`

``` purescript
newtype LambdaFunctionFailedEventAttributes
  = LambdaFunctionFailedEventAttributes { scheduledEventId :: EventId, startedEventId :: EventId, reason :: Maybe (FailureReason), details :: Maybe (Data) }
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
newLambdaFunctionFailedEventAttributes' :: EventId -> EventId -> ({ scheduledEventId :: EventId, startedEventId :: EventId, reason :: Maybe (FailureReason), details :: Maybe (Data) } -> { scheduledEventId :: EventId, startedEventId :: EventId, reason :: Maybe (FailureReason), details :: Maybe (Data) }) -> LambdaFunctionFailedEventAttributes
```

Constructs LambdaFunctionFailedEventAttributes's fields from required parameters

#### `LambdaFunctionScheduledEventAttributes`

``` purescript
newtype LambdaFunctionScheduledEventAttributes
  = LambdaFunctionScheduledEventAttributes { id :: FunctionId, name :: FunctionName, control :: Maybe (Data), input :: Maybe (FunctionInput), startToCloseTimeout :: Maybe (DurationInSecondsOptional), decisionTaskCompletedEventId :: EventId }
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
newLambdaFunctionScheduledEventAttributes' :: EventId -> FunctionId -> FunctionName -> ({ id :: FunctionId, name :: FunctionName, control :: Maybe (Data), input :: Maybe (FunctionInput), startToCloseTimeout :: Maybe (DurationInSecondsOptional), decisionTaskCompletedEventId :: EventId } -> { id :: FunctionId, name :: FunctionName, control :: Maybe (Data), input :: Maybe (FunctionInput), startToCloseTimeout :: Maybe (DurationInSecondsOptional), decisionTaskCompletedEventId :: EventId }) -> LambdaFunctionScheduledEventAttributes
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
  = LambdaFunctionTimedOutEventAttributes { scheduledEventId :: EventId, startedEventId :: EventId, timeoutType :: Maybe (LambdaFunctionTimeoutType) }
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
newLambdaFunctionTimedOutEventAttributes' :: EventId -> EventId -> ({ scheduledEventId :: EventId, startedEventId :: EventId, timeoutType :: Maybe (LambdaFunctionTimeoutType) } -> { scheduledEventId :: EventId, startedEventId :: EventId, timeoutType :: Maybe (LambdaFunctionTimeoutType) }) -> LambdaFunctionTimedOutEventAttributes
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
  = LimitExceededFault { message :: Maybe (ErrorMessage) }
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
newLimitExceededFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> LimitExceededFault
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
  = ListActivityTypesInput { domain :: DomainName, name :: Maybe (Name), registrationStatus :: RegistrationStatus, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }
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
newListActivityTypesInput' :: DomainName -> RegistrationStatus -> ({ domain :: DomainName, name :: Maybe (Name), registrationStatus :: RegistrationStatus, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) } -> { domain :: DomainName, name :: Maybe (Name), registrationStatus :: RegistrationStatus, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }) -> ListActivityTypesInput
```

Constructs ListActivityTypesInput's fields from required parameters

#### `ListClosedWorkflowExecutionsInput`

``` purescript
newtype ListClosedWorkflowExecutionsInput
  = ListClosedWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: Maybe (ExecutionTimeFilter), closeTimeFilter :: Maybe (ExecutionTimeFilter), executionFilter :: Maybe (WorkflowExecutionFilter), closeStatusFilter :: Maybe (CloseStatusFilter), typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }
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
newListClosedWorkflowExecutionsInput' :: DomainName -> ({ domain :: DomainName, startTimeFilter :: Maybe (ExecutionTimeFilter), closeTimeFilter :: Maybe (ExecutionTimeFilter), executionFilter :: Maybe (WorkflowExecutionFilter), closeStatusFilter :: Maybe (CloseStatusFilter), typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) } -> { domain :: DomainName, startTimeFilter :: Maybe (ExecutionTimeFilter), closeTimeFilter :: Maybe (ExecutionTimeFilter), executionFilter :: Maybe (WorkflowExecutionFilter), closeStatusFilter :: Maybe (CloseStatusFilter), typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }) -> ListClosedWorkflowExecutionsInput
```

Constructs ListClosedWorkflowExecutionsInput's fields from required parameters

#### `ListDomainsInput`

``` purescript
newtype ListDomainsInput
  = ListDomainsInput { nextPageToken :: Maybe (PageToken), registrationStatus :: RegistrationStatus, maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }
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
newListDomainsInput' :: RegistrationStatus -> ({ nextPageToken :: Maybe (PageToken), registrationStatus :: RegistrationStatus, maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) } -> { nextPageToken :: Maybe (PageToken), registrationStatus :: RegistrationStatus, maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }) -> ListDomainsInput
```

Constructs ListDomainsInput's fields from required parameters

#### `ListOpenWorkflowExecutionsInput`

``` purescript
newtype ListOpenWorkflowExecutionsInput
  = ListOpenWorkflowExecutionsInput { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder), executionFilter :: Maybe (WorkflowExecutionFilter) }
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
newListOpenWorkflowExecutionsInput' :: DomainName -> ExecutionTimeFilter -> ({ domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder), executionFilter :: Maybe (WorkflowExecutionFilter) } -> { domain :: DomainName, startTimeFilter :: ExecutionTimeFilter, typeFilter :: Maybe (WorkflowTypeFilter), tagFilter :: Maybe (TagFilter), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder), executionFilter :: Maybe (WorkflowExecutionFilter) }) -> ListOpenWorkflowExecutionsInput
```

Constructs ListOpenWorkflowExecutionsInput's fields from required parameters

#### `ListWorkflowTypesInput`

``` purescript
newtype ListWorkflowTypesInput
  = ListWorkflowTypesInput { domain :: DomainName, name :: Maybe (Name), registrationStatus :: RegistrationStatus, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }
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
newListWorkflowTypesInput' :: DomainName -> RegistrationStatus -> ({ domain :: DomainName, name :: Maybe (Name), registrationStatus :: RegistrationStatus, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) } -> { domain :: DomainName, name :: Maybe (Name), registrationStatus :: RegistrationStatus, nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }) -> ListWorkflowTypesInput
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
  = MarkerRecordedEventAttributes { markerName :: MarkerName, details :: Maybe (Data), decisionTaskCompletedEventId :: EventId }
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
newMarkerRecordedEventAttributes' :: EventId -> MarkerName -> ({ markerName :: MarkerName, details :: Maybe (Data), decisionTaskCompletedEventId :: EventId } -> { markerName :: MarkerName, details :: Maybe (Data), decisionTaskCompletedEventId :: EventId }) -> MarkerRecordedEventAttributes
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
  = OperationNotPermittedFault { message :: Maybe (ErrorMessage) }
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
newOperationNotPermittedFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> OperationNotPermittedFault
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
  = PendingTaskCount { count :: Count, truncated :: Maybe (Truncated) }
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
newPendingTaskCount' :: Count -> ({ count :: Count, truncated :: Maybe (Truncated) } -> { count :: Count, truncated :: Maybe (Truncated) }) -> PendingTaskCount
```

Constructs PendingTaskCount's fields from required parameters

#### `PollForActivityTaskInput`

``` purescript
newtype PollForActivityTaskInput
  = PollForActivityTaskInput { domain :: DomainName, taskList :: TaskList, identity :: Maybe (Identity) }
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
newPollForActivityTaskInput' :: DomainName -> TaskList -> ({ domain :: DomainName, taskList :: TaskList, identity :: Maybe (Identity) } -> { domain :: DomainName, taskList :: TaskList, identity :: Maybe (Identity) }) -> PollForActivityTaskInput
```

Constructs PollForActivityTaskInput's fields from required parameters

#### `PollForDecisionTaskInput`

``` purescript
newtype PollForDecisionTaskInput
  = PollForDecisionTaskInput { domain :: DomainName, taskList :: TaskList, identity :: Maybe (Identity), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }
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
newPollForDecisionTaskInput' :: DomainName -> TaskList -> ({ domain :: DomainName, taskList :: TaskList, identity :: Maybe (Identity), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) } -> { domain :: DomainName, taskList :: TaskList, identity :: Maybe (Identity), nextPageToken :: Maybe (PageToken), maximumPageSize :: Maybe (PageSize), reverseOrder :: Maybe (ReverseOrder) }) -> PollForDecisionTaskInput
```

Constructs PollForDecisionTaskInput's fields from required parameters

#### `RecordActivityTaskHeartbeatInput`

``` purescript
newtype RecordActivityTaskHeartbeatInput
  = RecordActivityTaskHeartbeatInput { taskToken :: TaskToken, details :: Maybe (LimitedData) }
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
newRecordActivityTaskHeartbeatInput' :: TaskToken -> ({ taskToken :: TaskToken, details :: Maybe (LimitedData) } -> { taskToken :: TaskToken, details :: Maybe (LimitedData) }) -> RecordActivityTaskHeartbeatInput
```

Constructs RecordActivityTaskHeartbeatInput's fields from required parameters

#### `RecordMarkerDecisionAttributes`

``` purescript
newtype RecordMarkerDecisionAttributes
  = RecordMarkerDecisionAttributes { markerName :: MarkerName, details :: Maybe (Data) }
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
newRecordMarkerDecisionAttributes' :: MarkerName -> ({ markerName :: MarkerName, details :: Maybe (Data) } -> { markerName :: MarkerName, details :: Maybe (Data) }) -> RecordMarkerDecisionAttributes
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
  = RegisterActivityTypeInput { domain :: DomainName, name :: Name, version :: Version, description :: Maybe (Description), defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultTaskScheduleToStartTimeout :: Maybe (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: Maybe (DurationInSecondsOptional) }
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
newRegisterActivityTypeInput' :: DomainName -> Name -> Version -> ({ domain :: DomainName, name :: Name, version :: Version, description :: Maybe (Description), defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultTaskScheduleToStartTimeout :: Maybe (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: Maybe (DurationInSecondsOptional) } -> { domain :: DomainName, name :: Name, version :: Version, description :: Maybe (Description), defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskHeartbeatTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultTaskScheduleToStartTimeout :: Maybe (DurationInSecondsOptional), defaultTaskScheduleToCloseTimeout :: Maybe (DurationInSecondsOptional) }) -> RegisterActivityTypeInput
```

Constructs RegisterActivityTypeInput's fields from required parameters

#### `RegisterDomainInput`

``` purescript
newtype RegisterDomainInput
  = RegisterDomainInput { name :: DomainName, description :: Maybe (Description), workflowExecutionRetentionPeriodInDays :: DurationInDays }
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
newRegisterDomainInput' :: DomainName -> DurationInDays -> ({ name :: DomainName, description :: Maybe (Description), workflowExecutionRetentionPeriodInDays :: DurationInDays } -> { name :: DomainName, description :: Maybe (Description), workflowExecutionRetentionPeriodInDays :: DurationInDays }) -> RegisterDomainInput
```

Constructs RegisterDomainInput's fields from required parameters

#### `RegisterWorkflowTypeInput`

``` purescript
newtype RegisterWorkflowTypeInput
  = RegisterWorkflowTypeInput { domain :: DomainName, name :: Name, version :: Version, description :: Maybe (Description), defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultChildPolicy :: Maybe (ChildPolicy), defaultLambdaRole :: Maybe (Arn) }
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
newRegisterWorkflowTypeInput' :: DomainName -> Name -> Version -> ({ domain :: DomainName, name :: Name, version :: Version, description :: Maybe (Description), defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultChildPolicy :: Maybe (ChildPolicy), defaultLambdaRole :: Maybe (Arn) } -> { domain :: DomainName, name :: Name, version :: Version, description :: Maybe (Description), defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultChildPolicy :: Maybe (ChildPolicy), defaultLambdaRole :: Maybe (Arn) }) -> RegisterWorkflowTypeInput
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
  = RequestCancelExternalWorkflowExecutionDecisionAttributes { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), control :: Maybe (Data) }
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
newRequestCancelExternalWorkflowExecutionDecisionAttributes' :: WorkflowId -> ({ workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), control :: Maybe (Data) } -> { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), control :: Maybe (Data) }) -> RequestCancelExternalWorkflowExecutionDecisionAttributes
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
  = RequestCancelExternalWorkflowExecutionFailedEventAttributes { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), cause :: RequestCancelExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }
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
newRequestCancelExternalWorkflowExecutionFailedEventAttributes' :: RequestCancelExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), cause :: RequestCancelExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) } -> { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), cause :: RequestCancelExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }) -> RequestCancelExternalWorkflowExecutionFailedEventAttributes
```

Constructs RequestCancelExternalWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `RequestCancelExternalWorkflowExecutionInitiatedEventAttributes`

``` purescript
newtype RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
  = RequestCancelExternalWorkflowExecutionInitiatedEventAttributes { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }
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
newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes' :: EventId -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) } -> { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }) -> RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
```

Constructs RequestCancelExternalWorkflowExecutionInitiatedEventAttributes's fields from required parameters

#### `RequestCancelWorkflowExecutionInput`

``` purescript
newtype RequestCancelWorkflowExecutionInput
  = RequestCancelWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional) }
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
newRequestCancelWorkflowExecutionInput' :: DomainName -> WorkflowId -> ({ domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional) } -> { domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional) }) -> RequestCancelWorkflowExecutionInput
```

Constructs RequestCancelWorkflowExecutionInput's fields from required parameters

#### `RespondActivityTaskCanceledInput`

``` purescript
newtype RespondActivityTaskCanceledInput
  = RespondActivityTaskCanceledInput { taskToken :: TaskToken, details :: Maybe (Data) }
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
newRespondActivityTaskCanceledInput' :: TaskToken -> ({ taskToken :: TaskToken, details :: Maybe (Data) } -> { taskToken :: TaskToken, details :: Maybe (Data) }) -> RespondActivityTaskCanceledInput
```

Constructs RespondActivityTaskCanceledInput's fields from required parameters

#### `RespondActivityTaskCompletedInput`

``` purescript
newtype RespondActivityTaskCompletedInput
  = RespondActivityTaskCompletedInput { taskToken :: TaskToken, result :: Maybe (Data) }
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
newRespondActivityTaskCompletedInput' :: TaskToken -> ({ taskToken :: TaskToken, result :: Maybe (Data) } -> { taskToken :: TaskToken, result :: Maybe (Data) }) -> RespondActivityTaskCompletedInput
```

Constructs RespondActivityTaskCompletedInput's fields from required parameters

#### `RespondActivityTaskFailedInput`

``` purescript
newtype RespondActivityTaskFailedInput
  = RespondActivityTaskFailedInput { taskToken :: TaskToken, reason :: Maybe (FailureReason), details :: Maybe (Data) }
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
newRespondActivityTaskFailedInput' :: TaskToken -> ({ taskToken :: TaskToken, reason :: Maybe (FailureReason), details :: Maybe (Data) } -> { taskToken :: TaskToken, reason :: Maybe (FailureReason), details :: Maybe (Data) }) -> RespondActivityTaskFailedInput
```

Constructs RespondActivityTaskFailedInput's fields from required parameters

#### `RespondDecisionTaskCompletedInput`

``` purescript
newtype RespondDecisionTaskCompletedInput
  = RespondDecisionTaskCompletedInput { taskToken :: TaskToken, decisions :: Maybe (DecisionList), executionContext :: Maybe (Data) }
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
newRespondDecisionTaskCompletedInput' :: TaskToken -> ({ taskToken :: TaskToken, decisions :: Maybe (DecisionList), executionContext :: Maybe (Data) } -> { taskToken :: TaskToken, decisions :: Maybe (DecisionList), executionContext :: Maybe (Data) }) -> RespondDecisionTaskCompletedInput
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
  = Run { runId :: Maybe (WorkflowRunId) }
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
newRun' :: ({ runId :: Maybe (WorkflowRunId) } -> { runId :: Maybe (WorkflowRunId) }) -> Run
```

Constructs Run's fields from required parameters

#### `ScheduleActivityTaskDecisionAttributes`

``` purescript
newtype ScheduleActivityTaskDecisionAttributes
  = ScheduleActivityTaskDecisionAttributes { activityType :: ActivityType, activityId :: ActivityId, control :: Maybe (Data), input :: Maybe (Data), scheduleToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), scheduleToStartTimeout :: Maybe (DurationInSecondsOptional), startToCloseTimeout :: Maybe (DurationInSecondsOptional), heartbeatTimeout :: Maybe (DurationInSecondsOptional) }
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
newScheduleActivityTaskDecisionAttributes' :: ActivityId -> ActivityType -> ({ activityType :: ActivityType, activityId :: ActivityId, control :: Maybe (Data), input :: Maybe (Data), scheduleToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), scheduleToStartTimeout :: Maybe (DurationInSecondsOptional), startToCloseTimeout :: Maybe (DurationInSecondsOptional), heartbeatTimeout :: Maybe (DurationInSecondsOptional) } -> { activityType :: ActivityType, activityId :: ActivityId, control :: Maybe (Data), input :: Maybe (Data), scheduleToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), scheduleToStartTimeout :: Maybe (DurationInSecondsOptional), startToCloseTimeout :: Maybe (DurationInSecondsOptional), heartbeatTimeout :: Maybe (DurationInSecondsOptional) }) -> ScheduleActivityTaskDecisionAttributes
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
  = ScheduleLambdaFunctionDecisionAttributes { id :: FunctionId, name :: FunctionName, control :: Maybe (Data), input :: Maybe (FunctionInput), startToCloseTimeout :: Maybe (DurationInSecondsOptional) }
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
newScheduleLambdaFunctionDecisionAttributes' :: FunctionId -> FunctionName -> ({ id :: FunctionId, name :: FunctionName, control :: Maybe (Data), input :: Maybe (FunctionInput), startToCloseTimeout :: Maybe (DurationInSecondsOptional) } -> { id :: FunctionId, name :: FunctionName, control :: Maybe (Data), input :: Maybe (FunctionInput), startToCloseTimeout :: Maybe (DurationInSecondsOptional) }) -> ScheduleLambdaFunctionDecisionAttributes
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
  = SignalExternalWorkflowExecutionDecisionAttributes { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data), control :: Maybe (Data) }
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
newSignalExternalWorkflowExecutionDecisionAttributes' :: SignalName -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data), control :: Maybe (Data) } -> { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data), control :: Maybe (Data) }) -> SignalExternalWorkflowExecutionDecisionAttributes
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
  = SignalExternalWorkflowExecutionFailedEventAttributes { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), cause :: SignalExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }
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
newSignalExternalWorkflowExecutionFailedEventAttributes' :: SignalExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), cause :: SignalExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) } -> { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), cause :: SignalExternalWorkflowExecutionFailedCause, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }) -> SignalExternalWorkflowExecutionFailedEventAttributes
```

Constructs SignalExternalWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `SignalExternalWorkflowExecutionInitiatedEventAttributes`

``` purescript
newtype SignalExternalWorkflowExecutionInitiatedEventAttributes
  = SignalExternalWorkflowExecutionInitiatedEventAttributes { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data), decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }
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
newSignalExternalWorkflowExecutionInitiatedEventAttributes' :: EventId -> SignalName -> WorkflowId -> ({ workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data), decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) } -> { workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data), decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }) -> SignalExternalWorkflowExecutionInitiatedEventAttributes
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
  = SignalWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data) }
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
newSignalWorkflowExecutionInput' :: DomainName -> SignalName -> WorkflowId -> ({ domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data) } -> { domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), signalName :: SignalName, input :: Maybe (Data) }) -> SignalWorkflowExecutionInput
```

Constructs SignalWorkflowExecutionInput's fields from required parameters

#### `StartChildWorkflowExecutionDecisionAttributes`

``` purescript
newtype StartChildWorkflowExecutionDecisionAttributes
  = StartChildWorkflowExecutionDecisionAttributes { workflowType :: WorkflowType, workflowId :: WorkflowId, control :: Maybe (Data), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), tagList :: Maybe (TagList), lambdaRole :: Maybe (Arn) }
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
newStartChildWorkflowExecutionDecisionAttributes' :: WorkflowId -> WorkflowType -> ({ workflowType :: WorkflowType, workflowId :: WorkflowId, control :: Maybe (Data), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), tagList :: Maybe (TagList), lambdaRole :: Maybe (Arn) } -> { workflowType :: WorkflowType, workflowId :: WorkflowId, control :: Maybe (Data), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), tagList :: Maybe (TagList), lambdaRole :: Maybe (Arn) }) -> StartChildWorkflowExecutionDecisionAttributes
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
  = StartChildWorkflowExecutionFailedEventAttributes { workflowType :: WorkflowType, cause :: StartChildWorkflowExecutionFailedCause, workflowId :: WorkflowId, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }
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
newStartChildWorkflowExecutionFailedEventAttributes' :: StartChildWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> WorkflowType -> ({ workflowType :: WorkflowType, cause :: StartChildWorkflowExecutionFailedCause, workflowId :: WorkflowId, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) } -> { workflowType :: WorkflowType, cause :: StartChildWorkflowExecutionFailedCause, workflowId :: WorkflowId, initiatedEventId :: EventId, decisionTaskCompletedEventId :: EventId, control :: Maybe (Data) }) -> StartChildWorkflowExecutionFailedEventAttributes
```

Constructs StartChildWorkflowExecutionFailedEventAttributes's fields from required parameters

#### `StartChildWorkflowExecutionInitiatedEventAttributes`

``` purescript
newtype StartChildWorkflowExecutionInitiatedEventAttributes
  = StartChildWorkflowExecutionInitiatedEventAttributes { workflowId :: WorkflowId, workflowType :: WorkflowType, control :: Maybe (Data), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), decisionTaskCompletedEventId :: EventId, childPolicy :: ChildPolicy, taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), tagList :: Maybe (TagList), lambdaRole :: Maybe (Arn) }
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
newStartChildWorkflowExecutionInitiatedEventAttributes' :: ChildPolicy -> EventId -> TaskList -> WorkflowId -> WorkflowType -> ({ workflowId :: WorkflowId, workflowType :: WorkflowType, control :: Maybe (Data), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), decisionTaskCompletedEventId :: EventId, childPolicy :: ChildPolicy, taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), tagList :: Maybe (TagList), lambdaRole :: Maybe (Arn) } -> { workflowId :: WorkflowId, workflowType :: WorkflowType, control :: Maybe (Data), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), decisionTaskCompletedEventId :: EventId, childPolicy :: ChildPolicy, taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), tagList :: Maybe (TagList), lambdaRole :: Maybe (Arn) }) -> StartChildWorkflowExecutionInitiatedEventAttributes
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
  = StartLambdaFunctionFailedEventAttributes { scheduledEventId :: Maybe (EventId), cause :: Maybe (StartLambdaFunctionFailedCause), message :: Maybe (CauseMessage) }
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
newStartLambdaFunctionFailedEventAttributes' :: ({ scheduledEventId :: Maybe (EventId), cause :: Maybe (StartLambdaFunctionFailedCause), message :: Maybe (CauseMessage) } -> { scheduledEventId :: Maybe (EventId), cause :: Maybe (StartLambdaFunctionFailedCause), message :: Maybe (CauseMessage) }) -> StartLambdaFunctionFailedEventAttributes
```

Constructs StartLambdaFunctionFailedEventAttributes's fields from required parameters

#### `StartTimerDecisionAttributes`

``` purescript
newtype StartTimerDecisionAttributes
  = StartTimerDecisionAttributes { timerId :: TimerId, control :: Maybe (Data), startToFireTimeout :: DurationInSeconds }
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
newStartTimerDecisionAttributes' :: DurationInSeconds -> TimerId -> ({ timerId :: TimerId, control :: Maybe (Data), startToFireTimeout :: DurationInSeconds } -> { timerId :: TimerId, control :: Maybe (Data), startToFireTimeout :: DurationInSeconds }) -> StartTimerDecisionAttributes
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
  = StartWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, workflowType :: WorkflowType, taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), tagList :: Maybe (TagList), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), lambdaRole :: Maybe (Arn) }
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
newStartWorkflowExecutionInput' :: DomainName -> WorkflowId -> WorkflowType -> ({ domain :: DomainName, workflowId :: WorkflowId, workflowType :: WorkflowType, taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), tagList :: Maybe (TagList), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), lambdaRole :: Maybe (Arn) } -> { domain :: DomainName, workflowId :: WorkflowId, workflowType :: WorkflowType, taskList :: Maybe (TaskList), taskPriority :: Maybe (TaskPriority), input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), tagList :: Maybe (TagList), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: Maybe (ChildPolicy), lambdaRole :: Maybe (Arn) }) -> StartWorkflowExecutionInput
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
  = TerminateWorkflowExecutionInput { domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), reason :: Maybe (TerminateReason), details :: Maybe (Data), childPolicy :: Maybe (ChildPolicy) }
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
newTerminateWorkflowExecutionInput' :: DomainName -> WorkflowId -> ({ domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), reason :: Maybe (TerminateReason), details :: Maybe (Data), childPolicy :: Maybe (ChildPolicy) } -> { domain :: DomainName, workflowId :: WorkflowId, runId :: Maybe (WorkflowRunIdOptional), reason :: Maybe (TerminateReason), details :: Maybe (Data), childPolicy :: Maybe (ChildPolicy) }) -> TerminateWorkflowExecutionInput
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
  = TimerStartedEventAttributes { timerId :: TimerId, control :: Maybe (Data), startToFireTimeout :: DurationInSeconds, decisionTaskCompletedEventId :: EventId }
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
newTimerStartedEventAttributes' :: EventId -> DurationInSeconds -> TimerId -> ({ timerId :: TimerId, control :: Maybe (Data), startToFireTimeout :: DurationInSeconds, decisionTaskCompletedEventId :: EventId } -> { timerId :: TimerId, control :: Maybe (Data), startToFireTimeout :: DurationInSeconds, decisionTaskCompletedEventId :: EventId }) -> TimerStartedEventAttributes
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
  = TypeAlreadyExistsFault { message :: Maybe (ErrorMessage) }
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
newTypeAlreadyExistsFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TypeAlreadyExistsFault
```

Constructs TypeAlreadyExistsFault's fields from required parameters

#### `TypeDeprecatedFault`

``` purescript
newtype TypeDeprecatedFault
  = TypeDeprecatedFault { message :: Maybe (ErrorMessage) }
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
newTypeDeprecatedFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> TypeDeprecatedFault
```

Constructs TypeDeprecatedFault's fields from required parameters

#### `UnknownResourceFault`

``` purescript
newtype UnknownResourceFault
  = UnknownResourceFault { message :: Maybe (ErrorMessage) }
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
newUnknownResourceFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> UnknownResourceFault
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
  = WorkflowExecutionAlreadyStartedFault { message :: Maybe (ErrorMessage) }
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
newWorkflowExecutionAlreadyStartedFault' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> WorkflowExecutionAlreadyStartedFault
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
  = WorkflowExecutionCancelRequestedEventAttributes { externalWorkflowExecution :: Maybe (WorkflowExecution), externalInitiatedEventId :: Maybe (EventId), cause :: Maybe (WorkflowExecutionCancelRequestedCause) }
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
newWorkflowExecutionCancelRequestedEventAttributes' :: ({ externalWorkflowExecution :: Maybe (WorkflowExecution), externalInitiatedEventId :: Maybe (EventId), cause :: Maybe (WorkflowExecutionCancelRequestedCause) } -> { externalWorkflowExecution :: Maybe (WorkflowExecution), externalInitiatedEventId :: Maybe (EventId), cause :: Maybe (WorkflowExecutionCancelRequestedCause) }) -> WorkflowExecutionCancelRequestedEventAttributes
```

Constructs WorkflowExecutionCancelRequestedEventAttributes's fields from required parameters

#### `WorkflowExecutionCanceledEventAttributes`

``` purescript
newtype WorkflowExecutionCanceledEventAttributes
  = WorkflowExecutionCanceledEventAttributes { details :: Maybe (Data), decisionTaskCompletedEventId :: EventId }
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
newWorkflowExecutionCanceledEventAttributes' :: EventId -> ({ details :: Maybe (Data), decisionTaskCompletedEventId :: EventId } -> { details :: Maybe (Data), decisionTaskCompletedEventId :: EventId }) -> WorkflowExecutionCanceledEventAttributes
```

Constructs WorkflowExecutionCanceledEventAttributes's fields from required parameters

#### `WorkflowExecutionCompletedEventAttributes`

``` purescript
newtype WorkflowExecutionCompletedEventAttributes
  = WorkflowExecutionCompletedEventAttributes { result :: Maybe (Data), decisionTaskCompletedEventId :: EventId }
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
newWorkflowExecutionCompletedEventAttributes' :: EventId -> ({ result :: Maybe (Data), decisionTaskCompletedEventId :: EventId } -> { result :: Maybe (Data), decisionTaskCompletedEventId :: EventId }) -> WorkflowExecutionCompletedEventAttributes
```

Constructs WorkflowExecutionCompletedEventAttributes's fields from required parameters

#### `WorkflowExecutionConfiguration`

``` purescript
newtype WorkflowExecutionConfiguration
  = WorkflowExecutionConfiguration { taskStartToCloseTimeout :: DurationInSeconds, executionStartToCloseTimeout :: DurationInSeconds, taskList :: TaskList, taskPriority :: Maybe (TaskPriority), childPolicy :: ChildPolicy, lambdaRole :: Maybe (Arn) }
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
newWorkflowExecutionConfiguration' :: ChildPolicy -> DurationInSeconds -> TaskList -> DurationInSeconds -> ({ taskStartToCloseTimeout :: DurationInSeconds, executionStartToCloseTimeout :: DurationInSeconds, taskList :: TaskList, taskPriority :: Maybe (TaskPriority), childPolicy :: ChildPolicy, lambdaRole :: Maybe (Arn) } -> { taskStartToCloseTimeout :: DurationInSeconds, executionStartToCloseTimeout :: DurationInSeconds, taskList :: TaskList, taskPriority :: Maybe (TaskPriority), childPolicy :: ChildPolicy, lambdaRole :: Maybe (Arn) }) -> WorkflowExecutionConfiguration
```

Constructs WorkflowExecutionConfiguration's fields from required parameters

#### `WorkflowExecutionContinuedAsNewEventAttributes`

``` purescript
newtype WorkflowExecutionContinuedAsNewEventAttributes
  = WorkflowExecutionContinuedAsNewEventAttributes { input :: Maybe (Data), decisionTaskCompletedEventId :: EventId, newExecutionRunId :: WorkflowRunId, executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: ChildPolicy, tagList :: Maybe (TagList), workflowType :: WorkflowType, lambdaRole :: Maybe (Arn) }
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
newWorkflowExecutionContinuedAsNewEventAttributes' :: ChildPolicy -> EventId -> WorkflowRunId -> TaskList -> WorkflowType -> ({ input :: Maybe (Data), decisionTaskCompletedEventId :: EventId, newExecutionRunId :: WorkflowRunId, executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: ChildPolicy, tagList :: Maybe (TagList), workflowType :: WorkflowType, lambdaRole :: Maybe (Arn) } -> { input :: Maybe (Data), decisionTaskCompletedEventId :: EventId, newExecutionRunId :: WorkflowRunId, executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskList :: TaskList, taskPriority :: Maybe (TaskPriority), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: ChildPolicy, tagList :: Maybe (TagList), workflowType :: WorkflowType, lambdaRole :: Maybe (Arn) }) -> WorkflowExecutionContinuedAsNewEventAttributes
```

Constructs WorkflowExecutionContinuedAsNewEventAttributes's fields from required parameters

#### `WorkflowExecutionCount`

``` purescript
newtype WorkflowExecutionCount
  = WorkflowExecutionCount { count :: Count, truncated :: Maybe (Truncated) }
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
newWorkflowExecutionCount' :: Count -> ({ count :: Count, truncated :: Maybe (Truncated) } -> { count :: Count, truncated :: Maybe (Truncated) }) -> WorkflowExecutionCount
```

Constructs WorkflowExecutionCount's fields from required parameters

#### `WorkflowExecutionDetail`

``` purescript
newtype WorkflowExecutionDetail
  = WorkflowExecutionDetail { executionInfo :: WorkflowExecutionInfo, executionConfiguration :: WorkflowExecutionConfiguration, openCounts :: WorkflowExecutionOpenCounts, latestActivityTaskTimestamp :: Maybe (Timestamp), latestExecutionContext :: Maybe (Data) }
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
newWorkflowExecutionDetail' :: WorkflowExecutionConfiguration -> WorkflowExecutionInfo -> WorkflowExecutionOpenCounts -> ({ executionInfo :: WorkflowExecutionInfo, executionConfiguration :: WorkflowExecutionConfiguration, openCounts :: WorkflowExecutionOpenCounts, latestActivityTaskTimestamp :: Maybe (Timestamp), latestExecutionContext :: Maybe (Data) } -> { executionInfo :: WorkflowExecutionInfo, executionConfiguration :: WorkflowExecutionConfiguration, openCounts :: WorkflowExecutionOpenCounts, latestActivityTaskTimestamp :: Maybe (Timestamp), latestExecutionContext :: Maybe (Data) }) -> WorkflowExecutionDetail
```

Constructs WorkflowExecutionDetail's fields from required parameters

#### `WorkflowExecutionFailedEventAttributes`

``` purescript
newtype WorkflowExecutionFailedEventAttributes
  = WorkflowExecutionFailedEventAttributes { reason :: Maybe (FailureReason), details :: Maybe (Data), decisionTaskCompletedEventId :: EventId }
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
newWorkflowExecutionFailedEventAttributes' :: EventId -> ({ reason :: Maybe (FailureReason), details :: Maybe (Data), decisionTaskCompletedEventId :: EventId } -> { reason :: Maybe (FailureReason), details :: Maybe (Data), decisionTaskCompletedEventId :: EventId }) -> WorkflowExecutionFailedEventAttributes
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
  = WorkflowExecutionInfo { execution :: WorkflowExecution, workflowType :: WorkflowType, startTimestamp :: Timestamp, closeTimestamp :: Maybe (Timestamp), executionStatus :: ExecutionStatus, closeStatus :: Maybe (CloseStatus), parent :: Maybe (WorkflowExecution), tagList :: Maybe (TagList), cancelRequested :: Maybe (Canceled) }
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
newWorkflowExecutionInfo' :: WorkflowExecution -> ExecutionStatus -> Timestamp -> WorkflowType -> ({ execution :: WorkflowExecution, workflowType :: WorkflowType, startTimestamp :: Timestamp, closeTimestamp :: Maybe (Timestamp), executionStatus :: ExecutionStatus, closeStatus :: Maybe (CloseStatus), parent :: Maybe (WorkflowExecution), tagList :: Maybe (TagList), cancelRequested :: Maybe (Canceled) } -> { execution :: WorkflowExecution, workflowType :: WorkflowType, startTimestamp :: Timestamp, closeTimestamp :: Maybe (Timestamp), executionStatus :: ExecutionStatus, closeStatus :: Maybe (CloseStatus), parent :: Maybe (WorkflowExecution), tagList :: Maybe (TagList), cancelRequested :: Maybe (Canceled) }) -> WorkflowExecutionInfo
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
  = WorkflowExecutionInfos { executionInfos :: WorkflowExecutionInfoList, nextPageToken :: Maybe (PageToken) }
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
newWorkflowExecutionInfos' :: WorkflowExecutionInfoList -> ({ executionInfos :: WorkflowExecutionInfoList, nextPageToken :: Maybe (PageToken) } -> { executionInfos :: WorkflowExecutionInfoList, nextPageToken :: Maybe (PageToken) }) -> WorkflowExecutionInfos
```

Constructs WorkflowExecutionInfos's fields from required parameters

#### `WorkflowExecutionOpenCounts`

``` purescript
newtype WorkflowExecutionOpenCounts
  = WorkflowExecutionOpenCounts { openActivityTasks :: Count, openDecisionTasks :: OpenDecisionTasksCount, openTimers :: Count, openChildWorkflowExecutions :: Count, openLambdaFunctions :: Maybe (Count) }
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
newWorkflowExecutionOpenCounts' :: Count -> Count -> OpenDecisionTasksCount -> Count -> ({ openActivityTasks :: Count, openDecisionTasks :: OpenDecisionTasksCount, openTimers :: Count, openChildWorkflowExecutions :: Count, openLambdaFunctions :: Maybe (Count) } -> { openActivityTasks :: Count, openDecisionTasks :: OpenDecisionTasksCount, openTimers :: Count, openChildWorkflowExecutions :: Count, openLambdaFunctions :: Maybe (Count) }) -> WorkflowExecutionOpenCounts
```

Constructs WorkflowExecutionOpenCounts's fields from required parameters

#### `WorkflowExecutionSignaledEventAttributes`

``` purescript
newtype WorkflowExecutionSignaledEventAttributes
  = WorkflowExecutionSignaledEventAttributes { signalName :: SignalName, input :: Maybe (Data), externalWorkflowExecution :: Maybe (WorkflowExecution), externalInitiatedEventId :: Maybe (EventId) }
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
newWorkflowExecutionSignaledEventAttributes' :: SignalName -> ({ signalName :: SignalName, input :: Maybe (Data), externalWorkflowExecution :: Maybe (WorkflowExecution), externalInitiatedEventId :: Maybe (EventId) } -> { signalName :: SignalName, input :: Maybe (Data), externalWorkflowExecution :: Maybe (WorkflowExecution), externalInitiatedEventId :: Maybe (EventId) }) -> WorkflowExecutionSignaledEventAttributes
```

Constructs WorkflowExecutionSignaledEventAttributes's fields from required parameters

#### `WorkflowExecutionStartedEventAttributes`

``` purescript
newtype WorkflowExecutionStartedEventAttributes
  = WorkflowExecutionStartedEventAttributes { input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: ChildPolicy, taskList :: TaskList, taskPriority :: Maybe (TaskPriority), workflowType :: WorkflowType, tagList :: Maybe (TagList), continuedExecutionRunId :: Maybe (WorkflowRunIdOptional), parentWorkflowExecution :: Maybe (WorkflowExecution), parentInitiatedEventId :: Maybe (EventId), lambdaRole :: Maybe (Arn) }
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
newWorkflowExecutionStartedEventAttributes' :: ChildPolicy -> TaskList -> WorkflowType -> ({ input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: ChildPolicy, taskList :: TaskList, taskPriority :: Maybe (TaskPriority), workflowType :: WorkflowType, tagList :: Maybe (TagList), continuedExecutionRunId :: Maybe (WorkflowRunIdOptional), parentWorkflowExecution :: Maybe (WorkflowExecution), parentInitiatedEventId :: Maybe (EventId), lambdaRole :: Maybe (Arn) } -> { input :: Maybe (Data), executionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), taskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), childPolicy :: ChildPolicy, taskList :: TaskList, taskPriority :: Maybe (TaskPriority), workflowType :: WorkflowType, tagList :: Maybe (TagList), continuedExecutionRunId :: Maybe (WorkflowRunIdOptional), parentWorkflowExecution :: Maybe (WorkflowExecution), parentInitiatedEventId :: Maybe (EventId), lambdaRole :: Maybe (Arn) }) -> WorkflowExecutionStartedEventAttributes
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
  = WorkflowExecutionTerminatedEventAttributes { reason :: Maybe (TerminateReason), details :: Maybe (Data), childPolicy :: ChildPolicy, cause :: Maybe (WorkflowExecutionTerminatedCause) }
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
newWorkflowExecutionTerminatedEventAttributes' :: ChildPolicy -> ({ reason :: Maybe (TerminateReason), details :: Maybe (Data), childPolicy :: ChildPolicy, cause :: Maybe (WorkflowExecutionTerminatedCause) } -> { reason :: Maybe (TerminateReason), details :: Maybe (Data), childPolicy :: ChildPolicy, cause :: Maybe (WorkflowExecutionTerminatedCause) }) -> WorkflowExecutionTerminatedEventAttributes
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
  = WorkflowTypeConfiguration { defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultChildPolicy :: Maybe (ChildPolicy), defaultLambdaRole :: Maybe (Arn) }
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
newWorkflowTypeConfiguration' :: ({ defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultChildPolicy :: Maybe (ChildPolicy), defaultLambdaRole :: Maybe (Arn) } -> { defaultTaskStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultExecutionStartToCloseTimeout :: Maybe (DurationInSecondsOptional), defaultTaskList :: Maybe (TaskList), defaultTaskPriority :: Maybe (TaskPriority), defaultChildPolicy :: Maybe (ChildPolicy), defaultLambdaRole :: Maybe (Arn) }) -> WorkflowTypeConfiguration
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
  = WorkflowTypeFilter { name :: Name, version :: Maybe (VersionOptional) }
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
newWorkflowTypeFilter' :: Name -> ({ name :: Name, version :: Maybe (VersionOptional) } -> { name :: Name, version :: Maybe (VersionOptional) }) -> WorkflowTypeFilter
```

Constructs WorkflowTypeFilter's fields from required parameters

#### `WorkflowTypeInfo`

``` purescript
newtype WorkflowTypeInfo
  = WorkflowTypeInfo { workflowType :: WorkflowType, status :: RegistrationStatus, description :: Maybe (Description), creationDate :: Timestamp, deprecationDate :: Maybe (Timestamp) }
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
newWorkflowTypeInfo' :: Timestamp -> RegistrationStatus -> WorkflowType -> ({ workflowType :: WorkflowType, status :: RegistrationStatus, description :: Maybe (Description), creationDate :: Timestamp, deprecationDate :: Maybe (Timestamp) } -> { workflowType :: WorkflowType, status :: RegistrationStatus, description :: Maybe (Description), creationDate :: Timestamp, deprecationDate :: Maybe (Timestamp) }) -> WorkflowTypeInfo
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
  = WorkflowTypeInfos { typeInfos :: WorkflowTypeInfoList, nextPageToken :: Maybe (PageToken) }
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
newWorkflowTypeInfos' :: WorkflowTypeInfoList -> ({ typeInfos :: WorkflowTypeInfoList, nextPageToken :: Maybe (PageToken) } -> { typeInfos :: WorkflowTypeInfoList, nextPageToken :: Maybe (PageToken) }) -> WorkflowTypeInfos
```

Constructs WorkflowTypeInfos's fields from required parameters


