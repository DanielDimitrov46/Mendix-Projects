// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package mendixsso.proxies;

public class MendixSSOUser extends system.proxies.User
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "MendixSSO.MendixSSOUser";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		DisplayName("DisplayName"),
		EmailAddress("EmailAddress"),
		AvatarURL("AvatarURL"),
		AvatarThumbURL("AvatarThumbURL"),
		Name("Name"),
		Password("Password"),
		LastLogin("LastLogin"),
		Blocked("Blocked"),
		BlockedSince("BlockedSince"),
		Active("Active"),
		FailedLogins("FailedLogins"),
		WebServiceUser("WebServiceUser"),
		IsAnonymous("IsAnonymous"),
		UserRoles("System.UserRoles"),
		User_Language("System.User_Language"),
		User_TimeZone("System.User_TimeZone");

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

	public MendixSSOUser(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected MendixSSOUser(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixSSOUserMendixObject)
	{
		super(context, mendixSSOUserMendixObject);
		if (!com.mendix.core.Core.isSubClassOf(entityName, mendixSSOUserMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static mendixsso.proxies.MendixSSOUser initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new mendixsso.proxies.MendixSSOUser(context, mendixObject);
	}

	public static mendixsso.proxies.MendixSSOUser load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return mendixsso.proxies.MendixSSOUser.initialize(context, mendixObject);
	}

	public static java.util.List<mendixsso.proxies.MendixSSOUser> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> mendixsso.proxies.MendixSSOUser.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of DisplayName
	 */
	public final java.lang.String getDisplayName()
	{
		return getDisplayName(getContext());
	}

	/**
	 * @param context
	 * @return value of DisplayName
	 */
	public final java.lang.String getDisplayName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.DisplayName.toString());
	}

	/**
	 * Set value of DisplayName
	 * @param displayname
	 */
	public final void setDisplayName(java.lang.String displayname)
	{
		setDisplayName(getContext(), displayname);
	}

	/**
	 * Set value of DisplayName
	 * @param context
	 * @param displayname
	 */
	public final void setDisplayName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String displayname)
	{
		getMendixObject().setValue(context, MemberNames.DisplayName.toString(), displayname);
	}

	/**
	 * @return value of EmailAddress
	 */
	public final java.lang.String getEmailAddress()
	{
		return getEmailAddress(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailAddress
	 */
	public final java.lang.String getEmailAddress(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.EmailAddress.toString());
	}

	/**
	 * Set value of EmailAddress
	 * @param emailaddress
	 */
	public final void setEmailAddress(java.lang.String emailaddress)
	{
		setEmailAddress(getContext(), emailaddress);
	}

	/**
	 * Set value of EmailAddress
	 * @param context
	 * @param emailaddress
	 */
	public final void setEmailAddress(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String emailaddress)
	{
		getMendixObject().setValue(context, MemberNames.EmailAddress.toString(), emailaddress);
	}

	/**
	 * @return value of AvatarURL
	 */
	public final java.lang.String getAvatarURL()
	{
		return getAvatarURL(getContext());
	}

	/**
	 * @param context
	 * @return value of AvatarURL
	 */
	public final java.lang.String getAvatarURL(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.AvatarURL.toString());
	}

	/**
	 * Set value of AvatarURL
	 * @param avatarurl
	 */
	public final void setAvatarURL(java.lang.String avatarurl)
	{
		setAvatarURL(getContext(), avatarurl);
	}

	/**
	 * Set value of AvatarURL
	 * @param context
	 * @param avatarurl
	 */
	public final void setAvatarURL(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String avatarurl)
	{
		getMendixObject().setValue(context, MemberNames.AvatarURL.toString(), avatarurl);
	}

	/**
	 * @return value of AvatarThumbURL
	 */
	public final java.lang.String getAvatarThumbURL()
	{
		return getAvatarThumbURL(getContext());
	}

	/**
	 * @param context
	 * @return value of AvatarThumbURL
	 */
	public final java.lang.String getAvatarThumbURL(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.AvatarThumbURL.toString());
	}

	/**
	 * Set value of AvatarThumbURL
	 * @param avatarthumburl
	 */
	public final void setAvatarThumbURL(java.lang.String avatarthumburl)
	{
		setAvatarThumbURL(getContext(), avatarthumburl);
	}

	/**
	 * Set value of AvatarThumbURL
	 * @param context
	 * @param avatarthumburl
	 */
	public final void setAvatarThumbURL(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String avatarthumburl)
	{
		getMendixObject().setValue(context, MemberNames.AvatarThumbURL.toString(), avatarthumburl);
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this) {
			return true;
		}
		if (obj != null && getClass().equals(obj.getClass()))
		{
			final mendixsso.proxies.MendixSSOUser that = (mendixsso.proxies.MendixSSOUser) obj;
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
