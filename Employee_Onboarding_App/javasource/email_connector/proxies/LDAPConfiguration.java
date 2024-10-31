// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package email_connector.proxies;

public class LDAPConfiguration implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject lDAPConfigurationMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "Email_Connector.LDAPConfiguration";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		LDAPHost("LDAPHost"),
		LDAPPort("LDAPPort"),
		LDAPUsername("LDAPUsername"),
		LDAPPassword("LDAPPassword"),
		isSSL("isSSL"),
		BaseDN("BaseDN"),
		AuthType("AuthType"),
		EmailAccount_LDAPConfiguration("Email_Connector.EmailAccount_LDAPConfiguration");

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

	public LDAPConfiguration(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected LDAPConfiguration(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject lDAPConfigurationMendixObject)
	{
		if (lDAPConfigurationMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, lDAPConfigurationMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.lDAPConfigurationMendixObject = lDAPConfigurationMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static email_connector.proxies.LDAPConfiguration initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new email_connector.proxies.LDAPConfiguration(context, mendixObject);
	}

	public static email_connector.proxies.LDAPConfiguration load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return email_connector.proxies.LDAPConfiguration.initialize(context, mendixObject);
	}

	public static java.util.List<email_connector.proxies.LDAPConfiguration> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> email_connector.proxies.LDAPConfiguration.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of LDAPHost
	 */
	public final java.lang.String getLDAPHost()
	{
		return getLDAPHost(getContext());
	}

	/**
	 * @param context
	 * @return value of LDAPHost
	 */
	public final java.lang.String getLDAPHost(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.LDAPHost.toString());
	}

	/**
	 * Set value of LDAPHost
	 * @param ldaphost
	 */
	public final void setLDAPHost(java.lang.String ldaphost)
	{
		setLDAPHost(getContext(), ldaphost);
	}

	/**
	 * Set value of LDAPHost
	 * @param context
	 * @param ldaphost
	 */
	public final void setLDAPHost(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String ldaphost)
	{
		getMendixObject().setValue(context, MemberNames.LDAPHost.toString(), ldaphost);
	}

	/**
	 * @return value of LDAPPort
	 */
	public final java.lang.Integer getLDAPPort()
	{
		return getLDAPPort(getContext());
	}

	/**
	 * @param context
	 * @return value of LDAPPort
	 */
	public final java.lang.Integer getLDAPPort(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.LDAPPort.toString());
	}

	/**
	 * Set value of LDAPPort
	 * @param ldapport
	 */
	public final void setLDAPPort(java.lang.Integer ldapport)
	{
		setLDAPPort(getContext(), ldapport);
	}

	/**
	 * Set value of LDAPPort
	 * @param context
	 * @param ldapport
	 */
	public final void setLDAPPort(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer ldapport)
	{
		getMendixObject().setValue(context, MemberNames.LDAPPort.toString(), ldapport);
	}

	/**
	 * @return value of LDAPUsername
	 */
	public final java.lang.String getLDAPUsername()
	{
		return getLDAPUsername(getContext());
	}

	/**
	 * @param context
	 * @return value of LDAPUsername
	 */
	public final java.lang.String getLDAPUsername(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.LDAPUsername.toString());
	}

	/**
	 * Set value of LDAPUsername
	 * @param ldapusername
	 */
	public final void setLDAPUsername(java.lang.String ldapusername)
	{
		setLDAPUsername(getContext(), ldapusername);
	}

	/**
	 * Set value of LDAPUsername
	 * @param context
	 * @param ldapusername
	 */
	public final void setLDAPUsername(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String ldapusername)
	{
		getMendixObject().setValue(context, MemberNames.LDAPUsername.toString(), ldapusername);
	}

	/**
	 * @return value of LDAPPassword
	 */
	public final java.lang.String getLDAPPassword()
	{
		return getLDAPPassword(getContext());
	}

	/**
	 * @param context
	 * @return value of LDAPPassword
	 */
	public final java.lang.String getLDAPPassword(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.LDAPPassword.toString());
	}

	/**
	 * Set value of LDAPPassword
	 * @param ldappassword
	 */
	public final void setLDAPPassword(java.lang.String ldappassword)
	{
		setLDAPPassword(getContext(), ldappassword);
	}

	/**
	 * Set value of LDAPPassword
	 * @param context
	 * @param ldappassword
	 */
	public final void setLDAPPassword(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String ldappassword)
	{
		getMendixObject().setValue(context, MemberNames.LDAPPassword.toString(), ldappassword);
	}

	/**
	 * @return value of isSSL
	 */
	public final java.lang.Boolean getisSSL()
	{
		return getisSSL(getContext());
	}

	/**
	 * @param context
	 * @return value of isSSL
	 */
	public final java.lang.Boolean getisSSL(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.isSSL.toString());
	}

	/**
	 * Set value of isSSL
	 * @param isssl
	 */
	public final void setisSSL(java.lang.Boolean isssl)
	{
		setisSSL(getContext(), isssl);
	}

	/**
	 * Set value of isSSL
	 * @param context
	 * @param isssl
	 */
	public final void setisSSL(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean isssl)
	{
		getMendixObject().setValue(context, MemberNames.isSSL.toString(), isssl);
	}

	/**
	 * @return value of BaseDN
	 */
	public final java.lang.String getBaseDN()
	{
		return getBaseDN(getContext());
	}

	/**
	 * @param context
	 * @return value of BaseDN
	 */
	public final java.lang.String getBaseDN(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.BaseDN.toString());
	}

	/**
	 * Set value of BaseDN
	 * @param basedn
	 */
	public final void setBaseDN(java.lang.String basedn)
	{
		setBaseDN(getContext(), basedn);
	}

	/**
	 * Set value of BaseDN
	 * @param context
	 * @param basedn
	 */
	public final void setBaseDN(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String basedn)
	{
		getMendixObject().setValue(context, MemberNames.BaseDN.toString(), basedn);
	}

	/**
	 * Get value of AuthType
	 * @param authtype
	 */
	public final email_connector.proxies.ENUM_LDAPAuthType getAuthType()
	{
		return getAuthType(getContext());
	}

	/**
	 * @param context
	 * @return value of AuthType
	 */
	public final email_connector.proxies.ENUM_LDAPAuthType getAuthType(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.AuthType.toString());
		if (obj == null) {
			return null;
		}
		return email_connector.proxies.ENUM_LDAPAuthType.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of AuthType
	 * @param authtype
	 */
	public final void setAuthType(email_connector.proxies.ENUM_LDAPAuthType authtype)
	{
		setAuthType(getContext(), authtype);
	}

	/**
	 * Set value of AuthType
	 * @param context
	 * @param authtype
	 */
	public final void setAuthType(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.ENUM_LDAPAuthType authtype)
	{
		if (authtype != null) {
			getMendixObject().setValue(context, MemberNames.AuthType.toString(), authtype.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.AuthType.toString(), null);
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailAccount_LDAPConfiguration
	 */
	public final email_connector.proxies.EmailAccount getEmailAccount_LDAPConfiguration() throws com.mendix.core.CoreException
	{
		return getEmailAccount_LDAPConfiguration(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailAccount_LDAPConfiguration
	 * @throws com.mendix.core.CoreException
	 */
	public final email_connector.proxies.EmailAccount getEmailAccount_LDAPConfiguration(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		email_connector.proxies.EmailAccount result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.EmailAccount_LDAPConfiguration.toString());
		if (identifier != null) {
			result = email_connector.proxies.EmailAccount.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of EmailAccount_LDAPConfiguration
	 * @param emailaccount_ldapconfiguration
	 */
	public final void setEmailAccount_LDAPConfiguration(email_connector.proxies.EmailAccount emailaccount_ldapconfiguration)
	{
		setEmailAccount_LDAPConfiguration(getContext(), emailaccount_ldapconfiguration);
	}

	/**
	 * Set value of EmailAccount_LDAPConfiguration
	 * @param context
	 * @param emailaccount_ldapconfiguration
	 */
	public final void setEmailAccount_LDAPConfiguration(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.EmailAccount emailaccount_ldapconfiguration)
	{
		if (emailaccount_ldapconfiguration == null) {
			getMendixObject().setValue(context, MemberNames.EmailAccount_LDAPConfiguration.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.EmailAccount_LDAPConfiguration.toString(), emailaccount_ldapconfiguration.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return lDAPConfigurationMendixObject;
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
			final email_connector.proxies.LDAPConfiguration that = (email_connector.proxies.LDAPConfiguration) obj;
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
