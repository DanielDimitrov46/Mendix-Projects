// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package usermanagement.proxies;

public class Languages implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject languagesMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "UserManagement.Languages";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Languages_Root("UserManagement.Languages_Root"),
		Languages_JsonObject("UserManagement.Languages_JsonObject");

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

	public Languages(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Languages(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject languagesMendixObject)
	{
		if (languagesMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, languagesMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.languagesMendixObject = languagesMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static usermanagement.proxies.Languages initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new usermanagement.proxies.Languages(context, mendixObject);
	}

	public static usermanagement.proxies.Languages load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return usermanagement.proxies.Languages.initialize(context, mendixObject);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Languages_Root
	 */
	public final usermanagement.proxies.Root getLanguages_Root() throws com.mendix.core.CoreException
	{
		return getLanguages_Root(getContext());
	}

	/**
	 * @param context
	 * @return value of Languages_Root
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Root getLanguages_Root(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Root result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Languages_Root.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Root.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Languages_Root
	 * @param languages_root
	 */
	public final void setLanguages_Root(usermanagement.proxies.Root languages_root)
	{
		setLanguages_Root(getContext(), languages_root);
	}

	/**
	 * Set value of Languages_Root
	 * @param context
	 * @param languages_root
	 */
	public final void setLanguages_Root(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Root languages_root)
	{
		if (languages_root == null) {
			getMendixObject().setValue(context, MemberNames.Languages_Root.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Languages_Root.toString(), languages_root.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Languages_JsonObject
	 */
	public final usermanagement.proxies.JsonObject getLanguages_JsonObject() throws com.mendix.core.CoreException
	{
		return getLanguages_JsonObject(getContext());
	}

	/**
	 * @param context
	 * @return value of Languages_JsonObject
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.JsonObject getLanguages_JsonObject(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.JsonObject result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Languages_JsonObject.toString());
		if (identifier != null) {
			result = usermanagement.proxies.JsonObject.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Languages_JsonObject
	 * @param languages_jsonobject
	 */
	public final void setLanguages_JsonObject(usermanagement.proxies.JsonObject languages_jsonobject)
	{
		setLanguages_JsonObject(getContext(), languages_jsonobject);
	}

	/**
	 * Set value of Languages_JsonObject
	 * @param context
	 * @param languages_jsonobject
	 */
	public final void setLanguages_JsonObject(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.JsonObject languages_jsonobject)
	{
		if (languages_jsonobject == null) {
			getMendixObject().setValue(context, MemberNames.Languages_JsonObject.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Languages_JsonObject.toString(), languages_jsonobject.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return languagesMendixObject;
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
			final usermanagement.proxies.Languages that = (usermanagement.proxies.Languages) obj;
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
