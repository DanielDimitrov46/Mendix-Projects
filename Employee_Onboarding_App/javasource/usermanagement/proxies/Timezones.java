// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package usermanagement.proxies;

public class Timezones implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject timezonesMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "UserManagement.Timezones";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Timezones_Root("UserManagement.Timezones_Root");

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

	public Timezones(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Timezones(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject timezonesMendixObject)
	{
		if (timezonesMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, timezonesMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.timezonesMendixObject = timezonesMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static usermanagement.proxies.Timezones initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new usermanagement.proxies.Timezones(context, mendixObject);
	}

	public static usermanagement.proxies.Timezones load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return usermanagement.proxies.Timezones.initialize(context, mendixObject);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Timezones_Root
	 */
	public final usermanagement.proxies.Root getTimezones_Root() throws com.mendix.core.CoreException
	{
		return getTimezones_Root(getContext());
	}

	/**
	 * @param context
	 * @return value of Timezones_Root
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Root getTimezones_Root(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Root result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Timezones_Root.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Root.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Timezones_Root
	 * @param timezones_root
	 */
	public final void setTimezones_Root(usermanagement.proxies.Root timezones_root)
	{
		setTimezones_Root(getContext(), timezones_root);
	}

	/**
	 * Set value of Timezones_Root
	 * @param context
	 * @param timezones_root
	 */
	public final void setTimezones_Root(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Root timezones_root)
	{
		if (timezones_root == null) {
			getMendixObject().setValue(context, MemberNames.Timezones_Root.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Timezones_Root.toString(), timezones_root.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return timezonesMendixObject;
	}

	@java.lang.Override
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
			final usermanagement.proxies.Timezones that = (usermanagement.proxies.Timezones) obj;
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
