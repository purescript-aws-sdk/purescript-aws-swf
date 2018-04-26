
module AWS.SWF.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype ActivityId = ActivityId String
derive instance newtypeActivityId :: Newtype ActivityId _
derive instance repGenericActivityId :: Generic ActivityId _
instance showActivityId :: Show ActivityId where show = genericShow
instance decodeActivityId :: Decode ActivityId where decode = genericDecode options
instance encodeActivityId :: Encode ActivityId where encode = genericEncode options



-- | <p>Unit of work sent to an activity worker.</p>
newtype ActivityTask = ActivityTask 
  { "taskToken" :: (TaskToken)
  , "activityId" :: (ActivityId)
  , "startedEventId" :: (EventId)
  , "workflowExecution" :: (WorkflowExecution)
  , "activityType" :: (ActivityType)
  , "input" :: Maybe (Data)
  }
derive instance newtypeActivityTask :: Newtype ActivityTask _
derive instance repGenericActivityTask :: Generic ActivityTask _
instance showActivityTask :: Show ActivityTask where show = genericShow
instance decodeActivityTask :: Decode ActivityTask where decode = genericDecode options
instance encodeActivityTask :: Encode ActivityTask where encode = genericEncode options

-- | Constructs ActivityTask from required parameters
newActivityTask :: ActivityId -> ActivityType -> EventId -> TaskToken -> WorkflowExecution -> ActivityTask
newActivityTask _activityId _activityType _startedEventId _taskToken _workflowExecution = ActivityTask { "activityId": _activityId, "activityType": _activityType, "startedEventId": _startedEventId, "taskToken": _taskToken, "workflowExecution": _workflowExecution, "input": Nothing }

-- | Constructs ActivityTask's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTask' :: ActivityId -> ActivityType -> EventId -> TaskToken -> WorkflowExecution -> ( { "taskToken" :: (TaskToken) , "activityId" :: (ActivityId) , "startedEventId" :: (EventId) , "workflowExecution" :: (WorkflowExecution) , "activityType" :: (ActivityType) , "input" :: Maybe (Data) } -> {"taskToken" :: (TaskToken) , "activityId" :: (ActivityId) , "startedEventId" :: (EventId) , "workflowExecution" :: (WorkflowExecution) , "activityType" :: (ActivityType) , "input" :: Maybe (Data) } ) -> ActivityTask
newActivityTask' _activityId _activityType _startedEventId _taskToken _workflowExecution customize = (ActivityTask <<< customize) { "activityId": _activityId, "activityType": _activityType, "startedEventId": _startedEventId, "taskToken": _taskToken, "workflowExecution": _workflowExecution, "input": Nothing }



-- | <p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>
newtype ActivityTaskCancelRequestedEventAttributes = ActivityTaskCancelRequestedEventAttributes 
  { "decisionTaskCompletedEventId" :: (EventId)
  , "activityId" :: (ActivityId)
  }
derive instance newtypeActivityTaskCancelRequestedEventAttributes :: Newtype ActivityTaskCancelRequestedEventAttributes _
derive instance repGenericActivityTaskCancelRequestedEventAttributes :: Generic ActivityTaskCancelRequestedEventAttributes _
instance showActivityTaskCancelRequestedEventAttributes :: Show ActivityTaskCancelRequestedEventAttributes where show = genericShow
instance decodeActivityTaskCancelRequestedEventAttributes :: Decode ActivityTaskCancelRequestedEventAttributes where decode = genericDecode options
instance encodeActivityTaskCancelRequestedEventAttributes :: Encode ActivityTaskCancelRequestedEventAttributes where encode = genericEncode options

-- | Constructs ActivityTaskCancelRequestedEventAttributes from required parameters
newActivityTaskCancelRequestedEventAttributes :: ActivityId -> EventId -> ActivityTaskCancelRequestedEventAttributes
newActivityTaskCancelRequestedEventAttributes _activityId _decisionTaskCompletedEventId = ActivityTaskCancelRequestedEventAttributes { "activityId": _activityId, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }

-- | Constructs ActivityTaskCancelRequestedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskCancelRequestedEventAttributes' :: ActivityId -> EventId -> ( { "decisionTaskCompletedEventId" :: (EventId) , "activityId" :: (ActivityId) } -> {"decisionTaskCompletedEventId" :: (EventId) , "activityId" :: (ActivityId) } ) -> ActivityTaskCancelRequestedEventAttributes
newActivityTaskCancelRequestedEventAttributes' _activityId _decisionTaskCompletedEventId customize = (ActivityTaskCancelRequestedEventAttributes <<< customize) { "activityId": _activityId, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }



-- | <p>Provides the details of the <code>ActivityTaskCanceled</code> event.</p>
newtype ActivityTaskCanceledEventAttributes = ActivityTaskCanceledEventAttributes 
  { "details" :: Maybe (Data)
  , "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  , "latestCancelRequestedEventId" :: Maybe (EventId)
  }
derive instance newtypeActivityTaskCanceledEventAttributes :: Newtype ActivityTaskCanceledEventAttributes _
derive instance repGenericActivityTaskCanceledEventAttributes :: Generic ActivityTaskCanceledEventAttributes _
instance showActivityTaskCanceledEventAttributes :: Show ActivityTaskCanceledEventAttributes where show = genericShow
instance decodeActivityTaskCanceledEventAttributes :: Decode ActivityTaskCanceledEventAttributes where decode = genericDecode options
instance encodeActivityTaskCanceledEventAttributes :: Encode ActivityTaskCanceledEventAttributes where encode = genericEncode options

-- | Constructs ActivityTaskCanceledEventAttributes from required parameters
newActivityTaskCanceledEventAttributes :: EventId -> EventId -> ActivityTaskCanceledEventAttributes
newActivityTaskCanceledEventAttributes _scheduledEventId _startedEventId = ActivityTaskCanceledEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "details": Nothing, "latestCancelRequestedEventId": Nothing }

-- | Constructs ActivityTaskCanceledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskCanceledEventAttributes' :: EventId -> EventId -> ( { "details" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "latestCancelRequestedEventId" :: Maybe (EventId) } -> {"details" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "latestCancelRequestedEventId" :: Maybe (EventId) } ) -> ActivityTaskCanceledEventAttributes
newActivityTaskCanceledEventAttributes' _scheduledEventId _startedEventId customize = (ActivityTaskCanceledEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "details": Nothing, "latestCancelRequestedEventId": Nothing }



-- | <p>Provides the details of the <code>ActivityTaskCompleted</code> event.</p>
newtype ActivityTaskCompletedEventAttributes = ActivityTaskCompletedEventAttributes 
  { "result" :: Maybe (Data)
  , "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeActivityTaskCompletedEventAttributes :: Newtype ActivityTaskCompletedEventAttributes _
derive instance repGenericActivityTaskCompletedEventAttributes :: Generic ActivityTaskCompletedEventAttributes _
instance showActivityTaskCompletedEventAttributes :: Show ActivityTaskCompletedEventAttributes where show = genericShow
instance decodeActivityTaskCompletedEventAttributes :: Decode ActivityTaskCompletedEventAttributes where decode = genericDecode options
instance encodeActivityTaskCompletedEventAttributes :: Encode ActivityTaskCompletedEventAttributes where encode = genericEncode options

-- | Constructs ActivityTaskCompletedEventAttributes from required parameters
newActivityTaskCompletedEventAttributes :: EventId -> EventId -> ActivityTaskCompletedEventAttributes
newActivityTaskCompletedEventAttributes _scheduledEventId _startedEventId = ActivityTaskCompletedEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "result": Nothing }

-- | Constructs ActivityTaskCompletedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskCompletedEventAttributes' :: EventId -> EventId -> ( { "result" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"result" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> ActivityTaskCompletedEventAttributes
newActivityTaskCompletedEventAttributes' _scheduledEventId _startedEventId customize = (ActivityTaskCompletedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "result": Nothing }



-- | <p>Provides the details of the <code>ActivityTaskFailed</code> event.</p>
newtype ActivityTaskFailedEventAttributes = ActivityTaskFailedEventAttributes 
  { "reason" :: Maybe (FailureReason)
  , "details" :: Maybe (Data)
  , "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeActivityTaskFailedEventAttributes :: Newtype ActivityTaskFailedEventAttributes _
derive instance repGenericActivityTaskFailedEventAttributes :: Generic ActivityTaskFailedEventAttributes _
instance showActivityTaskFailedEventAttributes :: Show ActivityTaskFailedEventAttributes where show = genericShow
instance decodeActivityTaskFailedEventAttributes :: Decode ActivityTaskFailedEventAttributes where decode = genericDecode options
instance encodeActivityTaskFailedEventAttributes :: Encode ActivityTaskFailedEventAttributes where encode = genericEncode options

-- | Constructs ActivityTaskFailedEventAttributes from required parameters
newActivityTaskFailedEventAttributes :: EventId -> EventId -> ActivityTaskFailedEventAttributes
newActivityTaskFailedEventAttributes _scheduledEventId _startedEventId = ActivityTaskFailedEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "details": Nothing, "reason": Nothing }

-- | Constructs ActivityTaskFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskFailedEventAttributes' :: EventId -> EventId -> ( { "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> ActivityTaskFailedEventAttributes
newActivityTaskFailedEventAttributes' _scheduledEventId _startedEventId customize = (ActivityTaskFailedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "details": Nothing, "reason": Nothing }



-- | <p>Provides the details of the <code>ActivityTaskScheduled</code> event.</p>
newtype ActivityTaskScheduledEventAttributes = ActivityTaskScheduledEventAttributes 
  { "activityType" :: (ActivityType)
  , "activityId" :: (ActivityId)
  , "input" :: Maybe (Data)
  , "control" :: Maybe (Data)
  , "scheduleToStartTimeout" :: Maybe (DurationInSecondsOptional)
  , "scheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "taskList" :: (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "heartbeatTimeout" :: Maybe (DurationInSecondsOptional)
  }
derive instance newtypeActivityTaskScheduledEventAttributes :: Newtype ActivityTaskScheduledEventAttributes _
derive instance repGenericActivityTaskScheduledEventAttributes :: Generic ActivityTaskScheduledEventAttributes _
instance showActivityTaskScheduledEventAttributes :: Show ActivityTaskScheduledEventAttributes where show = genericShow
instance decodeActivityTaskScheduledEventAttributes :: Decode ActivityTaskScheduledEventAttributes where decode = genericDecode options
instance encodeActivityTaskScheduledEventAttributes :: Encode ActivityTaskScheduledEventAttributes where encode = genericEncode options

-- | Constructs ActivityTaskScheduledEventAttributes from required parameters
newActivityTaskScheduledEventAttributes :: ActivityId -> ActivityType -> EventId -> TaskList -> ActivityTaskScheduledEventAttributes
newActivityTaskScheduledEventAttributes _activityId _activityType _decisionTaskCompletedEventId _taskList = ActivityTaskScheduledEventAttributes { "activityId": _activityId, "activityType": _activityType, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "taskList": _taskList, "control": Nothing, "heartbeatTimeout": Nothing, "input": Nothing, "scheduleToCloseTimeout": Nothing, "scheduleToStartTimeout": Nothing, "startToCloseTimeout": Nothing, "taskPriority": Nothing }

-- | Constructs ActivityTaskScheduledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskScheduledEventAttributes' :: ActivityId -> ActivityType -> EventId -> TaskList -> ( { "activityType" :: (ActivityType) , "activityId" :: (ActivityId) , "input" :: Maybe (Data) , "control" :: Maybe (Data) , "scheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "scheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "decisionTaskCompletedEventId" :: (EventId) , "heartbeatTimeout" :: Maybe (DurationInSecondsOptional) } -> {"activityType" :: (ActivityType) , "activityId" :: (ActivityId) , "input" :: Maybe (Data) , "control" :: Maybe (Data) , "scheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "scheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "decisionTaskCompletedEventId" :: (EventId) , "heartbeatTimeout" :: Maybe (DurationInSecondsOptional) } ) -> ActivityTaskScheduledEventAttributes
newActivityTaskScheduledEventAttributes' _activityId _activityType _decisionTaskCompletedEventId _taskList customize = (ActivityTaskScheduledEventAttributes <<< customize) { "activityId": _activityId, "activityType": _activityType, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "taskList": _taskList, "control": Nothing, "heartbeatTimeout": Nothing, "input": Nothing, "scheduleToCloseTimeout": Nothing, "scheduleToStartTimeout": Nothing, "startToCloseTimeout": Nothing, "taskPriority": Nothing }



-- | <p>Provides the details of the <code>ActivityTaskStarted</code> event.</p>
newtype ActivityTaskStartedEventAttributes = ActivityTaskStartedEventAttributes 
  { "identity" :: Maybe (Identity)
  , "scheduledEventId" :: (EventId)
  }
derive instance newtypeActivityTaskStartedEventAttributes :: Newtype ActivityTaskStartedEventAttributes _
derive instance repGenericActivityTaskStartedEventAttributes :: Generic ActivityTaskStartedEventAttributes _
instance showActivityTaskStartedEventAttributes :: Show ActivityTaskStartedEventAttributes where show = genericShow
instance decodeActivityTaskStartedEventAttributes :: Decode ActivityTaskStartedEventAttributes where decode = genericDecode options
instance encodeActivityTaskStartedEventAttributes :: Encode ActivityTaskStartedEventAttributes where encode = genericEncode options

-- | Constructs ActivityTaskStartedEventAttributes from required parameters
newActivityTaskStartedEventAttributes :: EventId -> ActivityTaskStartedEventAttributes
newActivityTaskStartedEventAttributes _scheduledEventId = ActivityTaskStartedEventAttributes { "scheduledEventId": _scheduledEventId, "identity": Nothing }

-- | Constructs ActivityTaskStartedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskStartedEventAttributes' :: EventId -> ( { "identity" :: Maybe (Identity) , "scheduledEventId" :: (EventId) } -> {"identity" :: Maybe (Identity) , "scheduledEventId" :: (EventId) } ) -> ActivityTaskStartedEventAttributes
newActivityTaskStartedEventAttributes' _scheduledEventId customize = (ActivityTaskStartedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "identity": Nothing }



-- | <p>Status information about an activity task.</p>
newtype ActivityTaskStatus = ActivityTaskStatus 
  { "cancelRequested" :: (Canceled)
  }
derive instance newtypeActivityTaskStatus :: Newtype ActivityTaskStatus _
derive instance repGenericActivityTaskStatus :: Generic ActivityTaskStatus _
instance showActivityTaskStatus :: Show ActivityTaskStatus where show = genericShow
instance decodeActivityTaskStatus :: Decode ActivityTaskStatus where decode = genericDecode options
instance encodeActivityTaskStatus :: Encode ActivityTaskStatus where encode = genericEncode options

-- | Constructs ActivityTaskStatus from required parameters
newActivityTaskStatus :: Canceled -> ActivityTaskStatus
newActivityTaskStatus _cancelRequested = ActivityTaskStatus { "cancelRequested": _cancelRequested }

-- | Constructs ActivityTaskStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskStatus' :: Canceled -> ( { "cancelRequested" :: (Canceled) } -> {"cancelRequested" :: (Canceled) } ) -> ActivityTaskStatus
newActivityTaskStatus' _cancelRequested customize = (ActivityTaskStatus <<< customize) { "cancelRequested": _cancelRequested }



-- | <p>Provides the details of the <code>ActivityTaskTimedOut</code> event.</p>
newtype ActivityTaskTimedOutEventAttributes = ActivityTaskTimedOutEventAttributes 
  { "timeoutType" :: (ActivityTaskTimeoutType)
  , "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  , "details" :: Maybe (LimitedData)
  }
derive instance newtypeActivityTaskTimedOutEventAttributes :: Newtype ActivityTaskTimedOutEventAttributes _
derive instance repGenericActivityTaskTimedOutEventAttributes :: Generic ActivityTaskTimedOutEventAttributes _
instance showActivityTaskTimedOutEventAttributes :: Show ActivityTaskTimedOutEventAttributes where show = genericShow
instance decodeActivityTaskTimedOutEventAttributes :: Decode ActivityTaskTimedOutEventAttributes where decode = genericDecode options
instance encodeActivityTaskTimedOutEventAttributes :: Encode ActivityTaskTimedOutEventAttributes where encode = genericEncode options

-- | Constructs ActivityTaskTimedOutEventAttributes from required parameters
newActivityTaskTimedOutEventAttributes :: EventId -> EventId -> ActivityTaskTimeoutType -> ActivityTaskTimedOutEventAttributes
newActivityTaskTimedOutEventAttributes _scheduledEventId _startedEventId _timeoutType = ActivityTaskTimedOutEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "timeoutType": _timeoutType, "details": Nothing }

-- | Constructs ActivityTaskTimedOutEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTaskTimedOutEventAttributes' :: EventId -> EventId -> ActivityTaskTimeoutType -> ( { "timeoutType" :: (ActivityTaskTimeoutType) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "details" :: Maybe (LimitedData) } -> {"timeoutType" :: (ActivityTaskTimeoutType) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "details" :: Maybe (LimitedData) } ) -> ActivityTaskTimedOutEventAttributes
newActivityTaskTimedOutEventAttributes' _scheduledEventId _startedEventId _timeoutType customize = (ActivityTaskTimedOutEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "timeoutType": _timeoutType, "details": Nothing }



newtype ActivityTaskTimeoutType = ActivityTaskTimeoutType String
derive instance newtypeActivityTaskTimeoutType :: Newtype ActivityTaskTimeoutType _
derive instance repGenericActivityTaskTimeoutType :: Generic ActivityTaskTimeoutType _
instance showActivityTaskTimeoutType :: Show ActivityTaskTimeoutType where show = genericShow
instance decodeActivityTaskTimeoutType :: Decode ActivityTaskTimeoutType where decode = genericDecode options
instance encodeActivityTaskTimeoutType :: Encode ActivityTaskTimeoutType where encode = genericEncode options



-- | <p>Represents an activity type.</p>
newtype ActivityType = ActivityType 
  { "name" :: (Name)
  , "version" :: (Version)
  }
derive instance newtypeActivityType :: Newtype ActivityType _
derive instance repGenericActivityType :: Generic ActivityType _
instance showActivityType :: Show ActivityType where show = genericShow
instance decodeActivityType :: Decode ActivityType where decode = genericDecode options
instance encodeActivityType :: Encode ActivityType where encode = genericEncode options

-- | Constructs ActivityType from required parameters
newActivityType :: Name -> Version -> ActivityType
newActivityType _name _version = ActivityType { "name": _name, "version": _version }

-- | Constructs ActivityType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityType' :: Name -> Version -> ( { "name" :: (Name) , "version" :: (Version) } -> {"name" :: (Name) , "version" :: (Version) } ) -> ActivityType
newActivityType' _name _version customize = (ActivityType <<< customize) { "name": _name, "version": _version }



-- | <p>Configuration settings registered with the activity type.</p>
newtype ActivityTypeConfiguration = ActivityTypeConfiguration 
  { "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskHeartbeatTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskList" :: Maybe (TaskList)
  , "defaultTaskPriority" :: Maybe (TaskPriority)
  , "defaultTaskScheduleToStartTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskScheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  }
derive instance newtypeActivityTypeConfiguration :: Newtype ActivityTypeConfiguration _
derive instance repGenericActivityTypeConfiguration :: Generic ActivityTypeConfiguration _
instance showActivityTypeConfiguration :: Show ActivityTypeConfiguration where show = genericShow
instance decodeActivityTypeConfiguration :: Decode ActivityTypeConfiguration where decode = genericDecode options
instance encodeActivityTypeConfiguration :: Encode ActivityTypeConfiguration where encode = genericEncode options

-- | Constructs ActivityTypeConfiguration from required parameters
newActivityTypeConfiguration :: ActivityTypeConfiguration
newActivityTypeConfiguration  = ActivityTypeConfiguration { "defaultTaskHeartbeatTimeout": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskScheduleToCloseTimeout": Nothing, "defaultTaskScheduleToStartTimeout": Nothing, "defaultTaskStartToCloseTimeout": Nothing }

-- | Constructs ActivityTypeConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTypeConfiguration' :: ( { "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskHeartbeatTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultTaskScheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskScheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) } -> {"defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskHeartbeatTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultTaskScheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskScheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) } ) -> ActivityTypeConfiguration
newActivityTypeConfiguration'  customize = (ActivityTypeConfiguration <<< customize) { "defaultTaskHeartbeatTimeout": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskScheduleToCloseTimeout": Nothing, "defaultTaskScheduleToStartTimeout": Nothing, "defaultTaskStartToCloseTimeout": Nothing }



-- | <p>Detailed information about an activity type.</p>
newtype ActivityTypeDetail = ActivityTypeDetail 
  { "typeInfo" :: (ActivityTypeInfo)
  , "configuration" :: (ActivityTypeConfiguration)
  }
derive instance newtypeActivityTypeDetail :: Newtype ActivityTypeDetail _
derive instance repGenericActivityTypeDetail :: Generic ActivityTypeDetail _
instance showActivityTypeDetail :: Show ActivityTypeDetail where show = genericShow
instance decodeActivityTypeDetail :: Decode ActivityTypeDetail where decode = genericDecode options
instance encodeActivityTypeDetail :: Encode ActivityTypeDetail where encode = genericEncode options

-- | Constructs ActivityTypeDetail from required parameters
newActivityTypeDetail :: ActivityTypeConfiguration -> ActivityTypeInfo -> ActivityTypeDetail
newActivityTypeDetail _configuration _typeInfo = ActivityTypeDetail { "configuration": _configuration, "typeInfo": _typeInfo }

-- | Constructs ActivityTypeDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTypeDetail' :: ActivityTypeConfiguration -> ActivityTypeInfo -> ( { "typeInfo" :: (ActivityTypeInfo) , "configuration" :: (ActivityTypeConfiguration) } -> {"typeInfo" :: (ActivityTypeInfo) , "configuration" :: (ActivityTypeConfiguration) } ) -> ActivityTypeDetail
newActivityTypeDetail' _configuration _typeInfo customize = (ActivityTypeDetail <<< customize) { "configuration": _configuration, "typeInfo": _typeInfo }



-- | <p>Detailed information about an activity type.</p>
newtype ActivityTypeInfo = ActivityTypeInfo 
  { "activityType" :: (ActivityType)
  , "status" :: (RegistrationStatus)
  , "description" :: Maybe (Description)
  , "creationDate" :: (Types.Timestamp)
  , "deprecationDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeActivityTypeInfo :: Newtype ActivityTypeInfo _
derive instance repGenericActivityTypeInfo :: Generic ActivityTypeInfo _
instance showActivityTypeInfo :: Show ActivityTypeInfo where show = genericShow
instance decodeActivityTypeInfo :: Decode ActivityTypeInfo where decode = genericDecode options
instance encodeActivityTypeInfo :: Encode ActivityTypeInfo where encode = genericEncode options

-- | Constructs ActivityTypeInfo from required parameters
newActivityTypeInfo :: ActivityType -> Types.Timestamp -> RegistrationStatus -> ActivityTypeInfo
newActivityTypeInfo _activityType _creationDate _status = ActivityTypeInfo { "activityType": _activityType, "creationDate": _creationDate, "status": _status, "deprecationDate": Nothing, "description": Nothing }

-- | Constructs ActivityTypeInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTypeInfo' :: ActivityType -> Types.Timestamp -> RegistrationStatus -> ( { "activityType" :: (ActivityType) , "status" :: (RegistrationStatus) , "description" :: Maybe (Description) , "creationDate" :: (Types.Timestamp) , "deprecationDate" :: Maybe (Types.Timestamp) } -> {"activityType" :: (ActivityType) , "status" :: (RegistrationStatus) , "description" :: Maybe (Description) , "creationDate" :: (Types.Timestamp) , "deprecationDate" :: Maybe (Types.Timestamp) } ) -> ActivityTypeInfo
newActivityTypeInfo' _activityType _creationDate _status customize = (ActivityTypeInfo <<< customize) { "activityType": _activityType, "creationDate": _creationDate, "status": _status, "deprecationDate": Nothing, "description": Nothing }



newtype ActivityTypeInfoList = ActivityTypeInfoList (Array ActivityTypeInfo)
derive instance newtypeActivityTypeInfoList :: Newtype ActivityTypeInfoList _
derive instance repGenericActivityTypeInfoList :: Generic ActivityTypeInfoList _
instance showActivityTypeInfoList :: Show ActivityTypeInfoList where show = genericShow
instance decodeActivityTypeInfoList :: Decode ActivityTypeInfoList where decode = genericDecode options
instance encodeActivityTypeInfoList :: Encode ActivityTypeInfoList where encode = genericEncode options



-- | <p>Contains a paginated list of activity type information structures.</p>
newtype ActivityTypeInfos = ActivityTypeInfos 
  { "typeInfos" :: (ActivityTypeInfoList)
  , "nextPageToken" :: Maybe (PageToken)
  }
derive instance newtypeActivityTypeInfos :: Newtype ActivityTypeInfos _
derive instance repGenericActivityTypeInfos :: Generic ActivityTypeInfos _
instance showActivityTypeInfos :: Show ActivityTypeInfos where show = genericShow
instance decodeActivityTypeInfos :: Decode ActivityTypeInfos where decode = genericDecode options
instance encodeActivityTypeInfos :: Encode ActivityTypeInfos where encode = genericEncode options

-- | Constructs ActivityTypeInfos from required parameters
newActivityTypeInfos :: ActivityTypeInfoList -> ActivityTypeInfos
newActivityTypeInfos _typeInfos = ActivityTypeInfos { "typeInfos": _typeInfos, "nextPageToken": Nothing }

-- | Constructs ActivityTypeInfos's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTypeInfos' :: ActivityTypeInfoList -> ( { "typeInfos" :: (ActivityTypeInfoList) , "nextPageToken" :: Maybe (PageToken) } -> {"typeInfos" :: (ActivityTypeInfoList) , "nextPageToken" :: Maybe (PageToken) } ) -> ActivityTypeInfos
newActivityTypeInfos' _typeInfos customize = (ActivityTypeInfos <<< customize) { "typeInfos": _typeInfos, "nextPageToken": Nothing }



newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where show = genericShow
instance decodeArn :: Decode Arn where decode = genericDecode options
instance encodeArn :: Encode Arn where encode = genericEncode options



-- | <p>Provides the details of the <code>CancelTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype CancelTimerDecisionAttributes = CancelTimerDecisionAttributes 
  { "timerId" :: (TimerId)
  }
derive instance newtypeCancelTimerDecisionAttributes :: Newtype CancelTimerDecisionAttributes _
derive instance repGenericCancelTimerDecisionAttributes :: Generic CancelTimerDecisionAttributes _
instance showCancelTimerDecisionAttributes :: Show CancelTimerDecisionAttributes where show = genericShow
instance decodeCancelTimerDecisionAttributes :: Decode CancelTimerDecisionAttributes where decode = genericDecode options
instance encodeCancelTimerDecisionAttributes :: Encode CancelTimerDecisionAttributes where encode = genericEncode options

-- | Constructs CancelTimerDecisionAttributes from required parameters
newCancelTimerDecisionAttributes :: TimerId -> CancelTimerDecisionAttributes
newCancelTimerDecisionAttributes _timerId = CancelTimerDecisionAttributes { "timerId": _timerId }

-- | Constructs CancelTimerDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelTimerDecisionAttributes' :: TimerId -> ( { "timerId" :: (TimerId) } -> {"timerId" :: (TimerId) } ) -> CancelTimerDecisionAttributes
newCancelTimerDecisionAttributes' _timerId customize = (CancelTimerDecisionAttributes <<< customize) { "timerId": _timerId }



newtype CancelTimerFailedCause = CancelTimerFailedCause String
derive instance newtypeCancelTimerFailedCause :: Newtype CancelTimerFailedCause _
derive instance repGenericCancelTimerFailedCause :: Generic CancelTimerFailedCause _
instance showCancelTimerFailedCause :: Show CancelTimerFailedCause where show = genericShow
instance decodeCancelTimerFailedCause :: Decode CancelTimerFailedCause where decode = genericDecode options
instance encodeCancelTimerFailedCause :: Encode CancelTimerFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>CancelTimerFailed</code> event.</p>
newtype CancelTimerFailedEventAttributes = CancelTimerFailedEventAttributes 
  { "timerId" :: (TimerId)
  , "cause" :: (CancelTimerFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeCancelTimerFailedEventAttributes :: Newtype CancelTimerFailedEventAttributes _
derive instance repGenericCancelTimerFailedEventAttributes :: Generic CancelTimerFailedEventAttributes _
instance showCancelTimerFailedEventAttributes :: Show CancelTimerFailedEventAttributes where show = genericShow
instance decodeCancelTimerFailedEventAttributes :: Decode CancelTimerFailedEventAttributes where decode = genericDecode options
instance encodeCancelTimerFailedEventAttributes :: Encode CancelTimerFailedEventAttributes where encode = genericEncode options

-- | Constructs CancelTimerFailedEventAttributes from required parameters
newCancelTimerFailedEventAttributes :: CancelTimerFailedCause -> EventId -> TimerId -> CancelTimerFailedEventAttributes
newCancelTimerFailedEventAttributes _cause _decisionTaskCompletedEventId _timerId = CancelTimerFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "timerId": _timerId }

-- | Constructs CancelTimerFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelTimerFailedEventAttributes' :: CancelTimerFailedCause -> EventId -> TimerId -> ( { "timerId" :: (TimerId) , "cause" :: (CancelTimerFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"timerId" :: (TimerId) , "cause" :: (CancelTimerFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> CancelTimerFailedEventAttributes
newCancelTimerFailedEventAttributes' _cause _decisionTaskCompletedEventId _timerId customize = (CancelTimerFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "timerId": _timerId }



-- | <p>Provides the details of the <code>CancelWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype CancelWorkflowExecutionDecisionAttributes = CancelWorkflowExecutionDecisionAttributes 
  { "details" :: Maybe (Data)
  }
derive instance newtypeCancelWorkflowExecutionDecisionAttributes :: Newtype CancelWorkflowExecutionDecisionAttributes _
derive instance repGenericCancelWorkflowExecutionDecisionAttributes :: Generic CancelWorkflowExecutionDecisionAttributes _
instance showCancelWorkflowExecutionDecisionAttributes :: Show CancelWorkflowExecutionDecisionAttributes where show = genericShow
instance decodeCancelWorkflowExecutionDecisionAttributes :: Decode CancelWorkflowExecutionDecisionAttributes where decode = genericDecode options
instance encodeCancelWorkflowExecutionDecisionAttributes :: Encode CancelWorkflowExecutionDecisionAttributes where encode = genericEncode options

-- | Constructs CancelWorkflowExecutionDecisionAttributes from required parameters
newCancelWorkflowExecutionDecisionAttributes :: CancelWorkflowExecutionDecisionAttributes
newCancelWorkflowExecutionDecisionAttributes  = CancelWorkflowExecutionDecisionAttributes { "details": Nothing }

-- | Constructs CancelWorkflowExecutionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelWorkflowExecutionDecisionAttributes' :: ( { "details" :: Maybe (Data) } -> {"details" :: Maybe (Data) } ) -> CancelWorkflowExecutionDecisionAttributes
newCancelWorkflowExecutionDecisionAttributes'  customize = (CancelWorkflowExecutionDecisionAttributes <<< customize) { "details": Nothing }



newtype CancelWorkflowExecutionFailedCause = CancelWorkflowExecutionFailedCause String
derive instance newtypeCancelWorkflowExecutionFailedCause :: Newtype CancelWorkflowExecutionFailedCause _
derive instance repGenericCancelWorkflowExecutionFailedCause :: Generic CancelWorkflowExecutionFailedCause _
instance showCancelWorkflowExecutionFailedCause :: Show CancelWorkflowExecutionFailedCause where show = genericShow
instance decodeCancelWorkflowExecutionFailedCause :: Decode CancelWorkflowExecutionFailedCause where decode = genericDecode options
instance encodeCancelWorkflowExecutionFailedCause :: Encode CancelWorkflowExecutionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>CancelWorkflowExecutionFailed</code> event.</p>
newtype CancelWorkflowExecutionFailedEventAttributes = CancelWorkflowExecutionFailedEventAttributes 
  { "cause" :: (CancelWorkflowExecutionFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeCancelWorkflowExecutionFailedEventAttributes :: Newtype CancelWorkflowExecutionFailedEventAttributes _
derive instance repGenericCancelWorkflowExecutionFailedEventAttributes :: Generic CancelWorkflowExecutionFailedEventAttributes _
instance showCancelWorkflowExecutionFailedEventAttributes :: Show CancelWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeCancelWorkflowExecutionFailedEventAttributes :: Decode CancelWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeCancelWorkflowExecutionFailedEventAttributes :: Encode CancelWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs CancelWorkflowExecutionFailedEventAttributes from required parameters
newCancelWorkflowExecutionFailedEventAttributes :: CancelWorkflowExecutionFailedCause -> EventId -> CancelWorkflowExecutionFailedEventAttributes
newCancelWorkflowExecutionFailedEventAttributes _cause _decisionTaskCompletedEventId = CancelWorkflowExecutionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }

-- | Constructs CancelWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelWorkflowExecutionFailedEventAttributes' :: CancelWorkflowExecutionFailedCause -> EventId -> ( { "cause" :: (CancelWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"cause" :: (CancelWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> CancelWorkflowExecutionFailedEventAttributes
newCancelWorkflowExecutionFailedEventAttributes' _cause _decisionTaskCompletedEventId customize = (CancelWorkflowExecutionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }



newtype Canceled = Canceled Boolean
derive instance newtypeCanceled :: Newtype Canceled _
derive instance repGenericCanceled :: Generic Canceled _
instance showCanceled :: Show Canceled where show = genericShow
instance decodeCanceled :: Decode Canceled where decode = genericDecode options
instance encodeCanceled :: Encode Canceled where encode = genericEncode options



newtype CauseMessage = CauseMessage String
derive instance newtypeCauseMessage :: Newtype CauseMessage _
derive instance repGenericCauseMessage :: Generic CauseMessage _
instance showCauseMessage :: Show CauseMessage where show = genericShow
instance decodeCauseMessage :: Decode CauseMessage where decode = genericDecode options
instance encodeCauseMessage :: Encode CauseMessage where encode = genericEncode options



newtype ChildPolicy = ChildPolicy String
derive instance newtypeChildPolicy :: Newtype ChildPolicy _
derive instance repGenericChildPolicy :: Generic ChildPolicy _
instance showChildPolicy :: Show ChildPolicy where show = genericShow
instance decodeChildPolicy :: Decode ChildPolicy where decode = genericDecode options
instance encodeChildPolicy :: Encode ChildPolicy where encode = genericEncode options



-- | <p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>
newtype ChildWorkflowExecutionCanceledEventAttributes = ChildWorkflowExecutionCanceledEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "details" :: Maybe (Data)
  , "initiatedEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeChildWorkflowExecutionCanceledEventAttributes :: Newtype ChildWorkflowExecutionCanceledEventAttributes _
derive instance repGenericChildWorkflowExecutionCanceledEventAttributes :: Generic ChildWorkflowExecutionCanceledEventAttributes _
instance showChildWorkflowExecutionCanceledEventAttributes :: Show ChildWorkflowExecutionCanceledEventAttributes where show = genericShow
instance decodeChildWorkflowExecutionCanceledEventAttributes :: Decode ChildWorkflowExecutionCanceledEventAttributes where decode = genericDecode options
instance encodeChildWorkflowExecutionCanceledEventAttributes :: Encode ChildWorkflowExecutionCanceledEventAttributes where encode = genericEncode options

-- | Constructs ChildWorkflowExecutionCanceledEventAttributes from required parameters
newChildWorkflowExecutionCanceledEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionCanceledEventAttributes
newChildWorkflowExecutionCanceledEventAttributes _initiatedEventId _startedEventId _workflowExecution _workflowType = ChildWorkflowExecutionCanceledEventAttributes { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "details": Nothing }

-- | Constructs ChildWorkflowExecutionCanceledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildWorkflowExecutionCanceledEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ( { "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "details" :: Maybe (Data) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "details" :: Maybe (Data) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> ChildWorkflowExecutionCanceledEventAttributes
newChildWorkflowExecutionCanceledEventAttributes' _initiatedEventId _startedEventId _workflowExecution _workflowType customize = (ChildWorkflowExecutionCanceledEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "details": Nothing }



-- | <p>Provides the details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>
newtype ChildWorkflowExecutionCompletedEventAttributes = ChildWorkflowExecutionCompletedEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "result" :: Maybe (Data)
  , "initiatedEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeChildWorkflowExecutionCompletedEventAttributes :: Newtype ChildWorkflowExecutionCompletedEventAttributes _
derive instance repGenericChildWorkflowExecutionCompletedEventAttributes :: Generic ChildWorkflowExecutionCompletedEventAttributes _
instance showChildWorkflowExecutionCompletedEventAttributes :: Show ChildWorkflowExecutionCompletedEventAttributes where show = genericShow
instance decodeChildWorkflowExecutionCompletedEventAttributes :: Decode ChildWorkflowExecutionCompletedEventAttributes where decode = genericDecode options
instance encodeChildWorkflowExecutionCompletedEventAttributes :: Encode ChildWorkflowExecutionCompletedEventAttributes where encode = genericEncode options

-- | Constructs ChildWorkflowExecutionCompletedEventAttributes from required parameters
newChildWorkflowExecutionCompletedEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionCompletedEventAttributes
newChildWorkflowExecutionCompletedEventAttributes _initiatedEventId _startedEventId _workflowExecution _workflowType = ChildWorkflowExecutionCompletedEventAttributes { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "result": Nothing }

-- | Constructs ChildWorkflowExecutionCompletedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildWorkflowExecutionCompletedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ( { "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "result" :: Maybe (Data) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "result" :: Maybe (Data) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> ChildWorkflowExecutionCompletedEventAttributes
newChildWorkflowExecutionCompletedEventAttributes' _initiatedEventId _startedEventId _workflowExecution _workflowType customize = (ChildWorkflowExecutionCompletedEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "result": Nothing }



-- | <p>Provides the details of the <code>ChildWorkflowExecutionFailed</code> event.</p>
newtype ChildWorkflowExecutionFailedEventAttributes = ChildWorkflowExecutionFailedEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "reason" :: Maybe (FailureReason)
  , "details" :: Maybe (Data)
  , "initiatedEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeChildWorkflowExecutionFailedEventAttributes :: Newtype ChildWorkflowExecutionFailedEventAttributes _
derive instance repGenericChildWorkflowExecutionFailedEventAttributes :: Generic ChildWorkflowExecutionFailedEventAttributes _
instance showChildWorkflowExecutionFailedEventAttributes :: Show ChildWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeChildWorkflowExecutionFailedEventAttributes :: Decode ChildWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeChildWorkflowExecutionFailedEventAttributes :: Encode ChildWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs ChildWorkflowExecutionFailedEventAttributes from required parameters
newChildWorkflowExecutionFailedEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionFailedEventAttributes
newChildWorkflowExecutionFailedEventAttributes _initiatedEventId _startedEventId _workflowExecution _workflowType = ChildWorkflowExecutionFailedEventAttributes { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "details": Nothing, "reason": Nothing }

-- | Constructs ChildWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildWorkflowExecutionFailedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ( { "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> ChildWorkflowExecutionFailedEventAttributes
newChildWorkflowExecutionFailedEventAttributes' _initiatedEventId _startedEventId _workflowExecution _workflowType customize = (ChildWorkflowExecutionFailedEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "details": Nothing, "reason": Nothing }



-- | <p>Provides the details of the <code>ChildWorkflowExecutionStarted</code> event.</p>
newtype ChildWorkflowExecutionStartedEventAttributes = ChildWorkflowExecutionStartedEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "initiatedEventId" :: (EventId)
  }
derive instance newtypeChildWorkflowExecutionStartedEventAttributes :: Newtype ChildWorkflowExecutionStartedEventAttributes _
derive instance repGenericChildWorkflowExecutionStartedEventAttributes :: Generic ChildWorkflowExecutionStartedEventAttributes _
instance showChildWorkflowExecutionStartedEventAttributes :: Show ChildWorkflowExecutionStartedEventAttributes where show = genericShow
instance decodeChildWorkflowExecutionStartedEventAttributes :: Decode ChildWorkflowExecutionStartedEventAttributes where decode = genericDecode options
instance encodeChildWorkflowExecutionStartedEventAttributes :: Encode ChildWorkflowExecutionStartedEventAttributes where encode = genericEncode options

-- | Constructs ChildWorkflowExecutionStartedEventAttributes from required parameters
newChildWorkflowExecutionStartedEventAttributes :: EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionStartedEventAttributes
newChildWorkflowExecutionStartedEventAttributes _initiatedEventId _workflowExecution _workflowType = ChildWorkflowExecutionStartedEventAttributes { "initiatedEventId": _initiatedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType }

-- | Constructs ChildWorkflowExecutionStartedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildWorkflowExecutionStartedEventAttributes' :: EventId -> WorkflowExecution -> WorkflowType -> ( { "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "initiatedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "initiatedEventId" :: (EventId) } ) -> ChildWorkflowExecutionStartedEventAttributes
newChildWorkflowExecutionStartedEventAttributes' _initiatedEventId _workflowExecution _workflowType customize = (ChildWorkflowExecutionStartedEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType }



-- | <p>Provides the details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>
newtype ChildWorkflowExecutionTerminatedEventAttributes = ChildWorkflowExecutionTerminatedEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "initiatedEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeChildWorkflowExecutionTerminatedEventAttributes :: Newtype ChildWorkflowExecutionTerminatedEventAttributes _
derive instance repGenericChildWorkflowExecutionTerminatedEventAttributes :: Generic ChildWorkflowExecutionTerminatedEventAttributes _
instance showChildWorkflowExecutionTerminatedEventAttributes :: Show ChildWorkflowExecutionTerminatedEventAttributes where show = genericShow
instance decodeChildWorkflowExecutionTerminatedEventAttributes :: Decode ChildWorkflowExecutionTerminatedEventAttributes where decode = genericDecode options
instance encodeChildWorkflowExecutionTerminatedEventAttributes :: Encode ChildWorkflowExecutionTerminatedEventAttributes where encode = genericEncode options

-- | Constructs ChildWorkflowExecutionTerminatedEventAttributes from required parameters
newChildWorkflowExecutionTerminatedEventAttributes :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionTerminatedEventAttributes
newChildWorkflowExecutionTerminatedEventAttributes _initiatedEventId _startedEventId _workflowExecution _workflowType = ChildWorkflowExecutionTerminatedEventAttributes { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType }

-- | Constructs ChildWorkflowExecutionTerminatedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildWorkflowExecutionTerminatedEventAttributes' :: EventId -> EventId -> WorkflowExecution -> WorkflowType -> ( { "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> ChildWorkflowExecutionTerminatedEventAttributes
newChildWorkflowExecutionTerminatedEventAttributes' _initiatedEventId _startedEventId _workflowExecution _workflowType customize = (ChildWorkflowExecutionTerminatedEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "workflowExecution": _workflowExecution, "workflowType": _workflowType }



-- | <p>Provides the details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>
newtype ChildWorkflowExecutionTimedOutEventAttributes = ChildWorkflowExecutionTimedOutEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "timeoutType" :: (WorkflowExecutionTimeoutType)
  , "initiatedEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeChildWorkflowExecutionTimedOutEventAttributes :: Newtype ChildWorkflowExecutionTimedOutEventAttributes _
derive instance repGenericChildWorkflowExecutionTimedOutEventAttributes :: Generic ChildWorkflowExecutionTimedOutEventAttributes _
instance showChildWorkflowExecutionTimedOutEventAttributes :: Show ChildWorkflowExecutionTimedOutEventAttributes where show = genericShow
instance decodeChildWorkflowExecutionTimedOutEventAttributes :: Decode ChildWorkflowExecutionTimedOutEventAttributes where decode = genericDecode options
instance encodeChildWorkflowExecutionTimedOutEventAttributes :: Encode ChildWorkflowExecutionTimedOutEventAttributes where encode = genericEncode options

-- | Constructs ChildWorkflowExecutionTimedOutEventAttributes from required parameters
newChildWorkflowExecutionTimedOutEventAttributes :: EventId -> EventId -> WorkflowExecutionTimeoutType -> WorkflowExecution -> WorkflowType -> ChildWorkflowExecutionTimedOutEventAttributes
newChildWorkflowExecutionTimedOutEventAttributes _initiatedEventId _startedEventId _timeoutType _workflowExecution _workflowType = ChildWorkflowExecutionTimedOutEventAttributes { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "timeoutType": _timeoutType, "workflowExecution": _workflowExecution, "workflowType": _workflowType }

-- | Constructs ChildWorkflowExecutionTimedOutEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildWorkflowExecutionTimedOutEventAttributes' :: EventId -> EventId -> WorkflowExecutionTimeoutType -> WorkflowExecution -> WorkflowType -> ( { "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "timeoutType" :: (WorkflowExecutionTimeoutType) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "timeoutType" :: (WorkflowExecutionTimeoutType) , "initiatedEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> ChildWorkflowExecutionTimedOutEventAttributes
newChildWorkflowExecutionTimedOutEventAttributes' _initiatedEventId _startedEventId _timeoutType _workflowExecution _workflowType customize = (ChildWorkflowExecutionTimedOutEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "startedEventId": _startedEventId, "timeoutType": _timeoutType, "workflowExecution": _workflowExecution, "workflowType": _workflowType }



newtype CloseStatus = CloseStatus String
derive instance newtypeCloseStatus :: Newtype CloseStatus _
derive instance repGenericCloseStatus :: Generic CloseStatus _
instance showCloseStatus :: Show CloseStatus where show = genericShow
instance decodeCloseStatus :: Decode CloseStatus where decode = genericDecode options
instance encodeCloseStatus :: Encode CloseStatus where encode = genericEncode options



-- | <p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>
newtype CloseStatusFilter = CloseStatusFilter 
  { "status" :: (CloseStatus)
  }
derive instance newtypeCloseStatusFilter :: Newtype CloseStatusFilter _
derive instance repGenericCloseStatusFilter :: Generic CloseStatusFilter _
instance showCloseStatusFilter :: Show CloseStatusFilter where show = genericShow
instance decodeCloseStatusFilter :: Decode CloseStatusFilter where decode = genericDecode options
instance encodeCloseStatusFilter :: Encode CloseStatusFilter where encode = genericEncode options

-- | Constructs CloseStatusFilter from required parameters
newCloseStatusFilter :: CloseStatus -> CloseStatusFilter
newCloseStatusFilter _status = CloseStatusFilter { "status": _status }

-- | Constructs CloseStatusFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloseStatusFilter' :: CloseStatus -> ( { "status" :: (CloseStatus) } -> {"status" :: (CloseStatus) } ) -> CloseStatusFilter
newCloseStatusFilter' _status customize = (CloseStatusFilter <<< customize) { "status": _status }



-- | <p>Provides the details of the <code>CompleteWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype CompleteWorkflowExecutionDecisionAttributes = CompleteWorkflowExecutionDecisionAttributes 
  { "result" :: Maybe (Data)
  }
derive instance newtypeCompleteWorkflowExecutionDecisionAttributes :: Newtype CompleteWorkflowExecutionDecisionAttributes _
derive instance repGenericCompleteWorkflowExecutionDecisionAttributes :: Generic CompleteWorkflowExecutionDecisionAttributes _
instance showCompleteWorkflowExecutionDecisionAttributes :: Show CompleteWorkflowExecutionDecisionAttributes where show = genericShow
instance decodeCompleteWorkflowExecutionDecisionAttributes :: Decode CompleteWorkflowExecutionDecisionAttributes where decode = genericDecode options
instance encodeCompleteWorkflowExecutionDecisionAttributes :: Encode CompleteWorkflowExecutionDecisionAttributes where encode = genericEncode options

-- | Constructs CompleteWorkflowExecutionDecisionAttributes from required parameters
newCompleteWorkflowExecutionDecisionAttributes :: CompleteWorkflowExecutionDecisionAttributes
newCompleteWorkflowExecutionDecisionAttributes  = CompleteWorkflowExecutionDecisionAttributes { "result": Nothing }

-- | Constructs CompleteWorkflowExecutionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteWorkflowExecutionDecisionAttributes' :: ( { "result" :: Maybe (Data) } -> {"result" :: Maybe (Data) } ) -> CompleteWorkflowExecutionDecisionAttributes
newCompleteWorkflowExecutionDecisionAttributes'  customize = (CompleteWorkflowExecutionDecisionAttributes <<< customize) { "result": Nothing }



newtype CompleteWorkflowExecutionFailedCause = CompleteWorkflowExecutionFailedCause String
derive instance newtypeCompleteWorkflowExecutionFailedCause :: Newtype CompleteWorkflowExecutionFailedCause _
derive instance repGenericCompleteWorkflowExecutionFailedCause :: Generic CompleteWorkflowExecutionFailedCause _
instance showCompleteWorkflowExecutionFailedCause :: Show CompleteWorkflowExecutionFailedCause where show = genericShow
instance decodeCompleteWorkflowExecutionFailedCause :: Decode CompleteWorkflowExecutionFailedCause where decode = genericDecode options
instance encodeCompleteWorkflowExecutionFailedCause :: Encode CompleteWorkflowExecutionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>
newtype CompleteWorkflowExecutionFailedEventAttributes = CompleteWorkflowExecutionFailedEventAttributes 
  { "cause" :: (CompleteWorkflowExecutionFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeCompleteWorkflowExecutionFailedEventAttributes :: Newtype CompleteWorkflowExecutionFailedEventAttributes _
derive instance repGenericCompleteWorkflowExecutionFailedEventAttributes :: Generic CompleteWorkflowExecutionFailedEventAttributes _
instance showCompleteWorkflowExecutionFailedEventAttributes :: Show CompleteWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeCompleteWorkflowExecutionFailedEventAttributes :: Decode CompleteWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeCompleteWorkflowExecutionFailedEventAttributes :: Encode CompleteWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs CompleteWorkflowExecutionFailedEventAttributes from required parameters
newCompleteWorkflowExecutionFailedEventAttributes :: CompleteWorkflowExecutionFailedCause -> EventId -> CompleteWorkflowExecutionFailedEventAttributes
newCompleteWorkflowExecutionFailedEventAttributes _cause _decisionTaskCompletedEventId = CompleteWorkflowExecutionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }

-- | Constructs CompleteWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteWorkflowExecutionFailedEventAttributes' :: CompleteWorkflowExecutionFailedCause -> EventId -> ( { "cause" :: (CompleteWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"cause" :: (CompleteWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> CompleteWorkflowExecutionFailedEventAttributes
newCompleteWorkflowExecutionFailedEventAttributes' _cause _decisionTaskCompletedEventId customize = (CompleteWorkflowExecutionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }



-- | <p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tag</code> – A tag used to identify the workflow execution</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype ContinueAsNewWorkflowExecutionDecisionAttributes = ContinueAsNewWorkflowExecutionDecisionAttributes 
  { "input" :: Maybe (Data)
  , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "taskList" :: Maybe (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "childPolicy" :: Maybe (ChildPolicy)
  , "tagList" :: Maybe (TagList)
  , "workflowTypeVersion" :: Maybe (Version)
  , "lambdaRole" :: Maybe (Arn)
  }
derive instance newtypeContinueAsNewWorkflowExecutionDecisionAttributes :: Newtype ContinueAsNewWorkflowExecutionDecisionAttributes _
derive instance repGenericContinueAsNewWorkflowExecutionDecisionAttributes :: Generic ContinueAsNewWorkflowExecutionDecisionAttributes _
instance showContinueAsNewWorkflowExecutionDecisionAttributes :: Show ContinueAsNewWorkflowExecutionDecisionAttributes where show = genericShow
instance decodeContinueAsNewWorkflowExecutionDecisionAttributes :: Decode ContinueAsNewWorkflowExecutionDecisionAttributes where decode = genericDecode options
instance encodeContinueAsNewWorkflowExecutionDecisionAttributes :: Encode ContinueAsNewWorkflowExecutionDecisionAttributes where encode = genericEncode options

-- | Constructs ContinueAsNewWorkflowExecutionDecisionAttributes from required parameters
newContinueAsNewWorkflowExecutionDecisionAttributes :: ContinueAsNewWorkflowExecutionDecisionAttributes
newContinueAsNewWorkflowExecutionDecisionAttributes  = ContinueAsNewWorkflowExecutionDecisionAttributes { "childPolicy": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing, "workflowTypeVersion": Nothing }

-- | Constructs ContinueAsNewWorkflowExecutionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContinueAsNewWorkflowExecutionDecisionAttributes' :: ( { "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: Maybe (ChildPolicy) , "tagList" :: Maybe (TagList) , "workflowTypeVersion" :: Maybe (Version) , "lambdaRole" :: Maybe (Arn) } -> {"input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: Maybe (ChildPolicy) , "tagList" :: Maybe (TagList) , "workflowTypeVersion" :: Maybe (Version) , "lambdaRole" :: Maybe (Arn) } ) -> ContinueAsNewWorkflowExecutionDecisionAttributes
newContinueAsNewWorkflowExecutionDecisionAttributes'  customize = (ContinueAsNewWorkflowExecutionDecisionAttributes <<< customize) { "childPolicy": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing, "workflowTypeVersion": Nothing }



newtype ContinueAsNewWorkflowExecutionFailedCause = ContinueAsNewWorkflowExecutionFailedCause String
derive instance newtypeContinueAsNewWorkflowExecutionFailedCause :: Newtype ContinueAsNewWorkflowExecutionFailedCause _
derive instance repGenericContinueAsNewWorkflowExecutionFailedCause :: Generic ContinueAsNewWorkflowExecutionFailedCause _
instance showContinueAsNewWorkflowExecutionFailedCause :: Show ContinueAsNewWorkflowExecutionFailedCause where show = genericShow
instance decodeContinueAsNewWorkflowExecutionFailedCause :: Decode ContinueAsNewWorkflowExecutionFailedCause where decode = genericDecode options
instance encodeContinueAsNewWorkflowExecutionFailedCause :: Encode ContinueAsNewWorkflowExecutionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>
newtype ContinueAsNewWorkflowExecutionFailedEventAttributes = ContinueAsNewWorkflowExecutionFailedEventAttributes 
  { "cause" :: (ContinueAsNewWorkflowExecutionFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeContinueAsNewWorkflowExecutionFailedEventAttributes :: Newtype ContinueAsNewWorkflowExecutionFailedEventAttributes _
derive instance repGenericContinueAsNewWorkflowExecutionFailedEventAttributes :: Generic ContinueAsNewWorkflowExecutionFailedEventAttributes _
instance showContinueAsNewWorkflowExecutionFailedEventAttributes :: Show ContinueAsNewWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeContinueAsNewWorkflowExecutionFailedEventAttributes :: Decode ContinueAsNewWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeContinueAsNewWorkflowExecutionFailedEventAttributes :: Encode ContinueAsNewWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs ContinueAsNewWorkflowExecutionFailedEventAttributes from required parameters
newContinueAsNewWorkflowExecutionFailedEventAttributes :: ContinueAsNewWorkflowExecutionFailedCause -> EventId -> ContinueAsNewWorkflowExecutionFailedEventAttributes
newContinueAsNewWorkflowExecutionFailedEventAttributes _cause _decisionTaskCompletedEventId = ContinueAsNewWorkflowExecutionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }

-- | Constructs ContinueAsNewWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContinueAsNewWorkflowExecutionFailedEventAttributes' :: ContinueAsNewWorkflowExecutionFailedCause -> EventId -> ( { "cause" :: (ContinueAsNewWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"cause" :: (ContinueAsNewWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> ContinueAsNewWorkflowExecutionFailedEventAttributes
newContinueAsNewWorkflowExecutionFailedEventAttributes' _cause _decisionTaskCompletedEventId customize = (ContinueAsNewWorkflowExecutionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }



newtype Count = Count Int
derive instance newtypeCount :: Newtype Count _
derive instance repGenericCount :: Generic Count _
instance showCount :: Show Count where show = genericShow
instance decodeCount :: Decode Count where decode = genericDecode options
instance encodeCount :: Encode Count where encode = genericEncode options



newtype CountClosedWorkflowExecutionsInput = CountClosedWorkflowExecutionsInput 
  { "domain" :: (DomainName)
  , "startTimeFilter" :: Maybe (ExecutionTimeFilter)
  , "closeTimeFilter" :: Maybe (ExecutionTimeFilter)
  , "executionFilter" :: Maybe (WorkflowExecutionFilter)
  , "typeFilter" :: Maybe (WorkflowTypeFilter)
  , "tagFilter" :: Maybe (TagFilter)
  , "closeStatusFilter" :: Maybe (CloseStatusFilter)
  }
derive instance newtypeCountClosedWorkflowExecutionsInput :: Newtype CountClosedWorkflowExecutionsInput _
derive instance repGenericCountClosedWorkflowExecutionsInput :: Generic CountClosedWorkflowExecutionsInput _
instance showCountClosedWorkflowExecutionsInput :: Show CountClosedWorkflowExecutionsInput where show = genericShow
instance decodeCountClosedWorkflowExecutionsInput :: Decode CountClosedWorkflowExecutionsInput where decode = genericDecode options
instance encodeCountClosedWorkflowExecutionsInput :: Encode CountClosedWorkflowExecutionsInput where encode = genericEncode options

-- | Constructs CountClosedWorkflowExecutionsInput from required parameters
newCountClosedWorkflowExecutionsInput :: DomainName -> CountClosedWorkflowExecutionsInput
newCountClosedWorkflowExecutionsInput _domain = CountClosedWorkflowExecutionsInput { "domain": _domain, "closeStatusFilter": Nothing, "closeTimeFilter": Nothing, "executionFilter": Nothing, "startTimeFilter": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }

-- | Constructs CountClosedWorkflowExecutionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCountClosedWorkflowExecutionsInput' :: DomainName -> ( { "domain" :: (DomainName) , "startTimeFilter" :: Maybe (ExecutionTimeFilter) , "closeTimeFilter" :: Maybe (ExecutionTimeFilter) , "executionFilter" :: Maybe (WorkflowExecutionFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "closeStatusFilter" :: Maybe (CloseStatusFilter) } -> {"domain" :: (DomainName) , "startTimeFilter" :: Maybe (ExecutionTimeFilter) , "closeTimeFilter" :: Maybe (ExecutionTimeFilter) , "executionFilter" :: Maybe (WorkflowExecutionFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "closeStatusFilter" :: Maybe (CloseStatusFilter) } ) -> CountClosedWorkflowExecutionsInput
newCountClosedWorkflowExecutionsInput' _domain customize = (CountClosedWorkflowExecutionsInput <<< customize) { "domain": _domain, "closeStatusFilter": Nothing, "closeTimeFilter": Nothing, "executionFilter": Nothing, "startTimeFilter": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }



newtype CountOpenWorkflowExecutionsInput = CountOpenWorkflowExecutionsInput 
  { "domain" :: (DomainName)
  , "startTimeFilter" :: (ExecutionTimeFilter)
  , "typeFilter" :: Maybe (WorkflowTypeFilter)
  , "tagFilter" :: Maybe (TagFilter)
  , "executionFilter" :: Maybe (WorkflowExecutionFilter)
  }
derive instance newtypeCountOpenWorkflowExecutionsInput :: Newtype CountOpenWorkflowExecutionsInput _
derive instance repGenericCountOpenWorkflowExecutionsInput :: Generic CountOpenWorkflowExecutionsInput _
instance showCountOpenWorkflowExecutionsInput :: Show CountOpenWorkflowExecutionsInput where show = genericShow
instance decodeCountOpenWorkflowExecutionsInput :: Decode CountOpenWorkflowExecutionsInput where decode = genericDecode options
instance encodeCountOpenWorkflowExecutionsInput :: Encode CountOpenWorkflowExecutionsInput where encode = genericEncode options

-- | Constructs CountOpenWorkflowExecutionsInput from required parameters
newCountOpenWorkflowExecutionsInput :: DomainName -> ExecutionTimeFilter -> CountOpenWorkflowExecutionsInput
newCountOpenWorkflowExecutionsInput _domain _startTimeFilter = CountOpenWorkflowExecutionsInput { "domain": _domain, "startTimeFilter": _startTimeFilter, "executionFilter": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }

-- | Constructs CountOpenWorkflowExecutionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCountOpenWorkflowExecutionsInput' :: DomainName -> ExecutionTimeFilter -> ( { "domain" :: (DomainName) , "startTimeFilter" :: (ExecutionTimeFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "executionFilter" :: Maybe (WorkflowExecutionFilter) } -> {"domain" :: (DomainName) , "startTimeFilter" :: (ExecutionTimeFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "executionFilter" :: Maybe (WorkflowExecutionFilter) } ) -> CountOpenWorkflowExecutionsInput
newCountOpenWorkflowExecutionsInput' _domain _startTimeFilter customize = (CountOpenWorkflowExecutionsInput <<< customize) { "domain": _domain, "startTimeFilter": _startTimeFilter, "executionFilter": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }



newtype CountPendingActivityTasksInput = CountPendingActivityTasksInput 
  { "domain" :: (DomainName)
  , "taskList" :: (TaskList)
  }
derive instance newtypeCountPendingActivityTasksInput :: Newtype CountPendingActivityTasksInput _
derive instance repGenericCountPendingActivityTasksInput :: Generic CountPendingActivityTasksInput _
instance showCountPendingActivityTasksInput :: Show CountPendingActivityTasksInput where show = genericShow
instance decodeCountPendingActivityTasksInput :: Decode CountPendingActivityTasksInput where decode = genericDecode options
instance encodeCountPendingActivityTasksInput :: Encode CountPendingActivityTasksInput where encode = genericEncode options

-- | Constructs CountPendingActivityTasksInput from required parameters
newCountPendingActivityTasksInput :: DomainName -> TaskList -> CountPendingActivityTasksInput
newCountPendingActivityTasksInput _domain _taskList = CountPendingActivityTasksInput { "domain": _domain, "taskList": _taskList }

-- | Constructs CountPendingActivityTasksInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCountPendingActivityTasksInput' :: DomainName -> TaskList -> ( { "domain" :: (DomainName) , "taskList" :: (TaskList) } -> {"domain" :: (DomainName) , "taskList" :: (TaskList) } ) -> CountPendingActivityTasksInput
newCountPendingActivityTasksInput' _domain _taskList customize = (CountPendingActivityTasksInput <<< customize) { "domain": _domain, "taskList": _taskList }



newtype CountPendingDecisionTasksInput = CountPendingDecisionTasksInput 
  { "domain" :: (DomainName)
  , "taskList" :: (TaskList)
  }
derive instance newtypeCountPendingDecisionTasksInput :: Newtype CountPendingDecisionTasksInput _
derive instance repGenericCountPendingDecisionTasksInput :: Generic CountPendingDecisionTasksInput _
instance showCountPendingDecisionTasksInput :: Show CountPendingDecisionTasksInput where show = genericShow
instance decodeCountPendingDecisionTasksInput :: Decode CountPendingDecisionTasksInput where decode = genericDecode options
instance encodeCountPendingDecisionTasksInput :: Encode CountPendingDecisionTasksInput where encode = genericEncode options

-- | Constructs CountPendingDecisionTasksInput from required parameters
newCountPendingDecisionTasksInput :: DomainName -> TaskList -> CountPendingDecisionTasksInput
newCountPendingDecisionTasksInput _domain _taskList = CountPendingDecisionTasksInput { "domain": _domain, "taskList": _taskList }

-- | Constructs CountPendingDecisionTasksInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCountPendingDecisionTasksInput' :: DomainName -> TaskList -> ( { "domain" :: (DomainName) , "taskList" :: (TaskList) } -> {"domain" :: (DomainName) , "taskList" :: (TaskList) } ) -> CountPendingDecisionTasksInput
newCountPendingDecisionTasksInput' _domain _taskList customize = (CountPendingDecisionTasksInput <<< customize) { "domain": _domain, "taskList": _taskList }



newtype Data = Data String
derive instance newtypeData :: Newtype Data _
derive instance repGenericData :: Generic Data _
instance showData :: Show Data where show = genericShow
instance decodeData :: Decode Data where decode = genericDecode options
instance encodeData :: Encode Data where encode = genericEncode options



-- | <p>Specifies a decision made by the decider. A decision can be one of these types:</p> <ul> <li> <p> <code>CancelTimer</code> – Cancels a previously started timer and records a <code>TimerCanceled</code> event in the history.</p> </li> <li> <p> <code>CancelWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCanceled</code> event in the history.</p> </li> <li> <p> <code>CompleteWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCompleted</code> event in the history .</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecution</code> – Closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run Id. A <code>WorkflowExecutionContinuedAsNew</code> event is recorded in the history.</p> </li> <li> <p> <code>FailWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionFailed</code> event in the history.</p> </li> <li> <p> <code>RecordMarker</code> – Records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they don't need to look at the history beyond the marker event.</p> </li> <li> <p> <code>RequestCancelActivityTask</code> – Attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it is canceled. If the activity task was already assigned to a worker, then the worker is informed that cancellation has been requested in the response to <a>RecordActivityTaskHeartbeat</a>.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecution</code> – Requests that a request be made to cancel the specified external workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>ScheduleActivityTask</code> – Schedules an activity task.</p> </li> <li> <p> <code>SignalExternalWorkflowExecution</code> – Requests a signal to be delivered to the specified external workflow execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>StartChildWorkflowExecution</code> – Requests that a child workflow execution be started and records a <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a separate workflow execution with its own history.</p> </li> <li> <p> <code>StartTimer</code> – Starts a timer for this workflow execution and records a <code>TimerStarted</code> event in the history. This timer fires after the specified delay and record a <code>TimerFired</code> event.</p> </li> </ul> <p> <b>Access Control</b> </p> <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <p> <b>Decision Failure</b> </p> <p>Decisions can fail for several reasons</p> <ul> <li> <p>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and therefore fails.</p> </li> <li> <p>A limit on your account was reached.</p> </li> <li> <p>The decision lacks sufficient permissions.</p> </li> </ul> <p>One of the following events might be added to the history to indicate an error. The event attribute's <code>cause</code> parameter indicates the cause. If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <ul> <li> <p> <code>ScheduleActivityTaskFailed</code> – A <code>ScheduleActivityTask</code> decision failed. This could happen if the activity type specified in the decision isn't registered, is in a deprecated state, or the decision isn't properly configured.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – A <code>RequestCancelActivityTask</code> decision failed. This could happen if there is no open activity task with the specified activityId.</p> </li> <li> <p> <code>StartTimerFailed</code> – A <code>StartTimer</code> decision failed. This could happen if there is another open timer with the same timerId.</p> </li> <li> <p> <code>CancelTimerFailed</code> – A <code>CancelTimer</code> decision failed. This could happen if there is no open timer with the specified timerId.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – A <code>StartChildWorkflowExecution</code> decision failed. This could happen if the workflow type specified isn't registered, is deprecated, or the decision isn't properly configured.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – A <code>SignalExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – A <code>RequestCancelExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A <code>CancelWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – A <code>CompleteWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – A <code>ContinueAsNewWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A <code>FailWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> </ul> <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p> <note> <p>A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>, <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An <code>UnhandledDecision</code> fault is returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call <a>RespondDecisionTaskCompleted</a> without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.</p> </note> <p> <b>How to Code a Decision</b> </p> <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p> <ul> <li> <p> <code> <a>ScheduleActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CompleteWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>FailWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RecordMarkerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>SignalExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartChildWorkflowExecutionDecisionAttributes</a> </code> </p> </li> </ul>
newtype Decision = Decision 
  { "decisionType" :: (DecisionType)
  , "scheduleActivityTaskDecisionAttributes" :: Maybe (ScheduleActivityTaskDecisionAttributes)
  , "requestCancelActivityTaskDecisionAttributes" :: Maybe (RequestCancelActivityTaskDecisionAttributes)
  , "completeWorkflowExecutionDecisionAttributes" :: Maybe (CompleteWorkflowExecutionDecisionAttributes)
  , "failWorkflowExecutionDecisionAttributes" :: Maybe (FailWorkflowExecutionDecisionAttributes)
  , "cancelWorkflowExecutionDecisionAttributes" :: Maybe (CancelWorkflowExecutionDecisionAttributes)
  , "continueAsNewWorkflowExecutionDecisionAttributes" :: Maybe (ContinueAsNewWorkflowExecutionDecisionAttributes)
  , "recordMarkerDecisionAttributes" :: Maybe (RecordMarkerDecisionAttributes)
  , "startTimerDecisionAttributes" :: Maybe (StartTimerDecisionAttributes)
  , "cancelTimerDecisionAttributes" :: Maybe (CancelTimerDecisionAttributes)
  , "signalExternalWorkflowExecutionDecisionAttributes" :: Maybe (SignalExternalWorkflowExecutionDecisionAttributes)
  , "requestCancelExternalWorkflowExecutionDecisionAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionDecisionAttributes)
  , "startChildWorkflowExecutionDecisionAttributes" :: Maybe (StartChildWorkflowExecutionDecisionAttributes)
  , "scheduleLambdaFunctionDecisionAttributes" :: Maybe (ScheduleLambdaFunctionDecisionAttributes)
  }
derive instance newtypeDecision :: Newtype Decision _
derive instance repGenericDecision :: Generic Decision _
instance showDecision :: Show Decision where show = genericShow
instance decodeDecision :: Decode Decision where decode = genericDecode options
instance encodeDecision :: Encode Decision where encode = genericEncode options

-- | Constructs Decision from required parameters
newDecision :: DecisionType -> Decision
newDecision _decisionType = Decision { "decisionType": _decisionType, "cancelTimerDecisionAttributes": Nothing, "cancelWorkflowExecutionDecisionAttributes": Nothing, "completeWorkflowExecutionDecisionAttributes": Nothing, "continueAsNewWorkflowExecutionDecisionAttributes": Nothing, "failWorkflowExecutionDecisionAttributes": Nothing, "recordMarkerDecisionAttributes": Nothing, "requestCancelActivityTaskDecisionAttributes": Nothing, "requestCancelExternalWorkflowExecutionDecisionAttributes": Nothing, "scheduleActivityTaskDecisionAttributes": Nothing, "scheduleLambdaFunctionDecisionAttributes": Nothing, "signalExternalWorkflowExecutionDecisionAttributes": Nothing, "startChildWorkflowExecutionDecisionAttributes": Nothing, "startTimerDecisionAttributes": Nothing }

-- | Constructs Decision's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecision' :: DecisionType -> ( { "decisionType" :: (DecisionType) , "scheduleActivityTaskDecisionAttributes" :: Maybe (ScheduleActivityTaskDecisionAttributes) , "requestCancelActivityTaskDecisionAttributes" :: Maybe (RequestCancelActivityTaskDecisionAttributes) , "completeWorkflowExecutionDecisionAttributes" :: Maybe (CompleteWorkflowExecutionDecisionAttributes) , "failWorkflowExecutionDecisionAttributes" :: Maybe (FailWorkflowExecutionDecisionAttributes) , "cancelWorkflowExecutionDecisionAttributes" :: Maybe (CancelWorkflowExecutionDecisionAttributes) , "continueAsNewWorkflowExecutionDecisionAttributes" :: Maybe (ContinueAsNewWorkflowExecutionDecisionAttributes) , "recordMarkerDecisionAttributes" :: Maybe (RecordMarkerDecisionAttributes) , "startTimerDecisionAttributes" :: Maybe (StartTimerDecisionAttributes) , "cancelTimerDecisionAttributes" :: Maybe (CancelTimerDecisionAttributes) , "signalExternalWorkflowExecutionDecisionAttributes" :: Maybe (SignalExternalWorkflowExecutionDecisionAttributes) , "requestCancelExternalWorkflowExecutionDecisionAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionDecisionAttributes) , "startChildWorkflowExecutionDecisionAttributes" :: Maybe (StartChildWorkflowExecutionDecisionAttributes) , "scheduleLambdaFunctionDecisionAttributes" :: Maybe (ScheduleLambdaFunctionDecisionAttributes) } -> {"decisionType" :: (DecisionType) , "scheduleActivityTaskDecisionAttributes" :: Maybe (ScheduleActivityTaskDecisionAttributes) , "requestCancelActivityTaskDecisionAttributes" :: Maybe (RequestCancelActivityTaskDecisionAttributes) , "completeWorkflowExecutionDecisionAttributes" :: Maybe (CompleteWorkflowExecutionDecisionAttributes) , "failWorkflowExecutionDecisionAttributes" :: Maybe (FailWorkflowExecutionDecisionAttributes) , "cancelWorkflowExecutionDecisionAttributes" :: Maybe (CancelWorkflowExecutionDecisionAttributes) , "continueAsNewWorkflowExecutionDecisionAttributes" :: Maybe (ContinueAsNewWorkflowExecutionDecisionAttributes) , "recordMarkerDecisionAttributes" :: Maybe (RecordMarkerDecisionAttributes) , "startTimerDecisionAttributes" :: Maybe (StartTimerDecisionAttributes) , "cancelTimerDecisionAttributes" :: Maybe (CancelTimerDecisionAttributes) , "signalExternalWorkflowExecutionDecisionAttributes" :: Maybe (SignalExternalWorkflowExecutionDecisionAttributes) , "requestCancelExternalWorkflowExecutionDecisionAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionDecisionAttributes) , "startChildWorkflowExecutionDecisionAttributes" :: Maybe (StartChildWorkflowExecutionDecisionAttributes) , "scheduleLambdaFunctionDecisionAttributes" :: Maybe (ScheduleLambdaFunctionDecisionAttributes) } ) -> Decision
newDecision' _decisionType customize = (Decision <<< customize) { "decisionType": _decisionType, "cancelTimerDecisionAttributes": Nothing, "cancelWorkflowExecutionDecisionAttributes": Nothing, "completeWorkflowExecutionDecisionAttributes": Nothing, "continueAsNewWorkflowExecutionDecisionAttributes": Nothing, "failWorkflowExecutionDecisionAttributes": Nothing, "recordMarkerDecisionAttributes": Nothing, "requestCancelActivityTaskDecisionAttributes": Nothing, "requestCancelExternalWorkflowExecutionDecisionAttributes": Nothing, "scheduleActivityTaskDecisionAttributes": Nothing, "scheduleLambdaFunctionDecisionAttributes": Nothing, "signalExternalWorkflowExecutionDecisionAttributes": Nothing, "startChildWorkflowExecutionDecisionAttributes": Nothing, "startTimerDecisionAttributes": Nothing }



newtype DecisionList = DecisionList (Array Decision)
derive instance newtypeDecisionList :: Newtype DecisionList _
derive instance repGenericDecisionList :: Generic DecisionList _
instance showDecisionList :: Show DecisionList where show = genericShow
instance decodeDecisionList :: Decode DecisionList where decode = genericDecode options
instance encodeDecisionList :: Encode DecisionList where encode = genericEncode options



-- | <p>A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.</p>
newtype DecisionTask = DecisionTask 
  { "taskToken" :: (TaskToken)
  , "startedEventId" :: (EventId)
  , "workflowExecution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "events" :: (HistoryEventList)
  , "nextPageToken" :: Maybe (PageToken)
  , "previousStartedEventId" :: Maybe (EventId)
  }
derive instance newtypeDecisionTask :: Newtype DecisionTask _
derive instance repGenericDecisionTask :: Generic DecisionTask _
instance showDecisionTask :: Show DecisionTask where show = genericShow
instance decodeDecisionTask :: Decode DecisionTask where decode = genericDecode options
instance encodeDecisionTask :: Encode DecisionTask where encode = genericEncode options

-- | Constructs DecisionTask from required parameters
newDecisionTask :: HistoryEventList -> EventId -> TaskToken -> WorkflowExecution -> WorkflowType -> DecisionTask
newDecisionTask _events _startedEventId _taskToken _workflowExecution _workflowType = DecisionTask { "events": _events, "startedEventId": _startedEventId, "taskToken": _taskToken, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "nextPageToken": Nothing, "previousStartedEventId": Nothing }

-- | Constructs DecisionTask's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecisionTask' :: HistoryEventList -> EventId -> TaskToken -> WorkflowExecution -> WorkflowType -> ( { "taskToken" :: (TaskToken) , "startedEventId" :: (EventId) , "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "events" :: (HistoryEventList) , "nextPageToken" :: Maybe (PageToken) , "previousStartedEventId" :: Maybe (EventId) } -> {"taskToken" :: (TaskToken) , "startedEventId" :: (EventId) , "workflowExecution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "events" :: (HistoryEventList) , "nextPageToken" :: Maybe (PageToken) , "previousStartedEventId" :: Maybe (EventId) } ) -> DecisionTask
newDecisionTask' _events _startedEventId _taskToken _workflowExecution _workflowType customize = (DecisionTask <<< customize) { "events": _events, "startedEventId": _startedEventId, "taskToken": _taskToken, "workflowExecution": _workflowExecution, "workflowType": _workflowType, "nextPageToken": Nothing, "previousStartedEventId": Nothing }



-- | <p>Provides the details of the <code>DecisionTaskCompleted</code> event.</p>
newtype DecisionTaskCompletedEventAttributes = DecisionTaskCompletedEventAttributes 
  { "executionContext" :: Maybe (Data)
  , "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeDecisionTaskCompletedEventAttributes :: Newtype DecisionTaskCompletedEventAttributes _
derive instance repGenericDecisionTaskCompletedEventAttributes :: Generic DecisionTaskCompletedEventAttributes _
instance showDecisionTaskCompletedEventAttributes :: Show DecisionTaskCompletedEventAttributes where show = genericShow
instance decodeDecisionTaskCompletedEventAttributes :: Decode DecisionTaskCompletedEventAttributes where decode = genericDecode options
instance encodeDecisionTaskCompletedEventAttributes :: Encode DecisionTaskCompletedEventAttributes where encode = genericEncode options

-- | Constructs DecisionTaskCompletedEventAttributes from required parameters
newDecisionTaskCompletedEventAttributes :: EventId -> EventId -> DecisionTaskCompletedEventAttributes
newDecisionTaskCompletedEventAttributes _scheduledEventId _startedEventId = DecisionTaskCompletedEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "executionContext": Nothing }

-- | Constructs DecisionTaskCompletedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecisionTaskCompletedEventAttributes' :: EventId -> EventId -> ( { "executionContext" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"executionContext" :: Maybe (Data) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> DecisionTaskCompletedEventAttributes
newDecisionTaskCompletedEventAttributes' _scheduledEventId _startedEventId customize = (DecisionTaskCompletedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "executionContext": Nothing }



-- | <p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>
newtype DecisionTaskScheduledEventAttributes = DecisionTaskScheduledEventAttributes 
  { "taskList" :: (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  }
derive instance newtypeDecisionTaskScheduledEventAttributes :: Newtype DecisionTaskScheduledEventAttributes _
derive instance repGenericDecisionTaskScheduledEventAttributes :: Generic DecisionTaskScheduledEventAttributes _
instance showDecisionTaskScheduledEventAttributes :: Show DecisionTaskScheduledEventAttributes where show = genericShow
instance decodeDecisionTaskScheduledEventAttributes :: Decode DecisionTaskScheduledEventAttributes where decode = genericDecode options
instance encodeDecisionTaskScheduledEventAttributes :: Encode DecisionTaskScheduledEventAttributes where encode = genericEncode options

-- | Constructs DecisionTaskScheduledEventAttributes from required parameters
newDecisionTaskScheduledEventAttributes :: TaskList -> DecisionTaskScheduledEventAttributes
newDecisionTaskScheduledEventAttributes _taskList = DecisionTaskScheduledEventAttributes { "taskList": _taskList, "startToCloseTimeout": Nothing, "taskPriority": Nothing }

-- | Constructs DecisionTaskScheduledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecisionTaskScheduledEventAttributes' :: TaskList -> ( { "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) } -> {"taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) } ) -> DecisionTaskScheduledEventAttributes
newDecisionTaskScheduledEventAttributes' _taskList customize = (DecisionTaskScheduledEventAttributes <<< customize) { "taskList": _taskList, "startToCloseTimeout": Nothing, "taskPriority": Nothing }



-- | <p>Provides the details of the <code>DecisionTaskStarted</code> event.</p>
newtype DecisionTaskStartedEventAttributes = DecisionTaskStartedEventAttributes 
  { "identity" :: Maybe (Identity)
  , "scheduledEventId" :: (EventId)
  }
derive instance newtypeDecisionTaskStartedEventAttributes :: Newtype DecisionTaskStartedEventAttributes _
derive instance repGenericDecisionTaskStartedEventAttributes :: Generic DecisionTaskStartedEventAttributes _
instance showDecisionTaskStartedEventAttributes :: Show DecisionTaskStartedEventAttributes where show = genericShow
instance decodeDecisionTaskStartedEventAttributes :: Decode DecisionTaskStartedEventAttributes where decode = genericDecode options
instance encodeDecisionTaskStartedEventAttributes :: Encode DecisionTaskStartedEventAttributes where encode = genericEncode options

-- | Constructs DecisionTaskStartedEventAttributes from required parameters
newDecisionTaskStartedEventAttributes :: EventId -> DecisionTaskStartedEventAttributes
newDecisionTaskStartedEventAttributes _scheduledEventId = DecisionTaskStartedEventAttributes { "scheduledEventId": _scheduledEventId, "identity": Nothing }

-- | Constructs DecisionTaskStartedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecisionTaskStartedEventAttributes' :: EventId -> ( { "identity" :: Maybe (Identity) , "scheduledEventId" :: (EventId) } -> {"identity" :: Maybe (Identity) , "scheduledEventId" :: (EventId) } ) -> DecisionTaskStartedEventAttributes
newDecisionTaskStartedEventAttributes' _scheduledEventId customize = (DecisionTaskStartedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "identity": Nothing }



-- | <p>Provides the details of the <code>DecisionTaskTimedOut</code> event.</p>
newtype DecisionTaskTimedOutEventAttributes = DecisionTaskTimedOutEventAttributes 
  { "timeoutType" :: (DecisionTaskTimeoutType)
  , "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeDecisionTaskTimedOutEventAttributes :: Newtype DecisionTaskTimedOutEventAttributes _
derive instance repGenericDecisionTaskTimedOutEventAttributes :: Generic DecisionTaskTimedOutEventAttributes _
instance showDecisionTaskTimedOutEventAttributes :: Show DecisionTaskTimedOutEventAttributes where show = genericShow
instance decodeDecisionTaskTimedOutEventAttributes :: Decode DecisionTaskTimedOutEventAttributes where decode = genericDecode options
instance encodeDecisionTaskTimedOutEventAttributes :: Encode DecisionTaskTimedOutEventAttributes where encode = genericEncode options

-- | Constructs DecisionTaskTimedOutEventAttributes from required parameters
newDecisionTaskTimedOutEventAttributes :: EventId -> EventId -> DecisionTaskTimeoutType -> DecisionTaskTimedOutEventAttributes
newDecisionTaskTimedOutEventAttributes _scheduledEventId _startedEventId _timeoutType = DecisionTaskTimedOutEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "timeoutType": _timeoutType }

-- | Constructs DecisionTaskTimedOutEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecisionTaskTimedOutEventAttributes' :: EventId -> EventId -> DecisionTaskTimeoutType -> ( { "timeoutType" :: (DecisionTaskTimeoutType) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } -> {"timeoutType" :: (DecisionTaskTimeoutType) , "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) } ) -> DecisionTaskTimedOutEventAttributes
newDecisionTaskTimedOutEventAttributes' _scheduledEventId _startedEventId _timeoutType customize = (DecisionTaskTimedOutEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "timeoutType": _timeoutType }



newtype DecisionTaskTimeoutType = DecisionTaskTimeoutType String
derive instance newtypeDecisionTaskTimeoutType :: Newtype DecisionTaskTimeoutType _
derive instance repGenericDecisionTaskTimeoutType :: Generic DecisionTaskTimeoutType _
instance showDecisionTaskTimeoutType :: Show DecisionTaskTimeoutType where show = genericShow
instance decodeDecisionTaskTimeoutType :: Decode DecisionTaskTimeoutType where decode = genericDecode options
instance encodeDecisionTaskTimeoutType :: Encode DecisionTaskTimeoutType where encode = genericEncode options



newtype DecisionType = DecisionType String
derive instance newtypeDecisionType :: Newtype DecisionType _
derive instance repGenericDecisionType :: Generic DecisionType _
instance showDecisionType :: Show DecisionType where show = genericShow
instance decodeDecisionType :: Decode DecisionType where decode = genericDecode options
instance encodeDecisionType :: Encode DecisionType where encode = genericEncode options



-- | <p>The <code>StartWorkflowExecution</code> API action was called without the required parameters set.</p> <p>Some workflow execution parameters, such as the decision <code>taskList</code>, must be set to start the execution. However, these parameters might have been set as defaults when the workflow type was registered. In this case, you can omit these parameters from the <code>StartWorkflowExecution</code> call and Amazon SWF uses the values defined in the workflow type.</p> <note> <p>If these parameters aren't set and no default parameters were defined in the workflow type, this error is displayed.</p> </note>
newtype DefaultUndefinedFault = DefaultUndefinedFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDefaultUndefinedFault :: Newtype DefaultUndefinedFault _
derive instance repGenericDefaultUndefinedFault :: Generic DefaultUndefinedFault _
instance showDefaultUndefinedFault :: Show DefaultUndefinedFault where show = genericShow
instance decodeDefaultUndefinedFault :: Decode DefaultUndefinedFault where decode = genericDecode options
instance encodeDefaultUndefinedFault :: Encode DefaultUndefinedFault where encode = genericEncode options

-- | Constructs DefaultUndefinedFault from required parameters
newDefaultUndefinedFault :: DefaultUndefinedFault
newDefaultUndefinedFault  = DefaultUndefinedFault { "message": Nothing }

-- | Constructs DefaultUndefinedFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDefaultUndefinedFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DefaultUndefinedFault
newDefaultUndefinedFault'  customize = (DefaultUndefinedFault <<< customize) { "message": Nothing }



newtype DeprecateActivityTypeInput = DeprecateActivityTypeInput 
  { "domain" :: (DomainName)
  , "activityType" :: (ActivityType)
  }
derive instance newtypeDeprecateActivityTypeInput :: Newtype DeprecateActivityTypeInput _
derive instance repGenericDeprecateActivityTypeInput :: Generic DeprecateActivityTypeInput _
instance showDeprecateActivityTypeInput :: Show DeprecateActivityTypeInput where show = genericShow
instance decodeDeprecateActivityTypeInput :: Decode DeprecateActivityTypeInput where decode = genericDecode options
instance encodeDeprecateActivityTypeInput :: Encode DeprecateActivityTypeInput where encode = genericEncode options

-- | Constructs DeprecateActivityTypeInput from required parameters
newDeprecateActivityTypeInput :: ActivityType -> DomainName -> DeprecateActivityTypeInput
newDeprecateActivityTypeInput _activityType _domain = DeprecateActivityTypeInput { "activityType": _activityType, "domain": _domain }

-- | Constructs DeprecateActivityTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeprecateActivityTypeInput' :: ActivityType -> DomainName -> ( { "domain" :: (DomainName) , "activityType" :: (ActivityType) } -> {"domain" :: (DomainName) , "activityType" :: (ActivityType) } ) -> DeprecateActivityTypeInput
newDeprecateActivityTypeInput' _activityType _domain customize = (DeprecateActivityTypeInput <<< customize) { "activityType": _activityType, "domain": _domain }



newtype DeprecateDomainInput = DeprecateDomainInput 
  { "name" :: (DomainName)
  }
derive instance newtypeDeprecateDomainInput :: Newtype DeprecateDomainInput _
derive instance repGenericDeprecateDomainInput :: Generic DeprecateDomainInput _
instance showDeprecateDomainInput :: Show DeprecateDomainInput where show = genericShow
instance decodeDeprecateDomainInput :: Decode DeprecateDomainInput where decode = genericDecode options
instance encodeDeprecateDomainInput :: Encode DeprecateDomainInput where encode = genericEncode options

-- | Constructs DeprecateDomainInput from required parameters
newDeprecateDomainInput :: DomainName -> DeprecateDomainInput
newDeprecateDomainInput _name = DeprecateDomainInput { "name": _name }

-- | Constructs DeprecateDomainInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeprecateDomainInput' :: DomainName -> ( { "name" :: (DomainName) } -> {"name" :: (DomainName) } ) -> DeprecateDomainInput
newDeprecateDomainInput' _name customize = (DeprecateDomainInput <<< customize) { "name": _name }



newtype DeprecateWorkflowTypeInput = DeprecateWorkflowTypeInput 
  { "domain" :: (DomainName)
  , "workflowType" :: (WorkflowType)
  }
derive instance newtypeDeprecateWorkflowTypeInput :: Newtype DeprecateWorkflowTypeInput _
derive instance repGenericDeprecateWorkflowTypeInput :: Generic DeprecateWorkflowTypeInput _
instance showDeprecateWorkflowTypeInput :: Show DeprecateWorkflowTypeInput where show = genericShow
instance decodeDeprecateWorkflowTypeInput :: Decode DeprecateWorkflowTypeInput where decode = genericDecode options
instance encodeDeprecateWorkflowTypeInput :: Encode DeprecateWorkflowTypeInput where encode = genericEncode options

-- | Constructs DeprecateWorkflowTypeInput from required parameters
newDeprecateWorkflowTypeInput :: DomainName -> WorkflowType -> DeprecateWorkflowTypeInput
newDeprecateWorkflowTypeInput _domain _workflowType = DeprecateWorkflowTypeInput { "domain": _domain, "workflowType": _workflowType }

-- | Constructs DeprecateWorkflowTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeprecateWorkflowTypeInput' :: DomainName -> WorkflowType -> ( { "domain" :: (DomainName) , "workflowType" :: (WorkflowType) } -> {"domain" :: (DomainName) , "workflowType" :: (WorkflowType) } ) -> DeprecateWorkflowTypeInput
newDeprecateWorkflowTypeInput' _domain _workflowType customize = (DeprecateWorkflowTypeInput <<< customize) { "domain": _domain, "workflowType": _workflowType }



newtype DescribeActivityTypeInput = DescribeActivityTypeInput 
  { "domain" :: (DomainName)
  , "activityType" :: (ActivityType)
  }
derive instance newtypeDescribeActivityTypeInput :: Newtype DescribeActivityTypeInput _
derive instance repGenericDescribeActivityTypeInput :: Generic DescribeActivityTypeInput _
instance showDescribeActivityTypeInput :: Show DescribeActivityTypeInput where show = genericShow
instance decodeDescribeActivityTypeInput :: Decode DescribeActivityTypeInput where decode = genericDecode options
instance encodeDescribeActivityTypeInput :: Encode DescribeActivityTypeInput where encode = genericEncode options

-- | Constructs DescribeActivityTypeInput from required parameters
newDescribeActivityTypeInput :: ActivityType -> DomainName -> DescribeActivityTypeInput
newDescribeActivityTypeInput _activityType _domain = DescribeActivityTypeInput { "activityType": _activityType, "domain": _domain }

-- | Constructs DescribeActivityTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeActivityTypeInput' :: ActivityType -> DomainName -> ( { "domain" :: (DomainName) , "activityType" :: (ActivityType) } -> {"domain" :: (DomainName) , "activityType" :: (ActivityType) } ) -> DescribeActivityTypeInput
newDescribeActivityTypeInput' _activityType _domain customize = (DescribeActivityTypeInput <<< customize) { "activityType": _activityType, "domain": _domain }



newtype DescribeDomainInput = DescribeDomainInput 
  { "name" :: (DomainName)
  }
derive instance newtypeDescribeDomainInput :: Newtype DescribeDomainInput _
derive instance repGenericDescribeDomainInput :: Generic DescribeDomainInput _
instance showDescribeDomainInput :: Show DescribeDomainInput where show = genericShow
instance decodeDescribeDomainInput :: Decode DescribeDomainInput where decode = genericDecode options
instance encodeDescribeDomainInput :: Encode DescribeDomainInput where encode = genericEncode options

-- | Constructs DescribeDomainInput from required parameters
newDescribeDomainInput :: DomainName -> DescribeDomainInput
newDescribeDomainInput _name = DescribeDomainInput { "name": _name }

-- | Constructs DescribeDomainInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDomainInput' :: DomainName -> ( { "name" :: (DomainName) } -> {"name" :: (DomainName) } ) -> DescribeDomainInput
newDescribeDomainInput' _name customize = (DescribeDomainInput <<< customize) { "name": _name }



newtype DescribeWorkflowExecutionInput = DescribeWorkflowExecutionInput 
  { "domain" :: (DomainName)
  , "execution" :: (WorkflowExecution)
  }
derive instance newtypeDescribeWorkflowExecutionInput :: Newtype DescribeWorkflowExecutionInput _
derive instance repGenericDescribeWorkflowExecutionInput :: Generic DescribeWorkflowExecutionInput _
instance showDescribeWorkflowExecutionInput :: Show DescribeWorkflowExecutionInput where show = genericShow
instance decodeDescribeWorkflowExecutionInput :: Decode DescribeWorkflowExecutionInput where decode = genericDecode options
instance encodeDescribeWorkflowExecutionInput :: Encode DescribeWorkflowExecutionInput where encode = genericEncode options

-- | Constructs DescribeWorkflowExecutionInput from required parameters
newDescribeWorkflowExecutionInput :: DomainName -> WorkflowExecution -> DescribeWorkflowExecutionInput
newDescribeWorkflowExecutionInput _domain _execution = DescribeWorkflowExecutionInput { "domain": _domain, "execution": _execution }

-- | Constructs DescribeWorkflowExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeWorkflowExecutionInput' :: DomainName -> WorkflowExecution -> ( { "domain" :: (DomainName) , "execution" :: (WorkflowExecution) } -> {"domain" :: (DomainName) , "execution" :: (WorkflowExecution) } ) -> DescribeWorkflowExecutionInput
newDescribeWorkflowExecutionInput' _domain _execution customize = (DescribeWorkflowExecutionInput <<< customize) { "domain": _domain, "execution": _execution }



newtype DescribeWorkflowTypeInput = DescribeWorkflowTypeInput 
  { "domain" :: (DomainName)
  , "workflowType" :: (WorkflowType)
  }
derive instance newtypeDescribeWorkflowTypeInput :: Newtype DescribeWorkflowTypeInput _
derive instance repGenericDescribeWorkflowTypeInput :: Generic DescribeWorkflowTypeInput _
instance showDescribeWorkflowTypeInput :: Show DescribeWorkflowTypeInput where show = genericShow
instance decodeDescribeWorkflowTypeInput :: Decode DescribeWorkflowTypeInput where decode = genericDecode options
instance encodeDescribeWorkflowTypeInput :: Encode DescribeWorkflowTypeInput where encode = genericEncode options

-- | Constructs DescribeWorkflowTypeInput from required parameters
newDescribeWorkflowTypeInput :: DomainName -> WorkflowType -> DescribeWorkflowTypeInput
newDescribeWorkflowTypeInput _domain _workflowType = DescribeWorkflowTypeInput { "domain": _domain, "workflowType": _workflowType }

-- | Constructs DescribeWorkflowTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeWorkflowTypeInput' :: DomainName -> WorkflowType -> ( { "domain" :: (DomainName) , "workflowType" :: (WorkflowType) } -> {"domain" :: (DomainName) , "workflowType" :: (WorkflowType) } ) -> DescribeWorkflowTypeInput
newDescribeWorkflowTypeInput' _domain _workflowType customize = (DescribeWorkflowTypeInput <<< customize) { "domain": _domain, "workflowType": _workflowType }



newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



-- | <p>Returned if the specified domain already exists. You get this fault even if the existing domain is in deprecated status.</p>
newtype DomainAlreadyExistsFault = DomainAlreadyExistsFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDomainAlreadyExistsFault :: Newtype DomainAlreadyExistsFault _
derive instance repGenericDomainAlreadyExistsFault :: Generic DomainAlreadyExistsFault _
instance showDomainAlreadyExistsFault :: Show DomainAlreadyExistsFault where show = genericShow
instance decodeDomainAlreadyExistsFault :: Decode DomainAlreadyExistsFault where decode = genericDecode options
instance encodeDomainAlreadyExistsFault :: Encode DomainAlreadyExistsFault where encode = genericEncode options

-- | Constructs DomainAlreadyExistsFault from required parameters
newDomainAlreadyExistsFault :: DomainAlreadyExistsFault
newDomainAlreadyExistsFault  = DomainAlreadyExistsFault { "message": Nothing }

-- | Constructs DomainAlreadyExistsFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainAlreadyExistsFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DomainAlreadyExistsFault
newDomainAlreadyExistsFault'  customize = (DomainAlreadyExistsFault <<< customize) { "message": Nothing }



-- | <p>Contains the configuration settings of a domain.</p>
newtype DomainConfiguration = DomainConfiguration 
  { "workflowExecutionRetentionPeriodInDays" :: (DurationInDays)
  }
derive instance newtypeDomainConfiguration :: Newtype DomainConfiguration _
derive instance repGenericDomainConfiguration :: Generic DomainConfiguration _
instance showDomainConfiguration :: Show DomainConfiguration where show = genericShow
instance decodeDomainConfiguration :: Decode DomainConfiguration where decode = genericDecode options
instance encodeDomainConfiguration :: Encode DomainConfiguration where encode = genericEncode options

-- | Constructs DomainConfiguration from required parameters
newDomainConfiguration :: DurationInDays -> DomainConfiguration
newDomainConfiguration _workflowExecutionRetentionPeriodInDays = DomainConfiguration { "workflowExecutionRetentionPeriodInDays": _workflowExecutionRetentionPeriodInDays }

-- | Constructs DomainConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainConfiguration' :: DurationInDays -> ( { "workflowExecutionRetentionPeriodInDays" :: (DurationInDays) } -> {"workflowExecutionRetentionPeriodInDays" :: (DurationInDays) } ) -> DomainConfiguration
newDomainConfiguration' _workflowExecutionRetentionPeriodInDays customize = (DomainConfiguration <<< customize) { "workflowExecutionRetentionPeriodInDays": _workflowExecutionRetentionPeriodInDays }



-- | <p>Returned when the specified domain has been deprecated.</p>
newtype DomainDeprecatedFault = DomainDeprecatedFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDomainDeprecatedFault :: Newtype DomainDeprecatedFault _
derive instance repGenericDomainDeprecatedFault :: Generic DomainDeprecatedFault _
instance showDomainDeprecatedFault :: Show DomainDeprecatedFault where show = genericShow
instance decodeDomainDeprecatedFault :: Decode DomainDeprecatedFault where decode = genericDecode options
instance encodeDomainDeprecatedFault :: Encode DomainDeprecatedFault where encode = genericEncode options

-- | Constructs DomainDeprecatedFault from required parameters
newDomainDeprecatedFault :: DomainDeprecatedFault
newDomainDeprecatedFault  = DomainDeprecatedFault { "message": Nothing }

-- | Constructs DomainDeprecatedFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainDeprecatedFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DomainDeprecatedFault
newDomainDeprecatedFault'  customize = (DomainDeprecatedFault <<< customize) { "message": Nothing }



-- | <p>Contains details of a domain.</p>
newtype DomainDetail = DomainDetail 
  { "domainInfo" :: (DomainInfo)
  , "configuration" :: (DomainConfiguration)
  }
derive instance newtypeDomainDetail :: Newtype DomainDetail _
derive instance repGenericDomainDetail :: Generic DomainDetail _
instance showDomainDetail :: Show DomainDetail where show = genericShow
instance decodeDomainDetail :: Decode DomainDetail where decode = genericDecode options
instance encodeDomainDetail :: Encode DomainDetail where encode = genericEncode options

-- | Constructs DomainDetail from required parameters
newDomainDetail :: DomainConfiguration -> DomainInfo -> DomainDetail
newDomainDetail _configuration _domainInfo = DomainDetail { "configuration": _configuration, "domainInfo": _domainInfo }

-- | Constructs DomainDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainDetail' :: DomainConfiguration -> DomainInfo -> ( { "domainInfo" :: (DomainInfo) , "configuration" :: (DomainConfiguration) } -> {"domainInfo" :: (DomainInfo) , "configuration" :: (DomainConfiguration) } ) -> DomainDetail
newDomainDetail' _configuration _domainInfo customize = (DomainDetail <<< customize) { "configuration": _configuration, "domainInfo": _domainInfo }



-- | <p>Contains general information about a domain.</p>
newtype DomainInfo = DomainInfo 
  { "name" :: (DomainName)
  , "status" :: (RegistrationStatus)
  , "description" :: Maybe (Description)
  }
derive instance newtypeDomainInfo :: Newtype DomainInfo _
derive instance repGenericDomainInfo :: Generic DomainInfo _
instance showDomainInfo :: Show DomainInfo where show = genericShow
instance decodeDomainInfo :: Decode DomainInfo where decode = genericDecode options
instance encodeDomainInfo :: Encode DomainInfo where encode = genericEncode options

-- | Constructs DomainInfo from required parameters
newDomainInfo :: DomainName -> RegistrationStatus -> DomainInfo
newDomainInfo _name _status = DomainInfo { "name": _name, "status": _status, "description": Nothing }

-- | Constructs DomainInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainInfo' :: DomainName -> RegistrationStatus -> ( { "name" :: (DomainName) , "status" :: (RegistrationStatus) , "description" :: Maybe (Description) } -> {"name" :: (DomainName) , "status" :: (RegistrationStatus) , "description" :: Maybe (Description) } ) -> DomainInfo
newDomainInfo' _name _status customize = (DomainInfo <<< customize) { "name": _name, "status": _status, "description": Nothing }



newtype DomainInfoList = DomainInfoList (Array DomainInfo)
derive instance newtypeDomainInfoList :: Newtype DomainInfoList _
derive instance repGenericDomainInfoList :: Generic DomainInfoList _
instance showDomainInfoList :: Show DomainInfoList where show = genericShow
instance decodeDomainInfoList :: Decode DomainInfoList where decode = genericDecode options
instance encodeDomainInfoList :: Encode DomainInfoList where encode = genericEncode options



-- | <p>Contains a paginated collection of DomainInfo structures.</p>
newtype DomainInfos = DomainInfos 
  { "domainInfos" :: (DomainInfoList)
  , "nextPageToken" :: Maybe (PageToken)
  }
derive instance newtypeDomainInfos :: Newtype DomainInfos _
derive instance repGenericDomainInfos :: Generic DomainInfos _
instance showDomainInfos :: Show DomainInfos where show = genericShow
instance decodeDomainInfos :: Decode DomainInfos where decode = genericDecode options
instance encodeDomainInfos :: Encode DomainInfos where encode = genericEncode options

-- | Constructs DomainInfos from required parameters
newDomainInfos :: DomainInfoList -> DomainInfos
newDomainInfos _domainInfos = DomainInfos { "domainInfos": _domainInfos, "nextPageToken": Nothing }

-- | Constructs DomainInfos's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainInfos' :: DomainInfoList -> ( { "domainInfos" :: (DomainInfoList) , "nextPageToken" :: Maybe (PageToken) } -> {"domainInfos" :: (DomainInfoList) , "nextPageToken" :: Maybe (PageToken) } ) -> DomainInfos
newDomainInfos' _domainInfos customize = (DomainInfos <<< customize) { "domainInfos": _domainInfos, "nextPageToken": Nothing }



newtype DomainName = DomainName String
derive instance newtypeDomainName :: Newtype DomainName _
derive instance repGenericDomainName :: Generic DomainName _
instance showDomainName :: Show DomainName where show = genericShow
instance decodeDomainName :: Decode DomainName where decode = genericDecode options
instance encodeDomainName :: Encode DomainName where encode = genericEncode options



newtype DurationInDays = DurationInDays String
derive instance newtypeDurationInDays :: Newtype DurationInDays _
derive instance repGenericDurationInDays :: Generic DurationInDays _
instance showDurationInDays :: Show DurationInDays where show = genericShow
instance decodeDurationInDays :: Decode DurationInDays where decode = genericDecode options
instance encodeDurationInDays :: Encode DurationInDays where encode = genericEncode options



newtype DurationInSeconds = DurationInSeconds String
derive instance newtypeDurationInSeconds :: Newtype DurationInSeconds _
derive instance repGenericDurationInSeconds :: Generic DurationInSeconds _
instance showDurationInSeconds :: Show DurationInSeconds where show = genericShow
instance decodeDurationInSeconds :: Decode DurationInSeconds where decode = genericDecode options
instance encodeDurationInSeconds :: Encode DurationInSeconds where encode = genericEncode options



newtype DurationInSecondsOptional = DurationInSecondsOptional String
derive instance newtypeDurationInSecondsOptional :: Newtype DurationInSecondsOptional _
derive instance repGenericDurationInSecondsOptional :: Generic DurationInSecondsOptional _
instance showDurationInSecondsOptional :: Show DurationInSecondsOptional where show = genericShow
instance decodeDurationInSecondsOptional :: Decode DurationInSecondsOptional where decode = genericDecode options
instance encodeDurationInSecondsOptional :: Encode DurationInSecondsOptional where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype EventId = EventId Number
derive instance newtypeEventId :: Newtype EventId _
derive instance repGenericEventId :: Generic EventId _
instance showEventId :: Show EventId where show = genericShow
instance decodeEventId :: Decode EventId where decode = genericDecode options
instance encodeEventId :: Encode EventId where encode = genericEncode options



newtype EventType = EventType String
derive instance newtypeEventType :: Newtype EventType _
derive instance repGenericEventType :: Generic EventType _
instance showEventType :: Show EventType where show = genericShow
instance decodeEventType :: Decode EventType where decode = genericDecode options
instance encodeEventType :: Encode EventType where encode = genericEncode options



newtype ExecutionStatus = ExecutionStatus String
derive instance newtypeExecutionStatus :: Newtype ExecutionStatus _
derive instance repGenericExecutionStatus :: Generic ExecutionStatus _
instance showExecutionStatus :: Show ExecutionStatus where show = genericShow
instance decodeExecutionStatus :: Decode ExecutionStatus where decode = genericDecode options
instance encodeExecutionStatus :: Encode ExecutionStatus where encode = genericEncode options



-- | <p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href="https://en.wikipedia.org/wiki/Unix_time">Unix Time format</a>. For example: <code>"oldestDate": 1325376070.</code> </p>
newtype ExecutionTimeFilter = ExecutionTimeFilter 
  { "oldestDate" :: (Types.Timestamp)
  , "latestDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeExecutionTimeFilter :: Newtype ExecutionTimeFilter _
derive instance repGenericExecutionTimeFilter :: Generic ExecutionTimeFilter _
instance showExecutionTimeFilter :: Show ExecutionTimeFilter where show = genericShow
instance decodeExecutionTimeFilter :: Decode ExecutionTimeFilter where decode = genericDecode options
instance encodeExecutionTimeFilter :: Encode ExecutionTimeFilter where encode = genericEncode options

-- | Constructs ExecutionTimeFilter from required parameters
newExecutionTimeFilter :: Types.Timestamp -> ExecutionTimeFilter
newExecutionTimeFilter _oldestDate = ExecutionTimeFilter { "oldestDate": _oldestDate, "latestDate": Nothing }

-- | Constructs ExecutionTimeFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionTimeFilter' :: Types.Timestamp -> ( { "oldestDate" :: (Types.Timestamp) , "latestDate" :: Maybe (Types.Timestamp) } -> {"oldestDate" :: (Types.Timestamp) , "latestDate" :: Maybe (Types.Timestamp) } ) -> ExecutionTimeFilter
newExecutionTimeFilter' _oldestDate customize = (ExecutionTimeFilter <<< customize) { "oldestDate": _oldestDate, "latestDate": Nothing }



-- | <p>Provides the details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>
newtype ExternalWorkflowExecutionCancelRequestedEventAttributes = ExternalWorkflowExecutionCancelRequestedEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "initiatedEventId" :: (EventId)
  }
derive instance newtypeExternalWorkflowExecutionCancelRequestedEventAttributes :: Newtype ExternalWorkflowExecutionCancelRequestedEventAttributes _
derive instance repGenericExternalWorkflowExecutionCancelRequestedEventAttributes :: Generic ExternalWorkflowExecutionCancelRequestedEventAttributes _
instance showExternalWorkflowExecutionCancelRequestedEventAttributes :: Show ExternalWorkflowExecutionCancelRequestedEventAttributes where show = genericShow
instance decodeExternalWorkflowExecutionCancelRequestedEventAttributes :: Decode ExternalWorkflowExecutionCancelRequestedEventAttributes where decode = genericDecode options
instance encodeExternalWorkflowExecutionCancelRequestedEventAttributes :: Encode ExternalWorkflowExecutionCancelRequestedEventAttributes where encode = genericEncode options

-- | Constructs ExternalWorkflowExecutionCancelRequestedEventAttributes from required parameters
newExternalWorkflowExecutionCancelRequestedEventAttributes :: EventId -> WorkflowExecution -> ExternalWorkflowExecutionCancelRequestedEventAttributes
newExternalWorkflowExecutionCancelRequestedEventAttributes _initiatedEventId _workflowExecution = ExternalWorkflowExecutionCancelRequestedEventAttributes { "initiatedEventId": _initiatedEventId, "workflowExecution": _workflowExecution }

-- | Constructs ExternalWorkflowExecutionCancelRequestedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExternalWorkflowExecutionCancelRequestedEventAttributes' :: EventId -> WorkflowExecution -> ( { "workflowExecution" :: (WorkflowExecution) , "initiatedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "initiatedEventId" :: (EventId) } ) -> ExternalWorkflowExecutionCancelRequestedEventAttributes
newExternalWorkflowExecutionCancelRequestedEventAttributes' _initiatedEventId _workflowExecution customize = (ExternalWorkflowExecutionCancelRequestedEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "workflowExecution": _workflowExecution }



-- | <p>Provides the details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>
newtype ExternalWorkflowExecutionSignaledEventAttributes = ExternalWorkflowExecutionSignaledEventAttributes 
  { "workflowExecution" :: (WorkflowExecution)
  , "initiatedEventId" :: (EventId)
  }
derive instance newtypeExternalWorkflowExecutionSignaledEventAttributes :: Newtype ExternalWorkflowExecutionSignaledEventAttributes _
derive instance repGenericExternalWorkflowExecutionSignaledEventAttributes :: Generic ExternalWorkflowExecutionSignaledEventAttributes _
instance showExternalWorkflowExecutionSignaledEventAttributes :: Show ExternalWorkflowExecutionSignaledEventAttributes where show = genericShow
instance decodeExternalWorkflowExecutionSignaledEventAttributes :: Decode ExternalWorkflowExecutionSignaledEventAttributes where decode = genericDecode options
instance encodeExternalWorkflowExecutionSignaledEventAttributes :: Encode ExternalWorkflowExecutionSignaledEventAttributes where encode = genericEncode options

-- | Constructs ExternalWorkflowExecutionSignaledEventAttributes from required parameters
newExternalWorkflowExecutionSignaledEventAttributes :: EventId -> WorkflowExecution -> ExternalWorkflowExecutionSignaledEventAttributes
newExternalWorkflowExecutionSignaledEventAttributes _initiatedEventId _workflowExecution = ExternalWorkflowExecutionSignaledEventAttributes { "initiatedEventId": _initiatedEventId, "workflowExecution": _workflowExecution }

-- | Constructs ExternalWorkflowExecutionSignaledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExternalWorkflowExecutionSignaledEventAttributes' :: EventId -> WorkflowExecution -> ( { "workflowExecution" :: (WorkflowExecution) , "initiatedEventId" :: (EventId) } -> {"workflowExecution" :: (WorkflowExecution) , "initiatedEventId" :: (EventId) } ) -> ExternalWorkflowExecutionSignaledEventAttributes
newExternalWorkflowExecutionSignaledEventAttributes' _initiatedEventId _workflowExecution customize = (ExternalWorkflowExecutionSignaledEventAttributes <<< customize) { "initiatedEventId": _initiatedEventId, "workflowExecution": _workflowExecution }



-- | <p>Provides the details of the <code>FailWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype FailWorkflowExecutionDecisionAttributes = FailWorkflowExecutionDecisionAttributes 
  { "reason" :: Maybe (FailureReason)
  , "details" :: Maybe (Data)
  }
derive instance newtypeFailWorkflowExecutionDecisionAttributes :: Newtype FailWorkflowExecutionDecisionAttributes _
derive instance repGenericFailWorkflowExecutionDecisionAttributes :: Generic FailWorkflowExecutionDecisionAttributes _
instance showFailWorkflowExecutionDecisionAttributes :: Show FailWorkflowExecutionDecisionAttributes where show = genericShow
instance decodeFailWorkflowExecutionDecisionAttributes :: Decode FailWorkflowExecutionDecisionAttributes where decode = genericDecode options
instance encodeFailWorkflowExecutionDecisionAttributes :: Encode FailWorkflowExecutionDecisionAttributes where encode = genericEncode options

-- | Constructs FailWorkflowExecutionDecisionAttributes from required parameters
newFailWorkflowExecutionDecisionAttributes :: FailWorkflowExecutionDecisionAttributes
newFailWorkflowExecutionDecisionAttributes  = FailWorkflowExecutionDecisionAttributes { "details": Nothing, "reason": Nothing }

-- | Constructs FailWorkflowExecutionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailWorkflowExecutionDecisionAttributes' :: ( { "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) } -> {"reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) } ) -> FailWorkflowExecutionDecisionAttributes
newFailWorkflowExecutionDecisionAttributes'  customize = (FailWorkflowExecutionDecisionAttributes <<< customize) { "details": Nothing, "reason": Nothing }



newtype FailWorkflowExecutionFailedCause = FailWorkflowExecutionFailedCause String
derive instance newtypeFailWorkflowExecutionFailedCause :: Newtype FailWorkflowExecutionFailedCause _
derive instance repGenericFailWorkflowExecutionFailedCause :: Generic FailWorkflowExecutionFailedCause _
instance showFailWorkflowExecutionFailedCause :: Show FailWorkflowExecutionFailedCause where show = genericShow
instance decodeFailWorkflowExecutionFailedCause :: Decode FailWorkflowExecutionFailedCause where decode = genericDecode options
instance encodeFailWorkflowExecutionFailedCause :: Encode FailWorkflowExecutionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>FailWorkflowExecutionFailed</code> event.</p>
newtype FailWorkflowExecutionFailedEventAttributes = FailWorkflowExecutionFailedEventAttributes 
  { "cause" :: (FailWorkflowExecutionFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeFailWorkflowExecutionFailedEventAttributes :: Newtype FailWorkflowExecutionFailedEventAttributes _
derive instance repGenericFailWorkflowExecutionFailedEventAttributes :: Generic FailWorkflowExecutionFailedEventAttributes _
instance showFailWorkflowExecutionFailedEventAttributes :: Show FailWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeFailWorkflowExecutionFailedEventAttributes :: Decode FailWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeFailWorkflowExecutionFailedEventAttributes :: Encode FailWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs FailWorkflowExecutionFailedEventAttributes from required parameters
newFailWorkflowExecutionFailedEventAttributes :: FailWorkflowExecutionFailedCause -> EventId -> FailWorkflowExecutionFailedEventAttributes
newFailWorkflowExecutionFailedEventAttributes _cause _decisionTaskCompletedEventId = FailWorkflowExecutionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }

-- | Constructs FailWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailWorkflowExecutionFailedEventAttributes' :: FailWorkflowExecutionFailedCause -> EventId -> ( { "cause" :: (FailWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"cause" :: (FailWorkflowExecutionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> FailWorkflowExecutionFailedEventAttributes
newFailWorkflowExecutionFailedEventAttributes' _cause _decisionTaskCompletedEventId customize = (FailWorkflowExecutionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }



newtype FailureReason = FailureReason String
derive instance newtypeFailureReason :: Newtype FailureReason _
derive instance repGenericFailureReason :: Generic FailureReason _
instance showFailureReason :: Show FailureReason where show = genericShow
instance decodeFailureReason :: Decode FailureReason where decode = genericDecode options
instance encodeFailureReason :: Encode FailureReason where encode = genericEncode options



newtype FunctionId = FunctionId String
derive instance newtypeFunctionId :: Newtype FunctionId _
derive instance repGenericFunctionId :: Generic FunctionId _
instance showFunctionId :: Show FunctionId where show = genericShow
instance decodeFunctionId :: Decode FunctionId where decode = genericDecode options
instance encodeFunctionId :: Encode FunctionId where encode = genericEncode options



newtype FunctionInput = FunctionInput String
derive instance newtypeFunctionInput :: Newtype FunctionInput _
derive instance repGenericFunctionInput :: Generic FunctionInput _
instance showFunctionInput :: Show FunctionInput where show = genericShow
instance decodeFunctionInput :: Decode FunctionInput where decode = genericDecode options
instance encodeFunctionInput :: Encode FunctionInput where encode = genericEncode options



newtype FunctionName = FunctionName String
derive instance newtypeFunctionName :: Newtype FunctionName _
derive instance repGenericFunctionName :: Generic FunctionName _
instance showFunctionName :: Show FunctionName where show = genericShow
instance decodeFunctionName :: Decode FunctionName where decode = genericDecode options
instance encodeFunctionName :: Encode FunctionName where encode = genericEncode options



newtype GetWorkflowExecutionHistoryInput = GetWorkflowExecutionHistoryInput 
  { "domain" :: (DomainName)
  , "execution" :: (WorkflowExecution)
  , "nextPageToken" :: Maybe (PageToken)
  , "maximumPageSize" :: Maybe (PageSize)
  , "reverseOrder" :: Maybe (ReverseOrder)
  }
derive instance newtypeGetWorkflowExecutionHistoryInput :: Newtype GetWorkflowExecutionHistoryInput _
derive instance repGenericGetWorkflowExecutionHistoryInput :: Generic GetWorkflowExecutionHistoryInput _
instance showGetWorkflowExecutionHistoryInput :: Show GetWorkflowExecutionHistoryInput where show = genericShow
instance decodeGetWorkflowExecutionHistoryInput :: Decode GetWorkflowExecutionHistoryInput where decode = genericDecode options
instance encodeGetWorkflowExecutionHistoryInput :: Encode GetWorkflowExecutionHistoryInput where encode = genericEncode options

-- | Constructs GetWorkflowExecutionHistoryInput from required parameters
newGetWorkflowExecutionHistoryInput :: DomainName -> WorkflowExecution -> GetWorkflowExecutionHistoryInput
newGetWorkflowExecutionHistoryInput _domain _execution = GetWorkflowExecutionHistoryInput { "domain": _domain, "execution": _execution, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }

-- | Constructs GetWorkflowExecutionHistoryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetWorkflowExecutionHistoryInput' :: DomainName -> WorkflowExecution -> ( { "domain" :: (DomainName) , "execution" :: (WorkflowExecution) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } -> {"domain" :: (DomainName) , "execution" :: (WorkflowExecution) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } ) -> GetWorkflowExecutionHistoryInput
newGetWorkflowExecutionHistoryInput' _domain _execution customize = (GetWorkflowExecutionHistoryInput <<< customize) { "domain": _domain, "execution": _execution, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }



-- | <p>Paginated representation of a workflow history for a workflow execution. This is the up to date, complete and authoritative record of the events related to all tasks and events in the life of the workflow execution.</p>
newtype History = History 
  { "events" :: (HistoryEventList)
  , "nextPageToken" :: Maybe (PageToken)
  }
derive instance newtypeHistory :: Newtype History _
derive instance repGenericHistory :: Generic History _
instance showHistory :: Show History where show = genericShow
instance decodeHistory :: Decode History where decode = genericDecode options
instance encodeHistory :: Encode History where encode = genericEncode options

-- | Constructs History from required parameters
newHistory :: HistoryEventList -> History
newHistory _events = History { "events": _events, "nextPageToken": Nothing }

-- | Constructs History's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHistory' :: HistoryEventList -> ( { "events" :: (HistoryEventList) , "nextPageToken" :: Maybe (PageToken) } -> {"events" :: (HistoryEventList) , "nextPageToken" :: Maybe (PageToken) } ) -> History
newHistory' _events customize = (History <<< customize) { "events": _events, "nextPageToken": Nothing }



-- | <p>Event within a workflow execution. A history event can be one of these types:</p> <ul> <li> <p> <code>ActivityTaskCancelRequested</code> – A <code>RequestCancelActivityTask</code> decision was received by the system.</p> </li> <li> <p> <code>ActivityTaskCanceled</code> – The activity task was successfully canceled.</p> </li> <li> <p> <code>ActivityTaskCompleted</code> – An activity worker successfully completed an activity task by calling <a>RespondActivityTaskCompleted</a>.</p> </li> <li> <p> <code>ActivityTaskFailed</code> – An activity worker failed an activity task by calling <a>RespondActivityTaskFailed</a>.</p> </li> <li> <p> <code>ActivityTaskScheduled</code> – An activity task was scheduled for execution.</p> </li> <li> <p> <code>ActivityTaskStarted</code> – The scheduled activity task was dispatched to a worker.</p> </li> <li> <p> <code>ActivityTaskTimedOut</code> – The activity task timed out.</p> </li> <li> <p> <code>CancelTimerFailed</code> – Failed to process CancelTimer decision. This happens when the decision isn't configured properly, for example no timer exists with the specified timer Id.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A request to cancel a workflow execution failed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCanceled</code> – A child workflow execution, started by this workflow execution, was canceled and closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCompleted</code> – A child workflow execution, started by this workflow execution, completed successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionFailed</code> – A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionStarted</code> – A child workflow execution was successfully started.</p> </li> <li> <p> <code>ChildWorkflowExecutionTerminated</code> – A child workflow execution, started by this workflow execution, was terminated.</p> </li> <li> <p> <code>ChildWorkflowExecutionTimedOut</code> – A child workflow execution, started by this workflow execution, timed out and was closed.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – The workflow execution failed to complete.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – The workflow execution failed to complete after being continued as a new workflow execution.</p> </li> <li> <p> <code>DecisionTaskCompleted</code> – The decider successfully completed a decision task by calling <a>RespondDecisionTaskCompleted</a>.</p> </li> <li> <p> <code>DecisionTaskScheduled</code> – A decision task was scheduled for the workflow execution.</p> </li> <li> <p> <code>DecisionTaskStarted</code> – The decision task was dispatched to a decider.</p> </li> <li> <p> <code>DecisionTaskTimedOut</code> – The decision task timed out.</p> </li> <li> <p> <code>ExternalWorkflowExecutionCancelRequested</code> – Request to cancel an external workflow execution was successfully delivered to the target execution.</p> </li> <li> <p> <code>ExternalWorkflowExecutionSignaled</code> – A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A request to mark a workflow execution as failed, itself failed.</p> </li> <li> <p> <code>MarkerRecorded</code> – A marker was recorded in the workflow history as the result of a <code>RecordMarker</code> decision.</p> </li> <li> <p> <code>RecordMarkerFailed</code> – A <code>RecordMarker</code> decision was returned as failed.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – Failed to process RequestCancelActivityTask decision. This happens when the decision isn't configured properly.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – Request to cancel an external workflow execution failed.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionInitiated</code> – A request was made to request the cancellation of an external workflow execution.</p> </li> <li> <p> <code>ScheduleActivityTaskFailed</code> – Failed to process ScheduleActivityTask decision. This happens when the decision isn't configured properly, for example the activity type specified isn't registered.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – The request to signal an external workflow execution failed.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionInitiated</code> – A request to signal an external workflow was made.</p> </li> <li> <p> <code>StartActivityTaskFailed</code> – A scheduled activity task failed to start.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – Failed to process StartChildWorkflowExecution decision. This happens when the decision isn't configured properly, for example the workflow type specified isn't registered.</p> </li> <li> <p> <code>StartChildWorkflowExecutionInitiated</code> – A request was made to start a child workflow execution.</p> </li> <li> <p> <code>StartTimerFailed</code> – Failed to process StartTimer decision. This happens when the decision isn't configured properly, for example a timer already exists with the specified timer Id.</p> </li> <li> <p> <code>TimerCanceled</code> – A timer, previously started for this workflow execution, was successfully canceled.</p> </li> <li> <p> <code>TimerFired</code> – A timer, previously started for this workflow execution, fired.</p> </li> <li> <p> <code>TimerStarted</code> – A timer was started for the workflow execution due to a <code>StartTimer</code> decision.</p> </li> <li> <p> <code>WorkflowExecutionCancelRequested</code> – A request to cancel this workflow execution was made.</p> </li> <li> <p> <code>WorkflowExecutionCanceled</code> – The workflow execution was successfully canceled and closed.</p> </li> <li> <p> <code>WorkflowExecutionCompleted</code> – The workflow execution was closed due to successful completion.</p> </li> <li> <p> <code>WorkflowExecutionContinuedAsNew</code> – The workflow execution was closed and a new execution of the same type was created with the same workflowId.</p> </li> <li> <p> <code>WorkflowExecutionFailed</code> – The workflow execution closed due to a failure.</p> </li> <li> <p> <code>WorkflowExecutionSignaled</code> – An external signal was received for the workflow execution.</p> </li> <li> <p> <code>WorkflowExecutionStarted</code> – The workflow execution was started.</p> </li> <li> <p> <code>WorkflowExecutionTerminated</code> – The workflow execution was terminated.</p> </li> <li> <p> <code>WorkflowExecutionTimedOut</code> – The workflow execution was closed because a time out was exceeded.</p> </li> </ul>
newtype HistoryEvent = HistoryEvent 
  { "eventTimestamp" :: (Types.Timestamp)
  , "eventType" :: (EventType)
  , "eventId" :: (EventId)
  , "workflowExecutionStartedEventAttributes" :: Maybe (WorkflowExecutionStartedEventAttributes)
  , "workflowExecutionCompletedEventAttributes" :: Maybe (WorkflowExecutionCompletedEventAttributes)
  , "completeWorkflowExecutionFailedEventAttributes" :: Maybe (CompleteWorkflowExecutionFailedEventAttributes)
  , "workflowExecutionFailedEventAttributes" :: Maybe (WorkflowExecutionFailedEventAttributes)
  , "failWorkflowExecutionFailedEventAttributes" :: Maybe (FailWorkflowExecutionFailedEventAttributes)
  , "workflowExecutionTimedOutEventAttributes" :: Maybe (WorkflowExecutionTimedOutEventAttributes)
  , "workflowExecutionCanceledEventAttributes" :: Maybe (WorkflowExecutionCanceledEventAttributes)
  , "cancelWorkflowExecutionFailedEventAttributes" :: Maybe (CancelWorkflowExecutionFailedEventAttributes)
  , "workflowExecutionContinuedAsNewEventAttributes" :: Maybe (WorkflowExecutionContinuedAsNewEventAttributes)
  , "continueAsNewWorkflowExecutionFailedEventAttributes" :: Maybe (ContinueAsNewWorkflowExecutionFailedEventAttributes)
  , "workflowExecutionTerminatedEventAttributes" :: Maybe (WorkflowExecutionTerminatedEventAttributes)
  , "workflowExecutionCancelRequestedEventAttributes" :: Maybe (WorkflowExecutionCancelRequestedEventAttributes)
  , "decisionTaskScheduledEventAttributes" :: Maybe (DecisionTaskScheduledEventAttributes)
  , "decisionTaskStartedEventAttributes" :: Maybe (DecisionTaskStartedEventAttributes)
  , "decisionTaskCompletedEventAttributes" :: Maybe (DecisionTaskCompletedEventAttributes)
  , "decisionTaskTimedOutEventAttributes" :: Maybe (DecisionTaskTimedOutEventAttributes)
  , "activityTaskScheduledEventAttributes" :: Maybe (ActivityTaskScheduledEventAttributes)
  , "activityTaskStartedEventAttributes" :: Maybe (ActivityTaskStartedEventAttributes)
  , "activityTaskCompletedEventAttributes" :: Maybe (ActivityTaskCompletedEventAttributes)
  , "activityTaskFailedEventAttributes" :: Maybe (ActivityTaskFailedEventAttributes)
  , "activityTaskTimedOutEventAttributes" :: Maybe (ActivityTaskTimedOutEventAttributes)
  , "activityTaskCanceledEventAttributes" :: Maybe (ActivityTaskCanceledEventAttributes)
  , "activityTaskCancelRequestedEventAttributes" :: Maybe (ActivityTaskCancelRequestedEventAttributes)
  , "workflowExecutionSignaledEventAttributes" :: Maybe (WorkflowExecutionSignaledEventAttributes)
  , "markerRecordedEventAttributes" :: Maybe (MarkerRecordedEventAttributes)
  , "recordMarkerFailedEventAttributes" :: Maybe (RecordMarkerFailedEventAttributes)
  , "timerStartedEventAttributes" :: Maybe (TimerStartedEventAttributes)
  , "timerFiredEventAttributes" :: Maybe (TimerFiredEventAttributes)
  , "timerCanceledEventAttributes" :: Maybe (TimerCanceledEventAttributes)
  , "startChildWorkflowExecutionInitiatedEventAttributes" :: Maybe (StartChildWorkflowExecutionInitiatedEventAttributes)
  , "childWorkflowExecutionStartedEventAttributes" :: Maybe (ChildWorkflowExecutionStartedEventAttributes)
  , "childWorkflowExecutionCompletedEventAttributes" :: Maybe (ChildWorkflowExecutionCompletedEventAttributes)
  , "childWorkflowExecutionFailedEventAttributes" :: Maybe (ChildWorkflowExecutionFailedEventAttributes)
  , "childWorkflowExecutionTimedOutEventAttributes" :: Maybe (ChildWorkflowExecutionTimedOutEventAttributes)
  , "childWorkflowExecutionCanceledEventAttributes" :: Maybe (ChildWorkflowExecutionCanceledEventAttributes)
  , "childWorkflowExecutionTerminatedEventAttributes" :: Maybe (ChildWorkflowExecutionTerminatedEventAttributes)
  , "signalExternalWorkflowExecutionInitiatedEventAttributes" :: Maybe (SignalExternalWorkflowExecutionInitiatedEventAttributes)
  , "externalWorkflowExecutionSignaledEventAttributes" :: Maybe (ExternalWorkflowExecutionSignaledEventAttributes)
  , "signalExternalWorkflowExecutionFailedEventAttributes" :: Maybe (SignalExternalWorkflowExecutionFailedEventAttributes)
  , "externalWorkflowExecutionCancelRequestedEventAttributes" :: Maybe (ExternalWorkflowExecutionCancelRequestedEventAttributes)
  , "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes)
  , "requestCancelExternalWorkflowExecutionFailedEventAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionFailedEventAttributes)
  , "scheduleActivityTaskFailedEventAttributes" :: Maybe (ScheduleActivityTaskFailedEventAttributes)
  , "requestCancelActivityTaskFailedEventAttributes" :: Maybe (RequestCancelActivityTaskFailedEventAttributes)
  , "startTimerFailedEventAttributes" :: Maybe (StartTimerFailedEventAttributes)
  , "cancelTimerFailedEventAttributes" :: Maybe (CancelTimerFailedEventAttributes)
  , "startChildWorkflowExecutionFailedEventAttributes" :: Maybe (StartChildWorkflowExecutionFailedEventAttributes)
  , "lambdaFunctionScheduledEventAttributes" :: Maybe (LambdaFunctionScheduledEventAttributes)
  , "lambdaFunctionStartedEventAttributes" :: Maybe (LambdaFunctionStartedEventAttributes)
  , "lambdaFunctionCompletedEventAttributes" :: Maybe (LambdaFunctionCompletedEventAttributes)
  , "lambdaFunctionFailedEventAttributes" :: Maybe (LambdaFunctionFailedEventAttributes)
  , "lambdaFunctionTimedOutEventAttributes" :: Maybe (LambdaFunctionTimedOutEventAttributes)
  , "scheduleLambdaFunctionFailedEventAttributes" :: Maybe (ScheduleLambdaFunctionFailedEventAttributes)
  , "startLambdaFunctionFailedEventAttributes" :: Maybe (StartLambdaFunctionFailedEventAttributes)
  }
derive instance newtypeHistoryEvent :: Newtype HistoryEvent _
derive instance repGenericHistoryEvent :: Generic HistoryEvent _
instance showHistoryEvent :: Show HistoryEvent where show = genericShow
instance decodeHistoryEvent :: Decode HistoryEvent where decode = genericDecode options
instance encodeHistoryEvent :: Encode HistoryEvent where encode = genericEncode options

-- | Constructs HistoryEvent from required parameters
newHistoryEvent :: EventId -> Types.Timestamp -> EventType -> HistoryEvent
newHistoryEvent _eventId _eventTimestamp _eventType = HistoryEvent { "eventId": _eventId, "eventTimestamp": _eventTimestamp, "eventType": _eventType, "activityTaskCancelRequestedEventAttributes": Nothing, "activityTaskCanceledEventAttributes": Nothing, "activityTaskCompletedEventAttributes": Nothing, "activityTaskFailedEventAttributes": Nothing, "activityTaskScheduledEventAttributes": Nothing, "activityTaskStartedEventAttributes": Nothing, "activityTaskTimedOutEventAttributes": Nothing, "cancelTimerFailedEventAttributes": Nothing, "cancelWorkflowExecutionFailedEventAttributes": Nothing, "childWorkflowExecutionCanceledEventAttributes": Nothing, "childWorkflowExecutionCompletedEventAttributes": Nothing, "childWorkflowExecutionFailedEventAttributes": Nothing, "childWorkflowExecutionStartedEventAttributes": Nothing, "childWorkflowExecutionTerminatedEventAttributes": Nothing, "childWorkflowExecutionTimedOutEventAttributes": Nothing, "completeWorkflowExecutionFailedEventAttributes": Nothing, "continueAsNewWorkflowExecutionFailedEventAttributes": Nothing, "decisionTaskCompletedEventAttributes": Nothing, "decisionTaskScheduledEventAttributes": Nothing, "decisionTaskStartedEventAttributes": Nothing, "decisionTaskTimedOutEventAttributes": Nothing, "externalWorkflowExecutionCancelRequestedEventAttributes": Nothing, "externalWorkflowExecutionSignaledEventAttributes": Nothing, "failWorkflowExecutionFailedEventAttributes": Nothing, "lambdaFunctionCompletedEventAttributes": Nothing, "lambdaFunctionFailedEventAttributes": Nothing, "lambdaFunctionScheduledEventAttributes": Nothing, "lambdaFunctionStartedEventAttributes": Nothing, "lambdaFunctionTimedOutEventAttributes": Nothing, "markerRecordedEventAttributes": Nothing, "recordMarkerFailedEventAttributes": Nothing, "requestCancelActivityTaskFailedEventAttributes": Nothing, "requestCancelExternalWorkflowExecutionFailedEventAttributes": Nothing, "requestCancelExternalWorkflowExecutionInitiatedEventAttributes": Nothing, "scheduleActivityTaskFailedEventAttributes": Nothing, "scheduleLambdaFunctionFailedEventAttributes": Nothing, "signalExternalWorkflowExecutionFailedEventAttributes": Nothing, "signalExternalWorkflowExecutionInitiatedEventAttributes": Nothing, "startChildWorkflowExecutionFailedEventAttributes": Nothing, "startChildWorkflowExecutionInitiatedEventAttributes": Nothing, "startLambdaFunctionFailedEventAttributes": Nothing, "startTimerFailedEventAttributes": Nothing, "timerCanceledEventAttributes": Nothing, "timerFiredEventAttributes": Nothing, "timerStartedEventAttributes": Nothing, "workflowExecutionCancelRequestedEventAttributes": Nothing, "workflowExecutionCanceledEventAttributes": Nothing, "workflowExecutionCompletedEventAttributes": Nothing, "workflowExecutionContinuedAsNewEventAttributes": Nothing, "workflowExecutionFailedEventAttributes": Nothing, "workflowExecutionSignaledEventAttributes": Nothing, "workflowExecutionStartedEventAttributes": Nothing, "workflowExecutionTerminatedEventAttributes": Nothing, "workflowExecutionTimedOutEventAttributes": Nothing }

-- | Constructs HistoryEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHistoryEvent' :: EventId -> Types.Timestamp -> EventType -> ( { "eventTimestamp" :: (Types.Timestamp) , "eventType" :: (EventType) , "eventId" :: (EventId) , "workflowExecutionStartedEventAttributes" :: Maybe (WorkflowExecutionStartedEventAttributes) , "workflowExecutionCompletedEventAttributes" :: Maybe (WorkflowExecutionCompletedEventAttributes) , "completeWorkflowExecutionFailedEventAttributes" :: Maybe (CompleteWorkflowExecutionFailedEventAttributes) , "workflowExecutionFailedEventAttributes" :: Maybe (WorkflowExecutionFailedEventAttributes) , "failWorkflowExecutionFailedEventAttributes" :: Maybe (FailWorkflowExecutionFailedEventAttributes) , "workflowExecutionTimedOutEventAttributes" :: Maybe (WorkflowExecutionTimedOutEventAttributes) , "workflowExecutionCanceledEventAttributes" :: Maybe (WorkflowExecutionCanceledEventAttributes) , "cancelWorkflowExecutionFailedEventAttributes" :: Maybe (CancelWorkflowExecutionFailedEventAttributes) , "workflowExecutionContinuedAsNewEventAttributes" :: Maybe (WorkflowExecutionContinuedAsNewEventAttributes) , "continueAsNewWorkflowExecutionFailedEventAttributes" :: Maybe (ContinueAsNewWorkflowExecutionFailedEventAttributes) , "workflowExecutionTerminatedEventAttributes" :: Maybe (WorkflowExecutionTerminatedEventAttributes) , "workflowExecutionCancelRequestedEventAttributes" :: Maybe (WorkflowExecutionCancelRequestedEventAttributes) , "decisionTaskScheduledEventAttributes" :: Maybe (DecisionTaskScheduledEventAttributes) , "decisionTaskStartedEventAttributes" :: Maybe (DecisionTaskStartedEventAttributes) , "decisionTaskCompletedEventAttributes" :: Maybe (DecisionTaskCompletedEventAttributes) , "decisionTaskTimedOutEventAttributes" :: Maybe (DecisionTaskTimedOutEventAttributes) , "activityTaskScheduledEventAttributes" :: Maybe (ActivityTaskScheduledEventAttributes) , "activityTaskStartedEventAttributes" :: Maybe (ActivityTaskStartedEventAttributes) , "activityTaskCompletedEventAttributes" :: Maybe (ActivityTaskCompletedEventAttributes) , "activityTaskFailedEventAttributes" :: Maybe (ActivityTaskFailedEventAttributes) , "activityTaskTimedOutEventAttributes" :: Maybe (ActivityTaskTimedOutEventAttributes) , "activityTaskCanceledEventAttributes" :: Maybe (ActivityTaskCanceledEventAttributes) , "activityTaskCancelRequestedEventAttributes" :: Maybe (ActivityTaskCancelRequestedEventAttributes) , "workflowExecutionSignaledEventAttributes" :: Maybe (WorkflowExecutionSignaledEventAttributes) , "markerRecordedEventAttributes" :: Maybe (MarkerRecordedEventAttributes) , "recordMarkerFailedEventAttributes" :: Maybe (RecordMarkerFailedEventAttributes) , "timerStartedEventAttributes" :: Maybe (TimerStartedEventAttributes) , "timerFiredEventAttributes" :: Maybe (TimerFiredEventAttributes) , "timerCanceledEventAttributes" :: Maybe (TimerCanceledEventAttributes) , "startChildWorkflowExecutionInitiatedEventAttributes" :: Maybe (StartChildWorkflowExecutionInitiatedEventAttributes) , "childWorkflowExecutionStartedEventAttributes" :: Maybe (ChildWorkflowExecutionStartedEventAttributes) , "childWorkflowExecutionCompletedEventAttributes" :: Maybe (ChildWorkflowExecutionCompletedEventAttributes) , "childWorkflowExecutionFailedEventAttributes" :: Maybe (ChildWorkflowExecutionFailedEventAttributes) , "childWorkflowExecutionTimedOutEventAttributes" :: Maybe (ChildWorkflowExecutionTimedOutEventAttributes) , "childWorkflowExecutionCanceledEventAttributes" :: Maybe (ChildWorkflowExecutionCanceledEventAttributes) , "childWorkflowExecutionTerminatedEventAttributes" :: Maybe (ChildWorkflowExecutionTerminatedEventAttributes) , "signalExternalWorkflowExecutionInitiatedEventAttributes" :: Maybe (SignalExternalWorkflowExecutionInitiatedEventAttributes) , "externalWorkflowExecutionSignaledEventAttributes" :: Maybe (ExternalWorkflowExecutionSignaledEventAttributes) , "signalExternalWorkflowExecutionFailedEventAttributes" :: Maybe (SignalExternalWorkflowExecutionFailedEventAttributes) , "externalWorkflowExecutionCancelRequestedEventAttributes" :: Maybe (ExternalWorkflowExecutionCancelRequestedEventAttributes) , "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes) , "requestCancelExternalWorkflowExecutionFailedEventAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionFailedEventAttributes) , "scheduleActivityTaskFailedEventAttributes" :: Maybe (ScheduleActivityTaskFailedEventAttributes) , "requestCancelActivityTaskFailedEventAttributes" :: Maybe (RequestCancelActivityTaskFailedEventAttributes) , "startTimerFailedEventAttributes" :: Maybe (StartTimerFailedEventAttributes) , "cancelTimerFailedEventAttributes" :: Maybe (CancelTimerFailedEventAttributes) , "startChildWorkflowExecutionFailedEventAttributes" :: Maybe (StartChildWorkflowExecutionFailedEventAttributes) , "lambdaFunctionScheduledEventAttributes" :: Maybe (LambdaFunctionScheduledEventAttributes) , "lambdaFunctionStartedEventAttributes" :: Maybe (LambdaFunctionStartedEventAttributes) , "lambdaFunctionCompletedEventAttributes" :: Maybe (LambdaFunctionCompletedEventAttributes) , "lambdaFunctionFailedEventAttributes" :: Maybe (LambdaFunctionFailedEventAttributes) , "lambdaFunctionTimedOutEventAttributes" :: Maybe (LambdaFunctionTimedOutEventAttributes) , "scheduleLambdaFunctionFailedEventAttributes" :: Maybe (ScheduleLambdaFunctionFailedEventAttributes) , "startLambdaFunctionFailedEventAttributes" :: Maybe (StartLambdaFunctionFailedEventAttributes) } -> {"eventTimestamp" :: (Types.Timestamp) , "eventType" :: (EventType) , "eventId" :: (EventId) , "workflowExecutionStartedEventAttributes" :: Maybe (WorkflowExecutionStartedEventAttributes) , "workflowExecutionCompletedEventAttributes" :: Maybe (WorkflowExecutionCompletedEventAttributes) , "completeWorkflowExecutionFailedEventAttributes" :: Maybe (CompleteWorkflowExecutionFailedEventAttributes) , "workflowExecutionFailedEventAttributes" :: Maybe (WorkflowExecutionFailedEventAttributes) , "failWorkflowExecutionFailedEventAttributes" :: Maybe (FailWorkflowExecutionFailedEventAttributes) , "workflowExecutionTimedOutEventAttributes" :: Maybe (WorkflowExecutionTimedOutEventAttributes) , "workflowExecutionCanceledEventAttributes" :: Maybe (WorkflowExecutionCanceledEventAttributes) , "cancelWorkflowExecutionFailedEventAttributes" :: Maybe (CancelWorkflowExecutionFailedEventAttributes) , "workflowExecutionContinuedAsNewEventAttributes" :: Maybe (WorkflowExecutionContinuedAsNewEventAttributes) , "continueAsNewWorkflowExecutionFailedEventAttributes" :: Maybe (ContinueAsNewWorkflowExecutionFailedEventAttributes) , "workflowExecutionTerminatedEventAttributes" :: Maybe (WorkflowExecutionTerminatedEventAttributes) , "workflowExecutionCancelRequestedEventAttributes" :: Maybe (WorkflowExecutionCancelRequestedEventAttributes) , "decisionTaskScheduledEventAttributes" :: Maybe (DecisionTaskScheduledEventAttributes) , "decisionTaskStartedEventAttributes" :: Maybe (DecisionTaskStartedEventAttributes) , "decisionTaskCompletedEventAttributes" :: Maybe (DecisionTaskCompletedEventAttributes) , "decisionTaskTimedOutEventAttributes" :: Maybe (DecisionTaskTimedOutEventAttributes) , "activityTaskScheduledEventAttributes" :: Maybe (ActivityTaskScheduledEventAttributes) , "activityTaskStartedEventAttributes" :: Maybe (ActivityTaskStartedEventAttributes) , "activityTaskCompletedEventAttributes" :: Maybe (ActivityTaskCompletedEventAttributes) , "activityTaskFailedEventAttributes" :: Maybe (ActivityTaskFailedEventAttributes) , "activityTaskTimedOutEventAttributes" :: Maybe (ActivityTaskTimedOutEventAttributes) , "activityTaskCanceledEventAttributes" :: Maybe (ActivityTaskCanceledEventAttributes) , "activityTaskCancelRequestedEventAttributes" :: Maybe (ActivityTaskCancelRequestedEventAttributes) , "workflowExecutionSignaledEventAttributes" :: Maybe (WorkflowExecutionSignaledEventAttributes) , "markerRecordedEventAttributes" :: Maybe (MarkerRecordedEventAttributes) , "recordMarkerFailedEventAttributes" :: Maybe (RecordMarkerFailedEventAttributes) , "timerStartedEventAttributes" :: Maybe (TimerStartedEventAttributes) , "timerFiredEventAttributes" :: Maybe (TimerFiredEventAttributes) , "timerCanceledEventAttributes" :: Maybe (TimerCanceledEventAttributes) , "startChildWorkflowExecutionInitiatedEventAttributes" :: Maybe (StartChildWorkflowExecutionInitiatedEventAttributes) , "childWorkflowExecutionStartedEventAttributes" :: Maybe (ChildWorkflowExecutionStartedEventAttributes) , "childWorkflowExecutionCompletedEventAttributes" :: Maybe (ChildWorkflowExecutionCompletedEventAttributes) , "childWorkflowExecutionFailedEventAttributes" :: Maybe (ChildWorkflowExecutionFailedEventAttributes) , "childWorkflowExecutionTimedOutEventAttributes" :: Maybe (ChildWorkflowExecutionTimedOutEventAttributes) , "childWorkflowExecutionCanceledEventAttributes" :: Maybe (ChildWorkflowExecutionCanceledEventAttributes) , "childWorkflowExecutionTerminatedEventAttributes" :: Maybe (ChildWorkflowExecutionTerminatedEventAttributes) , "signalExternalWorkflowExecutionInitiatedEventAttributes" :: Maybe (SignalExternalWorkflowExecutionInitiatedEventAttributes) , "externalWorkflowExecutionSignaledEventAttributes" :: Maybe (ExternalWorkflowExecutionSignaledEventAttributes) , "signalExternalWorkflowExecutionFailedEventAttributes" :: Maybe (SignalExternalWorkflowExecutionFailedEventAttributes) , "externalWorkflowExecutionCancelRequestedEventAttributes" :: Maybe (ExternalWorkflowExecutionCancelRequestedEventAttributes) , "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes) , "requestCancelExternalWorkflowExecutionFailedEventAttributes" :: Maybe (RequestCancelExternalWorkflowExecutionFailedEventAttributes) , "scheduleActivityTaskFailedEventAttributes" :: Maybe (ScheduleActivityTaskFailedEventAttributes) , "requestCancelActivityTaskFailedEventAttributes" :: Maybe (RequestCancelActivityTaskFailedEventAttributes) , "startTimerFailedEventAttributes" :: Maybe (StartTimerFailedEventAttributes) , "cancelTimerFailedEventAttributes" :: Maybe (CancelTimerFailedEventAttributes) , "startChildWorkflowExecutionFailedEventAttributes" :: Maybe (StartChildWorkflowExecutionFailedEventAttributes) , "lambdaFunctionScheduledEventAttributes" :: Maybe (LambdaFunctionScheduledEventAttributes) , "lambdaFunctionStartedEventAttributes" :: Maybe (LambdaFunctionStartedEventAttributes) , "lambdaFunctionCompletedEventAttributes" :: Maybe (LambdaFunctionCompletedEventAttributes) , "lambdaFunctionFailedEventAttributes" :: Maybe (LambdaFunctionFailedEventAttributes) , "lambdaFunctionTimedOutEventAttributes" :: Maybe (LambdaFunctionTimedOutEventAttributes) , "scheduleLambdaFunctionFailedEventAttributes" :: Maybe (ScheduleLambdaFunctionFailedEventAttributes) , "startLambdaFunctionFailedEventAttributes" :: Maybe (StartLambdaFunctionFailedEventAttributes) } ) -> HistoryEvent
newHistoryEvent' _eventId _eventTimestamp _eventType customize = (HistoryEvent <<< customize) { "eventId": _eventId, "eventTimestamp": _eventTimestamp, "eventType": _eventType, "activityTaskCancelRequestedEventAttributes": Nothing, "activityTaskCanceledEventAttributes": Nothing, "activityTaskCompletedEventAttributes": Nothing, "activityTaskFailedEventAttributes": Nothing, "activityTaskScheduledEventAttributes": Nothing, "activityTaskStartedEventAttributes": Nothing, "activityTaskTimedOutEventAttributes": Nothing, "cancelTimerFailedEventAttributes": Nothing, "cancelWorkflowExecutionFailedEventAttributes": Nothing, "childWorkflowExecutionCanceledEventAttributes": Nothing, "childWorkflowExecutionCompletedEventAttributes": Nothing, "childWorkflowExecutionFailedEventAttributes": Nothing, "childWorkflowExecutionStartedEventAttributes": Nothing, "childWorkflowExecutionTerminatedEventAttributes": Nothing, "childWorkflowExecutionTimedOutEventAttributes": Nothing, "completeWorkflowExecutionFailedEventAttributes": Nothing, "continueAsNewWorkflowExecutionFailedEventAttributes": Nothing, "decisionTaskCompletedEventAttributes": Nothing, "decisionTaskScheduledEventAttributes": Nothing, "decisionTaskStartedEventAttributes": Nothing, "decisionTaskTimedOutEventAttributes": Nothing, "externalWorkflowExecutionCancelRequestedEventAttributes": Nothing, "externalWorkflowExecutionSignaledEventAttributes": Nothing, "failWorkflowExecutionFailedEventAttributes": Nothing, "lambdaFunctionCompletedEventAttributes": Nothing, "lambdaFunctionFailedEventAttributes": Nothing, "lambdaFunctionScheduledEventAttributes": Nothing, "lambdaFunctionStartedEventAttributes": Nothing, "lambdaFunctionTimedOutEventAttributes": Nothing, "markerRecordedEventAttributes": Nothing, "recordMarkerFailedEventAttributes": Nothing, "requestCancelActivityTaskFailedEventAttributes": Nothing, "requestCancelExternalWorkflowExecutionFailedEventAttributes": Nothing, "requestCancelExternalWorkflowExecutionInitiatedEventAttributes": Nothing, "scheduleActivityTaskFailedEventAttributes": Nothing, "scheduleLambdaFunctionFailedEventAttributes": Nothing, "signalExternalWorkflowExecutionFailedEventAttributes": Nothing, "signalExternalWorkflowExecutionInitiatedEventAttributes": Nothing, "startChildWorkflowExecutionFailedEventAttributes": Nothing, "startChildWorkflowExecutionInitiatedEventAttributes": Nothing, "startLambdaFunctionFailedEventAttributes": Nothing, "startTimerFailedEventAttributes": Nothing, "timerCanceledEventAttributes": Nothing, "timerFiredEventAttributes": Nothing, "timerStartedEventAttributes": Nothing, "workflowExecutionCancelRequestedEventAttributes": Nothing, "workflowExecutionCanceledEventAttributes": Nothing, "workflowExecutionCompletedEventAttributes": Nothing, "workflowExecutionContinuedAsNewEventAttributes": Nothing, "workflowExecutionFailedEventAttributes": Nothing, "workflowExecutionSignaledEventAttributes": Nothing, "workflowExecutionStartedEventAttributes": Nothing, "workflowExecutionTerminatedEventAttributes": Nothing, "workflowExecutionTimedOutEventAttributes": Nothing }



newtype HistoryEventList = HistoryEventList (Array HistoryEvent)
derive instance newtypeHistoryEventList :: Newtype HistoryEventList _
derive instance repGenericHistoryEventList :: Generic HistoryEventList _
instance showHistoryEventList :: Show HistoryEventList where show = genericShow
instance decodeHistoryEventList :: Decode HistoryEventList where decode = genericDecode options
instance encodeHistoryEventList :: Encode HistoryEventList where encode = genericEncode options



newtype Identity = Identity String
derive instance newtypeIdentity :: Newtype Identity _
derive instance repGenericIdentity :: Generic Identity _
instance showIdentity :: Show Identity where show = genericShow
instance decodeIdentity :: Decode Identity where decode = genericDecode options
instance encodeIdentity :: Encode Identity where encode = genericEncode options



-- | <p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set for other event types.</p>
newtype LambdaFunctionCompletedEventAttributes = LambdaFunctionCompletedEventAttributes 
  { "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  , "result" :: Maybe (Data)
  }
derive instance newtypeLambdaFunctionCompletedEventAttributes :: Newtype LambdaFunctionCompletedEventAttributes _
derive instance repGenericLambdaFunctionCompletedEventAttributes :: Generic LambdaFunctionCompletedEventAttributes _
instance showLambdaFunctionCompletedEventAttributes :: Show LambdaFunctionCompletedEventAttributes where show = genericShow
instance decodeLambdaFunctionCompletedEventAttributes :: Decode LambdaFunctionCompletedEventAttributes where decode = genericDecode options
instance encodeLambdaFunctionCompletedEventAttributes :: Encode LambdaFunctionCompletedEventAttributes where encode = genericEncode options

-- | Constructs LambdaFunctionCompletedEventAttributes from required parameters
newLambdaFunctionCompletedEventAttributes :: EventId -> EventId -> LambdaFunctionCompletedEventAttributes
newLambdaFunctionCompletedEventAttributes _scheduledEventId _startedEventId = LambdaFunctionCompletedEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "result": Nothing }

-- | Constructs LambdaFunctionCompletedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionCompletedEventAttributes' :: EventId -> EventId -> ( { "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "result" :: Maybe (Data) } -> {"scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "result" :: Maybe (Data) } ) -> LambdaFunctionCompletedEventAttributes
newLambdaFunctionCompletedEventAttributes' _scheduledEventId _startedEventId customize = (LambdaFunctionCompletedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "result": Nothing }



-- | <p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for other event types.</p>
newtype LambdaFunctionFailedEventAttributes = LambdaFunctionFailedEventAttributes 
  { "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  , "reason" :: Maybe (FailureReason)
  , "details" :: Maybe (Data)
  }
derive instance newtypeLambdaFunctionFailedEventAttributes :: Newtype LambdaFunctionFailedEventAttributes _
derive instance repGenericLambdaFunctionFailedEventAttributes :: Generic LambdaFunctionFailedEventAttributes _
instance showLambdaFunctionFailedEventAttributes :: Show LambdaFunctionFailedEventAttributes where show = genericShow
instance decodeLambdaFunctionFailedEventAttributes :: Decode LambdaFunctionFailedEventAttributes where decode = genericDecode options
instance encodeLambdaFunctionFailedEventAttributes :: Encode LambdaFunctionFailedEventAttributes where encode = genericEncode options

-- | Constructs LambdaFunctionFailedEventAttributes from required parameters
newLambdaFunctionFailedEventAttributes :: EventId -> EventId -> LambdaFunctionFailedEventAttributes
newLambdaFunctionFailedEventAttributes _scheduledEventId _startedEventId = LambdaFunctionFailedEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "details": Nothing, "reason": Nothing }

-- | Constructs LambdaFunctionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionFailedEventAttributes' :: EventId -> EventId -> ( { "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) } -> {"scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) } ) -> LambdaFunctionFailedEventAttributes
newLambdaFunctionFailedEventAttributes' _scheduledEventId _startedEventId customize = (LambdaFunctionFailedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "details": Nothing, "reason": Nothing }



-- | <p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set for other event types.</p>
newtype LambdaFunctionScheduledEventAttributes = LambdaFunctionScheduledEventAttributes 
  { "id" :: (FunctionId)
  , "name" :: (FunctionName)
  , "control" :: Maybe (Data)
  , "input" :: Maybe (FunctionInput)
  , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeLambdaFunctionScheduledEventAttributes :: Newtype LambdaFunctionScheduledEventAttributes _
derive instance repGenericLambdaFunctionScheduledEventAttributes :: Generic LambdaFunctionScheduledEventAttributes _
instance showLambdaFunctionScheduledEventAttributes :: Show LambdaFunctionScheduledEventAttributes where show = genericShow
instance decodeLambdaFunctionScheduledEventAttributes :: Decode LambdaFunctionScheduledEventAttributes where decode = genericDecode options
instance encodeLambdaFunctionScheduledEventAttributes :: Encode LambdaFunctionScheduledEventAttributes where encode = genericEncode options

-- | Constructs LambdaFunctionScheduledEventAttributes from required parameters
newLambdaFunctionScheduledEventAttributes :: EventId -> FunctionId -> FunctionName -> LambdaFunctionScheduledEventAttributes
newLambdaFunctionScheduledEventAttributes _decisionTaskCompletedEventId _id _name = LambdaFunctionScheduledEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "id": _id, "name": _name, "control": Nothing, "input": Nothing, "startToCloseTimeout": Nothing }

-- | Constructs LambdaFunctionScheduledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionScheduledEventAttributes' :: EventId -> FunctionId -> FunctionName -> ( { "id" :: (FunctionId) , "name" :: (FunctionName) , "control" :: Maybe (Data) , "input" :: Maybe (FunctionInput) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "decisionTaskCompletedEventId" :: (EventId) } -> {"id" :: (FunctionId) , "name" :: (FunctionName) , "control" :: Maybe (Data) , "input" :: Maybe (FunctionInput) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "decisionTaskCompletedEventId" :: (EventId) } ) -> LambdaFunctionScheduledEventAttributes
newLambdaFunctionScheduledEventAttributes' _decisionTaskCompletedEventId _id _name customize = (LambdaFunctionScheduledEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "id": _id, "name": _name, "control": Nothing, "input": Nothing, "startToCloseTimeout": Nothing }



-- | <p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for other event types.</p>
newtype LambdaFunctionStartedEventAttributes = LambdaFunctionStartedEventAttributes 
  { "scheduledEventId" :: (EventId)
  }
derive instance newtypeLambdaFunctionStartedEventAttributes :: Newtype LambdaFunctionStartedEventAttributes _
derive instance repGenericLambdaFunctionStartedEventAttributes :: Generic LambdaFunctionStartedEventAttributes _
instance showLambdaFunctionStartedEventAttributes :: Show LambdaFunctionStartedEventAttributes where show = genericShow
instance decodeLambdaFunctionStartedEventAttributes :: Decode LambdaFunctionStartedEventAttributes where decode = genericDecode options
instance encodeLambdaFunctionStartedEventAttributes :: Encode LambdaFunctionStartedEventAttributes where encode = genericEncode options

-- | Constructs LambdaFunctionStartedEventAttributes from required parameters
newLambdaFunctionStartedEventAttributes :: EventId -> LambdaFunctionStartedEventAttributes
newLambdaFunctionStartedEventAttributes _scheduledEventId = LambdaFunctionStartedEventAttributes { "scheduledEventId": _scheduledEventId }

-- | Constructs LambdaFunctionStartedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionStartedEventAttributes' :: EventId -> ( { "scheduledEventId" :: (EventId) } -> {"scheduledEventId" :: (EventId) } ) -> LambdaFunctionStartedEventAttributes
newLambdaFunctionStartedEventAttributes' _scheduledEventId customize = (LambdaFunctionStartedEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId }



-- | <p>Provides details of the <code>LambdaFunctionTimedOut</code> event.</p>
newtype LambdaFunctionTimedOutEventAttributes = LambdaFunctionTimedOutEventAttributes 
  { "scheduledEventId" :: (EventId)
  , "startedEventId" :: (EventId)
  , "timeoutType" :: Maybe (LambdaFunctionTimeoutType)
  }
derive instance newtypeLambdaFunctionTimedOutEventAttributes :: Newtype LambdaFunctionTimedOutEventAttributes _
derive instance repGenericLambdaFunctionTimedOutEventAttributes :: Generic LambdaFunctionTimedOutEventAttributes _
instance showLambdaFunctionTimedOutEventAttributes :: Show LambdaFunctionTimedOutEventAttributes where show = genericShow
instance decodeLambdaFunctionTimedOutEventAttributes :: Decode LambdaFunctionTimedOutEventAttributes where decode = genericDecode options
instance encodeLambdaFunctionTimedOutEventAttributes :: Encode LambdaFunctionTimedOutEventAttributes where encode = genericEncode options

-- | Constructs LambdaFunctionTimedOutEventAttributes from required parameters
newLambdaFunctionTimedOutEventAttributes :: EventId -> EventId -> LambdaFunctionTimedOutEventAttributes
newLambdaFunctionTimedOutEventAttributes _scheduledEventId _startedEventId = LambdaFunctionTimedOutEventAttributes { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "timeoutType": Nothing }

-- | Constructs LambdaFunctionTimedOutEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionTimedOutEventAttributes' :: EventId -> EventId -> ( { "scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "timeoutType" :: Maybe (LambdaFunctionTimeoutType) } -> {"scheduledEventId" :: (EventId) , "startedEventId" :: (EventId) , "timeoutType" :: Maybe (LambdaFunctionTimeoutType) } ) -> LambdaFunctionTimedOutEventAttributes
newLambdaFunctionTimedOutEventAttributes' _scheduledEventId _startedEventId customize = (LambdaFunctionTimedOutEventAttributes <<< customize) { "scheduledEventId": _scheduledEventId, "startedEventId": _startedEventId, "timeoutType": Nothing }



newtype LambdaFunctionTimeoutType = LambdaFunctionTimeoutType String
derive instance newtypeLambdaFunctionTimeoutType :: Newtype LambdaFunctionTimeoutType _
derive instance repGenericLambdaFunctionTimeoutType :: Generic LambdaFunctionTimeoutType _
instance showLambdaFunctionTimeoutType :: Show LambdaFunctionTimeoutType where show = genericShow
instance decodeLambdaFunctionTimeoutType :: Decode LambdaFunctionTimeoutType where decode = genericDecode options
instance encodeLambdaFunctionTimeoutType :: Encode LambdaFunctionTimeoutType where encode = genericEncode options



-- | <p>Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.</p>
newtype LimitExceededFault = LimitExceededFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeLimitExceededFault :: Newtype LimitExceededFault _
derive instance repGenericLimitExceededFault :: Generic LimitExceededFault _
instance showLimitExceededFault :: Show LimitExceededFault where show = genericShow
instance decodeLimitExceededFault :: Decode LimitExceededFault where decode = genericDecode options
instance encodeLimitExceededFault :: Encode LimitExceededFault where encode = genericEncode options

-- | Constructs LimitExceededFault from required parameters
newLimitExceededFault :: LimitExceededFault
newLimitExceededFault  = LimitExceededFault { "message": Nothing }

-- | Constructs LimitExceededFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> LimitExceededFault
newLimitExceededFault'  customize = (LimitExceededFault <<< customize) { "message": Nothing }



newtype LimitedData = LimitedData String
derive instance newtypeLimitedData :: Newtype LimitedData _
derive instance repGenericLimitedData :: Generic LimitedData _
instance showLimitedData :: Show LimitedData where show = genericShow
instance decodeLimitedData :: Decode LimitedData where decode = genericDecode options
instance encodeLimitedData :: Encode LimitedData where encode = genericEncode options



newtype ListActivityTypesInput = ListActivityTypesInput 
  { "domain" :: (DomainName)
  , "name" :: Maybe (Name)
  , "registrationStatus" :: (RegistrationStatus)
  , "nextPageToken" :: Maybe (PageToken)
  , "maximumPageSize" :: Maybe (PageSize)
  , "reverseOrder" :: Maybe (ReverseOrder)
  }
derive instance newtypeListActivityTypesInput :: Newtype ListActivityTypesInput _
derive instance repGenericListActivityTypesInput :: Generic ListActivityTypesInput _
instance showListActivityTypesInput :: Show ListActivityTypesInput where show = genericShow
instance decodeListActivityTypesInput :: Decode ListActivityTypesInput where decode = genericDecode options
instance encodeListActivityTypesInput :: Encode ListActivityTypesInput where encode = genericEncode options

-- | Constructs ListActivityTypesInput from required parameters
newListActivityTypesInput :: DomainName -> RegistrationStatus -> ListActivityTypesInput
newListActivityTypesInput _domain _registrationStatus = ListActivityTypesInput { "domain": _domain, "registrationStatus": _registrationStatus, "maximumPageSize": Nothing, "name": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }

-- | Constructs ListActivityTypesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListActivityTypesInput' :: DomainName -> RegistrationStatus -> ( { "domain" :: (DomainName) , "name" :: Maybe (Name) , "registrationStatus" :: (RegistrationStatus) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } -> {"domain" :: (DomainName) , "name" :: Maybe (Name) , "registrationStatus" :: (RegistrationStatus) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } ) -> ListActivityTypesInput
newListActivityTypesInput' _domain _registrationStatus customize = (ListActivityTypesInput <<< customize) { "domain": _domain, "registrationStatus": _registrationStatus, "maximumPageSize": Nothing, "name": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }



newtype ListClosedWorkflowExecutionsInput = ListClosedWorkflowExecutionsInput 
  { "domain" :: (DomainName)
  , "startTimeFilter" :: Maybe (ExecutionTimeFilter)
  , "closeTimeFilter" :: Maybe (ExecutionTimeFilter)
  , "executionFilter" :: Maybe (WorkflowExecutionFilter)
  , "closeStatusFilter" :: Maybe (CloseStatusFilter)
  , "typeFilter" :: Maybe (WorkflowTypeFilter)
  , "tagFilter" :: Maybe (TagFilter)
  , "nextPageToken" :: Maybe (PageToken)
  , "maximumPageSize" :: Maybe (PageSize)
  , "reverseOrder" :: Maybe (ReverseOrder)
  }
derive instance newtypeListClosedWorkflowExecutionsInput :: Newtype ListClosedWorkflowExecutionsInput _
derive instance repGenericListClosedWorkflowExecutionsInput :: Generic ListClosedWorkflowExecutionsInput _
instance showListClosedWorkflowExecutionsInput :: Show ListClosedWorkflowExecutionsInput where show = genericShow
instance decodeListClosedWorkflowExecutionsInput :: Decode ListClosedWorkflowExecutionsInput where decode = genericDecode options
instance encodeListClosedWorkflowExecutionsInput :: Encode ListClosedWorkflowExecutionsInput where encode = genericEncode options

-- | Constructs ListClosedWorkflowExecutionsInput from required parameters
newListClosedWorkflowExecutionsInput :: DomainName -> ListClosedWorkflowExecutionsInput
newListClosedWorkflowExecutionsInput _domain = ListClosedWorkflowExecutionsInput { "domain": _domain, "closeStatusFilter": Nothing, "closeTimeFilter": Nothing, "executionFilter": Nothing, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing, "startTimeFilter": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }

-- | Constructs ListClosedWorkflowExecutionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClosedWorkflowExecutionsInput' :: DomainName -> ( { "domain" :: (DomainName) , "startTimeFilter" :: Maybe (ExecutionTimeFilter) , "closeTimeFilter" :: Maybe (ExecutionTimeFilter) , "executionFilter" :: Maybe (WorkflowExecutionFilter) , "closeStatusFilter" :: Maybe (CloseStatusFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } -> {"domain" :: (DomainName) , "startTimeFilter" :: Maybe (ExecutionTimeFilter) , "closeTimeFilter" :: Maybe (ExecutionTimeFilter) , "executionFilter" :: Maybe (WorkflowExecutionFilter) , "closeStatusFilter" :: Maybe (CloseStatusFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } ) -> ListClosedWorkflowExecutionsInput
newListClosedWorkflowExecutionsInput' _domain customize = (ListClosedWorkflowExecutionsInput <<< customize) { "domain": _domain, "closeStatusFilter": Nothing, "closeTimeFilter": Nothing, "executionFilter": Nothing, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing, "startTimeFilter": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }



newtype ListDomainsInput = ListDomainsInput 
  { "nextPageToken" :: Maybe (PageToken)
  , "registrationStatus" :: (RegistrationStatus)
  , "maximumPageSize" :: Maybe (PageSize)
  , "reverseOrder" :: Maybe (ReverseOrder)
  }
derive instance newtypeListDomainsInput :: Newtype ListDomainsInput _
derive instance repGenericListDomainsInput :: Generic ListDomainsInput _
instance showListDomainsInput :: Show ListDomainsInput where show = genericShow
instance decodeListDomainsInput :: Decode ListDomainsInput where decode = genericDecode options
instance encodeListDomainsInput :: Encode ListDomainsInput where encode = genericEncode options

-- | Constructs ListDomainsInput from required parameters
newListDomainsInput :: RegistrationStatus -> ListDomainsInput
newListDomainsInput _registrationStatus = ListDomainsInput { "registrationStatus": _registrationStatus, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }

-- | Constructs ListDomainsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDomainsInput' :: RegistrationStatus -> ( { "nextPageToken" :: Maybe (PageToken) , "registrationStatus" :: (RegistrationStatus) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } -> {"nextPageToken" :: Maybe (PageToken) , "registrationStatus" :: (RegistrationStatus) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } ) -> ListDomainsInput
newListDomainsInput' _registrationStatus customize = (ListDomainsInput <<< customize) { "registrationStatus": _registrationStatus, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }



newtype ListOpenWorkflowExecutionsInput = ListOpenWorkflowExecutionsInput 
  { "domain" :: (DomainName)
  , "startTimeFilter" :: (ExecutionTimeFilter)
  , "typeFilter" :: Maybe (WorkflowTypeFilter)
  , "tagFilter" :: Maybe (TagFilter)
  , "nextPageToken" :: Maybe (PageToken)
  , "maximumPageSize" :: Maybe (PageSize)
  , "reverseOrder" :: Maybe (ReverseOrder)
  , "executionFilter" :: Maybe (WorkflowExecutionFilter)
  }
derive instance newtypeListOpenWorkflowExecutionsInput :: Newtype ListOpenWorkflowExecutionsInput _
derive instance repGenericListOpenWorkflowExecutionsInput :: Generic ListOpenWorkflowExecutionsInput _
instance showListOpenWorkflowExecutionsInput :: Show ListOpenWorkflowExecutionsInput where show = genericShow
instance decodeListOpenWorkflowExecutionsInput :: Decode ListOpenWorkflowExecutionsInput where decode = genericDecode options
instance encodeListOpenWorkflowExecutionsInput :: Encode ListOpenWorkflowExecutionsInput where encode = genericEncode options

-- | Constructs ListOpenWorkflowExecutionsInput from required parameters
newListOpenWorkflowExecutionsInput :: DomainName -> ExecutionTimeFilter -> ListOpenWorkflowExecutionsInput
newListOpenWorkflowExecutionsInput _domain _startTimeFilter = ListOpenWorkflowExecutionsInput { "domain": _domain, "startTimeFilter": _startTimeFilter, "executionFilter": Nothing, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }

-- | Constructs ListOpenWorkflowExecutionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOpenWorkflowExecutionsInput' :: DomainName -> ExecutionTimeFilter -> ( { "domain" :: (DomainName) , "startTimeFilter" :: (ExecutionTimeFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) , "executionFilter" :: Maybe (WorkflowExecutionFilter) } -> {"domain" :: (DomainName) , "startTimeFilter" :: (ExecutionTimeFilter) , "typeFilter" :: Maybe (WorkflowTypeFilter) , "tagFilter" :: Maybe (TagFilter) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) , "executionFilter" :: Maybe (WorkflowExecutionFilter) } ) -> ListOpenWorkflowExecutionsInput
newListOpenWorkflowExecutionsInput' _domain _startTimeFilter customize = (ListOpenWorkflowExecutionsInput <<< customize) { "domain": _domain, "startTimeFilter": _startTimeFilter, "executionFilter": Nothing, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing, "tagFilter": Nothing, "typeFilter": Nothing }



newtype ListWorkflowTypesInput = ListWorkflowTypesInput 
  { "domain" :: (DomainName)
  , "name" :: Maybe (Name)
  , "registrationStatus" :: (RegistrationStatus)
  , "nextPageToken" :: Maybe (PageToken)
  , "maximumPageSize" :: Maybe (PageSize)
  , "reverseOrder" :: Maybe (ReverseOrder)
  }
derive instance newtypeListWorkflowTypesInput :: Newtype ListWorkflowTypesInput _
derive instance repGenericListWorkflowTypesInput :: Generic ListWorkflowTypesInput _
instance showListWorkflowTypesInput :: Show ListWorkflowTypesInput where show = genericShow
instance decodeListWorkflowTypesInput :: Decode ListWorkflowTypesInput where decode = genericDecode options
instance encodeListWorkflowTypesInput :: Encode ListWorkflowTypesInput where encode = genericEncode options

-- | Constructs ListWorkflowTypesInput from required parameters
newListWorkflowTypesInput :: DomainName -> RegistrationStatus -> ListWorkflowTypesInput
newListWorkflowTypesInput _domain _registrationStatus = ListWorkflowTypesInput { "domain": _domain, "registrationStatus": _registrationStatus, "maximumPageSize": Nothing, "name": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }

-- | Constructs ListWorkflowTypesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListWorkflowTypesInput' :: DomainName -> RegistrationStatus -> ( { "domain" :: (DomainName) , "name" :: Maybe (Name) , "registrationStatus" :: (RegistrationStatus) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } -> {"domain" :: (DomainName) , "name" :: Maybe (Name) , "registrationStatus" :: (RegistrationStatus) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } ) -> ListWorkflowTypesInput
newListWorkflowTypesInput' _domain _registrationStatus customize = (ListWorkflowTypesInput <<< customize) { "domain": _domain, "registrationStatus": _registrationStatus, "maximumPageSize": Nothing, "name": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }



newtype MarkerName = MarkerName String
derive instance newtypeMarkerName :: Newtype MarkerName _
derive instance repGenericMarkerName :: Generic MarkerName _
instance showMarkerName :: Show MarkerName where show = genericShow
instance decodeMarkerName :: Decode MarkerName where decode = genericDecode options
instance encodeMarkerName :: Encode MarkerName where encode = genericEncode options



-- | <p>Provides the details of the <code>MarkerRecorded</code> event.</p>
newtype MarkerRecordedEventAttributes = MarkerRecordedEventAttributes 
  { "markerName" :: (MarkerName)
  , "details" :: Maybe (Data)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeMarkerRecordedEventAttributes :: Newtype MarkerRecordedEventAttributes _
derive instance repGenericMarkerRecordedEventAttributes :: Generic MarkerRecordedEventAttributes _
instance showMarkerRecordedEventAttributes :: Show MarkerRecordedEventAttributes where show = genericShow
instance decodeMarkerRecordedEventAttributes :: Decode MarkerRecordedEventAttributes where decode = genericDecode options
instance encodeMarkerRecordedEventAttributes :: Encode MarkerRecordedEventAttributes where encode = genericEncode options

-- | Constructs MarkerRecordedEventAttributes from required parameters
newMarkerRecordedEventAttributes :: EventId -> MarkerName -> MarkerRecordedEventAttributes
newMarkerRecordedEventAttributes _decisionTaskCompletedEventId _markerName = MarkerRecordedEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "markerName": _markerName, "details": Nothing }

-- | Constructs MarkerRecordedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMarkerRecordedEventAttributes' :: EventId -> MarkerName -> ( { "markerName" :: (MarkerName) , "details" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } -> {"markerName" :: (MarkerName) , "details" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } ) -> MarkerRecordedEventAttributes
newMarkerRecordedEventAttributes' _decisionTaskCompletedEventId _markerName customize = (MarkerRecordedEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "markerName": _markerName, "details": Nothing }



newtype Name = Name String
derive instance newtypeName :: Newtype Name _
derive instance repGenericName :: Generic Name _
instance showName :: Show Name where show = genericShow
instance decodeName :: Decode Name where decode = genericDecode options
instance encodeName :: Encode Name where encode = genericEncode options



newtype OpenDecisionTasksCount = OpenDecisionTasksCount Int
derive instance newtypeOpenDecisionTasksCount :: Newtype OpenDecisionTasksCount _
derive instance repGenericOpenDecisionTasksCount :: Generic OpenDecisionTasksCount _
instance showOpenDecisionTasksCount :: Show OpenDecisionTasksCount where show = genericShow
instance decodeOpenDecisionTasksCount :: Decode OpenDecisionTasksCount where decode = genericDecode options
instance encodeOpenDecisionTasksCount :: Encode OpenDecisionTasksCount where encode = genericEncode options



-- | <p>Returned when the caller doesn't have sufficient permissions to invoke the action.</p>
newtype OperationNotPermittedFault = OperationNotPermittedFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeOperationNotPermittedFault :: Newtype OperationNotPermittedFault _
derive instance repGenericOperationNotPermittedFault :: Generic OperationNotPermittedFault _
instance showOperationNotPermittedFault :: Show OperationNotPermittedFault where show = genericShow
instance decodeOperationNotPermittedFault :: Decode OperationNotPermittedFault where decode = genericDecode options
instance encodeOperationNotPermittedFault :: Encode OperationNotPermittedFault where encode = genericEncode options

-- | Constructs OperationNotPermittedFault from required parameters
newOperationNotPermittedFault :: OperationNotPermittedFault
newOperationNotPermittedFault  = OperationNotPermittedFault { "message": Nothing }

-- | Constructs OperationNotPermittedFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationNotPermittedFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> OperationNotPermittedFault
newOperationNotPermittedFault'  customize = (OperationNotPermittedFault <<< customize) { "message": Nothing }



newtype PageSize = PageSize Int
derive instance newtypePageSize :: Newtype PageSize _
derive instance repGenericPageSize :: Generic PageSize _
instance showPageSize :: Show PageSize where show = genericShow
instance decodePageSize :: Decode PageSize where decode = genericDecode options
instance encodePageSize :: Encode PageSize where encode = genericEncode options



newtype PageToken = PageToken String
derive instance newtypePageToken :: Newtype PageToken _
derive instance repGenericPageToken :: Generic PageToken _
instance showPageToken :: Show PageToken where show = genericShow
instance decodePageToken :: Decode PageToken where decode = genericDecode options
instance encodePageToken :: Encode PageToken where encode = genericEncode options



-- | <p>Contains the count of tasks in a task list.</p>
newtype PendingTaskCount = PendingTaskCount 
  { "count" :: (Count)
  , "truncated" :: Maybe (Truncated)
  }
derive instance newtypePendingTaskCount :: Newtype PendingTaskCount _
derive instance repGenericPendingTaskCount :: Generic PendingTaskCount _
instance showPendingTaskCount :: Show PendingTaskCount where show = genericShow
instance decodePendingTaskCount :: Decode PendingTaskCount where decode = genericDecode options
instance encodePendingTaskCount :: Encode PendingTaskCount where encode = genericEncode options

-- | Constructs PendingTaskCount from required parameters
newPendingTaskCount :: Count -> PendingTaskCount
newPendingTaskCount _count = PendingTaskCount { "count": _count, "truncated": Nothing }

-- | Constructs PendingTaskCount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPendingTaskCount' :: Count -> ( { "count" :: (Count) , "truncated" :: Maybe (Truncated) } -> {"count" :: (Count) , "truncated" :: Maybe (Truncated) } ) -> PendingTaskCount
newPendingTaskCount' _count customize = (PendingTaskCount <<< customize) { "count": _count, "truncated": Nothing }



newtype PollForActivityTaskInput = PollForActivityTaskInput 
  { "domain" :: (DomainName)
  , "taskList" :: (TaskList)
  , "identity" :: Maybe (Identity)
  }
derive instance newtypePollForActivityTaskInput :: Newtype PollForActivityTaskInput _
derive instance repGenericPollForActivityTaskInput :: Generic PollForActivityTaskInput _
instance showPollForActivityTaskInput :: Show PollForActivityTaskInput where show = genericShow
instance decodePollForActivityTaskInput :: Decode PollForActivityTaskInput where decode = genericDecode options
instance encodePollForActivityTaskInput :: Encode PollForActivityTaskInput where encode = genericEncode options

-- | Constructs PollForActivityTaskInput from required parameters
newPollForActivityTaskInput :: DomainName -> TaskList -> PollForActivityTaskInput
newPollForActivityTaskInput _domain _taskList = PollForActivityTaskInput { "domain": _domain, "taskList": _taskList, "identity": Nothing }

-- | Constructs PollForActivityTaskInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPollForActivityTaskInput' :: DomainName -> TaskList -> ( { "domain" :: (DomainName) , "taskList" :: (TaskList) , "identity" :: Maybe (Identity) } -> {"domain" :: (DomainName) , "taskList" :: (TaskList) , "identity" :: Maybe (Identity) } ) -> PollForActivityTaskInput
newPollForActivityTaskInput' _domain _taskList customize = (PollForActivityTaskInput <<< customize) { "domain": _domain, "taskList": _taskList, "identity": Nothing }



newtype PollForDecisionTaskInput = PollForDecisionTaskInput 
  { "domain" :: (DomainName)
  , "taskList" :: (TaskList)
  , "identity" :: Maybe (Identity)
  , "nextPageToken" :: Maybe (PageToken)
  , "maximumPageSize" :: Maybe (PageSize)
  , "reverseOrder" :: Maybe (ReverseOrder)
  }
derive instance newtypePollForDecisionTaskInput :: Newtype PollForDecisionTaskInput _
derive instance repGenericPollForDecisionTaskInput :: Generic PollForDecisionTaskInput _
instance showPollForDecisionTaskInput :: Show PollForDecisionTaskInput where show = genericShow
instance decodePollForDecisionTaskInput :: Decode PollForDecisionTaskInput where decode = genericDecode options
instance encodePollForDecisionTaskInput :: Encode PollForDecisionTaskInput where encode = genericEncode options

-- | Constructs PollForDecisionTaskInput from required parameters
newPollForDecisionTaskInput :: DomainName -> TaskList -> PollForDecisionTaskInput
newPollForDecisionTaskInput _domain _taskList = PollForDecisionTaskInput { "domain": _domain, "taskList": _taskList, "identity": Nothing, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }

-- | Constructs PollForDecisionTaskInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPollForDecisionTaskInput' :: DomainName -> TaskList -> ( { "domain" :: (DomainName) , "taskList" :: (TaskList) , "identity" :: Maybe (Identity) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } -> {"domain" :: (DomainName) , "taskList" :: (TaskList) , "identity" :: Maybe (Identity) , "nextPageToken" :: Maybe (PageToken) , "maximumPageSize" :: Maybe (PageSize) , "reverseOrder" :: Maybe (ReverseOrder) } ) -> PollForDecisionTaskInput
newPollForDecisionTaskInput' _domain _taskList customize = (PollForDecisionTaskInput <<< customize) { "domain": _domain, "taskList": _taskList, "identity": Nothing, "maximumPageSize": Nothing, "nextPageToken": Nothing, "reverseOrder": Nothing }



newtype RecordActivityTaskHeartbeatInput = RecordActivityTaskHeartbeatInput 
  { "taskToken" :: (TaskToken)
  , "details" :: Maybe (LimitedData)
  }
derive instance newtypeRecordActivityTaskHeartbeatInput :: Newtype RecordActivityTaskHeartbeatInput _
derive instance repGenericRecordActivityTaskHeartbeatInput :: Generic RecordActivityTaskHeartbeatInput _
instance showRecordActivityTaskHeartbeatInput :: Show RecordActivityTaskHeartbeatInput where show = genericShow
instance decodeRecordActivityTaskHeartbeatInput :: Decode RecordActivityTaskHeartbeatInput where decode = genericDecode options
instance encodeRecordActivityTaskHeartbeatInput :: Encode RecordActivityTaskHeartbeatInput where encode = genericEncode options

-- | Constructs RecordActivityTaskHeartbeatInput from required parameters
newRecordActivityTaskHeartbeatInput :: TaskToken -> RecordActivityTaskHeartbeatInput
newRecordActivityTaskHeartbeatInput _taskToken = RecordActivityTaskHeartbeatInput { "taskToken": _taskToken, "details": Nothing }

-- | Constructs RecordActivityTaskHeartbeatInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecordActivityTaskHeartbeatInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) , "details" :: Maybe (LimitedData) } -> {"taskToken" :: (TaskToken) , "details" :: Maybe (LimitedData) } ) -> RecordActivityTaskHeartbeatInput
newRecordActivityTaskHeartbeatInput' _taskToken customize = (RecordActivityTaskHeartbeatInput <<< customize) { "taskToken": _taskToken, "details": Nothing }



-- | <p>Provides the details of the <code>RecordMarker</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype RecordMarkerDecisionAttributes = RecordMarkerDecisionAttributes 
  { "markerName" :: (MarkerName)
  , "details" :: Maybe (Data)
  }
derive instance newtypeRecordMarkerDecisionAttributes :: Newtype RecordMarkerDecisionAttributes _
derive instance repGenericRecordMarkerDecisionAttributes :: Generic RecordMarkerDecisionAttributes _
instance showRecordMarkerDecisionAttributes :: Show RecordMarkerDecisionAttributes where show = genericShow
instance decodeRecordMarkerDecisionAttributes :: Decode RecordMarkerDecisionAttributes where decode = genericDecode options
instance encodeRecordMarkerDecisionAttributes :: Encode RecordMarkerDecisionAttributes where encode = genericEncode options

-- | Constructs RecordMarkerDecisionAttributes from required parameters
newRecordMarkerDecisionAttributes :: MarkerName -> RecordMarkerDecisionAttributes
newRecordMarkerDecisionAttributes _markerName = RecordMarkerDecisionAttributes { "markerName": _markerName, "details": Nothing }

-- | Constructs RecordMarkerDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecordMarkerDecisionAttributes' :: MarkerName -> ( { "markerName" :: (MarkerName) , "details" :: Maybe (Data) } -> {"markerName" :: (MarkerName) , "details" :: Maybe (Data) } ) -> RecordMarkerDecisionAttributes
newRecordMarkerDecisionAttributes' _markerName customize = (RecordMarkerDecisionAttributes <<< customize) { "markerName": _markerName, "details": Nothing }



newtype RecordMarkerFailedCause = RecordMarkerFailedCause String
derive instance newtypeRecordMarkerFailedCause :: Newtype RecordMarkerFailedCause _
derive instance repGenericRecordMarkerFailedCause :: Generic RecordMarkerFailedCause _
instance showRecordMarkerFailedCause :: Show RecordMarkerFailedCause where show = genericShow
instance decodeRecordMarkerFailedCause :: Decode RecordMarkerFailedCause where decode = genericDecode options
instance encodeRecordMarkerFailedCause :: Encode RecordMarkerFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>RecordMarkerFailed</code> event.</p>
newtype RecordMarkerFailedEventAttributes = RecordMarkerFailedEventAttributes 
  { "markerName" :: (MarkerName)
  , "cause" :: (RecordMarkerFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeRecordMarkerFailedEventAttributes :: Newtype RecordMarkerFailedEventAttributes _
derive instance repGenericRecordMarkerFailedEventAttributes :: Generic RecordMarkerFailedEventAttributes _
instance showRecordMarkerFailedEventAttributes :: Show RecordMarkerFailedEventAttributes where show = genericShow
instance decodeRecordMarkerFailedEventAttributes :: Decode RecordMarkerFailedEventAttributes where decode = genericDecode options
instance encodeRecordMarkerFailedEventAttributes :: Encode RecordMarkerFailedEventAttributes where encode = genericEncode options

-- | Constructs RecordMarkerFailedEventAttributes from required parameters
newRecordMarkerFailedEventAttributes :: RecordMarkerFailedCause -> EventId -> MarkerName -> RecordMarkerFailedEventAttributes
newRecordMarkerFailedEventAttributes _cause _decisionTaskCompletedEventId _markerName = RecordMarkerFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "markerName": _markerName }

-- | Constructs RecordMarkerFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecordMarkerFailedEventAttributes' :: RecordMarkerFailedCause -> EventId -> MarkerName -> ( { "markerName" :: (MarkerName) , "cause" :: (RecordMarkerFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"markerName" :: (MarkerName) , "cause" :: (RecordMarkerFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> RecordMarkerFailedEventAttributes
newRecordMarkerFailedEventAttributes' _cause _decisionTaskCompletedEventId _markerName customize = (RecordMarkerFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "markerName": _markerName }



newtype RegisterActivityTypeInput = RegisterActivityTypeInput 
  { "domain" :: (DomainName)
  , "name" :: (Name)
  , "version" :: (Version)
  , "description" :: Maybe (Description)
  , "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskHeartbeatTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskList" :: Maybe (TaskList)
  , "defaultTaskPriority" :: Maybe (TaskPriority)
  , "defaultTaskScheduleToStartTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskScheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  }
derive instance newtypeRegisterActivityTypeInput :: Newtype RegisterActivityTypeInput _
derive instance repGenericRegisterActivityTypeInput :: Generic RegisterActivityTypeInput _
instance showRegisterActivityTypeInput :: Show RegisterActivityTypeInput where show = genericShow
instance decodeRegisterActivityTypeInput :: Decode RegisterActivityTypeInput where decode = genericDecode options
instance encodeRegisterActivityTypeInput :: Encode RegisterActivityTypeInput where encode = genericEncode options

-- | Constructs RegisterActivityTypeInput from required parameters
newRegisterActivityTypeInput :: DomainName -> Name -> Version -> RegisterActivityTypeInput
newRegisterActivityTypeInput _domain _name _version = RegisterActivityTypeInput { "domain": _domain, "name": _name, "version": _version, "defaultTaskHeartbeatTimeout": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskScheduleToCloseTimeout": Nothing, "defaultTaskScheduleToStartTimeout": Nothing, "defaultTaskStartToCloseTimeout": Nothing, "description": Nothing }

-- | Constructs RegisterActivityTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterActivityTypeInput' :: DomainName -> Name -> Version -> ( { "domain" :: (DomainName) , "name" :: (Name) , "version" :: (Version) , "description" :: Maybe (Description) , "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskHeartbeatTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultTaskScheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskScheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) } -> {"domain" :: (DomainName) , "name" :: (Name) , "version" :: (Version) , "description" :: Maybe (Description) , "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskHeartbeatTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultTaskScheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskScheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) } ) -> RegisterActivityTypeInput
newRegisterActivityTypeInput' _domain _name _version customize = (RegisterActivityTypeInput <<< customize) { "domain": _domain, "name": _name, "version": _version, "defaultTaskHeartbeatTimeout": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskScheduleToCloseTimeout": Nothing, "defaultTaskScheduleToStartTimeout": Nothing, "defaultTaskStartToCloseTimeout": Nothing, "description": Nothing }



newtype RegisterDomainInput = RegisterDomainInput 
  { "name" :: (DomainName)
  , "description" :: Maybe (Description)
  , "workflowExecutionRetentionPeriodInDays" :: (DurationInDays)
  }
derive instance newtypeRegisterDomainInput :: Newtype RegisterDomainInput _
derive instance repGenericRegisterDomainInput :: Generic RegisterDomainInput _
instance showRegisterDomainInput :: Show RegisterDomainInput where show = genericShow
instance decodeRegisterDomainInput :: Decode RegisterDomainInput where decode = genericDecode options
instance encodeRegisterDomainInput :: Encode RegisterDomainInput where encode = genericEncode options

-- | Constructs RegisterDomainInput from required parameters
newRegisterDomainInput :: DomainName -> DurationInDays -> RegisterDomainInput
newRegisterDomainInput _name _workflowExecutionRetentionPeriodInDays = RegisterDomainInput { "name": _name, "workflowExecutionRetentionPeriodInDays": _workflowExecutionRetentionPeriodInDays, "description": Nothing }

-- | Constructs RegisterDomainInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterDomainInput' :: DomainName -> DurationInDays -> ( { "name" :: (DomainName) , "description" :: Maybe (Description) , "workflowExecutionRetentionPeriodInDays" :: (DurationInDays) } -> {"name" :: (DomainName) , "description" :: Maybe (Description) , "workflowExecutionRetentionPeriodInDays" :: (DurationInDays) } ) -> RegisterDomainInput
newRegisterDomainInput' _name _workflowExecutionRetentionPeriodInDays customize = (RegisterDomainInput <<< customize) { "name": _name, "workflowExecutionRetentionPeriodInDays": _workflowExecutionRetentionPeriodInDays, "description": Nothing }



newtype RegisterWorkflowTypeInput = RegisterWorkflowTypeInput 
  { "domain" :: (DomainName)
  , "name" :: (Name)
  , "version" :: (Version)
  , "description" :: Maybe (Description)
  , "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultExecutionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskList" :: Maybe (TaskList)
  , "defaultTaskPriority" :: Maybe (TaskPriority)
  , "defaultChildPolicy" :: Maybe (ChildPolicy)
  , "defaultLambdaRole" :: Maybe (Arn)
  }
derive instance newtypeRegisterWorkflowTypeInput :: Newtype RegisterWorkflowTypeInput _
derive instance repGenericRegisterWorkflowTypeInput :: Generic RegisterWorkflowTypeInput _
instance showRegisterWorkflowTypeInput :: Show RegisterWorkflowTypeInput where show = genericShow
instance decodeRegisterWorkflowTypeInput :: Decode RegisterWorkflowTypeInput where decode = genericDecode options
instance encodeRegisterWorkflowTypeInput :: Encode RegisterWorkflowTypeInput where encode = genericEncode options

-- | Constructs RegisterWorkflowTypeInput from required parameters
newRegisterWorkflowTypeInput :: DomainName -> Name -> Version -> RegisterWorkflowTypeInput
newRegisterWorkflowTypeInput _domain _name _version = RegisterWorkflowTypeInput { "domain": _domain, "name": _name, "version": _version, "defaultChildPolicy": Nothing, "defaultExecutionStartToCloseTimeout": Nothing, "defaultLambdaRole": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskStartToCloseTimeout": Nothing, "description": Nothing }

-- | Constructs RegisterWorkflowTypeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterWorkflowTypeInput' :: DomainName -> Name -> Version -> ( { "domain" :: (DomainName) , "name" :: (Name) , "version" :: (Version) , "description" :: Maybe (Description) , "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultExecutionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultChildPolicy" :: Maybe (ChildPolicy) , "defaultLambdaRole" :: Maybe (Arn) } -> {"domain" :: (DomainName) , "name" :: (Name) , "version" :: (Version) , "description" :: Maybe (Description) , "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultExecutionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultChildPolicy" :: Maybe (ChildPolicy) , "defaultLambdaRole" :: Maybe (Arn) } ) -> RegisterWorkflowTypeInput
newRegisterWorkflowTypeInput' _domain _name _version customize = (RegisterWorkflowTypeInput <<< customize) { "domain": _domain, "name": _name, "version": _version, "defaultChildPolicy": Nothing, "defaultExecutionStartToCloseTimeout": Nothing, "defaultLambdaRole": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskStartToCloseTimeout": Nothing, "description": Nothing }



newtype RegistrationStatus = RegistrationStatus String
derive instance newtypeRegistrationStatus :: Newtype RegistrationStatus _
derive instance repGenericRegistrationStatus :: Generic RegistrationStatus _
instance showRegistrationStatus :: Show RegistrationStatus where show = genericShow
instance decodeRegistrationStatus :: Decode RegistrationStatus where decode = genericDecode options
instance encodeRegistrationStatus :: Encode RegistrationStatus where encode = genericEncode options



-- | <p>Provides the details of the <code>RequestCancelActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype RequestCancelActivityTaskDecisionAttributes = RequestCancelActivityTaskDecisionAttributes 
  { "activityId" :: (ActivityId)
  }
derive instance newtypeRequestCancelActivityTaskDecisionAttributes :: Newtype RequestCancelActivityTaskDecisionAttributes _
derive instance repGenericRequestCancelActivityTaskDecisionAttributes :: Generic RequestCancelActivityTaskDecisionAttributes _
instance showRequestCancelActivityTaskDecisionAttributes :: Show RequestCancelActivityTaskDecisionAttributes where show = genericShow
instance decodeRequestCancelActivityTaskDecisionAttributes :: Decode RequestCancelActivityTaskDecisionAttributes where decode = genericDecode options
instance encodeRequestCancelActivityTaskDecisionAttributes :: Encode RequestCancelActivityTaskDecisionAttributes where encode = genericEncode options

-- | Constructs RequestCancelActivityTaskDecisionAttributes from required parameters
newRequestCancelActivityTaskDecisionAttributes :: ActivityId -> RequestCancelActivityTaskDecisionAttributes
newRequestCancelActivityTaskDecisionAttributes _activityId = RequestCancelActivityTaskDecisionAttributes { "activityId": _activityId }

-- | Constructs RequestCancelActivityTaskDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestCancelActivityTaskDecisionAttributes' :: ActivityId -> ( { "activityId" :: (ActivityId) } -> {"activityId" :: (ActivityId) } ) -> RequestCancelActivityTaskDecisionAttributes
newRequestCancelActivityTaskDecisionAttributes' _activityId customize = (RequestCancelActivityTaskDecisionAttributes <<< customize) { "activityId": _activityId }



newtype RequestCancelActivityTaskFailedCause = RequestCancelActivityTaskFailedCause String
derive instance newtypeRequestCancelActivityTaskFailedCause :: Newtype RequestCancelActivityTaskFailedCause _
derive instance repGenericRequestCancelActivityTaskFailedCause :: Generic RequestCancelActivityTaskFailedCause _
instance showRequestCancelActivityTaskFailedCause :: Show RequestCancelActivityTaskFailedCause where show = genericShow
instance decodeRequestCancelActivityTaskFailedCause :: Decode RequestCancelActivityTaskFailedCause where decode = genericDecode options
instance encodeRequestCancelActivityTaskFailedCause :: Encode RequestCancelActivityTaskFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>RequestCancelActivityTaskFailed</code> event.</p>
newtype RequestCancelActivityTaskFailedEventAttributes = RequestCancelActivityTaskFailedEventAttributes 
  { "activityId" :: (ActivityId)
  , "cause" :: (RequestCancelActivityTaskFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeRequestCancelActivityTaskFailedEventAttributes :: Newtype RequestCancelActivityTaskFailedEventAttributes _
derive instance repGenericRequestCancelActivityTaskFailedEventAttributes :: Generic RequestCancelActivityTaskFailedEventAttributes _
instance showRequestCancelActivityTaskFailedEventAttributes :: Show RequestCancelActivityTaskFailedEventAttributes where show = genericShow
instance decodeRequestCancelActivityTaskFailedEventAttributes :: Decode RequestCancelActivityTaskFailedEventAttributes where decode = genericDecode options
instance encodeRequestCancelActivityTaskFailedEventAttributes :: Encode RequestCancelActivityTaskFailedEventAttributes where encode = genericEncode options

-- | Constructs RequestCancelActivityTaskFailedEventAttributes from required parameters
newRequestCancelActivityTaskFailedEventAttributes :: ActivityId -> RequestCancelActivityTaskFailedCause -> EventId -> RequestCancelActivityTaskFailedEventAttributes
newRequestCancelActivityTaskFailedEventAttributes _activityId _cause _decisionTaskCompletedEventId = RequestCancelActivityTaskFailedEventAttributes { "activityId": _activityId, "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }

-- | Constructs RequestCancelActivityTaskFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestCancelActivityTaskFailedEventAttributes' :: ActivityId -> RequestCancelActivityTaskFailedCause -> EventId -> ( { "activityId" :: (ActivityId) , "cause" :: (RequestCancelActivityTaskFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"activityId" :: (ActivityId) , "cause" :: (RequestCancelActivityTaskFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> RequestCancelActivityTaskFailedEventAttributes
newRequestCancelActivityTaskFailedEventAttributes' _activityId _cause _decisionTaskCompletedEventId customize = (RequestCancelActivityTaskFailedEventAttributes <<< customize) { "activityId": _activityId, "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }



-- | <p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype RequestCancelExternalWorkflowExecutionDecisionAttributes = RequestCancelExternalWorkflowExecutionDecisionAttributes 
  { "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "control" :: Maybe (Data)
  }
derive instance newtypeRequestCancelExternalWorkflowExecutionDecisionAttributes :: Newtype RequestCancelExternalWorkflowExecutionDecisionAttributes _
derive instance repGenericRequestCancelExternalWorkflowExecutionDecisionAttributes :: Generic RequestCancelExternalWorkflowExecutionDecisionAttributes _
instance showRequestCancelExternalWorkflowExecutionDecisionAttributes :: Show RequestCancelExternalWorkflowExecutionDecisionAttributes where show = genericShow
instance decodeRequestCancelExternalWorkflowExecutionDecisionAttributes :: Decode RequestCancelExternalWorkflowExecutionDecisionAttributes where decode = genericDecode options
instance encodeRequestCancelExternalWorkflowExecutionDecisionAttributes :: Encode RequestCancelExternalWorkflowExecutionDecisionAttributes where encode = genericEncode options

-- | Constructs RequestCancelExternalWorkflowExecutionDecisionAttributes from required parameters
newRequestCancelExternalWorkflowExecutionDecisionAttributes :: WorkflowId -> RequestCancelExternalWorkflowExecutionDecisionAttributes
newRequestCancelExternalWorkflowExecutionDecisionAttributes _workflowId = RequestCancelExternalWorkflowExecutionDecisionAttributes { "workflowId": _workflowId, "control": Nothing, "runId": Nothing }

-- | Constructs RequestCancelExternalWorkflowExecutionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestCancelExternalWorkflowExecutionDecisionAttributes' :: WorkflowId -> ( { "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "control" :: Maybe (Data) } -> {"workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "control" :: Maybe (Data) } ) -> RequestCancelExternalWorkflowExecutionDecisionAttributes
newRequestCancelExternalWorkflowExecutionDecisionAttributes' _workflowId customize = (RequestCancelExternalWorkflowExecutionDecisionAttributes <<< customize) { "workflowId": _workflowId, "control": Nothing, "runId": Nothing }



newtype RequestCancelExternalWorkflowExecutionFailedCause = RequestCancelExternalWorkflowExecutionFailedCause String
derive instance newtypeRequestCancelExternalWorkflowExecutionFailedCause :: Newtype RequestCancelExternalWorkflowExecutionFailedCause _
derive instance repGenericRequestCancelExternalWorkflowExecutionFailedCause :: Generic RequestCancelExternalWorkflowExecutionFailedCause _
instance showRequestCancelExternalWorkflowExecutionFailedCause :: Show RequestCancelExternalWorkflowExecutionFailedCause where show = genericShow
instance decodeRequestCancelExternalWorkflowExecutionFailedCause :: Decode RequestCancelExternalWorkflowExecutionFailedCause where decode = genericDecode options
instance encodeRequestCancelExternalWorkflowExecutionFailedCause :: Encode RequestCancelExternalWorkflowExecutionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>
newtype RequestCancelExternalWorkflowExecutionFailedEventAttributes = RequestCancelExternalWorkflowExecutionFailedEventAttributes 
  { "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "cause" :: (RequestCancelExternalWorkflowExecutionFailedCause)
  , "initiatedEventId" :: (EventId)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "control" :: Maybe (Data)
  }
derive instance newtypeRequestCancelExternalWorkflowExecutionFailedEventAttributes :: Newtype RequestCancelExternalWorkflowExecutionFailedEventAttributes _
derive instance repGenericRequestCancelExternalWorkflowExecutionFailedEventAttributes :: Generic RequestCancelExternalWorkflowExecutionFailedEventAttributes _
instance showRequestCancelExternalWorkflowExecutionFailedEventAttributes :: Show RequestCancelExternalWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeRequestCancelExternalWorkflowExecutionFailedEventAttributes :: Decode RequestCancelExternalWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeRequestCancelExternalWorkflowExecutionFailedEventAttributes :: Encode RequestCancelExternalWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs RequestCancelExternalWorkflowExecutionFailedEventAttributes from required parameters
newRequestCancelExternalWorkflowExecutionFailedEventAttributes :: RequestCancelExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> RequestCancelExternalWorkflowExecutionFailedEventAttributes
newRequestCancelExternalWorkflowExecutionFailedEventAttributes _cause _decisionTaskCompletedEventId _initiatedEventId _workflowId = RequestCancelExternalWorkflowExecutionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "initiatedEventId": _initiatedEventId, "workflowId": _workflowId, "control": Nothing, "runId": Nothing }

-- | Constructs RequestCancelExternalWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestCancelExternalWorkflowExecutionFailedEventAttributes' :: RequestCancelExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> ( { "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "cause" :: (RequestCancelExternalWorkflowExecutionFailedCause) , "initiatedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } -> {"workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "cause" :: (RequestCancelExternalWorkflowExecutionFailedCause) , "initiatedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } ) -> RequestCancelExternalWorkflowExecutionFailedEventAttributes
newRequestCancelExternalWorkflowExecutionFailedEventAttributes' _cause _decisionTaskCompletedEventId _initiatedEventId _workflowId customize = (RequestCancelExternalWorkflowExecutionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "initiatedEventId": _initiatedEventId, "workflowId": _workflowId, "control": Nothing, "runId": Nothing }



-- | <p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>
newtype RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = RequestCancelExternalWorkflowExecutionInitiatedEventAttributes 
  { "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "control" :: Maybe (Data)
  }
derive instance newtypeRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Newtype RequestCancelExternalWorkflowExecutionInitiatedEventAttributes _
derive instance repGenericRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Generic RequestCancelExternalWorkflowExecutionInitiatedEventAttributes _
instance showRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Show RequestCancelExternalWorkflowExecutionInitiatedEventAttributes where show = genericShow
instance decodeRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Decode RequestCancelExternalWorkflowExecutionInitiatedEventAttributes where decode = genericDecode options
instance encodeRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: Encode RequestCancelExternalWorkflowExecutionInitiatedEventAttributes where encode = genericEncode options

-- | Constructs RequestCancelExternalWorkflowExecutionInitiatedEventAttributes from required parameters
newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes :: EventId -> WorkflowId -> RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes _decisionTaskCompletedEventId _workflowId = RequestCancelExternalWorkflowExecutionInitiatedEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "workflowId": _workflowId, "control": Nothing, "runId": Nothing }

-- | Constructs RequestCancelExternalWorkflowExecutionInitiatedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes' :: EventId -> WorkflowId -> ( { "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } -> {"workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } ) -> RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
newRequestCancelExternalWorkflowExecutionInitiatedEventAttributes' _decisionTaskCompletedEventId _workflowId customize = (RequestCancelExternalWorkflowExecutionInitiatedEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "workflowId": _workflowId, "control": Nothing, "runId": Nothing }



newtype RequestCancelWorkflowExecutionInput = RequestCancelWorkflowExecutionInput 
  { "domain" :: (DomainName)
  , "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  }
derive instance newtypeRequestCancelWorkflowExecutionInput :: Newtype RequestCancelWorkflowExecutionInput _
derive instance repGenericRequestCancelWorkflowExecutionInput :: Generic RequestCancelWorkflowExecutionInput _
instance showRequestCancelWorkflowExecutionInput :: Show RequestCancelWorkflowExecutionInput where show = genericShow
instance decodeRequestCancelWorkflowExecutionInput :: Decode RequestCancelWorkflowExecutionInput where decode = genericDecode options
instance encodeRequestCancelWorkflowExecutionInput :: Encode RequestCancelWorkflowExecutionInput where encode = genericEncode options

-- | Constructs RequestCancelWorkflowExecutionInput from required parameters
newRequestCancelWorkflowExecutionInput :: DomainName -> WorkflowId -> RequestCancelWorkflowExecutionInput
newRequestCancelWorkflowExecutionInput _domain _workflowId = RequestCancelWorkflowExecutionInput { "domain": _domain, "workflowId": _workflowId, "runId": Nothing }

-- | Constructs RequestCancelWorkflowExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestCancelWorkflowExecutionInput' :: DomainName -> WorkflowId -> ( { "domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) } -> {"domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) } ) -> RequestCancelWorkflowExecutionInput
newRequestCancelWorkflowExecutionInput' _domain _workflowId customize = (RequestCancelWorkflowExecutionInput <<< customize) { "domain": _domain, "workflowId": _workflowId, "runId": Nothing }



newtype RespondActivityTaskCanceledInput = RespondActivityTaskCanceledInput 
  { "taskToken" :: (TaskToken)
  , "details" :: Maybe (Data)
  }
derive instance newtypeRespondActivityTaskCanceledInput :: Newtype RespondActivityTaskCanceledInput _
derive instance repGenericRespondActivityTaskCanceledInput :: Generic RespondActivityTaskCanceledInput _
instance showRespondActivityTaskCanceledInput :: Show RespondActivityTaskCanceledInput where show = genericShow
instance decodeRespondActivityTaskCanceledInput :: Decode RespondActivityTaskCanceledInput where decode = genericDecode options
instance encodeRespondActivityTaskCanceledInput :: Encode RespondActivityTaskCanceledInput where encode = genericEncode options

-- | Constructs RespondActivityTaskCanceledInput from required parameters
newRespondActivityTaskCanceledInput :: TaskToken -> RespondActivityTaskCanceledInput
newRespondActivityTaskCanceledInput _taskToken = RespondActivityTaskCanceledInput { "taskToken": _taskToken, "details": Nothing }

-- | Constructs RespondActivityTaskCanceledInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRespondActivityTaskCanceledInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) , "details" :: Maybe (Data) } -> {"taskToken" :: (TaskToken) , "details" :: Maybe (Data) } ) -> RespondActivityTaskCanceledInput
newRespondActivityTaskCanceledInput' _taskToken customize = (RespondActivityTaskCanceledInput <<< customize) { "taskToken": _taskToken, "details": Nothing }



newtype RespondActivityTaskCompletedInput = RespondActivityTaskCompletedInput 
  { "taskToken" :: (TaskToken)
  , "result" :: Maybe (Data)
  }
derive instance newtypeRespondActivityTaskCompletedInput :: Newtype RespondActivityTaskCompletedInput _
derive instance repGenericRespondActivityTaskCompletedInput :: Generic RespondActivityTaskCompletedInput _
instance showRespondActivityTaskCompletedInput :: Show RespondActivityTaskCompletedInput where show = genericShow
instance decodeRespondActivityTaskCompletedInput :: Decode RespondActivityTaskCompletedInput where decode = genericDecode options
instance encodeRespondActivityTaskCompletedInput :: Encode RespondActivityTaskCompletedInput where encode = genericEncode options

-- | Constructs RespondActivityTaskCompletedInput from required parameters
newRespondActivityTaskCompletedInput :: TaskToken -> RespondActivityTaskCompletedInput
newRespondActivityTaskCompletedInput _taskToken = RespondActivityTaskCompletedInput { "taskToken": _taskToken, "result": Nothing }

-- | Constructs RespondActivityTaskCompletedInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRespondActivityTaskCompletedInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) , "result" :: Maybe (Data) } -> {"taskToken" :: (TaskToken) , "result" :: Maybe (Data) } ) -> RespondActivityTaskCompletedInput
newRespondActivityTaskCompletedInput' _taskToken customize = (RespondActivityTaskCompletedInput <<< customize) { "taskToken": _taskToken, "result": Nothing }



newtype RespondActivityTaskFailedInput = RespondActivityTaskFailedInput 
  { "taskToken" :: (TaskToken)
  , "reason" :: Maybe (FailureReason)
  , "details" :: Maybe (Data)
  }
derive instance newtypeRespondActivityTaskFailedInput :: Newtype RespondActivityTaskFailedInput _
derive instance repGenericRespondActivityTaskFailedInput :: Generic RespondActivityTaskFailedInput _
instance showRespondActivityTaskFailedInput :: Show RespondActivityTaskFailedInput where show = genericShow
instance decodeRespondActivityTaskFailedInput :: Decode RespondActivityTaskFailedInput where decode = genericDecode options
instance encodeRespondActivityTaskFailedInput :: Encode RespondActivityTaskFailedInput where encode = genericEncode options

-- | Constructs RespondActivityTaskFailedInput from required parameters
newRespondActivityTaskFailedInput :: TaskToken -> RespondActivityTaskFailedInput
newRespondActivityTaskFailedInput _taskToken = RespondActivityTaskFailedInput { "taskToken": _taskToken, "details": Nothing, "reason": Nothing }

-- | Constructs RespondActivityTaskFailedInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRespondActivityTaskFailedInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) , "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) } -> {"taskToken" :: (TaskToken) , "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) } ) -> RespondActivityTaskFailedInput
newRespondActivityTaskFailedInput' _taskToken customize = (RespondActivityTaskFailedInput <<< customize) { "taskToken": _taskToken, "details": Nothing, "reason": Nothing }



-- | <p>Input data for a TaskCompleted response to a decision task.</p>
newtype RespondDecisionTaskCompletedInput = RespondDecisionTaskCompletedInput 
  { "taskToken" :: (TaskToken)
  , "decisions" :: Maybe (DecisionList)
  , "executionContext" :: Maybe (Data)
  }
derive instance newtypeRespondDecisionTaskCompletedInput :: Newtype RespondDecisionTaskCompletedInput _
derive instance repGenericRespondDecisionTaskCompletedInput :: Generic RespondDecisionTaskCompletedInput _
instance showRespondDecisionTaskCompletedInput :: Show RespondDecisionTaskCompletedInput where show = genericShow
instance decodeRespondDecisionTaskCompletedInput :: Decode RespondDecisionTaskCompletedInput where decode = genericDecode options
instance encodeRespondDecisionTaskCompletedInput :: Encode RespondDecisionTaskCompletedInput where encode = genericEncode options

-- | Constructs RespondDecisionTaskCompletedInput from required parameters
newRespondDecisionTaskCompletedInput :: TaskToken -> RespondDecisionTaskCompletedInput
newRespondDecisionTaskCompletedInput _taskToken = RespondDecisionTaskCompletedInput { "taskToken": _taskToken, "decisions": Nothing, "executionContext": Nothing }

-- | Constructs RespondDecisionTaskCompletedInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRespondDecisionTaskCompletedInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) , "decisions" :: Maybe (DecisionList) , "executionContext" :: Maybe (Data) } -> {"taskToken" :: (TaskToken) , "decisions" :: Maybe (DecisionList) , "executionContext" :: Maybe (Data) } ) -> RespondDecisionTaskCompletedInput
newRespondDecisionTaskCompletedInput' _taskToken customize = (RespondDecisionTaskCompletedInput <<< customize) { "taskToken": _taskToken, "decisions": Nothing, "executionContext": Nothing }



newtype ReverseOrder = ReverseOrder Boolean
derive instance newtypeReverseOrder :: Newtype ReverseOrder _
derive instance repGenericReverseOrder :: Generic ReverseOrder _
instance showReverseOrder :: Show ReverseOrder where show = genericShow
instance decodeReverseOrder :: Decode ReverseOrder where decode = genericDecode options
instance encodeReverseOrder :: Encode ReverseOrder where encode = genericEncode options



-- | <p>Specifies the <code>runId</code> of a workflow execution.</p>
newtype Run = Run 
  { "runId" :: Maybe (WorkflowRunId)
  }
derive instance newtypeRun :: Newtype Run _
derive instance repGenericRun :: Generic Run _
instance showRun :: Show Run where show = genericShow
instance decodeRun :: Decode Run where decode = genericDecode options
instance encodeRun :: Encode Run where encode = genericEncode options

-- | Constructs Run from required parameters
newRun :: Run
newRun  = Run { "runId": Nothing }

-- | Constructs Run's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRun' :: ( { "runId" :: Maybe (WorkflowRunId) } -> {"runId" :: Maybe (WorkflowRunId) } ) -> Run
newRun'  customize = (Run <<< customize) { "runId": Nothing }



-- | <p>Provides the details of the <code>ScheduleActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code> – String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code> – String constraint. The key is <code>swf:activityType.version</code>.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype ScheduleActivityTaskDecisionAttributes = ScheduleActivityTaskDecisionAttributes 
  { "activityType" :: (ActivityType)
  , "activityId" :: (ActivityId)
  , "control" :: Maybe (Data)
  , "input" :: Maybe (Data)
  , "scheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "taskList" :: Maybe (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "scheduleToStartTimeout" :: Maybe (DurationInSecondsOptional)
  , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "heartbeatTimeout" :: Maybe (DurationInSecondsOptional)
  }
derive instance newtypeScheduleActivityTaskDecisionAttributes :: Newtype ScheduleActivityTaskDecisionAttributes _
derive instance repGenericScheduleActivityTaskDecisionAttributes :: Generic ScheduleActivityTaskDecisionAttributes _
instance showScheduleActivityTaskDecisionAttributes :: Show ScheduleActivityTaskDecisionAttributes where show = genericShow
instance decodeScheduleActivityTaskDecisionAttributes :: Decode ScheduleActivityTaskDecisionAttributes where decode = genericDecode options
instance encodeScheduleActivityTaskDecisionAttributes :: Encode ScheduleActivityTaskDecisionAttributes where encode = genericEncode options

-- | Constructs ScheduleActivityTaskDecisionAttributes from required parameters
newScheduleActivityTaskDecisionAttributes :: ActivityId -> ActivityType -> ScheduleActivityTaskDecisionAttributes
newScheduleActivityTaskDecisionAttributes _activityId _activityType = ScheduleActivityTaskDecisionAttributes { "activityId": _activityId, "activityType": _activityType, "control": Nothing, "heartbeatTimeout": Nothing, "input": Nothing, "scheduleToCloseTimeout": Nothing, "scheduleToStartTimeout": Nothing, "startToCloseTimeout": Nothing, "taskList": Nothing, "taskPriority": Nothing }

-- | Constructs ScheduleActivityTaskDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleActivityTaskDecisionAttributes' :: ActivityId -> ActivityType -> ( { "activityType" :: (ActivityType) , "activityId" :: (ActivityId) , "control" :: Maybe (Data) , "input" :: Maybe (Data) , "scheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "scheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "heartbeatTimeout" :: Maybe (DurationInSecondsOptional) } -> {"activityType" :: (ActivityType) , "activityId" :: (ActivityId) , "control" :: Maybe (Data) , "input" :: Maybe (Data) , "scheduleToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "scheduleToStartTimeout" :: Maybe (DurationInSecondsOptional) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "heartbeatTimeout" :: Maybe (DurationInSecondsOptional) } ) -> ScheduleActivityTaskDecisionAttributes
newScheduleActivityTaskDecisionAttributes' _activityId _activityType customize = (ScheduleActivityTaskDecisionAttributes <<< customize) { "activityId": _activityId, "activityType": _activityType, "control": Nothing, "heartbeatTimeout": Nothing, "input": Nothing, "scheduleToCloseTimeout": Nothing, "scheduleToStartTimeout": Nothing, "startToCloseTimeout": Nothing, "taskList": Nothing, "taskPriority": Nothing }



newtype ScheduleActivityTaskFailedCause = ScheduleActivityTaskFailedCause String
derive instance newtypeScheduleActivityTaskFailedCause :: Newtype ScheduleActivityTaskFailedCause _
derive instance repGenericScheduleActivityTaskFailedCause :: Generic ScheduleActivityTaskFailedCause _
instance showScheduleActivityTaskFailedCause :: Show ScheduleActivityTaskFailedCause where show = genericShow
instance decodeScheduleActivityTaskFailedCause :: Decode ScheduleActivityTaskFailedCause where decode = genericDecode options
instance encodeScheduleActivityTaskFailedCause :: Encode ScheduleActivityTaskFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>ScheduleActivityTaskFailed</code> event.</p>
newtype ScheduleActivityTaskFailedEventAttributes = ScheduleActivityTaskFailedEventAttributes 
  { "activityType" :: (ActivityType)
  , "activityId" :: (ActivityId)
  , "cause" :: (ScheduleActivityTaskFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeScheduleActivityTaskFailedEventAttributes :: Newtype ScheduleActivityTaskFailedEventAttributes _
derive instance repGenericScheduleActivityTaskFailedEventAttributes :: Generic ScheduleActivityTaskFailedEventAttributes _
instance showScheduleActivityTaskFailedEventAttributes :: Show ScheduleActivityTaskFailedEventAttributes where show = genericShow
instance decodeScheduleActivityTaskFailedEventAttributes :: Decode ScheduleActivityTaskFailedEventAttributes where decode = genericDecode options
instance encodeScheduleActivityTaskFailedEventAttributes :: Encode ScheduleActivityTaskFailedEventAttributes where encode = genericEncode options

-- | Constructs ScheduleActivityTaskFailedEventAttributes from required parameters
newScheduleActivityTaskFailedEventAttributes :: ActivityId -> ActivityType -> ScheduleActivityTaskFailedCause -> EventId -> ScheduleActivityTaskFailedEventAttributes
newScheduleActivityTaskFailedEventAttributes _activityId _activityType _cause _decisionTaskCompletedEventId = ScheduleActivityTaskFailedEventAttributes { "activityId": _activityId, "activityType": _activityType, "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }

-- | Constructs ScheduleActivityTaskFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleActivityTaskFailedEventAttributes' :: ActivityId -> ActivityType -> ScheduleActivityTaskFailedCause -> EventId -> ( { "activityType" :: (ActivityType) , "activityId" :: (ActivityId) , "cause" :: (ScheduleActivityTaskFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"activityType" :: (ActivityType) , "activityId" :: (ActivityId) , "cause" :: (ScheduleActivityTaskFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> ScheduleActivityTaskFailedEventAttributes
newScheduleActivityTaskFailedEventAttributes' _activityId _activityType _cause _decisionTaskCompletedEventId customize = (ScheduleActivityTaskFailedEventAttributes <<< customize) { "activityId": _activityId, "activityType": _activityType, "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId }



-- | <p>Decision attributes specified in <code>scheduleLambdaFunctionDecisionAttributes</code> within the list of decisions <code>decisions</code> passed to <a>RespondDecisionTaskCompleted</a>.</p>
newtype ScheduleLambdaFunctionDecisionAttributes = ScheduleLambdaFunctionDecisionAttributes 
  { "id" :: (FunctionId)
  , "name" :: (FunctionName)
  , "control" :: Maybe (Data)
  , "input" :: Maybe (FunctionInput)
  , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  }
derive instance newtypeScheduleLambdaFunctionDecisionAttributes :: Newtype ScheduleLambdaFunctionDecisionAttributes _
derive instance repGenericScheduleLambdaFunctionDecisionAttributes :: Generic ScheduleLambdaFunctionDecisionAttributes _
instance showScheduleLambdaFunctionDecisionAttributes :: Show ScheduleLambdaFunctionDecisionAttributes where show = genericShow
instance decodeScheduleLambdaFunctionDecisionAttributes :: Decode ScheduleLambdaFunctionDecisionAttributes where decode = genericDecode options
instance encodeScheduleLambdaFunctionDecisionAttributes :: Encode ScheduleLambdaFunctionDecisionAttributes where encode = genericEncode options

-- | Constructs ScheduleLambdaFunctionDecisionAttributes from required parameters
newScheduleLambdaFunctionDecisionAttributes :: FunctionId -> FunctionName -> ScheduleLambdaFunctionDecisionAttributes
newScheduleLambdaFunctionDecisionAttributes _id _name = ScheduleLambdaFunctionDecisionAttributes { "id": _id, "name": _name, "control": Nothing, "input": Nothing, "startToCloseTimeout": Nothing }

-- | Constructs ScheduleLambdaFunctionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleLambdaFunctionDecisionAttributes' :: FunctionId -> FunctionName -> ( { "id" :: (FunctionId) , "name" :: (FunctionName) , "control" :: Maybe (Data) , "input" :: Maybe (FunctionInput) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) } -> {"id" :: (FunctionId) , "name" :: (FunctionName) , "control" :: Maybe (Data) , "input" :: Maybe (FunctionInput) , "startToCloseTimeout" :: Maybe (DurationInSecondsOptional) } ) -> ScheduleLambdaFunctionDecisionAttributes
newScheduleLambdaFunctionDecisionAttributes' _id _name customize = (ScheduleLambdaFunctionDecisionAttributes <<< customize) { "id": _id, "name": _name, "control": Nothing, "input": Nothing, "startToCloseTimeout": Nothing }



newtype ScheduleLambdaFunctionFailedCause = ScheduleLambdaFunctionFailedCause String
derive instance newtypeScheduleLambdaFunctionFailedCause :: Newtype ScheduleLambdaFunctionFailedCause _
derive instance repGenericScheduleLambdaFunctionFailedCause :: Generic ScheduleLambdaFunctionFailedCause _
instance showScheduleLambdaFunctionFailedCause :: Show ScheduleLambdaFunctionFailedCause where show = genericShow
instance decodeScheduleLambdaFunctionFailedCause :: Decode ScheduleLambdaFunctionFailedCause where decode = genericDecode options
instance encodeScheduleLambdaFunctionFailedCause :: Encode ScheduleLambdaFunctionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't set for other event types.</p>
newtype ScheduleLambdaFunctionFailedEventAttributes = ScheduleLambdaFunctionFailedEventAttributes 
  { "id" :: (FunctionId)
  , "name" :: (FunctionName)
  , "cause" :: (ScheduleLambdaFunctionFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeScheduleLambdaFunctionFailedEventAttributes :: Newtype ScheduleLambdaFunctionFailedEventAttributes _
derive instance repGenericScheduleLambdaFunctionFailedEventAttributes :: Generic ScheduleLambdaFunctionFailedEventAttributes _
instance showScheduleLambdaFunctionFailedEventAttributes :: Show ScheduleLambdaFunctionFailedEventAttributes where show = genericShow
instance decodeScheduleLambdaFunctionFailedEventAttributes :: Decode ScheduleLambdaFunctionFailedEventAttributes where decode = genericDecode options
instance encodeScheduleLambdaFunctionFailedEventAttributes :: Encode ScheduleLambdaFunctionFailedEventAttributes where encode = genericEncode options

-- | Constructs ScheduleLambdaFunctionFailedEventAttributes from required parameters
newScheduleLambdaFunctionFailedEventAttributes :: ScheduleLambdaFunctionFailedCause -> EventId -> FunctionId -> FunctionName -> ScheduleLambdaFunctionFailedEventAttributes
newScheduleLambdaFunctionFailedEventAttributes _cause _decisionTaskCompletedEventId _id _name = ScheduleLambdaFunctionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "id": _id, "name": _name }

-- | Constructs ScheduleLambdaFunctionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleLambdaFunctionFailedEventAttributes' :: ScheduleLambdaFunctionFailedCause -> EventId -> FunctionId -> FunctionName -> ( { "id" :: (FunctionId) , "name" :: (FunctionName) , "cause" :: (ScheduleLambdaFunctionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"id" :: (FunctionId) , "name" :: (FunctionName) , "cause" :: (ScheduleLambdaFunctionFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> ScheduleLambdaFunctionFailedEventAttributes
newScheduleLambdaFunctionFailedEventAttributes' _cause _decisionTaskCompletedEventId _id _name customize = (ScheduleLambdaFunctionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "id": _id, "name": _name }



-- | <p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype SignalExternalWorkflowExecutionDecisionAttributes = SignalExternalWorkflowExecutionDecisionAttributes 
  { "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "signalName" :: (SignalName)
  , "input" :: Maybe (Data)
  , "control" :: Maybe (Data)
  }
derive instance newtypeSignalExternalWorkflowExecutionDecisionAttributes :: Newtype SignalExternalWorkflowExecutionDecisionAttributes _
derive instance repGenericSignalExternalWorkflowExecutionDecisionAttributes :: Generic SignalExternalWorkflowExecutionDecisionAttributes _
instance showSignalExternalWorkflowExecutionDecisionAttributes :: Show SignalExternalWorkflowExecutionDecisionAttributes where show = genericShow
instance decodeSignalExternalWorkflowExecutionDecisionAttributes :: Decode SignalExternalWorkflowExecutionDecisionAttributes where decode = genericDecode options
instance encodeSignalExternalWorkflowExecutionDecisionAttributes :: Encode SignalExternalWorkflowExecutionDecisionAttributes where encode = genericEncode options

-- | Constructs SignalExternalWorkflowExecutionDecisionAttributes from required parameters
newSignalExternalWorkflowExecutionDecisionAttributes :: SignalName -> WorkflowId -> SignalExternalWorkflowExecutionDecisionAttributes
newSignalExternalWorkflowExecutionDecisionAttributes _signalName _workflowId = SignalExternalWorkflowExecutionDecisionAttributes { "signalName": _signalName, "workflowId": _workflowId, "control": Nothing, "input": Nothing, "runId": Nothing }

-- | Constructs SignalExternalWorkflowExecutionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSignalExternalWorkflowExecutionDecisionAttributes' :: SignalName -> WorkflowId -> ( { "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "signalName" :: (SignalName) , "input" :: Maybe (Data) , "control" :: Maybe (Data) } -> {"workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "signalName" :: (SignalName) , "input" :: Maybe (Data) , "control" :: Maybe (Data) } ) -> SignalExternalWorkflowExecutionDecisionAttributes
newSignalExternalWorkflowExecutionDecisionAttributes' _signalName _workflowId customize = (SignalExternalWorkflowExecutionDecisionAttributes <<< customize) { "signalName": _signalName, "workflowId": _workflowId, "control": Nothing, "input": Nothing, "runId": Nothing }



newtype SignalExternalWorkflowExecutionFailedCause = SignalExternalWorkflowExecutionFailedCause String
derive instance newtypeSignalExternalWorkflowExecutionFailedCause :: Newtype SignalExternalWorkflowExecutionFailedCause _
derive instance repGenericSignalExternalWorkflowExecutionFailedCause :: Generic SignalExternalWorkflowExecutionFailedCause _
instance showSignalExternalWorkflowExecutionFailedCause :: Show SignalExternalWorkflowExecutionFailedCause where show = genericShow
instance decodeSignalExternalWorkflowExecutionFailedCause :: Decode SignalExternalWorkflowExecutionFailedCause where decode = genericDecode options
instance encodeSignalExternalWorkflowExecutionFailedCause :: Encode SignalExternalWorkflowExecutionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>
newtype SignalExternalWorkflowExecutionFailedEventAttributes = SignalExternalWorkflowExecutionFailedEventAttributes 
  { "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "cause" :: (SignalExternalWorkflowExecutionFailedCause)
  , "initiatedEventId" :: (EventId)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "control" :: Maybe (Data)
  }
derive instance newtypeSignalExternalWorkflowExecutionFailedEventAttributes :: Newtype SignalExternalWorkflowExecutionFailedEventAttributes _
derive instance repGenericSignalExternalWorkflowExecutionFailedEventAttributes :: Generic SignalExternalWorkflowExecutionFailedEventAttributes _
instance showSignalExternalWorkflowExecutionFailedEventAttributes :: Show SignalExternalWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeSignalExternalWorkflowExecutionFailedEventAttributes :: Decode SignalExternalWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeSignalExternalWorkflowExecutionFailedEventAttributes :: Encode SignalExternalWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs SignalExternalWorkflowExecutionFailedEventAttributes from required parameters
newSignalExternalWorkflowExecutionFailedEventAttributes :: SignalExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> SignalExternalWorkflowExecutionFailedEventAttributes
newSignalExternalWorkflowExecutionFailedEventAttributes _cause _decisionTaskCompletedEventId _initiatedEventId _workflowId = SignalExternalWorkflowExecutionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "initiatedEventId": _initiatedEventId, "workflowId": _workflowId, "control": Nothing, "runId": Nothing }

-- | Constructs SignalExternalWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSignalExternalWorkflowExecutionFailedEventAttributes' :: SignalExternalWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> ( { "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "cause" :: (SignalExternalWorkflowExecutionFailedCause) , "initiatedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } -> {"workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "cause" :: (SignalExternalWorkflowExecutionFailedCause) , "initiatedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } ) -> SignalExternalWorkflowExecutionFailedEventAttributes
newSignalExternalWorkflowExecutionFailedEventAttributes' _cause _decisionTaskCompletedEventId _initiatedEventId _workflowId customize = (SignalExternalWorkflowExecutionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "initiatedEventId": _initiatedEventId, "workflowId": _workflowId, "control": Nothing, "runId": Nothing }



-- | <p>Provides the details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>
newtype SignalExternalWorkflowExecutionInitiatedEventAttributes = SignalExternalWorkflowExecutionInitiatedEventAttributes 
  { "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "signalName" :: (SignalName)
  , "input" :: Maybe (Data)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "control" :: Maybe (Data)
  }
derive instance newtypeSignalExternalWorkflowExecutionInitiatedEventAttributes :: Newtype SignalExternalWorkflowExecutionInitiatedEventAttributes _
derive instance repGenericSignalExternalWorkflowExecutionInitiatedEventAttributes :: Generic SignalExternalWorkflowExecutionInitiatedEventAttributes _
instance showSignalExternalWorkflowExecutionInitiatedEventAttributes :: Show SignalExternalWorkflowExecutionInitiatedEventAttributes where show = genericShow
instance decodeSignalExternalWorkflowExecutionInitiatedEventAttributes :: Decode SignalExternalWorkflowExecutionInitiatedEventAttributes where decode = genericDecode options
instance encodeSignalExternalWorkflowExecutionInitiatedEventAttributes :: Encode SignalExternalWorkflowExecutionInitiatedEventAttributes where encode = genericEncode options

-- | Constructs SignalExternalWorkflowExecutionInitiatedEventAttributes from required parameters
newSignalExternalWorkflowExecutionInitiatedEventAttributes :: EventId -> SignalName -> WorkflowId -> SignalExternalWorkflowExecutionInitiatedEventAttributes
newSignalExternalWorkflowExecutionInitiatedEventAttributes _decisionTaskCompletedEventId _signalName _workflowId = SignalExternalWorkflowExecutionInitiatedEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "signalName": _signalName, "workflowId": _workflowId, "control": Nothing, "input": Nothing, "runId": Nothing }

-- | Constructs SignalExternalWorkflowExecutionInitiatedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSignalExternalWorkflowExecutionInitiatedEventAttributes' :: EventId -> SignalName -> WorkflowId -> ( { "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "signalName" :: (SignalName) , "input" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } -> {"workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "signalName" :: (SignalName) , "input" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } ) -> SignalExternalWorkflowExecutionInitiatedEventAttributes
newSignalExternalWorkflowExecutionInitiatedEventAttributes' _decisionTaskCompletedEventId _signalName _workflowId customize = (SignalExternalWorkflowExecutionInitiatedEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "signalName": _signalName, "workflowId": _workflowId, "control": Nothing, "input": Nothing, "runId": Nothing }



newtype SignalName = SignalName String
derive instance newtypeSignalName :: Newtype SignalName _
derive instance repGenericSignalName :: Generic SignalName _
instance showSignalName :: Show SignalName where show = genericShow
instance decodeSignalName :: Decode SignalName where decode = genericDecode options
instance encodeSignalName :: Encode SignalName where encode = genericEncode options



newtype SignalWorkflowExecutionInput = SignalWorkflowExecutionInput 
  { "domain" :: (DomainName)
  , "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "signalName" :: (SignalName)
  , "input" :: Maybe (Data)
  }
derive instance newtypeSignalWorkflowExecutionInput :: Newtype SignalWorkflowExecutionInput _
derive instance repGenericSignalWorkflowExecutionInput :: Generic SignalWorkflowExecutionInput _
instance showSignalWorkflowExecutionInput :: Show SignalWorkflowExecutionInput where show = genericShow
instance decodeSignalWorkflowExecutionInput :: Decode SignalWorkflowExecutionInput where decode = genericDecode options
instance encodeSignalWorkflowExecutionInput :: Encode SignalWorkflowExecutionInput where encode = genericEncode options

-- | Constructs SignalWorkflowExecutionInput from required parameters
newSignalWorkflowExecutionInput :: DomainName -> SignalName -> WorkflowId -> SignalWorkflowExecutionInput
newSignalWorkflowExecutionInput _domain _signalName _workflowId = SignalWorkflowExecutionInput { "domain": _domain, "signalName": _signalName, "workflowId": _workflowId, "input": Nothing, "runId": Nothing }

-- | Constructs SignalWorkflowExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSignalWorkflowExecutionInput' :: DomainName -> SignalName -> WorkflowId -> ( { "domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "signalName" :: (SignalName) , "input" :: Maybe (Data) } -> {"domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "signalName" :: (SignalName) , "input" :: Maybe (Data) } ) -> SignalWorkflowExecutionInput
newSignalWorkflowExecutionInput' _domain _signalName _workflowId customize = (SignalWorkflowExecutionInput <<< customize) { "domain": _domain, "signalName": _signalName, "workflowId": _workflowId, "input": Nothing, "runId": Nothing }



-- | <p>Provides the details of the <code>StartChildWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.N</code> – The key is "swf:tagList.N" where N is the tag number from 0 to 4, inclusive.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code> – String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype StartChildWorkflowExecutionDecisionAttributes = StartChildWorkflowExecutionDecisionAttributes 
  { "workflowType" :: (WorkflowType)
  , "workflowId" :: (WorkflowId)
  , "control" :: Maybe (Data)
  , "input" :: Maybe (Data)
  , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "taskList" :: Maybe (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "childPolicy" :: Maybe (ChildPolicy)
  , "tagList" :: Maybe (TagList)
  , "lambdaRole" :: Maybe (Arn)
  }
derive instance newtypeStartChildWorkflowExecutionDecisionAttributes :: Newtype StartChildWorkflowExecutionDecisionAttributes _
derive instance repGenericStartChildWorkflowExecutionDecisionAttributes :: Generic StartChildWorkflowExecutionDecisionAttributes _
instance showStartChildWorkflowExecutionDecisionAttributes :: Show StartChildWorkflowExecutionDecisionAttributes where show = genericShow
instance decodeStartChildWorkflowExecutionDecisionAttributes :: Decode StartChildWorkflowExecutionDecisionAttributes where decode = genericDecode options
instance encodeStartChildWorkflowExecutionDecisionAttributes :: Encode StartChildWorkflowExecutionDecisionAttributes where encode = genericEncode options

-- | Constructs StartChildWorkflowExecutionDecisionAttributes from required parameters
newStartChildWorkflowExecutionDecisionAttributes :: WorkflowId -> WorkflowType -> StartChildWorkflowExecutionDecisionAttributes
newStartChildWorkflowExecutionDecisionAttributes _workflowId _workflowType = StartChildWorkflowExecutionDecisionAttributes { "workflowId": _workflowId, "workflowType": _workflowType, "childPolicy": Nothing, "control": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }

-- | Constructs StartChildWorkflowExecutionDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartChildWorkflowExecutionDecisionAttributes' :: WorkflowId -> WorkflowType -> ( { "workflowType" :: (WorkflowType) , "workflowId" :: (WorkflowId) , "control" :: Maybe (Data) , "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: Maybe (ChildPolicy) , "tagList" :: Maybe (TagList) , "lambdaRole" :: Maybe (Arn) } -> {"workflowType" :: (WorkflowType) , "workflowId" :: (WorkflowId) , "control" :: Maybe (Data) , "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: Maybe (ChildPolicy) , "tagList" :: Maybe (TagList) , "lambdaRole" :: Maybe (Arn) } ) -> StartChildWorkflowExecutionDecisionAttributes
newStartChildWorkflowExecutionDecisionAttributes' _workflowId _workflowType customize = (StartChildWorkflowExecutionDecisionAttributes <<< customize) { "workflowId": _workflowId, "workflowType": _workflowType, "childPolicy": Nothing, "control": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }



newtype StartChildWorkflowExecutionFailedCause = StartChildWorkflowExecutionFailedCause String
derive instance newtypeStartChildWorkflowExecutionFailedCause :: Newtype StartChildWorkflowExecutionFailedCause _
derive instance repGenericStartChildWorkflowExecutionFailedCause :: Generic StartChildWorkflowExecutionFailedCause _
instance showStartChildWorkflowExecutionFailedCause :: Show StartChildWorkflowExecutionFailedCause where show = genericShow
instance decodeStartChildWorkflowExecutionFailedCause :: Decode StartChildWorkflowExecutionFailedCause where decode = genericDecode options
instance encodeStartChildWorkflowExecutionFailedCause :: Encode StartChildWorkflowExecutionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>
newtype StartChildWorkflowExecutionFailedEventAttributes = StartChildWorkflowExecutionFailedEventAttributes 
  { "workflowType" :: (WorkflowType)
  , "cause" :: (StartChildWorkflowExecutionFailedCause)
  , "workflowId" :: (WorkflowId)
  , "initiatedEventId" :: (EventId)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "control" :: Maybe (Data)
  }
derive instance newtypeStartChildWorkflowExecutionFailedEventAttributes :: Newtype StartChildWorkflowExecutionFailedEventAttributes _
derive instance repGenericStartChildWorkflowExecutionFailedEventAttributes :: Generic StartChildWorkflowExecutionFailedEventAttributes _
instance showStartChildWorkflowExecutionFailedEventAttributes :: Show StartChildWorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeStartChildWorkflowExecutionFailedEventAttributes :: Decode StartChildWorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeStartChildWorkflowExecutionFailedEventAttributes :: Encode StartChildWorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs StartChildWorkflowExecutionFailedEventAttributes from required parameters
newStartChildWorkflowExecutionFailedEventAttributes :: StartChildWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> WorkflowType -> StartChildWorkflowExecutionFailedEventAttributes
newStartChildWorkflowExecutionFailedEventAttributes _cause _decisionTaskCompletedEventId _initiatedEventId _workflowId _workflowType = StartChildWorkflowExecutionFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "initiatedEventId": _initiatedEventId, "workflowId": _workflowId, "workflowType": _workflowType, "control": Nothing }

-- | Constructs StartChildWorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartChildWorkflowExecutionFailedEventAttributes' :: StartChildWorkflowExecutionFailedCause -> EventId -> EventId -> WorkflowId -> WorkflowType -> ( { "workflowType" :: (WorkflowType) , "cause" :: (StartChildWorkflowExecutionFailedCause) , "workflowId" :: (WorkflowId) , "initiatedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } -> {"workflowType" :: (WorkflowType) , "cause" :: (StartChildWorkflowExecutionFailedCause) , "workflowId" :: (WorkflowId) , "initiatedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) , "control" :: Maybe (Data) } ) -> StartChildWorkflowExecutionFailedEventAttributes
newStartChildWorkflowExecutionFailedEventAttributes' _cause _decisionTaskCompletedEventId _initiatedEventId _workflowId _workflowType customize = (StartChildWorkflowExecutionFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "initiatedEventId": _initiatedEventId, "workflowId": _workflowId, "workflowType": _workflowType, "control": Nothing }



-- | <p>Provides the details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>
newtype StartChildWorkflowExecutionInitiatedEventAttributes = StartChildWorkflowExecutionInitiatedEventAttributes 
  { "workflowId" :: (WorkflowId)
  , "workflowType" :: (WorkflowType)
  , "control" :: Maybe (Data)
  , "input" :: Maybe (Data)
  , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "taskList" :: (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "childPolicy" :: (ChildPolicy)
  , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "tagList" :: Maybe (TagList)
  , "lambdaRole" :: Maybe (Arn)
  }
derive instance newtypeStartChildWorkflowExecutionInitiatedEventAttributes :: Newtype StartChildWorkflowExecutionInitiatedEventAttributes _
derive instance repGenericStartChildWorkflowExecutionInitiatedEventAttributes :: Generic StartChildWorkflowExecutionInitiatedEventAttributes _
instance showStartChildWorkflowExecutionInitiatedEventAttributes :: Show StartChildWorkflowExecutionInitiatedEventAttributes where show = genericShow
instance decodeStartChildWorkflowExecutionInitiatedEventAttributes :: Decode StartChildWorkflowExecutionInitiatedEventAttributes where decode = genericDecode options
instance encodeStartChildWorkflowExecutionInitiatedEventAttributes :: Encode StartChildWorkflowExecutionInitiatedEventAttributes where encode = genericEncode options

-- | Constructs StartChildWorkflowExecutionInitiatedEventAttributes from required parameters
newStartChildWorkflowExecutionInitiatedEventAttributes :: ChildPolicy -> EventId -> TaskList -> WorkflowId -> WorkflowType -> StartChildWorkflowExecutionInitiatedEventAttributes
newStartChildWorkflowExecutionInitiatedEventAttributes _childPolicy _decisionTaskCompletedEventId _taskList _workflowId _workflowType = StartChildWorkflowExecutionInitiatedEventAttributes { "childPolicy": _childPolicy, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "taskList": _taskList, "workflowId": _workflowId, "workflowType": _workflowType, "control": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }

-- | Constructs StartChildWorkflowExecutionInitiatedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartChildWorkflowExecutionInitiatedEventAttributes' :: ChildPolicy -> EventId -> TaskList -> WorkflowId -> WorkflowType -> ( { "workflowId" :: (WorkflowId) , "workflowType" :: (WorkflowType) , "control" :: Maybe (Data) , "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "decisionTaskCompletedEventId" :: (EventId) , "childPolicy" :: (ChildPolicy) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "tagList" :: Maybe (TagList) , "lambdaRole" :: Maybe (Arn) } -> {"workflowId" :: (WorkflowId) , "workflowType" :: (WorkflowType) , "control" :: Maybe (Data) , "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "decisionTaskCompletedEventId" :: (EventId) , "childPolicy" :: (ChildPolicy) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "tagList" :: Maybe (TagList) , "lambdaRole" :: Maybe (Arn) } ) -> StartChildWorkflowExecutionInitiatedEventAttributes
newStartChildWorkflowExecutionInitiatedEventAttributes' _childPolicy _decisionTaskCompletedEventId _taskList _workflowId _workflowType customize = (StartChildWorkflowExecutionInitiatedEventAttributes <<< customize) { "childPolicy": _childPolicy, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "taskList": _taskList, "workflowId": _workflowId, "workflowType": _workflowType, "control": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }



newtype StartLambdaFunctionFailedCause = StartLambdaFunctionFailedCause String
derive instance newtypeStartLambdaFunctionFailedCause :: Newtype StartLambdaFunctionFailedCause _
derive instance repGenericStartLambdaFunctionFailedCause :: Generic StartLambdaFunctionFailedCause _
instance showStartLambdaFunctionFailedCause :: Show StartLambdaFunctionFailedCause where show = genericShow
instance decodeStartLambdaFunctionFailedCause :: Decode StartLambdaFunctionFailedCause where decode = genericDecode options
instance encodeStartLambdaFunctionFailedCause :: Encode StartLambdaFunctionFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set for other event types.</p>
newtype StartLambdaFunctionFailedEventAttributes = StartLambdaFunctionFailedEventAttributes 
  { "scheduledEventId" :: Maybe (EventId)
  , "cause" :: Maybe (StartLambdaFunctionFailedCause)
  , "message" :: Maybe (CauseMessage)
  }
derive instance newtypeStartLambdaFunctionFailedEventAttributes :: Newtype StartLambdaFunctionFailedEventAttributes _
derive instance repGenericStartLambdaFunctionFailedEventAttributes :: Generic StartLambdaFunctionFailedEventAttributes _
instance showStartLambdaFunctionFailedEventAttributes :: Show StartLambdaFunctionFailedEventAttributes where show = genericShow
instance decodeStartLambdaFunctionFailedEventAttributes :: Decode StartLambdaFunctionFailedEventAttributes where decode = genericDecode options
instance encodeStartLambdaFunctionFailedEventAttributes :: Encode StartLambdaFunctionFailedEventAttributes where encode = genericEncode options

-- | Constructs StartLambdaFunctionFailedEventAttributes from required parameters
newStartLambdaFunctionFailedEventAttributes :: StartLambdaFunctionFailedEventAttributes
newStartLambdaFunctionFailedEventAttributes  = StartLambdaFunctionFailedEventAttributes { "cause": Nothing, "message": Nothing, "scheduledEventId": Nothing }

-- | Constructs StartLambdaFunctionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLambdaFunctionFailedEventAttributes' :: ( { "scheduledEventId" :: Maybe (EventId) , "cause" :: Maybe (StartLambdaFunctionFailedCause) , "message" :: Maybe (CauseMessage) } -> {"scheduledEventId" :: Maybe (EventId) , "cause" :: Maybe (StartLambdaFunctionFailedCause) , "message" :: Maybe (CauseMessage) } ) -> StartLambdaFunctionFailedEventAttributes
newStartLambdaFunctionFailedEventAttributes'  customize = (StartLambdaFunctionFailedEventAttributes <<< customize) { "cause": Nothing, "message": Nothing, "scheduledEventId": Nothing }



-- | <p>Provides the details of the <code>StartTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
newtype StartTimerDecisionAttributes = StartTimerDecisionAttributes 
  { "timerId" :: (TimerId)
  , "control" :: Maybe (Data)
  , "startToFireTimeout" :: (DurationInSeconds)
  }
derive instance newtypeStartTimerDecisionAttributes :: Newtype StartTimerDecisionAttributes _
derive instance repGenericStartTimerDecisionAttributes :: Generic StartTimerDecisionAttributes _
instance showStartTimerDecisionAttributes :: Show StartTimerDecisionAttributes where show = genericShow
instance decodeStartTimerDecisionAttributes :: Decode StartTimerDecisionAttributes where decode = genericDecode options
instance encodeStartTimerDecisionAttributes :: Encode StartTimerDecisionAttributes where encode = genericEncode options

-- | Constructs StartTimerDecisionAttributes from required parameters
newStartTimerDecisionAttributes :: DurationInSeconds -> TimerId -> StartTimerDecisionAttributes
newStartTimerDecisionAttributes _startToFireTimeout _timerId = StartTimerDecisionAttributes { "startToFireTimeout": _startToFireTimeout, "timerId": _timerId, "control": Nothing }

-- | Constructs StartTimerDecisionAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTimerDecisionAttributes' :: DurationInSeconds -> TimerId -> ( { "timerId" :: (TimerId) , "control" :: Maybe (Data) , "startToFireTimeout" :: (DurationInSeconds) } -> {"timerId" :: (TimerId) , "control" :: Maybe (Data) , "startToFireTimeout" :: (DurationInSeconds) } ) -> StartTimerDecisionAttributes
newStartTimerDecisionAttributes' _startToFireTimeout _timerId customize = (StartTimerDecisionAttributes <<< customize) { "startToFireTimeout": _startToFireTimeout, "timerId": _timerId, "control": Nothing }



newtype StartTimerFailedCause = StartTimerFailedCause String
derive instance newtypeStartTimerFailedCause :: Newtype StartTimerFailedCause _
derive instance repGenericStartTimerFailedCause :: Generic StartTimerFailedCause _
instance showStartTimerFailedCause :: Show StartTimerFailedCause where show = genericShow
instance decodeStartTimerFailedCause :: Decode StartTimerFailedCause where decode = genericDecode options
instance encodeStartTimerFailedCause :: Encode StartTimerFailedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>StartTimerFailed</code> event.</p>
newtype StartTimerFailedEventAttributes = StartTimerFailedEventAttributes 
  { "timerId" :: (TimerId)
  , "cause" :: (StartTimerFailedCause)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeStartTimerFailedEventAttributes :: Newtype StartTimerFailedEventAttributes _
derive instance repGenericStartTimerFailedEventAttributes :: Generic StartTimerFailedEventAttributes _
instance showStartTimerFailedEventAttributes :: Show StartTimerFailedEventAttributes where show = genericShow
instance decodeStartTimerFailedEventAttributes :: Decode StartTimerFailedEventAttributes where decode = genericDecode options
instance encodeStartTimerFailedEventAttributes :: Encode StartTimerFailedEventAttributes where encode = genericEncode options

-- | Constructs StartTimerFailedEventAttributes from required parameters
newStartTimerFailedEventAttributes :: StartTimerFailedCause -> EventId -> TimerId -> StartTimerFailedEventAttributes
newStartTimerFailedEventAttributes _cause _decisionTaskCompletedEventId _timerId = StartTimerFailedEventAttributes { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "timerId": _timerId }

-- | Constructs StartTimerFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTimerFailedEventAttributes' :: StartTimerFailedCause -> EventId -> TimerId -> ( { "timerId" :: (TimerId) , "cause" :: (StartTimerFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } -> {"timerId" :: (TimerId) , "cause" :: (StartTimerFailedCause) , "decisionTaskCompletedEventId" :: (EventId) } ) -> StartTimerFailedEventAttributes
newStartTimerFailedEventAttributes' _cause _decisionTaskCompletedEventId _timerId customize = (StartTimerFailedEventAttributes <<< customize) { "cause": _cause, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "timerId": _timerId }



newtype StartWorkflowExecutionInput = StartWorkflowExecutionInput 
  { "domain" :: (DomainName)
  , "workflowId" :: (WorkflowId)
  , "workflowType" :: (WorkflowType)
  , "taskList" :: Maybe (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "input" :: Maybe (Data)
  , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "tagList" :: Maybe (TagList)
  , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "childPolicy" :: Maybe (ChildPolicy)
  , "lambdaRole" :: Maybe (Arn)
  }
derive instance newtypeStartWorkflowExecutionInput :: Newtype StartWorkflowExecutionInput _
derive instance repGenericStartWorkflowExecutionInput :: Generic StartWorkflowExecutionInput _
instance showStartWorkflowExecutionInput :: Show StartWorkflowExecutionInput where show = genericShow
instance decodeStartWorkflowExecutionInput :: Decode StartWorkflowExecutionInput where decode = genericDecode options
instance encodeStartWorkflowExecutionInput :: Encode StartWorkflowExecutionInput where encode = genericEncode options

-- | Constructs StartWorkflowExecutionInput from required parameters
newStartWorkflowExecutionInput :: DomainName -> WorkflowId -> WorkflowType -> StartWorkflowExecutionInput
newStartWorkflowExecutionInput _domain _workflowId _workflowType = StartWorkflowExecutionInput { "domain": _domain, "workflowId": _workflowId, "workflowType": _workflowType, "childPolicy": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }

-- | Constructs StartWorkflowExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartWorkflowExecutionInput' :: DomainName -> WorkflowId -> WorkflowType -> ( { "domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "workflowType" :: (WorkflowType) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "tagList" :: Maybe (TagList) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: Maybe (ChildPolicy) , "lambdaRole" :: Maybe (Arn) } -> {"domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "workflowType" :: (WorkflowType) , "taskList" :: Maybe (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "tagList" :: Maybe (TagList) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: Maybe (ChildPolicy) , "lambdaRole" :: Maybe (Arn) } ) -> StartWorkflowExecutionInput
newStartWorkflowExecutionInput' _domain _workflowId _workflowType customize = (StartWorkflowExecutionInput <<< customize) { "domain": _domain, "workflowId": _workflowId, "workflowType": _workflowType, "childPolicy": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }



newtype Tag = Tag String
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options



-- | <p>Used to filter the workflow executions in visibility APIs based on a tag.</p>
newtype TagFilter = TagFilter 
  { "tag" :: (Tag)
  }
derive instance newtypeTagFilter :: Newtype TagFilter _
derive instance repGenericTagFilter :: Generic TagFilter _
instance showTagFilter :: Show TagFilter where show = genericShow
instance decodeTagFilter :: Decode TagFilter where decode = genericDecode options
instance encodeTagFilter :: Encode TagFilter where encode = genericEncode options

-- | Constructs TagFilter from required parameters
newTagFilter :: Tag -> TagFilter
newTagFilter _tag = TagFilter { "tag": _tag }

-- | Constructs TagFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagFilter' :: Tag -> ( { "tag" :: (Tag) } -> {"tag" :: (Tag) } ) -> TagFilter
newTagFilter' _tag customize = (TagFilter <<< customize) { "tag": _tag }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



-- | <p>Represents a task list.</p>
newtype TaskList = TaskList 
  { "name" :: (Name)
  }
derive instance newtypeTaskList :: Newtype TaskList _
derive instance repGenericTaskList :: Generic TaskList _
instance showTaskList :: Show TaskList where show = genericShow
instance decodeTaskList :: Decode TaskList where decode = genericDecode options
instance encodeTaskList :: Encode TaskList where encode = genericEncode options

-- | Constructs TaskList from required parameters
newTaskList :: Name -> TaskList
newTaskList _name = TaskList { "name": _name }

-- | Constructs TaskList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskList' :: Name -> ( { "name" :: (Name) } -> {"name" :: (Name) } ) -> TaskList
newTaskList' _name customize = (TaskList <<< customize) { "name": _name }



newtype TaskPriority = TaskPriority String
derive instance newtypeTaskPriority :: Newtype TaskPriority _
derive instance repGenericTaskPriority :: Generic TaskPriority _
instance showTaskPriority :: Show TaskPriority where show = genericShow
instance decodeTaskPriority :: Decode TaskPriority where decode = genericDecode options
instance encodeTaskPriority :: Encode TaskPriority where encode = genericEncode options



newtype TaskToken = TaskToken String
derive instance newtypeTaskToken :: Newtype TaskToken _
derive instance repGenericTaskToken :: Generic TaskToken _
instance showTaskToken :: Show TaskToken where show = genericShow
instance decodeTaskToken :: Decode TaskToken where decode = genericDecode options
instance encodeTaskToken :: Encode TaskToken where encode = genericEncode options



newtype TerminateReason = TerminateReason String
derive instance newtypeTerminateReason :: Newtype TerminateReason _
derive instance repGenericTerminateReason :: Generic TerminateReason _
instance showTerminateReason :: Show TerminateReason where show = genericShow
instance decodeTerminateReason :: Decode TerminateReason where decode = genericDecode options
instance encodeTerminateReason :: Encode TerminateReason where encode = genericEncode options



newtype TerminateWorkflowExecutionInput = TerminateWorkflowExecutionInput 
  { "domain" :: (DomainName)
  , "workflowId" :: (WorkflowId)
  , "runId" :: Maybe (WorkflowRunIdOptional)
  , "reason" :: Maybe (TerminateReason)
  , "details" :: Maybe (Data)
  , "childPolicy" :: Maybe (ChildPolicy)
  }
derive instance newtypeTerminateWorkflowExecutionInput :: Newtype TerminateWorkflowExecutionInput _
derive instance repGenericTerminateWorkflowExecutionInput :: Generic TerminateWorkflowExecutionInput _
instance showTerminateWorkflowExecutionInput :: Show TerminateWorkflowExecutionInput where show = genericShow
instance decodeTerminateWorkflowExecutionInput :: Decode TerminateWorkflowExecutionInput where decode = genericDecode options
instance encodeTerminateWorkflowExecutionInput :: Encode TerminateWorkflowExecutionInput where encode = genericEncode options

-- | Constructs TerminateWorkflowExecutionInput from required parameters
newTerminateWorkflowExecutionInput :: DomainName -> WorkflowId -> TerminateWorkflowExecutionInput
newTerminateWorkflowExecutionInput _domain _workflowId = TerminateWorkflowExecutionInput { "domain": _domain, "workflowId": _workflowId, "childPolicy": Nothing, "details": Nothing, "reason": Nothing, "runId": Nothing }

-- | Constructs TerminateWorkflowExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTerminateWorkflowExecutionInput' :: DomainName -> WorkflowId -> ( { "domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "reason" :: Maybe (TerminateReason) , "details" :: Maybe (Data) , "childPolicy" :: Maybe (ChildPolicy) } -> {"domain" :: (DomainName) , "workflowId" :: (WorkflowId) , "runId" :: Maybe (WorkflowRunIdOptional) , "reason" :: Maybe (TerminateReason) , "details" :: Maybe (Data) , "childPolicy" :: Maybe (ChildPolicy) } ) -> TerminateWorkflowExecutionInput
newTerminateWorkflowExecutionInput' _domain _workflowId customize = (TerminateWorkflowExecutionInput <<< customize) { "domain": _domain, "workflowId": _workflowId, "childPolicy": Nothing, "details": Nothing, "reason": Nothing, "runId": Nothing }



-- | <p> Provides the details of the <code>TimerCanceled</code> event. </p>
newtype TimerCanceledEventAttributes = TimerCanceledEventAttributes 
  { "timerId" :: (TimerId)
  , "startedEventId" :: (EventId)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeTimerCanceledEventAttributes :: Newtype TimerCanceledEventAttributes _
derive instance repGenericTimerCanceledEventAttributes :: Generic TimerCanceledEventAttributes _
instance showTimerCanceledEventAttributes :: Show TimerCanceledEventAttributes where show = genericShow
instance decodeTimerCanceledEventAttributes :: Decode TimerCanceledEventAttributes where decode = genericDecode options
instance encodeTimerCanceledEventAttributes :: Encode TimerCanceledEventAttributes where encode = genericEncode options

-- | Constructs TimerCanceledEventAttributes from required parameters
newTimerCanceledEventAttributes :: EventId -> EventId -> TimerId -> TimerCanceledEventAttributes
newTimerCanceledEventAttributes _decisionTaskCompletedEventId _startedEventId _timerId = TimerCanceledEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "startedEventId": _startedEventId, "timerId": _timerId }

-- | Constructs TimerCanceledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimerCanceledEventAttributes' :: EventId -> EventId -> TimerId -> ( { "timerId" :: (TimerId) , "startedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) } -> {"timerId" :: (TimerId) , "startedEventId" :: (EventId) , "decisionTaskCompletedEventId" :: (EventId) } ) -> TimerCanceledEventAttributes
newTimerCanceledEventAttributes' _decisionTaskCompletedEventId _startedEventId _timerId customize = (TimerCanceledEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "startedEventId": _startedEventId, "timerId": _timerId }



-- | <p>Provides the details of the <code>TimerFired</code> event.</p>
newtype TimerFiredEventAttributes = TimerFiredEventAttributes 
  { "timerId" :: (TimerId)
  , "startedEventId" :: (EventId)
  }
derive instance newtypeTimerFiredEventAttributes :: Newtype TimerFiredEventAttributes _
derive instance repGenericTimerFiredEventAttributes :: Generic TimerFiredEventAttributes _
instance showTimerFiredEventAttributes :: Show TimerFiredEventAttributes where show = genericShow
instance decodeTimerFiredEventAttributes :: Decode TimerFiredEventAttributes where decode = genericDecode options
instance encodeTimerFiredEventAttributes :: Encode TimerFiredEventAttributes where encode = genericEncode options

-- | Constructs TimerFiredEventAttributes from required parameters
newTimerFiredEventAttributes :: EventId -> TimerId -> TimerFiredEventAttributes
newTimerFiredEventAttributes _startedEventId _timerId = TimerFiredEventAttributes { "startedEventId": _startedEventId, "timerId": _timerId }

-- | Constructs TimerFiredEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimerFiredEventAttributes' :: EventId -> TimerId -> ( { "timerId" :: (TimerId) , "startedEventId" :: (EventId) } -> {"timerId" :: (TimerId) , "startedEventId" :: (EventId) } ) -> TimerFiredEventAttributes
newTimerFiredEventAttributes' _startedEventId _timerId customize = (TimerFiredEventAttributes <<< customize) { "startedEventId": _startedEventId, "timerId": _timerId }



newtype TimerId = TimerId String
derive instance newtypeTimerId :: Newtype TimerId _
derive instance repGenericTimerId :: Generic TimerId _
instance showTimerId :: Show TimerId where show = genericShow
instance decodeTimerId :: Decode TimerId where decode = genericDecode options
instance encodeTimerId :: Encode TimerId where encode = genericEncode options



-- | <p>Provides the details of the <code>TimerStarted</code> event.</p>
newtype TimerStartedEventAttributes = TimerStartedEventAttributes 
  { "timerId" :: (TimerId)
  , "control" :: Maybe (Data)
  , "startToFireTimeout" :: (DurationInSeconds)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeTimerStartedEventAttributes :: Newtype TimerStartedEventAttributes _
derive instance repGenericTimerStartedEventAttributes :: Generic TimerStartedEventAttributes _
instance showTimerStartedEventAttributes :: Show TimerStartedEventAttributes where show = genericShow
instance decodeTimerStartedEventAttributes :: Decode TimerStartedEventAttributes where decode = genericDecode options
instance encodeTimerStartedEventAttributes :: Encode TimerStartedEventAttributes where encode = genericEncode options

-- | Constructs TimerStartedEventAttributes from required parameters
newTimerStartedEventAttributes :: EventId -> DurationInSeconds -> TimerId -> TimerStartedEventAttributes
newTimerStartedEventAttributes _decisionTaskCompletedEventId _startToFireTimeout _timerId = TimerStartedEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "startToFireTimeout": _startToFireTimeout, "timerId": _timerId, "control": Nothing }

-- | Constructs TimerStartedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimerStartedEventAttributes' :: EventId -> DurationInSeconds -> TimerId -> ( { "timerId" :: (TimerId) , "control" :: Maybe (Data) , "startToFireTimeout" :: (DurationInSeconds) , "decisionTaskCompletedEventId" :: (EventId) } -> {"timerId" :: (TimerId) , "control" :: Maybe (Data) , "startToFireTimeout" :: (DurationInSeconds) , "decisionTaskCompletedEventId" :: (EventId) } ) -> TimerStartedEventAttributes
newTimerStartedEventAttributes' _decisionTaskCompletedEventId _startToFireTimeout _timerId customize = (TimerStartedEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "startToFireTimeout": _startToFireTimeout, "timerId": _timerId, "control": Nothing }



newtype Truncated = Truncated Boolean
derive instance newtypeTruncated :: Newtype Truncated _
derive instance repGenericTruncated :: Generic Truncated _
instance showTruncated :: Show Truncated where show = genericShow
instance decodeTruncated :: Decode Truncated where decode = genericDecode options
instance encodeTruncated :: Encode Truncated where encode = genericEncode options



-- | <p>Returned if the type already exists in the specified domain. You get this fault even if the existing type is in deprecated status. You can specify another version if the intent is to create a new distinct version of the type.</p>
newtype TypeAlreadyExistsFault = TypeAlreadyExistsFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTypeAlreadyExistsFault :: Newtype TypeAlreadyExistsFault _
derive instance repGenericTypeAlreadyExistsFault :: Generic TypeAlreadyExistsFault _
instance showTypeAlreadyExistsFault :: Show TypeAlreadyExistsFault where show = genericShow
instance decodeTypeAlreadyExistsFault :: Decode TypeAlreadyExistsFault where decode = genericDecode options
instance encodeTypeAlreadyExistsFault :: Encode TypeAlreadyExistsFault where encode = genericEncode options

-- | Constructs TypeAlreadyExistsFault from required parameters
newTypeAlreadyExistsFault :: TypeAlreadyExistsFault
newTypeAlreadyExistsFault  = TypeAlreadyExistsFault { "message": Nothing }

-- | Constructs TypeAlreadyExistsFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTypeAlreadyExistsFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TypeAlreadyExistsFault
newTypeAlreadyExistsFault'  customize = (TypeAlreadyExistsFault <<< customize) { "message": Nothing }



-- | <p>Returned when the specified activity or workflow type was already deprecated.</p>
newtype TypeDeprecatedFault = TypeDeprecatedFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTypeDeprecatedFault :: Newtype TypeDeprecatedFault _
derive instance repGenericTypeDeprecatedFault :: Generic TypeDeprecatedFault _
instance showTypeDeprecatedFault :: Show TypeDeprecatedFault where show = genericShow
instance decodeTypeDeprecatedFault :: Decode TypeDeprecatedFault where decode = genericDecode options
instance encodeTypeDeprecatedFault :: Encode TypeDeprecatedFault where encode = genericEncode options

-- | Constructs TypeDeprecatedFault from required parameters
newTypeDeprecatedFault :: TypeDeprecatedFault
newTypeDeprecatedFault  = TypeDeprecatedFault { "message": Nothing }

-- | Constructs TypeDeprecatedFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTypeDeprecatedFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TypeDeprecatedFault
newTypeDeprecatedFault'  customize = (TypeDeprecatedFault <<< customize) { "message": Nothing }



-- | <p>Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.</p>
newtype UnknownResourceFault = UnknownResourceFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeUnknownResourceFault :: Newtype UnknownResourceFault _
derive instance repGenericUnknownResourceFault :: Generic UnknownResourceFault _
instance showUnknownResourceFault :: Show UnknownResourceFault where show = genericShow
instance decodeUnknownResourceFault :: Decode UnknownResourceFault where decode = genericDecode options
instance encodeUnknownResourceFault :: Encode UnknownResourceFault where encode = genericEncode options

-- | Constructs UnknownResourceFault from required parameters
newUnknownResourceFault :: UnknownResourceFault
newUnknownResourceFault  = UnknownResourceFault { "message": Nothing }

-- | Constructs UnknownResourceFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnknownResourceFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> UnknownResourceFault
newUnknownResourceFault'  customize = (UnknownResourceFault <<< customize) { "message": Nothing }



newtype Version = Version String
derive instance newtypeVersion :: Newtype Version _
derive instance repGenericVersion :: Generic Version _
instance showVersion :: Show Version where show = genericShow
instance decodeVersion :: Decode Version where decode = genericDecode options
instance encodeVersion :: Encode Version where encode = genericEncode options



newtype VersionOptional = VersionOptional String
derive instance newtypeVersionOptional :: Newtype VersionOptional _
derive instance repGenericVersionOptional :: Generic VersionOptional _
instance showVersionOptional :: Show VersionOptional where show = genericShow
instance decodeVersionOptional :: Decode VersionOptional where decode = genericDecode options
instance encodeVersionOptional :: Encode VersionOptional where encode = genericEncode options



-- | <p>Represents a workflow execution.</p>
newtype WorkflowExecution = WorkflowExecution 
  { "workflowId" :: (WorkflowId)
  , "runId" :: (WorkflowRunId)
  }
derive instance newtypeWorkflowExecution :: Newtype WorkflowExecution _
derive instance repGenericWorkflowExecution :: Generic WorkflowExecution _
instance showWorkflowExecution :: Show WorkflowExecution where show = genericShow
instance decodeWorkflowExecution :: Decode WorkflowExecution where decode = genericDecode options
instance encodeWorkflowExecution :: Encode WorkflowExecution where encode = genericEncode options

-- | Constructs WorkflowExecution from required parameters
newWorkflowExecution :: WorkflowRunId -> WorkflowId -> WorkflowExecution
newWorkflowExecution _runId _workflowId = WorkflowExecution { "runId": _runId, "workflowId": _workflowId }

-- | Constructs WorkflowExecution's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecution' :: WorkflowRunId -> WorkflowId -> ( { "workflowId" :: (WorkflowId) , "runId" :: (WorkflowRunId) } -> {"workflowId" :: (WorkflowId) , "runId" :: (WorkflowRunId) } ) -> WorkflowExecution
newWorkflowExecution' _runId _workflowId customize = (WorkflowExecution <<< customize) { "runId": _runId, "workflowId": _workflowId }



-- | <p>Returned by <a>StartWorkflowExecution</a> when an open execution with the same workflowId is already running in the specified domain.</p>
newtype WorkflowExecutionAlreadyStartedFault = WorkflowExecutionAlreadyStartedFault 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeWorkflowExecutionAlreadyStartedFault :: Newtype WorkflowExecutionAlreadyStartedFault _
derive instance repGenericWorkflowExecutionAlreadyStartedFault :: Generic WorkflowExecutionAlreadyStartedFault _
instance showWorkflowExecutionAlreadyStartedFault :: Show WorkflowExecutionAlreadyStartedFault where show = genericShow
instance decodeWorkflowExecutionAlreadyStartedFault :: Decode WorkflowExecutionAlreadyStartedFault where decode = genericDecode options
instance encodeWorkflowExecutionAlreadyStartedFault :: Encode WorkflowExecutionAlreadyStartedFault where encode = genericEncode options

-- | Constructs WorkflowExecutionAlreadyStartedFault from required parameters
newWorkflowExecutionAlreadyStartedFault :: WorkflowExecutionAlreadyStartedFault
newWorkflowExecutionAlreadyStartedFault  = WorkflowExecutionAlreadyStartedFault { "message": Nothing }

-- | Constructs WorkflowExecutionAlreadyStartedFault's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionAlreadyStartedFault' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> WorkflowExecutionAlreadyStartedFault
newWorkflowExecutionAlreadyStartedFault'  customize = (WorkflowExecutionAlreadyStartedFault <<< customize) { "message": Nothing }



newtype WorkflowExecutionCancelRequestedCause = WorkflowExecutionCancelRequestedCause String
derive instance newtypeWorkflowExecutionCancelRequestedCause :: Newtype WorkflowExecutionCancelRequestedCause _
derive instance repGenericWorkflowExecutionCancelRequestedCause :: Generic WorkflowExecutionCancelRequestedCause _
instance showWorkflowExecutionCancelRequestedCause :: Show WorkflowExecutionCancelRequestedCause where show = genericShow
instance decodeWorkflowExecutionCancelRequestedCause :: Decode WorkflowExecutionCancelRequestedCause where decode = genericDecode options
instance encodeWorkflowExecutionCancelRequestedCause :: Encode WorkflowExecutionCancelRequestedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>WorkflowExecutionCancelRequested</code> event.</p>
newtype WorkflowExecutionCancelRequestedEventAttributes = WorkflowExecutionCancelRequestedEventAttributes 
  { "externalWorkflowExecution" :: Maybe (WorkflowExecution)
  , "externalInitiatedEventId" :: Maybe (EventId)
  , "cause" :: Maybe (WorkflowExecutionCancelRequestedCause)
  }
derive instance newtypeWorkflowExecutionCancelRequestedEventAttributes :: Newtype WorkflowExecutionCancelRequestedEventAttributes _
derive instance repGenericWorkflowExecutionCancelRequestedEventAttributes :: Generic WorkflowExecutionCancelRequestedEventAttributes _
instance showWorkflowExecutionCancelRequestedEventAttributes :: Show WorkflowExecutionCancelRequestedEventAttributes where show = genericShow
instance decodeWorkflowExecutionCancelRequestedEventAttributes :: Decode WorkflowExecutionCancelRequestedEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionCancelRequestedEventAttributes :: Encode WorkflowExecutionCancelRequestedEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionCancelRequestedEventAttributes from required parameters
newWorkflowExecutionCancelRequestedEventAttributes :: WorkflowExecutionCancelRequestedEventAttributes
newWorkflowExecutionCancelRequestedEventAttributes  = WorkflowExecutionCancelRequestedEventAttributes { "cause": Nothing, "externalInitiatedEventId": Nothing, "externalWorkflowExecution": Nothing }

-- | Constructs WorkflowExecutionCancelRequestedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionCancelRequestedEventAttributes' :: ( { "externalWorkflowExecution" :: Maybe (WorkflowExecution) , "externalInitiatedEventId" :: Maybe (EventId) , "cause" :: Maybe (WorkflowExecutionCancelRequestedCause) } -> {"externalWorkflowExecution" :: Maybe (WorkflowExecution) , "externalInitiatedEventId" :: Maybe (EventId) , "cause" :: Maybe (WorkflowExecutionCancelRequestedCause) } ) -> WorkflowExecutionCancelRequestedEventAttributes
newWorkflowExecutionCancelRequestedEventAttributes'  customize = (WorkflowExecutionCancelRequestedEventAttributes <<< customize) { "cause": Nothing, "externalInitiatedEventId": Nothing, "externalWorkflowExecution": Nothing }



-- | <p>Provides the details of the <code>WorkflowExecutionCanceled</code> event.</p>
newtype WorkflowExecutionCanceledEventAttributes = WorkflowExecutionCanceledEventAttributes 
  { "details" :: Maybe (Data)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeWorkflowExecutionCanceledEventAttributes :: Newtype WorkflowExecutionCanceledEventAttributes _
derive instance repGenericWorkflowExecutionCanceledEventAttributes :: Generic WorkflowExecutionCanceledEventAttributes _
instance showWorkflowExecutionCanceledEventAttributes :: Show WorkflowExecutionCanceledEventAttributes where show = genericShow
instance decodeWorkflowExecutionCanceledEventAttributes :: Decode WorkflowExecutionCanceledEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionCanceledEventAttributes :: Encode WorkflowExecutionCanceledEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionCanceledEventAttributes from required parameters
newWorkflowExecutionCanceledEventAttributes :: EventId -> WorkflowExecutionCanceledEventAttributes
newWorkflowExecutionCanceledEventAttributes _decisionTaskCompletedEventId = WorkflowExecutionCanceledEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "details": Nothing }

-- | Constructs WorkflowExecutionCanceledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionCanceledEventAttributes' :: EventId -> ( { "details" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } -> {"details" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } ) -> WorkflowExecutionCanceledEventAttributes
newWorkflowExecutionCanceledEventAttributes' _decisionTaskCompletedEventId customize = (WorkflowExecutionCanceledEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "details": Nothing }



-- | <p>Provides the details of the <code>WorkflowExecutionCompleted</code> event.</p>
newtype WorkflowExecutionCompletedEventAttributes = WorkflowExecutionCompletedEventAttributes 
  { "result" :: Maybe (Data)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeWorkflowExecutionCompletedEventAttributes :: Newtype WorkflowExecutionCompletedEventAttributes _
derive instance repGenericWorkflowExecutionCompletedEventAttributes :: Generic WorkflowExecutionCompletedEventAttributes _
instance showWorkflowExecutionCompletedEventAttributes :: Show WorkflowExecutionCompletedEventAttributes where show = genericShow
instance decodeWorkflowExecutionCompletedEventAttributes :: Decode WorkflowExecutionCompletedEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionCompletedEventAttributes :: Encode WorkflowExecutionCompletedEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionCompletedEventAttributes from required parameters
newWorkflowExecutionCompletedEventAttributes :: EventId -> WorkflowExecutionCompletedEventAttributes
newWorkflowExecutionCompletedEventAttributes _decisionTaskCompletedEventId = WorkflowExecutionCompletedEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "result": Nothing }

-- | Constructs WorkflowExecutionCompletedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionCompletedEventAttributes' :: EventId -> ( { "result" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } -> {"result" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } ) -> WorkflowExecutionCompletedEventAttributes
newWorkflowExecutionCompletedEventAttributes' _decisionTaskCompletedEventId customize = (WorkflowExecutionCompletedEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "result": Nothing }



-- | <p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>
newtype WorkflowExecutionConfiguration = WorkflowExecutionConfiguration 
  { "taskStartToCloseTimeout" :: (DurationInSeconds)
  , "executionStartToCloseTimeout" :: (DurationInSeconds)
  , "taskList" :: (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "childPolicy" :: (ChildPolicy)
  , "lambdaRole" :: Maybe (Arn)
  }
derive instance newtypeWorkflowExecutionConfiguration :: Newtype WorkflowExecutionConfiguration _
derive instance repGenericWorkflowExecutionConfiguration :: Generic WorkflowExecutionConfiguration _
instance showWorkflowExecutionConfiguration :: Show WorkflowExecutionConfiguration where show = genericShow
instance decodeWorkflowExecutionConfiguration :: Decode WorkflowExecutionConfiguration where decode = genericDecode options
instance encodeWorkflowExecutionConfiguration :: Encode WorkflowExecutionConfiguration where encode = genericEncode options

-- | Constructs WorkflowExecutionConfiguration from required parameters
newWorkflowExecutionConfiguration :: ChildPolicy -> DurationInSeconds -> TaskList -> DurationInSeconds -> WorkflowExecutionConfiguration
newWorkflowExecutionConfiguration _childPolicy _executionStartToCloseTimeout _taskList _taskStartToCloseTimeout = WorkflowExecutionConfiguration { "childPolicy": _childPolicy, "executionStartToCloseTimeout": _executionStartToCloseTimeout, "taskList": _taskList, "taskStartToCloseTimeout": _taskStartToCloseTimeout, "lambdaRole": Nothing, "taskPriority": Nothing }

-- | Constructs WorkflowExecutionConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionConfiguration' :: ChildPolicy -> DurationInSeconds -> TaskList -> DurationInSeconds -> ( { "taskStartToCloseTimeout" :: (DurationInSeconds) , "executionStartToCloseTimeout" :: (DurationInSeconds) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "childPolicy" :: (ChildPolicy) , "lambdaRole" :: Maybe (Arn) } -> {"taskStartToCloseTimeout" :: (DurationInSeconds) , "executionStartToCloseTimeout" :: (DurationInSeconds) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "childPolicy" :: (ChildPolicy) , "lambdaRole" :: Maybe (Arn) } ) -> WorkflowExecutionConfiguration
newWorkflowExecutionConfiguration' _childPolicy _executionStartToCloseTimeout _taskList _taskStartToCloseTimeout customize = (WorkflowExecutionConfiguration <<< customize) { "childPolicy": _childPolicy, "executionStartToCloseTimeout": _executionStartToCloseTimeout, "taskList": _taskList, "taskStartToCloseTimeout": _taskStartToCloseTimeout, "lambdaRole": Nothing, "taskPriority": Nothing }



-- | <p>Provides the details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>
newtype WorkflowExecutionContinuedAsNewEventAttributes = WorkflowExecutionContinuedAsNewEventAttributes 
  { "input" :: Maybe (Data)
  , "decisionTaskCompletedEventId" :: (EventId)
  , "newExecutionRunId" :: (WorkflowRunId)
  , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "taskList" :: (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "childPolicy" :: (ChildPolicy)
  , "tagList" :: Maybe (TagList)
  , "workflowType" :: (WorkflowType)
  , "lambdaRole" :: Maybe (Arn)
  }
derive instance newtypeWorkflowExecutionContinuedAsNewEventAttributes :: Newtype WorkflowExecutionContinuedAsNewEventAttributes _
derive instance repGenericWorkflowExecutionContinuedAsNewEventAttributes :: Generic WorkflowExecutionContinuedAsNewEventAttributes _
instance showWorkflowExecutionContinuedAsNewEventAttributes :: Show WorkflowExecutionContinuedAsNewEventAttributes where show = genericShow
instance decodeWorkflowExecutionContinuedAsNewEventAttributes :: Decode WorkflowExecutionContinuedAsNewEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionContinuedAsNewEventAttributes :: Encode WorkflowExecutionContinuedAsNewEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionContinuedAsNewEventAttributes from required parameters
newWorkflowExecutionContinuedAsNewEventAttributes :: ChildPolicy -> EventId -> WorkflowRunId -> TaskList -> WorkflowType -> WorkflowExecutionContinuedAsNewEventAttributes
newWorkflowExecutionContinuedAsNewEventAttributes _childPolicy _decisionTaskCompletedEventId _newExecutionRunId _taskList _workflowType = WorkflowExecutionContinuedAsNewEventAttributes { "childPolicy": _childPolicy, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "newExecutionRunId": _newExecutionRunId, "taskList": _taskList, "workflowType": _workflowType, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }

-- | Constructs WorkflowExecutionContinuedAsNewEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionContinuedAsNewEventAttributes' :: ChildPolicy -> EventId -> WorkflowRunId -> TaskList -> WorkflowType -> ( { "input" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) , "newExecutionRunId" :: (WorkflowRunId) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: (ChildPolicy) , "tagList" :: Maybe (TagList) , "workflowType" :: (WorkflowType) , "lambdaRole" :: Maybe (Arn) } -> {"input" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) , "newExecutionRunId" :: (WorkflowRunId) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: (ChildPolicy) , "tagList" :: Maybe (TagList) , "workflowType" :: (WorkflowType) , "lambdaRole" :: Maybe (Arn) } ) -> WorkflowExecutionContinuedAsNewEventAttributes
newWorkflowExecutionContinuedAsNewEventAttributes' _childPolicy _decisionTaskCompletedEventId _newExecutionRunId _taskList _workflowType customize = (WorkflowExecutionContinuedAsNewEventAttributes <<< customize) { "childPolicy": _childPolicy, "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "newExecutionRunId": _newExecutionRunId, "taskList": _taskList, "workflowType": _workflowType, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "tagList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }



-- | <p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or <a>CountClosedWorkflowExecutions</a> </p>
newtype WorkflowExecutionCount = WorkflowExecutionCount 
  { "count" :: (Count)
  , "truncated" :: Maybe (Truncated)
  }
derive instance newtypeWorkflowExecutionCount :: Newtype WorkflowExecutionCount _
derive instance repGenericWorkflowExecutionCount :: Generic WorkflowExecutionCount _
instance showWorkflowExecutionCount :: Show WorkflowExecutionCount where show = genericShow
instance decodeWorkflowExecutionCount :: Decode WorkflowExecutionCount where decode = genericDecode options
instance encodeWorkflowExecutionCount :: Encode WorkflowExecutionCount where encode = genericEncode options

-- | Constructs WorkflowExecutionCount from required parameters
newWorkflowExecutionCount :: Count -> WorkflowExecutionCount
newWorkflowExecutionCount _count = WorkflowExecutionCount { "count": _count, "truncated": Nothing }

-- | Constructs WorkflowExecutionCount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionCount' :: Count -> ( { "count" :: (Count) , "truncated" :: Maybe (Truncated) } -> {"count" :: (Count) , "truncated" :: Maybe (Truncated) } ) -> WorkflowExecutionCount
newWorkflowExecutionCount' _count customize = (WorkflowExecutionCount <<< customize) { "count": _count, "truncated": Nothing }



-- | <p>Contains details about a workflow execution.</p>
newtype WorkflowExecutionDetail = WorkflowExecutionDetail 
  { "executionInfo" :: (WorkflowExecutionInfo)
  , "executionConfiguration" :: (WorkflowExecutionConfiguration)
  , "openCounts" :: (WorkflowExecutionOpenCounts)
  , "latestActivityTaskTimestamp" :: Maybe (Types.Timestamp)
  , "latestExecutionContext" :: Maybe (Data)
  }
derive instance newtypeWorkflowExecutionDetail :: Newtype WorkflowExecutionDetail _
derive instance repGenericWorkflowExecutionDetail :: Generic WorkflowExecutionDetail _
instance showWorkflowExecutionDetail :: Show WorkflowExecutionDetail where show = genericShow
instance decodeWorkflowExecutionDetail :: Decode WorkflowExecutionDetail where decode = genericDecode options
instance encodeWorkflowExecutionDetail :: Encode WorkflowExecutionDetail where encode = genericEncode options

-- | Constructs WorkflowExecutionDetail from required parameters
newWorkflowExecutionDetail :: WorkflowExecutionConfiguration -> WorkflowExecutionInfo -> WorkflowExecutionOpenCounts -> WorkflowExecutionDetail
newWorkflowExecutionDetail _executionConfiguration _executionInfo _openCounts = WorkflowExecutionDetail { "executionConfiguration": _executionConfiguration, "executionInfo": _executionInfo, "openCounts": _openCounts, "latestActivityTaskTimestamp": Nothing, "latestExecutionContext": Nothing }

-- | Constructs WorkflowExecutionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionDetail' :: WorkflowExecutionConfiguration -> WorkflowExecutionInfo -> WorkflowExecutionOpenCounts -> ( { "executionInfo" :: (WorkflowExecutionInfo) , "executionConfiguration" :: (WorkflowExecutionConfiguration) , "openCounts" :: (WorkflowExecutionOpenCounts) , "latestActivityTaskTimestamp" :: Maybe (Types.Timestamp) , "latestExecutionContext" :: Maybe (Data) } -> {"executionInfo" :: (WorkflowExecutionInfo) , "executionConfiguration" :: (WorkflowExecutionConfiguration) , "openCounts" :: (WorkflowExecutionOpenCounts) , "latestActivityTaskTimestamp" :: Maybe (Types.Timestamp) , "latestExecutionContext" :: Maybe (Data) } ) -> WorkflowExecutionDetail
newWorkflowExecutionDetail' _executionConfiguration _executionInfo _openCounts customize = (WorkflowExecutionDetail <<< customize) { "executionConfiguration": _executionConfiguration, "executionInfo": _executionInfo, "openCounts": _openCounts, "latestActivityTaskTimestamp": Nothing, "latestExecutionContext": Nothing }



-- | <p>Provides the details of the <code>WorkflowExecutionFailed</code> event.</p>
newtype WorkflowExecutionFailedEventAttributes = WorkflowExecutionFailedEventAttributes 
  { "reason" :: Maybe (FailureReason)
  , "details" :: Maybe (Data)
  , "decisionTaskCompletedEventId" :: (EventId)
  }
derive instance newtypeWorkflowExecutionFailedEventAttributes :: Newtype WorkflowExecutionFailedEventAttributes _
derive instance repGenericWorkflowExecutionFailedEventAttributes :: Generic WorkflowExecutionFailedEventAttributes _
instance showWorkflowExecutionFailedEventAttributes :: Show WorkflowExecutionFailedEventAttributes where show = genericShow
instance decodeWorkflowExecutionFailedEventAttributes :: Decode WorkflowExecutionFailedEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionFailedEventAttributes :: Encode WorkflowExecutionFailedEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionFailedEventAttributes from required parameters
newWorkflowExecutionFailedEventAttributes :: EventId -> WorkflowExecutionFailedEventAttributes
newWorkflowExecutionFailedEventAttributes _decisionTaskCompletedEventId = WorkflowExecutionFailedEventAttributes { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "details": Nothing, "reason": Nothing }

-- | Constructs WorkflowExecutionFailedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionFailedEventAttributes' :: EventId -> ( { "reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } -> {"reason" :: Maybe (FailureReason) , "details" :: Maybe (Data) , "decisionTaskCompletedEventId" :: (EventId) } ) -> WorkflowExecutionFailedEventAttributes
newWorkflowExecutionFailedEventAttributes' _decisionTaskCompletedEventId customize = (WorkflowExecutionFailedEventAttributes <<< customize) { "decisionTaskCompletedEventId": _decisionTaskCompletedEventId, "details": Nothing, "reason": Nothing }



-- | <p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>
newtype WorkflowExecutionFilter = WorkflowExecutionFilter 
  { "workflowId" :: (WorkflowId)
  }
derive instance newtypeWorkflowExecutionFilter :: Newtype WorkflowExecutionFilter _
derive instance repGenericWorkflowExecutionFilter :: Generic WorkflowExecutionFilter _
instance showWorkflowExecutionFilter :: Show WorkflowExecutionFilter where show = genericShow
instance decodeWorkflowExecutionFilter :: Decode WorkflowExecutionFilter where decode = genericDecode options
instance encodeWorkflowExecutionFilter :: Encode WorkflowExecutionFilter where encode = genericEncode options

-- | Constructs WorkflowExecutionFilter from required parameters
newWorkflowExecutionFilter :: WorkflowId -> WorkflowExecutionFilter
newWorkflowExecutionFilter _workflowId = WorkflowExecutionFilter { "workflowId": _workflowId }

-- | Constructs WorkflowExecutionFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionFilter' :: WorkflowId -> ( { "workflowId" :: (WorkflowId) } -> {"workflowId" :: (WorkflowId) } ) -> WorkflowExecutionFilter
newWorkflowExecutionFilter' _workflowId customize = (WorkflowExecutionFilter <<< customize) { "workflowId": _workflowId }



-- | <p>Contains information about a workflow execution.</p>
newtype WorkflowExecutionInfo = WorkflowExecutionInfo 
  { "execution" :: (WorkflowExecution)
  , "workflowType" :: (WorkflowType)
  , "startTimestamp" :: (Types.Timestamp)
  , "closeTimestamp" :: Maybe (Types.Timestamp)
  , "executionStatus" :: (ExecutionStatus)
  , "closeStatus" :: Maybe (CloseStatus)
  , "parent" :: Maybe (WorkflowExecution)
  , "tagList" :: Maybe (TagList)
  , "cancelRequested" :: Maybe (Canceled)
  }
derive instance newtypeWorkflowExecutionInfo :: Newtype WorkflowExecutionInfo _
derive instance repGenericWorkflowExecutionInfo :: Generic WorkflowExecutionInfo _
instance showWorkflowExecutionInfo :: Show WorkflowExecutionInfo where show = genericShow
instance decodeWorkflowExecutionInfo :: Decode WorkflowExecutionInfo where decode = genericDecode options
instance encodeWorkflowExecutionInfo :: Encode WorkflowExecutionInfo where encode = genericEncode options

-- | Constructs WorkflowExecutionInfo from required parameters
newWorkflowExecutionInfo :: WorkflowExecution -> ExecutionStatus -> Types.Timestamp -> WorkflowType -> WorkflowExecutionInfo
newWorkflowExecutionInfo _execution _executionStatus _startTimestamp _workflowType = WorkflowExecutionInfo { "execution": _execution, "executionStatus": _executionStatus, "startTimestamp": _startTimestamp, "workflowType": _workflowType, "cancelRequested": Nothing, "closeStatus": Nothing, "closeTimestamp": Nothing, "parent": Nothing, "tagList": Nothing }

-- | Constructs WorkflowExecutionInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionInfo' :: WorkflowExecution -> ExecutionStatus -> Types.Timestamp -> WorkflowType -> ( { "execution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "startTimestamp" :: (Types.Timestamp) , "closeTimestamp" :: Maybe (Types.Timestamp) , "executionStatus" :: (ExecutionStatus) , "closeStatus" :: Maybe (CloseStatus) , "parent" :: Maybe (WorkflowExecution) , "tagList" :: Maybe (TagList) , "cancelRequested" :: Maybe (Canceled) } -> {"execution" :: (WorkflowExecution) , "workflowType" :: (WorkflowType) , "startTimestamp" :: (Types.Timestamp) , "closeTimestamp" :: Maybe (Types.Timestamp) , "executionStatus" :: (ExecutionStatus) , "closeStatus" :: Maybe (CloseStatus) , "parent" :: Maybe (WorkflowExecution) , "tagList" :: Maybe (TagList) , "cancelRequested" :: Maybe (Canceled) } ) -> WorkflowExecutionInfo
newWorkflowExecutionInfo' _execution _executionStatus _startTimestamp _workflowType customize = (WorkflowExecutionInfo <<< customize) { "execution": _execution, "executionStatus": _executionStatus, "startTimestamp": _startTimestamp, "workflowType": _workflowType, "cancelRequested": Nothing, "closeStatus": Nothing, "closeTimestamp": Nothing, "parent": Nothing, "tagList": Nothing }



newtype WorkflowExecutionInfoList = WorkflowExecutionInfoList (Array WorkflowExecutionInfo)
derive instance newtypeWorkflowExecutionInfoList :: Newtype WorkflowExecutionInfoList _
derive instance repGenericWorkflowExecutionInfoList :: Generic WorkflowExecutionInfoList _
instance showWorkflowExecutionInfoList :: Show WorkflowExecutionInfoList where show = genericShow
instance decodeWorkflowExecutionInfoList :: Decode WorkflowExecutionInfoList where decode = genericDecode options
instance encodeWorkflowExecutionInfoList :: Encode WorkflowExecutionInfoList where encode = genericEncode options



-- | <p>Contains a paginated list of information about workflow executions.</p>
newtype WorkflowExecutionInfos = WorkflowExecutionInfos 
  { "executionInfos" :: (WorkflowExecutionInfoList)
  , "nextPageToken" :: Maybe (PageToken)
  }
derive instance newtypeWorkflowExecutionInfos :: Newtype WorkflowExecutionInfos _
derive instance repGenericWorkflowExecutionInfos :: Generic WorkflowExecutionInfos _
instance showWorkflowExecutionInfos :: Show WorkflowExecutionInfos where show = genericShow
instance decodeWorkflowExecutionInfos :: Decode WorkflowExecutionInfos where decode = genericDecode options
instance encodeWorkflowExecutionInfos :: Encode WorkflowExecutionInfos where encode = genericEncode options

-- | Constructs WorkflowExecutionInfos from required parameters
newWorkflowExecutionInfos :: WorkflowExecutionInfoList -> WorkflowExecutionInfos
newWorkflowExecutionInfos _executionInfos = WorkflowExecutionInfos { "executionInfos": _executionInfos, "nextPageToken": Nothing }

-- | Constructs WorkflowExecutionInfos's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionInfos' :: WorkflowExecutionInfoList -> ( { "executionInfos" :: (WorkflowExecutionInfoList) , "nextPageToken" :: Maybe (PageToken) } -> {"executionInfos" :: (WorkflowExecutionInfoList) , "nextPageToken" :: Maybe (PageToken) } ) -> WorkflowExecutionInfos
newWorkflowExecutionInfos' _executionInfos customize = (WorkflowExecutionInfos <<< customize) { "executionInfos": _executionInfos, "nextPageToken": Nothing }



-- | <p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>
newtype WorkflowExecutionOpenCounts = WorkflowExecutionOpenCounts 
  { "openActivityTasks" :: (Count)
  , "openDecisionTasks" :: (OpenDecisionTasksCount)
  , "openTimers" :: (Count)
  , "openChildWorkflowExecutions" :: (Count)
  , "openLambdaFunctions" :: Maybe (Count)
  }
derive instance newtypeWorkflowExecutionOpenCounts :: Newtype WorkflowExecutionOpenCounts _
derive instance repGenericWorkflowExecutionOpenCounts :: Generic WorkflowExecutionOpenCounts _
instance showWorkflowExecutionOpenCounts :: Show WorkflowExecutionOpenCounts where show = genericShow
instance decodeWorkflowExecutionOpenCounts :: Decode WorkflowExecutionOpenCounts where decode = genericDecode options
instance encodeWorkflowExecutionOpenCounts :: Encode WorkflowExecutionOpenCounts where encode = genericEncode options

-- | Constructs WorkflowExecutionOpenCounts from required parameters
newWorkflowExecutionOpenCounts :: Count -> Count -> OpenDecisionTasksCount -> Count -> WorkflowExecutionOpenCounts
newWorkflowExecutionOpenCounts _openActivityTasks _openChildWorkflowExecutions _openDecisionTasks _openTimers = WorkflowExecutionOpenCounts { "openActivityTasks": _openActivityTasks, "openChildWorkflowExecutions": _openChildWorkflowExecutions, "openDecisionTasks": _openDecisionTasks, "openTimers": _openTimers, "openLambdaFunctions": Nothing }

-- | Constructs WorkflowExecutionOpenCounts's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionOpenCounts' :: Count -> Count -> OpenDecisionTasksCount -> Count -> ( { "openActivityTasks" :: (Count) , "openDecisionTasks" :: (OpenDecisionTasksCount) , "openTimers" :: (Count) , "openChildWorkflowExecutions" :: (Count) , "openLambdaFunctions" :: Maybe (Count) } -> {"openActivityTasks" :: (Count) , "openDecisionTasks" :: (OpenDecisionTasksCount) , "openTimers" :: (Count) , "openChildWorkflowExecutions" :: (Count) , "openLambdaFunctions" :: Maybe (Count) } ) -> WorkflowExecutionOpenCounts
newWorkflowExecutionOpenCounts' _openActivityTasks _openChildWorkflowExecutions _openDecisionTasks _openTimers customize = (WorkflowExecutionOpenCounts <<< customize) { "openActivityTasks": _openActivityTasks, "openChildWorkflowExecutions": _openChildWorkflowExecutions, "openDecisionTasks": _openDecisionTasks, "openTimers": _openTimers, "openLambdaFunctions": Nothing }



-- | <p>Provides the details of the <code>WorkflowExecutionSignaled</code> event.</p>
newtype WorkflowExecutionSignaledEventAttributes = WorkflowExecutionSignaledEventAttributes 
  { "signalName" :: (SignalName)
  , "input" :: Maybe (Data)
  , "externalWorkflowExecution" :: Maybe (WorkflowExecution)
  , "externalInitiatedEventId" :: Maybe (EventId)
  }
derive instance newtypeWorkflowExecutionSignaledEventAttributes :: Newtype WorkflowExecutionSignaledEventAttributes _
derive instance repGenericWorkflowExecutionSignaledEventAttributes :: Generic WorkflowExecutionSignaledEventAttributes _
instance showWorkflowExecutionSignaledEventAttributes :: Show WorkflowExecutionSignaledEventAttributes where show = genericShow
instance decodeWorkflowExecutionSignaledEventAttributes :: Decode WorkflowExecutionSignaledEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionSignaledEventAttributes :: Encode WorkflowExecutionSignaledEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionSignaledEventAttributes from required parameters
newWorkflowExecutionSignaledEventAttributes :: SignalName -> WorkflowExecutionSignaledEventAttributes
newWorkflowExecutionSignaledEventAttributes _signalName = WorkflowExecutionSignaledEventAttributes { "signalName": _signalName, "externalInitiatedEventId": Nothing, "externalWorkflowExecution": Nothing, "input": Nothing }

-- | Constructs WorkflowExecutionSignaledEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionSignaledEventAttributes' :: SignalName -> ( { "signalName" :: (SignalName) , "input" :: Maybe (Data) , "externalWorkflowExecution" :: Maybe (WorkflowExecution) , "externalInitiatedEventId" :: Maybe (EventId) } -> {"signalName" :: (SignalName) , "input" :: Maybe (Data) , "externalWorkflowExecution" :: Maybe (WorkflowExecution) , "externalInitiatedEventId" :: Maybe (EventId) } ) -> WorkflowExecutionSignaledEventAttributes
newWorkflowExecutionSignaledEventAttributes' _signalName customize = (WorkflowExecutionSignaledEventAttributes <<< customize) { "signalName": _signalName, "externalInitiatedEventId": Nothing, "externalWorkflowExecution": Nothing, "input": Nothing }



-- | <p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>
newtype WorkflowExecutionStartedEventAttributes = WorkflowExecutionStartedEventAttributes 
  { "input" :: Maybe (Data)
  , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "childPolicy" :: (ChildPolicy)
  , "taskList" :: (TaskList)
  , "taskPriority" :: Maybe (TaskPriority)
  , "workflowType" :: (WorkflowType)
  , "tagList" :: Maybe (TagList)
  , "continuedExecutionRunId" :: Maybe (WorkflowRunIdOptional)
  , "parentWorkflowExecution" :: Maybe (WorkflowExecution)
  , "parentInitiatedEventId" :: Maybe (EventId)
  , "lambdaRole" :: Maybe (Arn)
  }
derive instance newtypeWorkflowExecutionStartedEventAttributes :: Newtype WorkflowExecutionStartedEventAttributes _
derive instance repGenericWorkflowExecutionStartedEventAttributes :: Generic WorkflowExecutionStartedEventAttributes _
instance showWorkflowExecutionStartedEventAttributes :: Show WorkflowExecutionStartedEventAttributes where show = genericShow
instance decodeWorkflowExecutionStartedEventAttributes :: Decode WorkflowExecutionStartedEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionStartedEventAttributes :: Encode WorkflowExecutionStartedEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionStartedEventAttributes from required parameters
newWorkflowExecutionStartedEventAttributes :: ChildPolicy -> TaskList -> WorkflowType -> WorkflowExecutionStartedEventAttributes
newWorkflowExecutionStartedEventAttributes _childPolicy _taskList _workflowType = WorkflowExecutionStartedEventAttributes { "childPolicy": _childPolicy, "taskList": _taskList, "workflowType": _workflowType, "continuedExecutionRunId": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "parentInitiatedEventId": Nothing, "parentWorkflowExecution": Nothing, "tagList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }

-- | Constructs WorkflowExecutionStartedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionStartedEventAttributes' :: ChildPolicy -> TaskList -> WorkflowType -> ( { "input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: (ChildPolicy) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "workflowType" :: (WorkflowType) , "tagList" :: Maybe (TagList) , "continuedExecutionRunId" :: Maybe (WorkflowRunIdOptional) , "parentWorkflowExecution" :: Maybe (WorkflowExecution) , "parentInitiatedEventId" :: Maybe (EventId) , "lambdaRole" :: Maybe (Arn) } -> {"input" :: Maybe (Data) , "executionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "taskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "childPolicy" :: (ChildPolicy) , "taskList" :: (TaskList) , "taskPriority" :: Maybe (TaskPriority) , "workflowType" :: (WorkflowType) , "tagList" :: Maybe (TagList) , "continuedExecutionRunId" :: Maybe (WorkflowRunIdOptional) , "parentWorkflowExecution" :: Maybe (WorkflowExecution) , "parentInitiatedEventId" :: Maybe (EventId) , "lambdaRole" :: Maybe (Arn) } ) -> WorkflowExecutionStartedEventAttributes
newWorkflowExecutionStartedEventAttributes' _childPolicy _taskList _workflowType customize = (WorkflowExecutionStartedEventAttributes <<< customize) { "childPolicy": _childPolicy, "taskList": _taskList, "workflowType": _workflowType, "continuedExecutionRunId": Nothing, "executionStartToCloseTimeout": Nothing, "input": Nothing, "lambdaRole": Nothing, "parentInitiatedEventId": Nothing, "parentWorkflowExecution": Nothing, "tagList": Nothing, "taskPriority": Nothing, "taskStartToCloseTimeout": Nothing }



newtype WorkflowExecutionTerminatedCause = WorkflowExecutionTerminatedCause String
derive instance newtypeWorkflowExecutionTerminatedCause :: Newtype WorkflowExecutionTerminatedCause _
derive instance repGenericWorkflowExecutionTerminatedCause :: Generic WorkflowExecutionTerminatedCause _
instance showWorkflowExecutionTerminatedCause :: Show WorkflowExecutionTerminatedCause where show = genericShow
instance decodeWorkflowExecutionTerminatedCause :: Decode WorkflowExecutionTerminatedCause where decode = genericDecode options
instance encodeWorkflowExecutionTerminatedCause :: Encode WorkflowExecutionTerminatedCause where encode = genericEncode options



-- | <p>Provides the details of the <code>WorkflowExecutionTerminated</code> event.</p>
newtype WorkflowExecutionTerminatedEventAttributes = WorkflowExecutionTerminatedEventAttributes 
  { "reason" :: Maybe (TerminateReason)
  , "details" :: Maybe (Data)
  , "childPolicy" :: (ChildPolicy)
  , "cause" :: Maybe (WorkflowExecutionTerminatedCause)
  }
derive instance newtypeWorkflowExecutionTerminatedEventAttributes :: Newtype WorkflowExecutionTerminatedEventAttributes _
derive instance repGenericWorkflowExecutionTerminatedEventAttributes :: Generic WorkflowExecutionTerminatedEventAttributes _
instance showWorkflowExecutionTerminatedEventAttributes :: Show WorkflowExecutionTerminatedEventAttributes where show = genericShow
instance decodeWorkflowExecutionTerminatedEventAttributes :: Decode WorkflowExecutionTerminatedEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionTerminatedEventAttributes :: Encode WorkflowExecutionTerminatedEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionTerminatedEventAttributes from required parameters
newWorkflowExecutionTerminatedEventAttributes :: ChildPolicy -> WorkflowExecutionTerminatedEventAttributes
newWorkflowExecutionTerminatedEventAttributes _childPolicy = WorkflowExecutionTerminatedEventAttributes { "childPolicy": _childPolicy, "cause": Nothing, "details": Nothing, "reason": Nothing }

-- | Constructs WorkflowExecutionTerminatedEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionTerminatedEventAttributes' :: ChildPolicy -> ( { "reason" :: Maybe (TerminateReason) , "details" :: Maybe (Data) , "childPolicy" :: (ChildPolicy) , "cause" :: Maybe (WorkflowExecutionTerminatedCause) } -> {"reason" :: Maybe (TerminateReason) , "details" :: Maybe (Data) , "childPolicy" :: (ChildPolicy) , "cause" :: Maybe (WorkflowExecutionTerminatedCause) } ) -> WorkflowExecutionTerminatedEventAttributes
newWorkflowExecutionTerminatedEventAttributes' _childPolicy customize = (WorkflowExecutionTerminatedEventAttributes <<< customize) { "childPolicy": _childPolicy, "cause": Nothing, "details": Nothing, "reason": Nothing }



-- | <p>Provides the details of the <code>WorkflowExecutionTimedOut</code> event.</p>
newtype WorkflowExecutionTimedOutEventAttributes = WorkflowExecutionTimedOutEventAttributes 
  { "timeoutType" :: (WorkflowExecutionTimeoutType)
  , "childPolicy" :: (ChildPolicy)
  }
derive instance newtypeWorkflowExecutionTimedOutEventAttributes :: Newtype WorkflowExecutionTimedOutEventAttributes _
derive instance repGenericWorkflowExecutionTimedOutEventAttributes :: Generic WorkflowExecutionTimedOutEventAttributes _
instance showWorkflowExecutionTimedOutEventAttributes :: Show WorkflowExecutionTimedOutEventAttributes where show = genericShow
instance decodeWorkflowExecutionTimedOutEventAttributes :: Decode WorkflowExecutionTimedOutEventAttributes where decode = genericDecode options
instance encodeWorkflowExecutionTimedOutEventAttributes :: Encode WorkflowExecutionTimedOutEventAttributes where encode = genericEncode options

-- | Constructs WorkflowExecutionTimedOutEventAttributes from required parameters
newWorkflowExecutionTimedOutEventAttributes :: ChildPolicy -> WorkflowExecutionTimeoutType -> WorkflowExecutionTimedOutEventAttributes
newWorkflowExecutionTimedOutEventAttributes _childPolicy _timeoutType = WorkflowExecutionTimedOutEventAttributes { "childPolicy": _childPolicy, "timeoutType": _timeoutType }

-- | Constructs WorkflowExecutionTimedOutEventAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowExecutionTimedOutEventAttributes' :: ChildPolicy -> WorkflowExecutionTimeoutType -> ( { "timeoutType" :: (WorkflowExecutionTimeoutType) , "childPolicy" :: (ChildPolicy) } -> {"timeoutType" :: (WorkflowExecutionTimeoutType) , "childPolicy" :: (ChildPolicy) } ) -> WorkflowExecutionTimedOutEventAttributes
newWorkflowExecutionTimedOutEventAttributes' _childPolicy _timeoutType customize = (WorkflowExecutionTimedOutEventAttributes <<< customize) { "childPolicy": _childPolicy, "timeoutType": _timeoutType }



newtype WorkflowExecutionTimeoutType = WorkflowExecutionTimeoutType String
derive instance newtypeWorkflowExecutionTimeoutType :: Newtype WorkflowExecutionTimeoutType _
derive instance repGenericWorkflowExecutionTimeoutType :: Generic WorkflowExecutionTimeoutType _
instance showWorkflowExecutionTimeoutType :: Show WorkflowExecutionTimeoutType where show = genericShow
instance decodeWorkflowExecutionTimeoutType :: Decode WorkflowExecutionTimeoutType where decode = genericDecode options
instance encodeWorkflowExecutionTimeoutType :: Encode WorkflowExecutionTimeoutType where encode = genericEncode options



newtype WorkflowId = WorkflowId String
derive instance newtypeWorkflowId :: Newtype WorkflowId _
derive instance repGenericWorkflowId :: Generic WorkflowId _
instance showWorkflowId :: Show WorkflowId where show = genericShow
instance decodeWorkflowId :: Decode WorkflowId where decode = genericDecode options
instance encodeWorkflowId :: Encode WorkflowId where encode = genericEncode options



newtype WorkflowRunId = WorkflowRunId String
derive instance newtypeWorkflowRunId :: Newtype WorkflowRunId _
derive instance repGenericWorkflowRunId :: Generic WorkflowRunId _
instance showWorkflowRunId :: Show WorkflowRunId where show = genericShow
instance decodeWorkflowRunId :: Decode WorkflowRunId where decode = genericDecode options
instance encodeWorkflowRunId :: Encode WorkflowRunId where encode = genericEncode options



newtype WorkflowRunIdOptional = WorkflowRunIdOptional String
derive instance newtypeWorkflowRunIdOptional :: Newtype WorkflowRunIdOptional _
derive instance repGenericWorkflowRunIdOptional :: Generic WorkflowRunIdOptional _
instance showWorkflowRunIdOptional :: Show WorkflowRunIdOptional where show = genericShow
instance decodeWorkflowRunIdOptional :: Decode WorkflowRunIdOptional where decode = genericDecode options
instance encodeWorkflowRunIdOptional :: Encode WorkflowRunIdOptional where encode = genericEncode options



-- | <p>Represents a workflow type.</p>
newtype WorkflowType = WorkflowType 
  { "name" :: (Name)
  , "version" :: (Version)
  }
derive instance newtypeWorkflowType :: Newtype WorkflowType _
derive instance repGenericWorkflowType :: Generic WorkflowType _
instance showWorkflowType :: Show WorkflowType where show = genericShow
instance decodeWorkflowType :: Decode WorkflowType where decode = genericDecode options
instance encodeWorkflowType :: Encode WorkflowType where encode = genericEncode options

-- | Constructs WorkflowType from required parameters
newWorkflowType :: Name -> Version -> WorkflowType
newWorkflowType _name _version = WorkflowType { "name": _name, "version": _version }

-- | Constructs WorkflowType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowType' :: Name -> Version -> ( { "name" :: (Name) , "version" :: (Version) } -> {"name" :: (Name) , "version" :: (Version) } ) -> WorkflowType
newWorkflowType' _name _version customize = (WorkflowType <<< customize) { "name": _name, "version": _version }



-- | <p>The configuration settings of a workflow type.</p>
newtype WorkflowTypeConfiguration = WorkflowTypeConfiguration 
  { "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultExecutionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional)
  , "defaultTaskList" :: Maybe (TaskList)
  , "defaultTaskPriority" :: Maybe (TaskPriority)
  , "defaultChildPolicy" :: Maybe (ChildPolicy)
  , "defaultLambdaRole" :: Maybe (Arn)
  }
derive instance newtypeWorkflowTypeConfiguration :: Newtype WorkflowTypeConfiguration _
derive instance repGenericWorkflowTypeConfiguration :: Generic WorkflowTypeConfiguration _
instance showWorkflowTypeConfiguration :: Show WorkflowTypeConfiguration where show = genericShow
instance decodeWorkflowTypeConfiguration :: Decode WorkflowTypeConfiguration where decode = genericDecode options
instance encodeWorkflowTypeConfiguration :: Encode WorkflowTypeConfiguration where encode = genericEncode options

-- | Constructs WorkflowTypeConfiguration from required parameters
newWorkflowTypeConfiguration :: WorkflowTypeConfiguration
newWorkflowTypeConfiguration  = WorkflowTypeConfiguration { "defaultChildPolicy": Nothing, "defaultExecutionStartToCloseTimeout": Nothing, "defaultLambdaRole": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskStartToCloseTimeout": Nothing }

-- | Constructs WorkflowTypeConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowTypeConfiguration' :: ( { "defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultExecutionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultChildPolicy" :: Maybe (ChildPolicy) , "defaultLambdaRole" :: Maybe (Arn) } -> {"defaultTaskStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultExecutionStartToCloseTimeout" :: Maybe (DurationInSecondsOptional) , "defaultTaskList" :: Maybe (TaskList) , "defaultTaskPriority" :: Maybe (TaskPriority) , "defaultChildPolicy" :: Maybe (ChildPolicy) , "defaultLambdaRole" :: Maybe (Arn) } ) -> WorkflowTypeConfiguration
newWorkflowTypeConfiguration'  customize = (WorkflowTypeConfiguration <<< customize) { "defaultChildPolicy": Nothing, "defaultExecutionStartToCloseTimeout": Nothing, "defaultLambdaRole": Nothing, "defaultTaskList": Nothing, "defaultTaskPriority": Nothing, "defaultTaskStartToCloseTimeout": Nothing }



-- | <p>Contains details about a workflow type.</p>
newtype WorkflowTypeDetail = WorkflowTypeDetail 
  { "typeInfo" :: (WorkflowTypeInfo)
  , "configuration" :: (WorkflowTypeConfiguration)
  }
derive instance newtypeWorkflowTypeDetail :: Newtype WorkflowTypeDetail _
derive instance repGenericWorkflowTypeDetail :: Generic WorkflowTypeDetail _
instance showWorkflowTypeDetail :: Show WorkflowTypeDetail where show = genericShow
instance decodeWorkflowTypeDetail :: Decode WorkflowTypeDetail where decode = genericDecode options
instance encodeWorkflowTypeDetail :: Encode WorkflowTypeDetail where encode = genericEncode options

-- | Constructs WorkflowTypeDetail from required parameters
newWorkflowTypeDetail :: WorkflowTypeConfiguration -> WorkflowTypeInfo -> WorkflowTypeDetail
newWorkflowTypeDetail _configuration _typeInfo = WorkflowTypeDetail { "configuration": _configuration, "typeInfo": _typeInfo }

-- | Constructs WorkflowTypeDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowTypeDetail' :: WorkflowTypeConfiguration -> WorkflowTypeInfo -> ( { "typeInfo" :: (WorkflowTypeInfo) , "configuration" :: (WorkflowTypeConfiguration) } -> {"typeInfo" :: (WorkflowTypeInfo) , "configuration" :: (WorkflowTypeConfiguration) } ) -> WorkflowTypeDetail
newWorkflowTypeDetail' _configuration _typeInfo customize = (WorkflowTypeDetail <<< customize) { "configuration": _configuration, "typeInfo": _typeInfo }



-- | <p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>
newtype WorkflowTypeFilter = WorkflowTypeFilter 
  { "name" :: (Name)
  , "version" :: Maybe (VersionOptional)
  }
derive instance newtypeWorkflowTypeFilter :: Newtype WorkflowTypeFilter _
derive instance repGenericWorkflowTypeFilter :: Generic WorkflowTypeFilter _
instance showWorkflowTypeFilter :: Show WorkflowTypeFilter where show = genericShow
instance decodeWorkflowTypeFilter :: Decode WorkflowTypeFilter where decode = genericDecode options
instance encodeWorkflowTypeFilter :: Encode WorkflowTypeFilter where encode = genericEncode options

-- | Constructs WorkflowTypeFilter from required parameters
newWorkflowTypeFilter :: Name -> WorkflowTypeFilter
newWorkflowTypeFilter _name = WorkflowTypeFilter { "name": _name, "version": Nothing }

-- | Constructs WorkflowTypeFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowTypeFilter' :: Name -> ( { "name" :: (Name) , "version" :: Maybe (VersionOptional) } -> {"name" :: (Name) , "version" :: Maybe (VersionOptional) } ) -> WorkflowTypeFilter
newWorkflowTypeFilter' _name customize = (WorkflowTypeFilter <<< customize) { "name": _name, "version": Nothing }



-- | <p>Contains information about a workflow type.</p>
newtype WorkflowTypeInfo = WorkflowTypeInfo 
  { "workflowType" :: (WorkflowType)
  , "status" :: (RegistrationStatus)
  , "description" :: Maybe (Description)
  , "creationDate" :: (Types.Timestamp)
  , "deprecationDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeWorkflowTypeInfo :: Newtype WorkflowTypeInfo _
derive instance repGenericWorkflowTypeInfo :: Generic WorkflowTypeInfo _
instance showWorkflowTypeInfo :: Show WorkflowTypeInfo where show = genericShow
instance decodeWorkflowTypeInfo :: Decode WorkflowTypeInfo where decode = genericDecode options
instance encodeWorkflowTypeInfo :: Encode WorkflowTypeInfo where encode = genericEncode options

-- | Constructs WorkflowTypeInfo from required parameters
newWorkflowTypeInfo :: Types.Timestamp -> RegistrationStatus -> WorkflowType -> WorkflowTypeInfo
newWorkflowTypeInfo _creationDate _status _workflowType = WorkflowTypeInfo { "creationDate": _creationDate, "status": _status, "workflowType": _workflowType, "deprecationDate": Nothing, "description": Nothing }

-- | Constructs WorkflowTypeInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowTypeInfo' :: Types.Timestamp -> RegistrationStatus -> WorkflowType -> ( { "workflowType" :: (WorkflowType) , "status" :: (RegistrationStatus) , "description" :: Maybe (Description) , "creationDate" :: (Types.Timestamp) , "deprecationDate" :: Maybe (Types.Timestamp) } -> {"workflowType" :: (WorkflowType) , "status" :: (RegistrationStatus) , "description" :: Maybe (Description) , "creationDate" :: (Types.Timestamp) , "deprecationDate" :: Maybe (Types.Timestamp) } ) -> WorkflowTypeInfo
newWorkflowTypeInfo' _creationDate _status _workflowType customize = (WorkflowTypeInfo <<< customize) { "creationDate": _creationDate, "status": _status, "workflowType": _workflowType, "deprecationDate": Nothing, "description": Nothing }



newtype WorkflowTypeInfoList = WorkflowTypeInfoList (Array WorkflowTypeInfo)
derive instance newtypeWorkflowTypeInfoList :: Newtype WorkflowTypeInfoList _
derive instance repGenericWorkflowTypeInfoList :: Generic WorkflowTypeInfoList _
instance showWorkflowTypeInfoList :: Show WorkflowTypeInfoList where show = genericShow
instance decodeWorkflowTypeInfoList :: Decode WorkflowTypeInfoList where decode = genericDecode options
instance encodeWorkflowTypeInfoList :: Encode WorkflowTypeInfoList where encode = genericEncode options



-- | <p>Contains a paginated list of information structures about workflow types.</p>
newtype WorkflowTypeInfos = WorkflowTypeInfos 
  { "typeInfos" :: (WorkflowTypeInfoList)
  , "nextPageToken" :: Maybe (PageToken)
  }
derive instance newtypeWorkflowTypeInfos :: Newtype WorkflowTypeInfos _
derive instance repGenericWorkflowTypeInfos :: Generic WorkflowTypeInfos _
instance showWorkflowTypeInfos :: Show WorkflowTypeInfos where show = genericShow
instance decodeWorkflowTypeInfos :: Decode WorkflowTypeInfos where decode = genericDecode options
instance encodeWorkflowTypeInfos :: Encode WorkflowTypeInfos where encode = genericEncode options

-- | Constructs WorkflowTypeInfos from required parameters
newWorkflowTypeInfos :: WorkflowTypeInfoList -> WorkflowTypeInfos
newWorkflowTypeInfos _typeInfos = WorkflowTypeInfos { "typeInfos": _typeInfos, "nextPageToken": Nothing }

-- | Constructs WorkflowTypeInfos's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newWorkflowTypeInfos' :: WorkflowTypeInfoList -> ( { "typeInfos" :: (WorkflowTypeInfoList) , "nextPageToken" :: Maybe (PageToken) } -> {"typeInfos" :: (WorkflowTypeInfoList) , "nextPageToken" :: Maybe (PageToken) } ) -> WorkflowTypeInfos
newWorkflowTypeInfos' _typeInfos customize = (WorkflowTypeInfos <<< customize) { "typeInfos": _typeInfos, "nextPageToken": Nothing }

