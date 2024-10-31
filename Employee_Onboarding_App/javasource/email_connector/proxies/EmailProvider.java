// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package email_connector.proxies;

public class EmailProvider implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject emailProviderMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "Email_Connector.EmailProvider";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Username("Username"),
		MailAddress("MailAddress"),
		Password("Password"),
		ReceiveEmails("ReceiveEmails"),
		SendEmails("SendEmails"),
		FromDisplayName("FromDisplayName"),
		isOAuthUsed("isOAuthUsed"),
		IsSharedMailbox("IsSharedMailbox"),
		AuthType("AuthType"),
		SelectedConfiguration_EmailProvider("Email_Connector.SelectedConfiguration_EmailProvider"),
		EmailProvider_OAuthProvider("Email_Connector.EmailProvider_OAuthProvider");

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

	public EmailProvider(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected EmailProvider(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject emailProviderMendixObject)
	{
		if (emailProviderMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, emailProviderMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.emailProviderMendixObject = emailProviderMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static email_connector.proxies.EmailProvider initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new email_connector.proxies.EmailProvider(context, mendixObject);
	}

	public static email_connector.proxies.EmailProvider load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return email_connector.proxies.EmailProvider.initialize(context, mendixObject);
	}

	/**
	 * @return value of Username
	 */
	public final java.lang.String getUsername()
	{
		return getUsername(getContext());
	}

	/**
	 * @param context
	 * @return value of Username
	 */
	public final java.lang.String getUsername(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Username.toString());
	}

	/**
	 * Set value of Username
	 * @param username
	 */
	public final void setUsername(java.lang.String username)
	{
		setUsername(getContext(), username);
	}

	/**
	 * Set value of Username
	 * @param context
	 * @param username
	 */
	public final void setUsername(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String username)
	{
		getMendixObject().setValue(context, MemberNames.Username.toString(), username);
	}

	/**
	 * @return value of MailAddress
	 */
	public final java.lang.String getMailAddress()
	{
		return getMailAddress(getContext());
	}

	/**
	 * @param context
	 * @return value of MailAddress
	 */
	public final java.lang.String getMailAddress(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.MailAddress.toString());
	}

	/**
	 * Set value of MailAddress
	 * @param mailaddress
	 */
	public final void setMailAddress(java.lang.String mailaddress)
	{
		setMailAddress(getContext(), mailaddress);
	}

	/**
	 * Set value of MailAddress
	 * @param context
	 * @param mailaddress
	 */
	public final void setMailAddress(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String mailaddress)
	{
		getMendixObject().setValue(context, MemberNames.MailAddress.toString(), mailaddress);
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

	/**
	 * @return value of ReceiveEmails
	 */
	public final java.lang.Boolean getReceiveEmails()
	{
		return getReceiveEmails(getContext());
	}

	/**
	 * @param context
	 * @return value of ReceiveEmails
	 */
	public final java.lang.Boolean getReceiveEmails(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.ReceiveEmails.toString());
	}

	/**
	 * Set value of ReceiveEmails
	 * @param receiveemails
	 */
	public final void setReceiveEmails(java.lang.Boolean receiveemails)
	{
		setReceiveEmails(getContext(), receiveemails);
	}

	/**
	 * Set value of ReceiveEmails
	 * @param context
	 * @param receiveemails
	 */
	public final void setReceiveEmails(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean receiveemails)
	{
		getMendixObject().setValue(context, MemberNames.ReceiveEmails.toString(), receiveemails);
	}

	/**
	 * @return value of SendEmails
	 */
	public final java.lang.Boolean getSendEmails()
	{
		return getSendEmails(getContext());
	}

	/**
	 * @param context
	 * @return value of SendEmails
	 */
	public final java.lang.Boolean getSendEmails(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.SendEmails.toString());
	}

	/**
	 * Set value of SendEmails
	 * @param sendemails
	 */
	public final void setSendEmails(java.lang.Boolean sendemails)
	{
		setSendEmails(getContext(), sendemails);
	}

	/**
	 * Set value of SendEmails
	 * @param context
	 * @param sendemails
	 */
	public final void setSendEmails(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean sendemails)
	{
		getMendixObject().setValue(context, MemberNames.SendEmails.toString(), sendemails);
	}

	/**
	 * @return value of FromDisplayName
	 */
	public final java.lang.String getFromDisplayName()
	{
		return getFromDisplayName(getContext());
	}

	/**
	 * @param context
	 * @return value of FromDisplayName
	 */
	public final java.lang.String getFromDisplayName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.FromDisplayName.toString());
	}

	/**
	 * Set value of FromDisplayName
	 * @param fromdisplayname
	 */
	public final void setFromDisplayName(java.lang.String fromdisplayname)
	{
		setFromDisplayName(getContext(), fromdisplayname);
	}

	/**
	 * Set value of FromDisplayName
	 * @param context
	 * @param fromdisplayname
	 */
	public final void setFromDisplayName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String fromdisplayname)
	{
		getMendixObject().setValue(context, MemberNames.FromDisplayName.toString(), fromdisplayname);
	}

	/**
	 * @return value of isOAuthUsed
	 */
	public final java.lang.Boolean getisOAuthUsed()
	{
		return getisOAuthUsed(getContext());
	}

	/**
	 * @param context
	 * @return value of isOAuthUsed
	 */
	public final java.lang.Boolean getisOAuthUsed(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.isOAuthUsed.toString());
	}

	/**
	 * Set value of isOAuthUsed
	 * @param isoauthused
	 */
	public final void setisOAuthUsed(java.lang.Boolean isoauthused)
	{
		setisOAuthUsed(getContext(), isoauthused);
	}

	/**
	 * Set value of isOAuthUsed
	 * @param context
	 * @param isoauthused
	 */
	public final void setisOAuthUsed(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean isoauthused)
	{
		getMendixObject().setValue(context, MemberNames.isOAuthUsed.toString(), isoauthused);
	}

	/**
	 * @return value of IsSharedMailbox
	 */
	public final java.lang.Boolean getIsSharedMailbox()
	{
		return getIsSharedMailbox(getContext());
	}

	/**
	 * @param context
	 * @return value of IsSharedMailbox
	 */
	public final java.lang.Boolean getIsSharedMailbox(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.IsSharedMailbox.toString());
	}

	/**
	 * Set value of IsSharedMailbox
	 * @param issharedmailbox
	 */
	public final void setIsSharedMailbox(java.lang.Boolean issharedmailbox)
	{
		setIsSharedMailbox(getContext(), issharedmailbox);
	}

	/**
	 * Set value of IsSharedMailbox
	 * @param context
	 * @param issharedmailbox
	 */
	public final void setIsSharedMailbox(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean issharedmailbox)
	{
		getMendixObject().setValue(context, MemberNames.IsSharedMailbox.toString(), issharedmailbox);
	}

	/**
	 * Get value of AuthType
	 * @param authtype
	 */
	public final email_connector.proxies.ENUM_OAuthType getAuthType()
	{
		return getAuthType(getContext());
	}

	/**
	 * @param context
	 * @return value of AuthType
	 */
	public final email_connector.proxies.ENUM_OAuthType getAuthType(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.AuthType.toString());
		if (obj == null) {
			return null;
		}
		return email_connector.proxies.ENUM_OAuthType.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of AuthType
	 * @param authtype
	 */
	public final void setAuthType(email_connector.proxies.ENUM_OAuthType authtype)
	{
		setAuthType(getContext(), authtype);
	}

	/**
	 * Set value of AuthType
	 * @param context
	 * @param authtype
	 */
	public final void setAuthType(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.ENUM_OAuthType authtype)
	{
		if (authtype != null) {
			getMendixObject().setValue(context, MemberNames.AuthType.toString(), authtype.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.AuthType.toString(), null);
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of SelectedConfiguration_EmailProvider
	 */
	public final email_connector.proxies.SelectedConfiguration getSelectedConfiguration_EmailProvider() throws com.mendix.core.CoreException
	{
		return getSelectedConfiguration_EmailProvider(getContext());
	}

	/**
	 * @param context
	 * @return value of SelectedConfiguration_EmailProvider
	 * @throws com.mendix.core.CoreException
	 */
	public final email_connector.proxies.SelectedConfiguration getSelectedConfiguration_EmailProvider(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		email_connector.proxies.SelectedConfiguration result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.SelectedConfiguration_EmailProvider.toString());
		if (identifier != null) {
			result = email_connector.proxies.SelectedConfiguration.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of SelectedConfiguration_EmailProvider
	 * @param selectedconfiguration_emailprovider
	 */
	public final void setSelectedConfiguration_EmailProvider(email_connector.proxies.SelectedConfiguration selectedconfiguration_emailprovider)
	{
		setSelectedConfiguration_EmailProvider(getContext(), selectedconfiguration_emailprovider);
	}

	/**
	 * Set value of SelectedConfiguration_EmailProvider
	 * @param context
	 * @param selectedconfiguration_emailprovider
	 */
	public final void setSelectedConfiguration_EmailProvider(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.SelectedConfiguration selectedconfiguration_emailprovider)
	{
		if (selectedconfiguration_emailprovider == null) {
			getMendixObject().setValue(context, MemberNames.SelectedConfiguration_EmailProvider.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.SelectedConfiguration_EmailProvider.toString(), selectedconfiguration_emailprovider.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailProvider_OAuthProvider
	 */
	public final email_connector.proxies.OAuthProvider getEmailProvider_OAuthProvider() throws com.mendix.core.CoreException
	{
		return getEmailProvider_OAuthProvider(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailProvider_OAuthProvider
	 * @throws com.mendix.core.CoreException
	 */
	public final email_connector.proxies.OAuthProvider getEmailProvider_OAuthProvider(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		email_connector.proxies.OAuthProvider result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.EmailProvider_OAuthProvider.toString());
		if (identifier != null) {
			result = email_connector.proxies.OAuthProvider.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of EmailProvider_OAuthProvider
	 * @param emailprovider_oauthprovider
	 */
	public final void setEmailProvider_OAuthProvider(email_connector.proxies.OAuthProvider emailprovider_oauthprovider)
	{
		setEmailProvider_OAuthProvider(getContext(), emailprovider_oauthprovider);
	}

	/**
	 * Set value of EmailProvider_OAuthProvider
	 * @param context
	 * @param emailprovider_oauthprovider
	 */
	public final void setEmailProvider_OAuthProvider(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.OAuthProvider emailprovider_oauthprovider)
	{
		if (emailprovider_oauthprovider == null) {
			getMendixObject().setValue(context, MemberNames.EmailProvider_OAuthProvider.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.EmailProvider_OAuthProvider.toString(), emailprovider_oauthprovider.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return emailProviderMendixObject;
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
			final email_connector.proxies.EmailProvider that = (email_connector.proxies.EmailProvider) obj;
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