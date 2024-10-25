// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package usermanagement.proxies;

public class CapitalItem implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject capitalItemMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "UserManagement.CapitalItem";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Value("Value"),
		CapitalItem_Capital("UserManagement.CapitalItem_Capital");

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

	public CapitalItem(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected CapitalItem(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject capitalItemMendixObject)
	{
		if (capitalItemMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, capitalItemMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.capitalItemMendixObject = capitalItemMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static usermanagement.proxies.CapitalItem initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new usermanagement.proxies.CapitalItem(context, mendixObject);
	}

	public static usermanagement.proxies.CapitalItem load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return usermanagement.proxies.CapitalItem.initialize(context, mendixObject);
	}

	/**
	 * @return value of Value
	 */
	public final java.lang.String getValue()
	{
		return getValue(getContext());
	}

	/**
	 * @param context
	 * @return value of Value
	 */
	public final java.lang.String getValue(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Value.toString());
	}

	/**
	 * Set value of Value
	 * @param value
	 */
	public final void setValue(java.lang.String value)
	{
		setValue(getContext(), value);
	}

	/**
	 * Set value of Value
	 * @param context
	 * @param value
	 */
	public final void setValue(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String value)
	{
		getMendixObject().setValue(context, MemberNames.Value.toString(), value);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of CapitalItem_Capital
	 */
	public final usermanagement.proxies.Capital getCapitalItem_Capital() throws com.mendix.core.CoreException
	{
		return getCapitalItem_Capital(getContext());
	}

	/**
	 * @param context
	 * @return value of CapitalItem_Capital
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Capital getCapitalItem_Capital(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Capital result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.CapitalItem_Capital.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Capital.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of CapitalItem_Capital
	 * @param capitalitem_capital
	 */
	public final void setCapitalItem_Capital(usermanagement.proxies.Capital capitalitem_capital)
	{
		setCapitalItem_Capital(getContext(), capitalitem_capital);
	}

	/**
	 * Set value of CapitalItem_Capital
	 * @param context
	 * @param capitalitem_capital
	 */
	public final void setCapitalItem_Capital(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Capital capitalitem_capital)
	{
		if (capitalitem_capital == null) {
			getMendixObject().setValue(context, MemberNames.CapitalItem_Capital.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.CapitalItem_Capital.toString(), capitalitem_capital.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return capitalItemMendixObject;
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
			final usermanagement.proxies.CapitalItem that = (usermanagement.proxies.CapitalItem) obj;
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
