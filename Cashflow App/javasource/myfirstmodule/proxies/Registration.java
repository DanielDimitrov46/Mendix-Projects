// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies;

public class Registration implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject registrationMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "MyFirstModule.Registration";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		FirstName("FirstName"),
		LastName("LastName"),
		Email("Email"),
		DateOfBirth("DateOfBirth"),
		Password("Password");

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

	public Registration(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Registration(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject registrationMendixObject)
	{
		if (registrationMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, registrationMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.registrationMendixObject = registrationMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static myfirstmodule.proxies.Registration initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new myfirstmodule.proxies.Registration(context, mendixObject);
	}

	public static myfirstmodule.proxies.Registration load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return myfirstmodule.proxies.Registration.initialize(context, mendixObject);
	}

	public static java.util.List<myfirstmodule.proxies.Registration> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> myfirstmodule.proxies.Registration.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of FirstName
	 */
	public final java.lang.String getFirstName()
	{
		return getFirstName(getContext());
	}

	/**
	 * @param context
	 * @return value of FirstName
	 */
	public final java.lang.String getFirstName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.FirstName.toString());
	}

	/**
	 * Set value of FirstName
	 * @param firstname
	 */
	public final void setFirstName(java.lang.String firstname)
	{
		setFirstName(getContext(), firstname);
	}

	/**
	 * Set value of FirstName
	 * @param context
	 * @param firstname
	 */
	public final void setFirstName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String firstname)
	{
		getMendixObject().setValue(context, MemberNames.FirstName.toString(), firstname);
	}

	/**
	 * @return value of LastName
	 */
	public final java.lang.String getLastName()
	{
		return getLastName(getContext());
	}

	/**
	 * @param context
	 * @return value of LastName
	 */
	public final java.lang.String getLastName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.LastName.toString());
	}

	/**
	 * Set value of LastName
	 * @param lastname
	 */
	public final void setLastName(java.lang.String lastname)
	{
		setLastName(getContext(), lastname);
	}

	/**
	 * Set value of LastName
	 * @param context
	 * @param lastname
	 */
	public final void setLastName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String lastname)
	{
		getMendixObject().setValue(context, MemberNames.LastName.toString(), lastname);
	}

	/**
	 * @return value of Email
	 */
	public final java.lang.String getEmail()
	{
		return getEmail(getContext());
	}

	/**
	 * @param context
	 * @return value of Email
	 */
	public final java.lang.String getEmail(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Email.toString());
	}

	/**
	 * Set value of Email
	 * @param email
	 */
	public final void setEmail(java.lang.String email)
	{
		setEmail(getContext(), email);
	}

	/**
	 * Set value of Email
	 * @param context
	 * @param email
	 */
	public final void setEmail(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String email)
	{
		getMendixObject().setValue(context, MemberNames.Email.toString(), email);
	}

	/**
	 * @return value of DateOfBirth
	 */
	public final java.util.Date getDateOfBirth()
	{
		return getDateOfBirth(getContext());
	}

	/**
	 * @param context
	 * @return value of DateOfBirth
	 */
	public final java.util.Date getDateOfBirth(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.DateOfBirth.toString());
	}

	/**
	 * Set value of DateOfBirth
	 * @param dateofbirth
	 */
	public final void setDateOfBirth(java.util.Date dateofbirth)
	{
		setDateOfBirth(getContext(), dateofbirth);
	}

	/**
	 * Set value of DateOfBirth
	 * @param context
	 * @param dateofbirth
	 */
	public final void setDateOfBirth(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date dateofbirth)
	{
		getMendixObject().setValue(context, MemberNames.DateOfBirth.toString(), dateofbirth);
	}

	/**
	 * @return value of Password
	 */
	public final java.lang.String getPassword()
	{
		return getPassword(getContext());
	}

	/**
	 * @param context
	 * @return value of Password
	 */
	public final java.lang.String getPassword(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Password.toString());
	}

	/**
	 * Set value of Password
	 * @param password
	 */
	public final void setPassword(java.lang.String password)
	{
		setPassword(getContext(), password);
	}

	/**
	 * Set value of Password
	 * @param context
	 * @param password
	 */
	public final void setPassword(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String password)
	{
		getMendixObject().setValue(context, MemberNames.Password.toString(), password);
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return registrationMendixObject;
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
			final myfirstmodule.proxies.Registration that = (myfirstmodule.proxies.Registration) obj;
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
