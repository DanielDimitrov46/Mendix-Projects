// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package carfinder.proxies;

public class Motorcycle extends carfinder.proxies.Vehicle
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "CarFinder.Motorcycle";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		CoolingType("CoolingType"),
		Manufacturer("Manufacturer"),
		Model("Model"),
		Year("Year"),
		Color("Color"),
		Horsepower("Horsepower"),
		Mileage("Mileage"),
		Price("Price"),
		Ad_Motorcycle("CarFinder.Ad_Motorcycle");

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

	public Motorcycle(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Motorcycle(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject motorcycleMendixObject)
	{
		super(context, motorcycleMendixObject);
		if (!com.mendix.core.Core.isSubClassOf(entityName, motorcycleMendixObject.getType())) {
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
	public static carfinder.proxies.Motorcycle initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new carfinder.proxies.Motorcycle(context, mendixObject);
	}

	public static carfinder.proxies.Motorcycle load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return carfinder.proxies.Motorcycle.initialize(context, mendixObject);
	}

	public static java.util.List<carfinder.proxies.Motorcycle> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> carfinder.proxies.Motorcycle.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * Get value of CoolingType
	 * @param coolingtype
	 */
	public final carfinder.proxies.ENUM_Motorcycle_Cooling getCoolingType()
	{
		return getCoolingType(getContext());
	}

	/**
	 * @param context
	 * @return value of CoolingType
	 */
	public final carfinder.proxies.ENUM_Motorcycle_Cooling getCoolingType(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.CoolingType.toString());
		if (obj == null) {
			return null;
		}
		return carfinder.proxies.ENUM_Motorcycle_Cooling.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of CoolingType
	 * @param coolingtype
	 */
	public final void setCoolingType(carfinder.proxies.ENUM_Motorcycle_Cooling coolingtype)
	{
		setCoolingType(getContext(), coolingtype);
	}

	/**
	 * Set value of CoolingType
	 * @param context
	 * @param coolingtype
	 */
	public final void setCoolingType(com.mendix.systemwideinterfaces.core.IContext context, carfinder.proxies.ENUM_Motorcycle_Cooling coolingtype)
	{
		if (coolingtype != null) {
			getMendixObject().setValue(context, MemberNames.CoolingType.toString(), coolingtype.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.CoolingType.toString(), null);
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Ad_Motorcycle
	 */
	public final carfinder.proxies.Ad getAd_Motorcycle() throws com.mendix.core.CoreException
	{
		return getAd_Motorcycle(getContext());
	}

	/**
	 * @param context
	 * @return value of Ad_Motorcycle
	 * @throws com.mendix.core.CoreException
	 */
	public final carfinder.proxies.Ad getAd_Motorcycle(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		carfinder.proxies.Ad result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Ad_Motorcycle.toString());
		if (identifier != null) {
			result = carfinder.proxies.Ad.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Ad_Motorcycle
	 * @param ad_motorcycle
	 */
	public final void setAd_Motorcycle(carfinder.proxies.Ad ad_motorcycle)
	{
		setAd_Motorcycle(getContext(), ad_motorcycle);
	}

	/**
	 * Set value of Ad_Motorcycle
	 * @param context
	 * @param ad_motorcycle
	 */
	public final void setAd_Motorcycle(com.mendix.systemwideinterfaces.core.IContext context, carfinder.proxies.Ad ad_motorcycle)
	{
		if (ad_motorcycle == null) {
			getMendixObject().setValue(context, MemberNames.Ad_Motorcycle.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Ad_Motorcycle.toString(), ad_motorcycle.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this) {
			return true;
		}
		if (obj != null && getClass().equals(obj.getClass()))
		{
			final carfinder.proxies.Motorcycle that = (carfinder.proxies.Motorcycle) obj;
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