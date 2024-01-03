// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package forgotpassword.proxies;

public class Configuration implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject configurationMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "ForgotPassword.Configuration";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		HasTemplate("HasTemplate"),
		HasDeeplink("HasDeeplink"),
		HasSignUpTemplate("HasSignUpTemplate"),
		Configuration_DeepLink("ForgotPassword.Configuration_DeepLink"),
		Configuration_EmailTemplate_Reset("ForgotPassword.Configuration_EmailTemplate_Reset"),
		Configuration_EmailTemplate_Signup("ForgotPassword.Configuration_EmailTemplate_Signup");

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

	public Configuration(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Configuration(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject configurationMendixObject)
	{
		if (configurationMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, configurationMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.configurationMendixObject = configurationMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static forgotpassword.proxies.Configuration initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new forgotpassword.proxies.Configuration(context, mendixObject);
	}

	public static forgotpassword.proxies.Configuration load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return forgotpassword.proxies.Configuration.initialize(context, mendixObject);
	}

	public static java.util.List<forgotpassword.proxies.Configuration> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> forgotpassword.proxies.Configuration.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of HasTemplate
	 */
	public final java.lang.Boolean getHasTemplate()
	{
		return getHasTemplate(getContext());
	}

	/**
	 * @param context
	 * @return value of HasTemplate
	 */
	public final java.lang.Boolean getHasTemplate(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.HasTemplate.toString());
	}

	/**
	 * Set value of HasTemplate
	 * @param hastemplate
	 */
	public final void setHasTemplate(java.lang.Boolean hastemplate)
	{
		setHasTemplate(getContext(), hastemplate);
	}

	/**
	 * Set value of HasTemplate
	 * @param context
	 * @param hastemplate
	 */
	public final void setHasTemplate(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean hastemplate)
	{
		getMendixObject().setValue(context, MemberNames.HasTemplate.toString(), hastemplate);
	}

	/**
	 * @return value of HasDeeplink
	 */
	public final java.lang.Boolean getHasDeeplink()
	{
		return getHasDeeplink(getContext());
	}

	/**
	 * @param context
	 * @return value of HasDeeplink
	 */
	public final java.lang.Boolean getHasDeeplink(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.HasDeeplink.toString());
	}

	/**
	 * Set value of HasDeeplink
	 * @param hasdeeplink
	 */
	public final void setHasDeeplink(java.lang.Boolean hasdeeplink)
	{
		setHasDeeplink(getContext(), hasdeeplink);
	}

	/**
	 * Set value of HasDeeplink
	 * @param context
	 * @param hasdeeplink
	 */
	public final void setHasDeeplink(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean hasdeeplink)
	{
		getMendixObject().setValue(context, MemberNames.HasDeeplink.toString(), hasdeeplink);
	}

	/**
	 * @return value of HasSignUpTemplate
	 */
	public final java.lang.Boolean getHasSignUpTemplate()
	{
		return getHasSignUpTemplate(getContext());
	}

	/**
	 * @param context
	 * @return value of HasSignUpTemplate
	 */
	public final java.lang.Boolean getHasSignUpTemplate(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.HasSignUpTemplate.toString());
	}

	/**
	 * Set value of HasSignUpTemplate
	 * @param hassignuptemplate
	 */
	public final void setHasSignUpTemplate(java.lang.Boolean hassignuptemplate)
	{
		setHasSignUpTemplate(getContext(), hassignuptemplate);
	}

	/**
	 * Set value of HasSignUpTemplate
	 * @param context
	 * @param hassignuptemplate
	 */
	public final void setHasSignUpTemplate(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean hassignuptemplate)
	{
		getMendixObject().setValue(context, MemberNames.HasSignUpTemplate.toString(), hassignuptemplate);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Configuration_DeepLink
	 */
	public final deeplink.proxies.DeepLink getConfiguration_DeepLink() throws com.mendix.core.CoreException
	{
		return getConfiguration_DeepLink(getContext());
	}

	/**
	 * @param context
	 * @return value of Configuration_DeepLink
	 * @throws com.mendix.core.CoreException
	 */
	public final deeplink.proxies.DeepLink getConfiguration_DeepLink(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		deeplink.proxies.DeepLink result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Configuration_DeepLink.toString());
		if (identifier != null) {
			result = deeplink.proxies.DeepLink.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Configuration_DeepLink
	 * @param configuration_deeplink
	 */
	public final void setConfiguration_DeepLink(deeplink.proxies.DeepLink configuration_deeplink)
	{
		setConfiguration_DeepLink(getContext(), configuration_deeplink);
	}

	/**
	 * Set value of Configuration_DeepLink
	 * @param context
	 * @param configuration_deeplink
	 */
	public final void setConfiguration_DeepLink(com.mendix.systemwideinterfaces.core.IContext context, deeplink.proxies.DeepLink configuration_deeplink)
	{
		if (configuration_deeplink == null) {
			getMendixObject().setValue(context, MemberNames.Configuration_DeepLink.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Configuration_DeepLink.toString(), configuration_deeplink.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Configuration_EmailTemplate_Reset
	 */
	public final email_connector.proxies.EmailTemplate getConfiguration_EmailTemplate_Reset() throws com.mendix.core.CoreException
	{
		return getConfiguration_EmailTemplate_Reset(getContext());
	}

	/**
	 * @param context
	 * @return value of Configuration_EmailTemplate_Reset
	 * @throws com.mendix.core.CoreException
	 */
	public final email_connector.proxies.EmailTemplate getConfiguration_EmailTemplate_Reset(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		email_connector.proxies.EmailTemplate result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Configuration_EmailTemplate_Reset.toString());
		if (identifier != null) {
			result = email_connector.proxies.EmailTemplate.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Configuration_EmailTemplate_Reset
	 * @param configuration_emailtemplate_reset
	 */
	public final void setConfiguration_EmailTemplate_Reset(email_connector.proxies.EmailTemplate configuration_emailtemplate_reset)
	{
		setConfiguration_EmailTemplate_Reset(getContext(), configuration_emailtemplate_reset);
	}

	/**
	 * Set value of Configuration_EmailTemplate_Reset
	 * @param context
	 * @param configuration_emailtemplate_reset
	 */
	public final void setConfiguration_EmailTemplate_Reset(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.EmailTemplate configuration_emailtemplate_reset)
	{
		if (configuration_emailtemplate_reset == null) {
			getMendixObject().setValue(context, MemberNames.Configuration_EmailTemplate_Reset.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Configuration_EmailTemplate_Reset.toString(), configuration_emailtemplate_reset.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Configuration_EmailTemplate_Signup
	 */
	public final email_connector.proxies.EmailTemplate getConfiguration_EmailTemplate_Signup() throws com.mendix.core.CoreException
	{
		return getConfiguration_EmailTemplate_Signup(getContext());
	}

	/**
	 * @param context
	 * @return value of Configuration_EmailTemplate_Signup
	 * @throws com.mendix.core.CoreException
	 */
	public final email_connector.proxies.EmailTemplate getConfiguration_EmailTemplate_Signup(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		email_connector.proxies.EmailTemplate result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Configuration_EmailTemplate_Signup.toString());
		if (identifier != null) {
			result = email_connector.proxies.EmailTemplate.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Configuration_EmailTemplate_Signup
	 * @param configuration_emailtemplate_signup
	 */
	public final void setConfiguration_EmailTemplate_Signup(email_connector.proxies.EmailTemplate configuration_emailtemplate_signup)
	{
		setConfiguration_EmailTemplate_Signup(getContext(), configuration_emailtemplate_signup);
	}

	/**
	 * Set value of Configuration_EmailTemplate_Signup
	 * @param context
	 * @param configuration_emailtemplate_signup
	 */
	public final void setConfiguration_EmailTemplate_Signup(com.mendix.systemwideinterfaces.core.IContext context, email_connector.proxies.EmailTemplate configuration_emailtemplate_signup)
	{
		if (configuration_emailtemplate_signup == null) {
			getMendixObject().setValue(context, MemberNames.Configuration_EmailTemplate_Signup.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Configuration_EmailTemplate_Signup.toString(), configuration_emailtemplate_signup.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return configurationMendixObject;
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
			final forgotpassword.proxies.Configuration that = (forgotpassword.proxies.Configuration) obj;
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
