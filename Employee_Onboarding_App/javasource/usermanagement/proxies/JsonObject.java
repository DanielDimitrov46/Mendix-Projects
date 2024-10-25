// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package usermanagement.proxies;

public class JsonObject implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject jsonObjectMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "UserManagement.JsonObject";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Cca2("Cca2"),
		Region("Region"),
		Flag("Flag"),
		StartOfWeek("StartOfWeek"),
		JsonObject_Root("UserManagement.JsonObject_Root"),
		Name_JsonObject("UserManagement.Name_JsonObject"),
		Tld_JsonObject("UserManagement.Tld_JsonObject"),
		Currencies_JsonObject("UserManagement.Currencies_JsonObject"),
		Capital_JsonObject("UserManagement.Capital_JsonObject"),
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

	public JsonObject(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected JsonObject(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject jsonObjectMendixObject)
	{
		if (jsonObjectMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, jsonObjectMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.jsonObjectMendixObject = jsonObjectMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static usermanagement.proxies.JsonObject initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new usermanagement.proxies.JsonObject(context, mendixObject);
	}

	public static usermanagement.proxies.JsonObject load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return usermanagement.proxies.JsonObject.initialize(context, mendixObject);
	}

	/**
	 * @return value of Cca2
	 */
	public final java.lang.String getCca2()
	{
		return getCca2(getContext());
	}

	/**
	 * @param context
	 * @return value of Cca2
	 */
	public final java.lang.String getCca2(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Cca2.toString());
	}

	/**
	 * Set value of Cca2
	 * @param cca2
	 */
	public final void setCca2(java.lang.String cca2)
	{
		setCca2(getContext(), cca2);
	}

	/**
	 * Set value of Cca2
	 * @param context
	 * @param cca2
	 */
	public final void setCca2(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String cca2)
	{
		getMendixObject().setValue(context, MemberNames.Cca2.toString(), cca2);
	}

	/**
	 * @return value of Region
	 */
	public final java.lang.String getRegion()
	{
		return getRegion(getContext());
	}

	/**
	 * @param context
	 * @return value of Region
	 */
	public final java.lang.String getRegion(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Region.toString());
	}

	/**
	 * Set value of Region
	 * @param region
	 */
	public final void setRegion(java.lang.String region)
	{
		setRegion(getContext(), region);
	}

	/**
	 * Set value of Region
	 * @param context
	 * @param region
	 */
	public final void setRegion(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String region)
	{
		getMendixObject().setValue(context, MemberNames.Region.toString(), region);
	}

	/**
	 * @return value of Flag
	 */
	public final java.lang.String getFlag()
	{
		return getFlag(getContext());
	}

	/**
	 * @param context
	 * @return value of Flag
	 */
	public final java.lang.String getFlag(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Flag.toString());
	}

	/**
	 * Set value of Flag
	 * @param flag
	 */
	public final void setFlag(java.lang.String flag)
	{
		setFlag(getContext(), flag);
	}

	/**
	 * Set value of Flag
	 * @param context
	 * @param flag
	 */
	public final void setFlag(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String flag)
	{
		getMendixObject().setValue(context, MemberNames.Flag.toString(), flag);
	}

	/**
	 * @return value of StartOfWeek
	 */
	public final java.lang.String getStartOfWeek()
	{
		return getStartOfWeek(getContext());
	}

	/**
	 * @param context
	 * @return value of StartOfWeek
	 */
	public final java.lang.String getStartOfWeek(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.StartOfWeek.toString());
	}

	/**
	 * Set value of StartOfWeek
	 * @param startofweek
	 */
	public final void setStartOfWeek(java.lang.String startofweek)
	{
		setStartOfWeek(getContext(), startofweek);
	}

	/**
	 * Set value of StartOfWeek
	 * @param context
	 * @param startofweek
	 */
	public final void setStartOfWeek(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String startofweek)
	{
		getMendixObject().setValue(context, MemberNames.StartOfWeek.toString(), startofweek);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of JsonObject_Root
	 */
	public final usermanagement.proxies.Root getJsonObject_Root() throws com.mendix.core.CoreException
	{
		return getJsonObject_Root(getContext());
	}

	/**
	 * @param context
	 * @return value of JsonObject_Root
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Root getJsonObject_Root(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Root result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.JsonObject_Root.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Root.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of JsonObject_Root
	 * @param jsonobject_root
	 */
	public final void setJsonObject_Root(usermanagement.proxies.Root jsonobject_root)
	{
		setJsonObject_Root(getContext(), jsonobject_root);
	}

	/**
	 * Set value of JsonObject_Root
	 * @param context
	 * @param jsonobject_root
	 */
	public final void setJsonObject_Root(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Root jsonobject_root)
	{
		if (jsonobject_root == null) {
			getMendixObject().setValue(context, MemberNames.JsonObject_Root.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.JsonObject_Root.toString(), jsonobject_root.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Name_JsonObject
	 */
	public final usermanagement.proxies.Name getName_JsonObject() throws com.mendix.core.CoreException
	{
		return getName_JsonObject(getContext());
	}

	/**
	 * @param context
	 * @return value of Name_JsonObject
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Name getName_JsonObject(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Name result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Name_JsonObject.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Name.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Name_JsonObject
	 * @param name_jsonobject
	 */
	public final void setName_JsonObject(usermanagement.proxies.Name name_jsonobject)
	{
		setName_JsonObject(getContext(), name_jsonobject);
	}

	/**
	 * Set value of Name_JsonObject
	 * @param context
	 * @param name_jsonobject
	 */
	public final void setName_JsonObject(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Name name_jsonobject)
	{
		if (name_jsonobject == null) {
			getMendixObject().setValue(context, MemberNames.Name_JsonObject.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Name_JsonObject.toString(), name_jsonobject.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Tld_JsonObject
	 */
	public final usermanagement.proxies.Tld getTld_JsonObject() throws com.mendix.core.CoreException
	{
		return getTld_JsonObject(getContext());
	}

	/**
	 * @param context
	 * @return value of Tld_JsonObject
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Tld getTld_JsonObject(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Tld result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Tld_JsonObject.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Tld.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Tld_JsonObject
	 * @param tld_jsonobject
	 */
	public final void setTld_JsonObject(usermanagement.proxies.Tld tld_jsonobject)
	{
		setTld_JsonObject(getContext(), tld_jsonobject);
	}

	/**
	 * Set value of Tld_JsonObject
	 * @param context
	 * @param tld_jsonobject
	 */
	public final void setTld_JsonObject(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Tld tld_jsonobject)
	{
		if (tld_jsonobject == null) {
			getMendixObject().setValue(context, MemberNames.Tld_JsonObject.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Tld_JsonObject.toString(), tld_jsonobject.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Currencies_JsonObject
	 */
	public final usermanagement.proxies.Currencies getCurrencies_JsonObject() throws com.mendix.core.CoreException
	{
		return getCurrencies_JsonObject(getContext());
	}

	/**
	 * @param context
	 * @return value of Currencies_JsonObject
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Currencies getCurrencies_JsonObject(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Currencies result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Currencies_JsonObject.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Currencies.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Currencies_JsonObject
	 * @param currencies_jsonobject
	 */
	public final void setCurrencies_JsonObject(usermanagement.proxies.Currencies currencies_jsonobject)
	{
		setCurrencies_JsonObject(getContext(), currencies_jsonobject);
	}

	/**
	 * Set value of Currencies_JsonObject
	 * @param context
	 * @param currencies_jsonobject
	 */
	public final void setCurrencies_JsonObject(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Currencies currencies_jsonobject)
	{
		if (currencies_jsonobject == null) {
			getMendixObject().setValue(context, MemberNames.Currencies_JsonObject.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Currencies_JsonObject.toString(), currencies_jsonobject.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Capital_JsonObject
	 */
	public final usermanagement.proxies.Capital getCapital_JsonObject() throws com.mendix.core.CoreException
	{
		return getCapital_JsonObject(getContext());
	}

	/**
	 * @param context
	 * @return value of Capital_JsonObject
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Capital getCapital_JsonObject(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Capital result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Capital_JsonObject.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Capital.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Capital_JsonObject
	 * @param capital_jsonobject
	 */
	public final void setCapital_JsonObject(usermanagement.proxies.Capital capital_jsonobject)
	{
		setCapital_JsonObject(getContext(), capital_jsonobject);
	}

	/**
	 * Set value of Capital_JsonObject
	 * @param context
	 * @param capital_jsonobject
	 */
	public final void setCapital_JsonObject(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Capital capital_jsonobject)
	{
		if (capital_jsonobject == null) {
			getMendixObject().setValue(context, MemberNames.Capital_JsonObject.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Capital_JsonObject.toString(), capital_jsonobject.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Languages_JsonObject
	 */
	public final usermanagement.proxies.Languages getLanguages_JsonObject() throws com.mendix.core.CoreException
	{
		return getLanguages_JsonObject(getContext());
	}

	/**
	 * @param context
	 * @return value of Languages_JsonObject
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.Languages getLanguages_JsonObject(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.Languages result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Languages_JsonObject.toString());
		if (identifier != null) {
			result = usermanagement.proxies.Languages.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Languages_JsonObject
	 * @param languages_jsonobject
	 */
	public final void setLanguages_JsonObject(usermanagement.proxies.Languages languages_jsonobject)
	{
		setLanguages_JsonObject(getContext(), languages_jsonobject);
	}

	/**
	 * Set value of Languages_JsonObject
	 * @param context
	 * @param languages_jsonobject
	 */
	public final void setLanguages_JsonObject(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.Languages languages_jsonobject)
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
		return jsonObjectMendixObject;
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
			final usermanagement.proxies.JsonObject that = (usermanagement.proxies.JsonObject) obj;
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