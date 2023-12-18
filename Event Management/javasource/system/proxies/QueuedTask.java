// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package system.proxies;

/**
 * Represents a scheduled or running task in a task queue.
 */
public class QueuedTask implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject queuedTaskMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "System.QueuedTask";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Sequence("Sequence"),
		Status("Status"),
		QueueId("QueueId"),
		QueueName("QueueName"),
		ContextType("ContextType"),
		ContextData("ContextData"),
		MicroflowName("MicroflowName"),
		UserActionName("UserActionName"),
		Arguments("Arguments"),
		XASId("XASId"),
		ThreadId("ThreadId"),
		Created("Created"),
		StartAt("StartAt"),
		Started("Started"),
		Retried("Retried"),
		Retry("Retry"),
		ScheduledEventName("ScheduledEventName");

		private final java.lang.String metaName;

		MemberNames(java.lang.String s)
		{
			metaName = s;
		}

		@java.lang.Override
		public java.lang.String toString()
		{
			return metaName;
		}
	}

	public QueuedTask(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected QueuedTask(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject queuedTaskMendixObject)
	{
		if (queuedTaskMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, queuedTaskMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.queuedTaskMendixObject = queuedTaskMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static system.proxies.QueuedTask initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new system.proxies.QueuedTask(context, mendixObject);
	}

	public static system.proxies.QueuedTask load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return system.proxies.QueuedTask.initialize(context, mendixObject);
	}

	public static java.util.List<system.proxies.QueuedTask> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> system.proxies.QueuedTask.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of Sequence
	 */
	public final java.lang.Long getSequence()
	{
		return getSequence(getContext());
	}

	/**
	 * @param context
	 * @return value of Sequence
	 */
	public final java.lang.Long getSequence(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Long) getMendixObject().getValue(context, MemberNames.Sequence.toString());
	}

	/**
	 * Set value of Sequence
	 * @param sequence
	 */
	public final void setSequence(java.lang.Long sequence)
	{
		setSequence(getContext(), sequence);
	}

	/**
	 * Set value of Sequence
	 * @param context
	 * @param sequence
	 */
	public final void setSequence(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Long sequence)
	{
		getMendixObject().setValue(context, MemberNames.Sequence.toString(), sequence);
	}

	/**
	 * Get value of Status
	 * @param status
	 */
	public final system.proxies.QueueTaskStatus getStatus()
	{
		return getStatus(getContext());
	}

	/**
	 * @param context
	 * @return value of Status
	 */
	public final system.proxies.QueueTaskStatus getStatus(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.Status.toString());
		if (obj == null) {
			return null;
		}
		return system.proxies.QueueTaskStatus.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of Status
	 * @param status
	 */
	public final void setStatus(system.proxies.QueueTaskStatus status)
	{
		setStatus(getContext(), status);
	}

	/**
	 * Set value of Status
	 * @param context
	 * @param status
	 */
	public final void setStatus(com.mendix.systemwideinterfaces.core.IContext context, system.proxies.QueueTaskStatus status)
	{
		if (status != null) {
			getMendixObject().setValue(context, MemberNames.Status.toString(), status.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.Status.toString(), null);
		}
	}

	/**
	 * @return value of QueueId
	 */
	public final java.lang.String getQueueId()
	{
		return getQueueId(getContext());
	}

	/**
	 * @param context
	 * @return value of QueueId
	 */
	public final java.lang.String getQueueId(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.QueueId.toString());
	}

	/**
	 * Set value of QueueId
	 * @param queueid
	 */
	public final void setQueueId(java.lang.String queueid)
	{
		setQueueId(getContext(), queueid);
	}

	/**
	 * Set value of QueueId
	 * @param context
	 * @param queueid
	 */
	public final void setQueueId(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String queueid)
	{
		getMendixObject().setValue(context, MemberNames.QueueId.toString(), queueid);
	}

	/**
	 * @return value of QueueName
	 */
	public final java.lang.String getQueueName()
	{
		return getQueueName(getContext());
	}

	/**
	 * @param context
	 * @return value of QueueName
	 */
	public final java.lang.String getQueueName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.QueueName.toString());
	}

	/**
	 * Set value of QueueName
	 * @param queuename
	 */
	public final void setQueueName(java.lang.String queuename)
	{
		setQueueName(getContext(), queuename);
	}

	/**
	 * Set value of QueueName
	 * @param context
	 * @param queuename
	 */
	public final void setQueueName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String queuename)
	{
		getMendixObject().setValue(context, MemberNames.QueueName.toString(), queuename);
	}

	/**
	 * Get value of ContextType
	 * @param contexttype
	 */
	public final system.proxies.ContextType getContextType()
	{
		return getContextType(getContext());
	}

	/**
	 * @param context
	 * @return value of ContextType
	 */
	public final system.proxies.ContextType getContextType(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.ContextType.toString());
		if (obj == null) {
			return null;
		}
		return system.proxies.ContextType.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of ContextType
	 * @param contexttype
	 */
	public final void setContextType(system.proxies.ContextType contexttype)
	{
		setContextType(getContext(), contexttype);
	}

	/**
	 * Set value of ContextType
	 * @param context
	 * @param contexttype
	 */
	public final void setContextType(com.mendix.systemwideinterfaces.core.IContext context, system.proxies.ContextType contexttype)
	{
		if (contexttype != null) {
			getMendixObject().setValue(context, MemberNames.ContextType.toString(), contexttype.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.ContextType.toString(), null);
		}
	}

	/**
	 * @return value of ContextData
	 */
	public final java.lang.String getContextData()
	{
		return getContextData(getContext());
	}

	/**
	 * @param context
	 * @return value of ContextData
	 */
	public final java.lang.String getContextData(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.ContextData.toString());
	}

	/**
	 * Set value of ContextData
	 * @param contextdata
	 */
	public final void setContextData(java.lang.String contextdata)
	{
		setContextData(getContext(), contextdata);
	}

	/**
	 * Set value of ContextData
	 * @param context
	 * @param contextdata
	 */
	public final void setContextData(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String contextdata)
	{
		getMendixObject().setValue(context, MemberNames.ContextData.toString(), contextdata);
	}

	/**
	 * @return value of MicroflowName
	 */
	public final java.lang.String getMicroflowName()
	{
		return getMicroflowName(getContext());
	}

	/**
	 * @param context
	 * @return value of MicroflowName
	 */
	public final java.lang.String getMicroflowName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.MicroflowName.toString());
	}

	/**
	 * Set value of MicroflowName
	 * @param microflowname
	 */
	public final void setMicroflowName(java.lang.String microflowname)
	{
		setMicroflowName(getContext(), microflowname);
	}

	/**
	 * Set value of MicroflowName
	 * @param context
	 * @param microflowname
	 */
	public final void setMicroflowName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String microflowname)
	{
		getMendixObject().setValue(context, MemberNames.MicroflowName.toString(), microflowname);
	}

	/**
	 * @return value of UserActionName
	 */
	public final java.lang.String getUserActionName()
	{
		return getUserActionName(getContext());
	}

	/**
	 * @param context
	 * @return value of UserActionName
	 */
	public final java.lang.String getUserActionName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.UserActionName.toString());
	}

	/**
	 * Set value of UserActionName
	 * @param useractionname
	 */
	public final void setUserActionName(java.lang.String useractionname)
	{
		setUserActionName(getContext(), useractionname);
	}

	/**
	 * Set value of UserActionName
	 * @param context
	 * @param useractionname
	 */
	public final void setUserActionName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String useractionname)
	{
		getMendixObject().setValue(context, MemberNames.UserActionName.toString(), useractionname);
	}

	/**
	 * @return value of Arguments
	 */
	public final java.lang.String getArguments()
	{
		return getArguments(getContext());
	}

	/**
	 * @param context
	 * @return value of Arguments
	 */
	public final java.lang.String getArguments(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Arguments.toString());
	}

	/**
	 * Set value of Arguments
	 * @param arguments
	 */
	public final void setArguments(java.lang.String arguments)
	{
		setArguments(getContext(), arguments);
	}

	/**
	 * Set value of Arguments
	 * @param context
	 * @param arguments
	 */
	public final void setArguments(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String arguments)
	{
		getMendixObject().setValue(context, MemberNames.Arguments.toString(), arguments);
	}

	/**
	 * @return value of XASId
	 */
	public final java.lang.String getXASId()
	{
		return getXASId(getContext());
	}

	/**
	 * @param context
	 * @return value of XASId
	 */
	public final java.lang.String getXASId(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.XASId.toString());
	}

	/**
	 * Set value of XASId
	 * @param xasid
	 */
	public final void setXASId(java.lang.String xasid)
	{
		setXASId(getContext(), xasid);
	}

	/**
	 * Set value of XASId
	 * @param context
	 * @param xasid
	 */
	public final void setXASId(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xasid)
	{
		getMendixObject().setValue(context, MemberNames.XASId.toString(), xasid);
	}

	/**
	 * @return value of ThreadId
	 */
	public final java.lang.Long getThreadId()
	{
		return getThreadId(getContext());
	}

	/**
	 * @param context
	 * @return value of ThreadId
	 */
	public final java.lang.Long getThreadId(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Long) getMendixObject().getValue(context, MemberNames.ThreadId.toString());
	}

	/**
	 * Set value of ThreadId
	 * @param threadid
	 */
	public final void setThreadId(java.lang.Long threadid)
	{
		setThreadId(getContext(), threadid);
	}

	/**
	 * Set value of ThreadId
	 * @param context
	 * @param threadid
	 */
	public final void setThreadId(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Long threadid)
	{
		getMendixObject().setValue(context, MemberNames.ThreadId.toString(), threadid);
	}

	/**
	 * @return value of Created
	 */
	public final java.util.Date getCreated()
	{
		return getCreated(getContext());
	}

	/**
	 * @param context
	 * @return value of Created
	 */
	public final java.util.Date getCreated(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.Created.toString());
	}

	/**
	 * Set value of Created
	 * @param created
	 */
	public final void setCreated(java.util.Date created)
	{
		setCreated(getContext(), created);
	}

	/**
	 * Set value of Created
	 * @param context
	 * @param created
	 */
	public final void setCreated(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date created)
	{
		getMendixObject().setValue(context, MemberNames.Created.toString(), created);
	}

	/**
	 * @return value of StartAt
	 */
	public final java.util.Date getStartAt()
	{
		return getStartAt(getContext());
	}

	/**
	 * @param context
	 * @return value of StartAt
	 */
	public final java.util.Date getStartAt(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.StartAt.toString());
	}

	/**
	 * Set value of StartAt
	 * @param startat
	 */
	public final void setStartAt(java.util.Date startat)
	{
		setStartAt(getContext(), startat);
	}

	/**
	 * Set value of StartAt
	 * @param context
	 * @param startat
	 */
	public final void setStartAt(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date startat)
	{
		getMendixObject().setValue(context, MemberNames.StartAt.toString(), startat);
	}

	/**
	 * @return value of Started
	 */
	public final java.util.Date getStarted()
	{
		return getStarted(getContext());
	}

	/**
	 * @param context
	 * @return value of Started
	 */
	public final java.util.Date getStarted(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.Started.toString());
	}

	/**
	 * Set value of Started
	 * @param started
	 */
	public final void setStarted(java.util.Date started)
	{
		setStarted(getContext(), started);
	}

	/**
	 * Set value of Started
	 * @param context
	 * @param started
	 */
	public final void setStarted(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date started)
	{
		getMendixObject().setValue(context, MemberNames.Started.toString(), started);
	}

	/**
	 * @return value of Retried
	 */
	public final java.lang.Long getRetried()
	{
		return getRetried(getContext());
	}

	/**
	 * @param context
	 * @return value of Retried
	 */
	public final java.lang.Long getRetried(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Long) getMendixObject().getValue(context, MemberNames.Retried.toString());
	}

	/**
	 * Set value of Retried
	 * @param retried
	 */
	public final void setRetried(java.lang.Long retried)
	{
		setRetried(getContext(), retried);
	}

	/**
	 * Set value of Retried
	 * @param context
	 * @param retried
	 */
	public final void setRetried(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Long retried)
	{
		getMendixObject().setValue(context, MemberNames.Retried.toString(), retried);
	}

	/**
	 * @return value of Retry
	 */
	public final java.lang.String getRetry()
	{
		return getRetry(getContext());
	}

	/**
	 * @param context
	 * @return value of Retry
	 */
	public final java.lang.String getRetry(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Retry.toString());
	}

	/**
	 * Set value of Retry
	 * @param retry
	 */
	public final void setRetry(java.lang.String retry)
	{
		setRetry(getContext(), retry);
	}

	/**
	 * Set value of Retry
	 * @param context
	 * @param retry
	 */
	public final void setRetry(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String retry)
	{
		getMendixObject().setValue(context, MemberNames.Retry.toString(), retry);
	}

	/**
	 * @return value of ScheduledEventName
	 */
	public final java.lang.String getScheduledEventName()
	{
		return getScheduledEventName(getContext());
	}

	/**
	 * @param context
	 * @return value of ScheduledEventName
	 */
	public final java.lang.String getScheduledEventName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.ScheduledEventName.toString());
	}

	/**
	 * Set value of ScheduledEventName
	 * @param scheduledeventname
	 */
	public final void setScheduledEventName(java.lang.String scheduledeventname)
	{
		setScheduledEventName(getContext(), scheduledeventname);
	}

	/**
	 * Set value of ScheduledEventName
	 * @param context
	 * @param scheduledeventname
	 */
	public final void setScheduledEventName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String scheduledeventname)
	{
		getMendixObject().setValue(context, MemberNames.ScheduledEventName.toString(), scheduledeventname);
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return queuedTaskMendixObject;
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IContext getContext()
	{
		return context;
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this) {
			return true;
		}
		if (obj != null && getClass().equals(obj.getClass()))
		{
			final system.proxies.QueuedTask that = (system.proxies.QueuedTask) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@java.lang.Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

  /**
   * Gives full name ("Module.Entity" name) of the type of the entity.
   *
   * @return the name
   */
	public static java.lang.String getType()
	{
		return entityName;
	}
}
