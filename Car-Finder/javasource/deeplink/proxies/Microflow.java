// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package deeplink.proxies;

public class Microflow implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject microflowMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "DeepLink.Microflow";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Name("Name"),
		FriendlyName("FriendlyName"),
		UseStringArg("UseStringArg"),
		UseObjectArgument("UseObjectArgument"),
		Module("Module"),
		Parameters("Parameters"),
		NrOfParameters("NrOfParameters"),
		param("DeepLink.param");

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

	public Microflow(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Microflow(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject microflowMendixObject)
	{
		if (microflowMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, microflowMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.microflowMendixObject = microflowMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static deeplink.proxies.Microflow initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new deeplink.proxies.Microflow(context, mendixObject);
	}

	public static deeplink.proxies.Microflow load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return deeplink.proxies.Microflow.initialize(context, mendixObject);
	}

	public static java.util.List<deeplink.proxies.Microflow> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> deeplink.proxies.Microflow.initialize(context, obj))
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
	 * @return value of FriendlyName
	 */
	public final java.lang.String getFriendlyName()
	{
		return getFriendlyName(getContext());
	}

	/**
	 * @param context
	 * @return value of FriendlyName
	 */
	public final java.lang.String getFriendlyName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.FriendlyName.toString());
	}

	/**
	 * Set value of FriendlyName
	 * @param friendlyname
	 */
	public final void setFriendlyName(java.lang.String friendlyname)
	{
		setFriendlyName(getContext(), friendlyname);
	}

	/**
	 * Set value of FriendlyName
	 * @param context
	 * @param friendlyname
	 */
	public final void setFriendlyName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String friendlyname)
	{
		getMendixObject().setValue(context, MemberNames.FriendlyName.toString(), friendlyname);
	}

	/**
	 * @return value of UseStringArg
	 */
	public final java.lang.Boolean getUseStringArg()
	{
		return getUseStringArg(getContext());
	}

	/**
	 * @param context
	 * @return value of UseStringArg
	 */
	public final java.lang.Boolean getUseStringArg(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.UseStringArg.toString());
	}

	/**
	 * Set value of UseStringArg
	 * @param usestringarg
	 */
	public final void setUseStringArg(java.lang.Boolean usestringarg)
	{
		setUseStringArg(getContext(), usestringarg);
	}

	/**
	 * Set value of UseStringArg
	 * @param context
	 * @param usestringarg
	 */
	public final void setUseStringArg(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean usestringarg)
	{
		getMendixObject().setValue(context, MemberNames.UseStringArg.toString(), usestringarg);
	}

	/**
	 * @return value of UseObjectArgument
	 */
	public final java.lang.Boolean getUseObjectArgument()
	{
		return getUseObjectArgument(getContext());
	}

	/**
	 * @param context
	 * @return value of UseObjectArgument
	 */
	public final java.lang.Boolean getUseObjectArgument(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.UseObjectArgument.toString());
	}

	/**
	 * Set value of UseObjectArgument
	 * @param useobjectargument
	 */
	public final void setUseObjectArgument(java.lang.Boolean useobjectargument)
	{
		setUseObjectArgument(getContext(), useobjectargument);
	}

	/**
	 * Set value of UseObjectArgument
	 * @param context
	 * @param useobjectargument
	 */
	public final void setUseObjectArgument(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean useobjectargument)
	{
		getMendixObject().setValue(context, MemberNames.UseObjectArgument.toString(), useobjectargument);
	}

	/**
	 * @return value of Module
	 */
	public final java.lang.String getModule()
	{
		return getModule(getContext());
	}

	/**
	 * @param context
	 * @return value of Module
	 */
	public final java.lang.String getModule(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Module.toString());
	}

	/**
	 * Set value of Module
	 * @param module
	 */
	public final void setModule(java.lang.String module)
	{
		setModule(getContext(), module);
	}

	/**
	 * Set value of Module
	 * @param context
	 * @param module
	 */
	public final void setModule(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String module)
	{
		getMendixObject().setValue(context, MemberNames.Module.toString(), module);
	}

	/**
	 * @return value of Parameters
	 */
	public final java.lang.String getParameters()
	{
		return getParameters(getContext());
	}

	/**
	 * @param context
	 * @return value of Parameters
	 */
	public final java.lang.String getParameters(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Parameters.toString());
	}

	/**
	 * Set value of Parameters
	 * @param parameters
	 */
	public final void setParameters(java.lang.String parameters)
	{
		setParameters(getContext(), parameters);
	}

	/**
	 * Set value of Parameters
	 * @param context
	 * @param parameters
	 */
	public final void setParameters(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String parameters)
	{
		getMendixObject().setValue(context, MemberNames.Parameters.toString(), parameters);
	}

	/**
	 * @return value of NrOfParameters
	 */
	public final java.lang.Integer getNrOfParameters()
	{
		return getNrOfParameters(getContext());
	}

	/**
	 * @param context
	 * @return value of NrOfParameters
	 */
	public final java.lang.Integer getNrOfParameters(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.NrOfParameters.toString());
	}

	/**
	 * Set value of NrOfParameters
	 * @param nrofparameters
	 */
	public final void setNrOfParameters(java.lang.Integer nrofparameters)
	{
		setNrOfParameters(getContext(), nrofparameters);
	}

	/**
	 * Set value of NrOfParameters
	 * @param context
	 * @param nrofparameters
	 */
	public final void setNrOfParameters(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer nrofparameters)
	{
		getMendixObject().setValue(context, MemberNames.NrOfParameters.toString(), nrofparameters);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of param
	 */
	public final deeplink.proxies.Entity getparam() throws com.mendix.core.CoreException
	{
		return getparam(getContext());
	}

	/**
	 * @param context
	 * @return value of param
	 * @throws com.mendix.core.CoreException
	 */
	public final deeplink.proxies.Entity getparam(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		deeplink.proxies.Entity result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.param.toString());
		if (identifier != null) {
			result = deeplink.proxies.Entity.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of param
	 * @param param
	 */
	public final void setparam(deeplink.proxies.Entity param)
	{
		setparam(getContext(), param);
	}

	/**
	 * Set value of param
	 * @param context
	 * @param param
	 */
	public final void setparam(com.mendix.systemwideinterfaces.core.IContext context, deeplink.proxies.Entity param)
	{
		if (param == null) {
			getMendixObject().setValue(context, MemberNames.param.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.param.toString(), param.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return microflowMendixObject;
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
			final deeplink.proxies.Microflow that = (deeplink.proxies.Microflow) obj;
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
