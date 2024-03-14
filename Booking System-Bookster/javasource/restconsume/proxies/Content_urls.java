// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package restconsume.proxies;

public class Content_urls implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject content_urlsMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "RESTConsume.Content_urls";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Content_urls_Summary("RESTConsume.Content_urls_Summary"),
		Desktop_Content_urls("RESTConsume.Desktop_Content_urls"),
		Mobile_Content_urls("RESTConsume.Mobile_Content_urls");

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

	public Content_urls(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Content_urls(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject content_urlsMendixObject)
	{
		if (content_urlsMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, content_urlsMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.content_urlsMendixObject = content_urlsMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static restconsume.proxies.Content_urls initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new restconsume.proxies.Content_urls(context, mendixObject);
	}

	public static restconsume.proxies.Content_urls load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return restconsume.proxies.Content_urls.initialize(context, mendixObject);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Content_urls_Summary
	 */
	public final restconsume.proxies.Summary getContent_urls_Summary() throws com.mendix.core.CoreException
	{
		return getContent_urls_Summary(getContext());
	}

	/**
	 * @param context
	 * @return value of Content_urls_Summary
	 * @throws com.mendix.core.CoreException
	 */
	public final restconsume.proxies.Summary getContent_urls_Summary(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		restconsume.proxies.Summary result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Content_urls_Summary.toString());
		if (identifier != null) {
			result = restconsume.proxies.Summary.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Content_urls_Summary
	 * @param content_urls_summary
	 */
	public final void setContent_urls_Summary(restconsume.proxies.Summary content_urls_summary)
	{
		setContent_urls_Summary(getContext(), content_urls_summary);
	}

	/**
	 * Set value of Content_urls_Summary
	 * @param context
	 * @param content_urls_summary
	 */
	public final void setContent_urls_Summary(com.mendix.systemwideinterfaces.core.IContext context, restconsume.proxies.Summary content_urls_summary)
	{
		if (content_urls_summary == null) {
			getMendixObject().setValue(context, MemberNames.Content_urls_Summary.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Content_urls_Summary.toString(), content_urls_summary.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Desktop_Content_urls
	 */
	public final restconsume.proxies.Desktop getDesktop_Content_urls() throws com.mendix.core.CoreException
	{
		return getDesktop_Content_urls(getContext());
	}

	/**
	 * @param context
	 * @return value of Desktop_Content_urls
	 * @throws com.mendix.core.CoreException
	 */
	public final restconsume.proxies.Desktop getDesktop_Content_urls(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		restconsume.proxies.Desktop result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Desktop_Content_urls.toString());
		if (identifier != null) {
			result = restconsume.proxies.Desktop.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Desktop_Content_urls
	 * @param desktop_content_urls
	 */
	public final void setDesktop_Content_urls(restconsume.proxies.Desktop desktop_content_urls)
	{
		setDesktop_Content_urls(getContext(), desktop_content_urls);
	}

	/**
	 * Set value of Desktop_Content_urls
	 * @param context
	 * @param desktop_content_urls
	 */
	public final void setDesktop_Content_urls(com.mendix.systemwideinterfaces.core.IContext context, restconsume.proxies.Desktop desktop_content_urls)
	{
		if (desktop_content_urls == null) {
			getMendixObject().setValue(context, MemberNames.Desktop_Content_urls.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Desktop_Content_urls.toString(), desktop_content_urls.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Mobile_Content_urls
	 */
	public final restconsume.proxies.Mobile getMobile_Content_urls() throws com.mendix.core.CoreException
	{
		return getMobile_Content_urls(getContext());
	}

	/**
	 * @param context
	 * @return value of Mobile_Content_urls
	 * @throws com.mendix.core.CoreException
	 */
	public final restconsume.proxies.Mobile getMobile_Content_urls(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		restconsume.proxies.Mobile result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Mobile_Content_urls.toString());
		if (identifier != null) {
			result = restconsume.proxies.Mobile.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Mobile_Content_urls
	 * @param mobile_content_urls
	 */
	public final void setMobile_Content_urls(restconsume.proxies.Mobile mobile_content_urls)
	{
		setMobile_Content_urls(getContext(), mobile_content_urls);
	}

	/**
	 * Set value of Mobile_Content_urls
	 * @param context
	 * @param mobile_content_urls
	 */
	public final void setMobile_Content_urls(com.mendix.systemwideinterfaces.core.IContext context, restconsume.proxies.Mobile mobile_content_urls)
	{
		if (mobile_content_urls == null) {
			getMendixObject().setValue(context, MemberNames.Mobile_Content_urls.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Mobile_Content_urls.toString(), mobile_content_urls.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return content_urlsMendixObject;
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
			final restconsume.proxies.Content_urls that = (restconsume.proxies.Content_urls) obj;
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