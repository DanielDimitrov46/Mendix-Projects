// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package email_connector.proxies;

public class EmailConnectorLog implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject emailConnectorLogMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "Email_Connector.EmailConnectorLog";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Created("Created"),
		Logtype("Logtype"),
		ErrorMessage("ErrorMessage"),
		TriggeredInMF("TriggeredInMF"),
		StackTrace("StackTrace"),
		Message("Message"),
		IsUnread("IsUnread"),
		EmailConnectorLog_EmailMessage("Email_Connector.EmailConnectorLog_EmailMessage"),
		EmailConnectorLog_EmailAccount("Email_Connector.EmailConnectorLog_EmailAccount");

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

	public EmailConnectorLog(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected EmailConnectorLog(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject emailConnectorLogMendixObject)
	{
		if (emailConnectorLogMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, emailConnectorLogMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.emailConnectorLogMendixObject = emailConnectorLogMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static email_connector.proxies.EmailConnectorLog initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new email_connector.proxies.EmailConnectorLog(context, mendixObject);
	}

	public static email_connector.proxies.EmailConnectorLog load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return email_connector.proxies.EmailConnectorLog.initialize(context, mendixObject);
	}

	public static java.util.List<email_connector.proxies.EmailConnectorLog> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> email_connector.proxies.EmailConnectorLog.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
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
	 * Get value of Logtype
	 * @param logtype
	 */
	public final email_connector.proxies.ENUM_LogType getLogtype()
	{
		return getLogtype(getContext());
	}

	/**
	 * @param context
	 * @return value of Logtype
	 */
	public final email_connector.proxies.ENUM_LogType getLogtype(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.Logtype.toString());
		if (obj == null) {
			return null;
		}
		return email_connector.proxies.ENUM_LogType.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of Logtype
	 * @param logtype
	 */
	public final void setLogtype(email_connector.proxies.ENUM_LogType logtype)
	{
		setLogtype(getContext(), logtype);
	}

	/**
	 * Set value of Logtype
	 * @param context
	 * @param logtype
	 */
	public final void setLogtype(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.ENUM_LogType logtype)
	{
		if (logtype != null) {
			getMendixObject().setValue(context, MemberNames.Logtype.toString(), logtype.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.Logtype.toString(), null);
		}
	}

	/**
	 * @return value of ErrorMessage
	 */
	public final java.lang.String getErrorMessage()
	{
		return getErrorMessage(getContext());
	}

	/**
	 * @param context
	 * @return value of ErrorMessage
	 */
	public final java.lang.String getErrorMessage(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.ErrorMessage.toString());
	}

	/**
	 * Set value of ErrorMessage
	 * @param errormessage
	 */
	public final void setErrorMessage(java.lang.String errormessage)
	{
		setErrorMessage(getContext(), errormessage);
	}

	/**
	 * Set value of ErrorMessage
	 * @param context
	 * @param errormessage
	 */
	public final void setErrorMessage(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String errormessage)
	{
		getMendixObject().setValue(context, MemberNames.ErrorMessage.toString(), errormessage);
	}

	/**
	 * @return value of TriggeredInMF
	 */
	public final java.lang.String getTriggeredInMF()
	{
		return getTriggeredInMF(getContext());
	}

	/**
	 * @param context
	 * @return value of TriggeredInMF
	 */
	public final java.lang.String getTriggeredInMF(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.TriggeredInMF.toString());
	}

	/**
	 * Set value of TriggeredInMF
	 * @param triggeredinmf
	 */
	public final void setTriggeredInMF(java.lang.String triggeredinmf)
	{
		setTriggeredInMF(getContext(), triggeredinmf);
	}

	/**
	 * Set value of TriggeredInMF
	 * @param context
	 * @param triggeredinmf
	 */
	public final void setTriggeredInMF(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String triggeredinmf)
	{
		getMendixObject().setValue(context, MemberNames.TriggeredInMF.toString(), triggeredinmf);
	}

	/**
	 * @return value of StackTrace
	 */
	public final java.lang.String getStackTrace()
	{
		return getStackTrace(getContext());
	}

	/**
	 * @param context
	 * @return value of StackTrace
	 */
	public final java.lang.String getStackTrace(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.StackTrace.toString());
	}

	/**
	 * Set value of StackTrace
	 * @param stacktrace
	 */
	public final void setStackTrace(java.lang.String stacktrace)
	{
		setStackTrace(getContext(), stacktrace);
	}

	/**
	 * Set value of StackTrace
	 * @param context
	 * @param stacktrace
	 */
	public final void setStackTrace(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String stacktrace)
	{
		getMendixObject().setValue(context, MemberNames.StackTrace.toString(), stacktrace);
	}

	/**
	 * @return value of Message
	 */
	public final java.lang.String getMessage()
	{
		return getMessage(getContext());
	}

	/**
	 * @param context
	 * @return value of Message
	 */
	public final java.lang.String getMessage(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Message.toString());
	}

	/**
	 * Set value of Message
	 * @param message
	 */
	public final void setMessage(java.lang.String message)
	{
		setMessage(getContext(), message);
	}

	/**
	 * Set value of Message
	 * @param context
	 * @param message
	 */
	public final void setMessage(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String message)
	{
		getMendixObject().setValue(context, MemberNames.Message.toString(), message);
	}

	/**
	 * @return value of IsUnread
	 */
	public final java.lang.Boolean getIsUnread()
	{
		return getIsUnread(getContext());
	}

	/**
	 * @param context
	 * @return value of IsUnread
	 */
	public final java.lang.Boolean getIsUnread(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.IsUnread.toString());
	}

	/**
	 * Set value of IsUnread
	 * @param isunread
	 */
	public final void setIsUnread(java.lang.Boolean isunread)
	{
		setIsUnread(getContext(), isunread);
	}

	/**
	 * Set value of IsUnread
	 * @param context
	 * @param isunread
	 */
	public final void setIsUnread(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean isunread)
	{
		getMendixObject().setValue(context, MemberNames.IsUnread.toString(), isunread);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailConnectorLog_EmailMessage
	 */
	public final email_connector.proxies.EmailMessage getEmailConnectorLog_EmailMessage() throws com.mendix.core.CoreException
	{
		return getEmailConnectorLog_EmailMessage(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailConnectorLog_EmailMessage
	 * @throws com.mendix.core.CoreException
	 */
	public final email_connector.proxies.EmailMessage getEmailConnectorLog_EmailMessage(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		email_connector.proxies.EmailMessage result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.EmailConnectorLog_EmailMessage.toString());
		if (identifier != null) {
			result = email_connector.proxies.EmailMessage.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of EmailConnectorLog_EmailMessage
	 * @param emailconnectorlog_emailmessage
	 */
	public final void setEmailConnectorLog_EmailMessage(email_connector.proxies.EmailMessage emailconnectorlog_emailmessage)
	{
		setEmailConnectorLog_EmailMessage(getContext(), emailconnectorlog_emailmessage);
	}

	/**
	 * Set value of EmailConnectorLog_EmailMessage
	 * @param context
	 * @param emailconnectorlog_emailmessage
	 */
	public final void setEmailConnectorLog_EmailMessage(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.EmailMessage emailconnectorlog_emailmessage)
	{
		if (emailconnectorlog_emailmessage == null) {
			getMendixObject().setValue(context, MemberNames.EmailConnectorLog_EmailMessage.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.EmailConnectorLog_EmailMessage.toString(), emailconnectorlog_emailmessage.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailConnectorLog_EmailAccount
	 */
	public final email_connector.proxies.EmailAccount getEmailConnectorLog_EmailAccount() throws com.mendix.core.CoreException
	{
		return getEmailConnectorLog_EmailAccount(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailConnectorLog_EmailAccount
	 * @throws com.mendix.core.CoreException
	 */
	public final email_connector.proxies.EmailAccount getEmailConnectorLog_EmailAccount(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		email_connector.proxies.EmailAccount result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.EmailConnectorLog_EmailAccount.toString());
		if (identifier != null) {
			result = email_connector.proxies.EmailAccount.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of EmailConnectorLog_EmailAccount
	 * @param emailconnectorlog_emailaccount
	 */
	public final void setEmailConnectorLog_EmailAccount(email_connector.proxies.EmailAccount emailconnectorlog_emailaccount)
	{
		setEmailConnectorLog_EmailAccount(getContext(), emailconnectorlog_emailaccount);
	}

	/**
	 * Set value of EmailConnectorLog_EmailAccount
	 * @param context
	 * @param emailconnectorlog_emailaccount
	 */
	public final void setEmailConnectorLog_EmailAccount(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.EmailAccount emailconnectorlog_emailaccount)
	{
		if (emailconnectorlog_emailaccount == null) {
			getMendixObject().setValue(context, MemberNames.EmailConnectorLog_EmailAccount.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.EmailConnectorLog_EmailAccount.toString(), emailconnectorlog_emailaccount.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return emailConnectorLogMendixObject;
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
			final email_connector.proxies.EmailConnectorLog that = (email_connector.proxies.EmailConnectorLog) obj;
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
