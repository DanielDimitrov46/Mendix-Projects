// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package system.proxies;

public class Error implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject errorMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "System.Error";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		ErrorType("ErrorType"),
		Message("Message"),
		Stacktrace("Stacktrace");

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

	public Error(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Error(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject errorMendixObject)
	{
		if (errorMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, errorMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.errorMendixObject = errorMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static system.proxies.Error initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		if (com.mendix.core.Core.isSubClassOf("System.SoapFault", mendixObject.getType())) {
			return system.proxies.SoapFault.initialize(context, mendixObject);
		}
		return new system.proxies.Error(context, mendixObject);
	}

	public static system.proxies.Error load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return system.proxies.Error.initialize(context, mendixObject);
	}

	/**
	 * @return value of ErrorType
	 */
	public final java.lang.String getErrorType()
	{
		return getErrorType(getContext());
	}

	/**
	 * @param context
	 * @return value of ErrorType
	 */
	public final java.lang.String getErrorType(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.ErrorType.toString());
	}

	/**
	 * Set value of ErrorType
	 * @param errortype
	 */
	public final void setErrorType(java.lang.String errortype)
	{
		setErrorType(getContext(), errortype);
	}

	/**
	 * Set value of ErrorType
	 * @param context
	 * @param errortype
	 */
	public final void setErrorType(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String errortype)
	{
		getMendixObject().setValue(context, MemberNames.ErrorType.toString(), errortype);
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
	 * @return value of Stacktrace
	 */
	public final java.lang.String getStacktrace()
	{
		return getStacktrace(getContext());
	}

	/**
	 * @param context
	 * @return value of Stacktrace
	 */
	public final java.lang.String getStacktrace(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Stacktrace.toString());
	}

	/**
	 * Set value of Stacktrace
	 * @param stacktrace
	 */
	public final void setStacktrace(java.lang.String stacktrace)
	{
		setStacktrace(getContext(), stacktrace);
	}

	/**
	 * Set value of Stacktrace
	 * @param context
	 * @param stacktrace
	 */
	public final void setStacktrace(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String stacktrace)
	{
		getMendixObject().setValue(context, MemberNames.Stacktrace.toString(), stacktrace);
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return errorMendixObject;
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
			final system.proxies.Error that = (system.proxies.Error) obj;
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
