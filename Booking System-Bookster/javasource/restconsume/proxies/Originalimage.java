// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package restconsume.proxies;

public class Originalimage implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject originalimageMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "RESTConsume.Originalimage";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Source("Source"),
		Width("Width"),
		Height("Height"),
		Originalimage_Summary("RESTConsume.Originalimage_Summary");

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

	public Originalimage(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Originalimage(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject originalimageMendixObject)
	{
		if (originalimageMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, originalimageMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.originalimageMendixObject = originalimageMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static restconsume.proxies.Originalimage initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new restconsume.proxies.Originalimage(context, mendixObject);
	}

	public static restconsume.proxies.Originalimage load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return restconsume.proxies.Originalimage.initialize(context, mendixObject);
	}

	/**
	 * @return value of Source
	 */
	public final java.lang.String getSource()
	{
		return getSource(getContext());
	}

	/**
	 * @param context
	 * @return value of Source
	 */
	public final java.lang.String getSource(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Source.toString());
	}

	/**
	 * Set value of Source
	 * @param source
	 */
	public final void setSource(java.lang.String source)
	{
		setSource(getContext(), source);
	}

	/**
	 * Set value of Source
	 * @param context
	 * @param source
	 */
	public final void setSource(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String source)
	{
		getMendixObject().setValue(context, MemberNames.Source.toString(), source);
	}

	/**
	 * @return value of Width
	 */
	public final java.lang.Integer getWidth()
	{
		return getWidth(getContext());
	}

	/**
	 * @param context
	 * @return value of Width
	 */
	public final java.lang.Integer getWidth(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.Width.toString());
	}

	/**
	 * Set value of Width
	 * @param width
	 */
	public final void setWidth(java.lang.Integer width)
	{
		setWidth(getContext(), width);
	}

	/**
	 * Set value of Width
	 * @param context
	 * @param width
	 */
	public final void setWidth(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer width)
	{
		getMendixObject().setValue(context, MemberNames.Width.toString(), width);
	}

	/**
	 * @return value of Height
	 */
	public final java.lang.Integer getHeight()
	{
		return getHeight(getContext());
	}

	/**
	 * @param context
	 * @return value of Height
	 */
	public final java.lang.Integer getHeight(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.Height.toString());
	}

	/**
	 * Set value of Height
	 * @param height
	 */
	public final void setHeight(java.lang.Integer height)
	{
		setHeight(getContext(), height);
	}

	/**
	 * Set value of Height
	 * @param context
	 * @param height
	 */
	public final void setHeight(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer height)
	{
		getMendixObject().setValue(context, MemberNames.Height.toString(), height);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Originalimage_Summary
	 */
	public final restconsume.proxies.Summary getOriginalimage_Summary() throws com.mendix.core.CoreException
	{
		return getOriginalimage_Summary(getContext());
	}

	/**
	 * @param context
	 * @return value of Originalimage_Summary
	 * @throws com.mendix.core.CoreException
	 */
	public final restconsume.proxies.Summary getOriginalimage_Summary(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		restconsume.proxies.Summary result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Originalimage_Summary.toString());
		if (identifier != null) {
			result = restconsume.proxies.Summary.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Originalimage_Summary
	 * @param originalimage_summary
	 */
	public final void setOriginalimage_Summary(restconsume.proxies.Summary originalimage_summary)
	{
		setOriginalimage_Summary(getContext(), originalimage_summary);
	}

	/**
	 * Set value of Originalimage_Summary
	 * @param context
	 * @param originalimage_summary
	 */
	public final void setOriginalimage_Summary(com.mendix.systemwideinterfaces.core.IContext context, restconsume.proxies.Summary originalimage_summary)
	{
		if (originalimage_summary == null) {
			getMendixObject().setValue(context, MemberNames.Originalimage_Summary.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Originalimage_Summary.toString(), originalimage_summary.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return originalimageMendixObject;
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
			final restconsume.proxies.Originalimage that = (restconsume.proxies.Originalimage) obj;
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