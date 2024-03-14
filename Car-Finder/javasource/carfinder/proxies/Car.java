// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package carfinder.proxies;

public class Car extends carfinder.proxies.Vehicle
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "CarFinder.Car";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		NumberOfDoors("NumberOfDoors"),
		Manufacturer("Manufacturer"),
		Model("Model"),
		Year("Year"),
		Color("Color"),
		Horsepower("Horsepower"),
		Mileage("Mileage"),
		Price("Price"),
		Ad_Car("CarFinder.Ad_Car");

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

	public Car(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Car(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject carMendixObject)
	{
		super(context, carMendixObject);
		if (!com.mendix.core.Core.isSubClassOf(entityName, carMendixObject.getType())) {
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
	public static carfinder.proxies.Car initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new carfinder.proxies.Car(context, mendixObject);
	}

	public static carfinder.proxies.Car load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return carfinder.proxies.Car.initialize(context, mendixObject);
	}

	public static java.util.List<carfinder.proxies.Car> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> carfinder.proxies.Car.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of NumberOfDoors
	 */
	public final java.lang.Integer getNumberOfDoors()
	{
		return getNumberOfDoors(getContext());
	}

	/**
	 * @param context
	 * @return value of NumberOfDoors
	 */
	public final java.lang.Integer getNumberOfDoors(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.NumberOfDoors.toString());
	}

	/**
	 * Set value of NumberOfDoors
	 * @param numberofdoors
	 */
	public final void setNumberOfDoors(java.lang.Integer numberofdoors)
	{
		setNumberOfDoors(getContext(), numberofdoors);
	}

	/**
	 * Set value of NumberOfDoors
	 * @param context
	 * @param numberofdoors
	 */
	public final void setNumberOfDoors(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer numberofdoors)
	{
		getMendixObject().setValue(context, MemberNames.NumberOfDoors.toString(), numberofdoors);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Ad_Car
	 */
	public final carfinder.proxies.Ad getAd_Car() throws com.mendix.core.CoreException
	{
		return getAd_Car(getContext());
	}

	/**
	 * @param context
	 * @return value of Ad_Car
	 * @throws com.mendix.core.CoreException
	 */
	public final carfinder.proxies.Ad getAd_Car(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		carfinder.proxies.Ad result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Ad_Car.toString());
		if (identifier != null) {
			result = carfinder.proxies.Ad.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Ad_Car
	 * @param ad_car
	 */
	public final void setAd_Car(carfinder.proxies.Ad ad_car)
	{
		setAd_Car(getContext(), ad_car);
	}

	/**
	 * Set value of Ad_Car
	 * @param context
	 * @param ad_car
	 */
	public final void setAd_Car(com.mendix.systemwideinterfaces.core.IContext context, carfinder.proxies.Ad ad_car)
	{
		if (ad_car == null) {
			getMendixObject().setValue(context, MemberNames.Ad_Car.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Ad_Car.toString(), ad_car.getMendixObject().getId());
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
			final carfinder.proxies.Car that = (carfinder.proxies.Car) obj;
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