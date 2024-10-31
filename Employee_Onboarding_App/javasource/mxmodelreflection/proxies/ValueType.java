// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package mxmodelreflection.proxies;

public class ValueType implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject valueTypeMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "MxModelReflection.ValueType";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Name("Name"),
		TypeEnum("TypeEnum"),
		ValueType_MxObjectType("MxModelReflection.ValueType_MxObjectType");

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

	public ValueType(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected ValueType(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject valueTypeMendixObject)
	{
		if (valueTypeMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, valueTypeMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.valueTypeMendixObject = valueTypeMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static mxmodelreflection.proxies.ValueType initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new mxmodelreflection.proxies.ValueType(context, mendixObject);
	}

	public static mxmodelreflection.proxies.ValueType load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return mxmodelreflection.proxies.ValueType.initialize(context, mendixObject);
	}

	public static java.util.List<mxmodelreflection.proxies.ValueType> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> mxmodelreflection.proxies.ValueType.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of Name
	 */
	public final java.lang.String getName()
	{
		return getName(getContext());
	}

	/**
	 * @param context
	 * @return value of Name
	 */
	public final java.lang.String getName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Name.toString());
	}

	/**
	 * Set value of Name
	 * @param name
	 */
	public final void setName(java.lang.String name)
	{
		setName(getContext(), name);
	}

	/**
	 * Set value of Name
	 * @param context
	 * @param name
	 */
	public final void setName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String name)
	{
		getMendixObject().setValue(context, MemberNames.Name.toString(), name);
	}

	/**
	 * Get value of TypeEnum
	 * @param typeenum
	 */
	public final mxmodelreflection.proxies.PrimitiveTypes getTypeEnum()
	{
		return getTypeEnum(getContext());
	}

	/**
	 * @param context
	 * @return value of TypeEnum
	 */
	public final mxmodelreflection.proxies.PrimitiveTypes getTypeEnum(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.TypeEnum.toString());
		if (obj == null) {
			return null;
		}
		return mxmodelreflection.proxies.PrimitiveTypes.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of TypeEnum
	 * @param typeenum
	 */
	public final void setTypeEnum(mxmodelreflection.proxies.PrimitiveTypes typeenum)
	{
		setTypeEnum(getContext(), typeenum);
	}

	/**
	 * Set value of TypeEnum
	 * @param context
	 * @param typeenum
	 */
	public final void setTypeEnum(com.mendix.systemwideinterfaces.core.IContext context, mxmodelreflection.proxies.PrimitiveTypes typeenum)
	{
		if (typeenum != null) {
			getMendixObject().setValue(context, MemberNames.TypeEnum.toString(), typeenum.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.TypeEnum.toString(), null);
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of ValueType_MxObjectType
	 */
	public final mxmodelreflection.proxies.MxObjectType getValueType_MxObjectType() throws com.mendix.core.CoreException
	{
		return getValueType_MxObjectType(getContext());
	}

	/**
	 * @param context
	 * @return value of ValueType_MxObjectType
	 * @throws com.mendix.core.CoreException
	 */
	public final mxmodelreflection.proxies.MxObjectType getValueType_MxObjectType(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		mxmodelreflection.proxies.MxObjectType result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.ValueType_MxObjectType.toString());
		if (identifier != null) {
			result = mxmodelreflection.proxies.MxObjectType.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of ValueType_MxObjectType
	 * @param valuetype_mxobjecttype
	 */
	public final void setValueType_MxObjectType(mxmodelreflection.proxies.MxObjectType valuetype_mxobjecttype)
	{
		setValueType_MxObjectType(getContext(), valuetype_mxobjecttype);
	}

	/**
	 * Set value of ValueType_MxObjectType
	 * @param context
	 * @param valuetype_mxobjecttype
	 */
	public final void setValueType_MxObjectType(com.mendix.systemwideinterfaces.core.IContext context, mxmodelreflection.proxies.MxObjectType valuetype_mxobjecttype)
	{
		if (valuetype_mxobjecttype == null) {
			getMendixObject().setValue(context, MemberNames.ValueType_MxObjectType.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.ValueType_MxObjectType.toString(), valuetype_mxobjecttype.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return valueTypeMendixObject;
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
			final mxmodelreflection.proxies.ValueType that = (mxmodelreflection.proxies.ValueType) obj;
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
