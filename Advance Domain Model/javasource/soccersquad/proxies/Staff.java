// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package soccersquad.proxies;

public class Staff extends soccersquad.proxies.Player
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "SoccerSquad.Staff";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Function("Function"),
		LicenseNumber("LicenseNumber"),
		ShirtNumber("ShirtNumber"),
		ShoeSize("ShoeSize"),
		IsGoalKeeper("IsGoalKeeper"),
		FullName("FullName"),
		EmailAddress("EmailAddress"),
		Staff_Team("SoccerSquad.Staff_Team"),
		Player_Team("SoccerSquad.Player_Team"),
		Team_Captain("SoccerSquad.Team_Captain"),
		Apprentice_Buddy("SoccerSquad.Apprentice_Buddy");

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

	public Staff(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Staff(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject staffMendixObject)
	{
		super(context, staffMendixObject);
		if (!com.mendix.core.Core.isSubClassOf(entityName, staffMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	
	}

	/**
	 * @deprecated Use 'Staff.load(IContext, IMendixIdentifier)' instead.
	 */
	@java.lang.Deprecated
	public static soccersquad.proxies.Staff initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return soccersquad.proxies.Staff.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static soccersquad.proxies.Staff initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new soccersquad.proxies.Staff(context, mendixObject);
	}

	public static soccersquad.proxies.Staff load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return soccersquad.proxies.Staff.initialize(context, mendixObject);
	}

	public static java.util.List<soccersquad.proxies.Staff> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> soccersquad.proxies.Staff.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * Set value of Function
	 * @param function
	 */
	public final soccersquad.proxies.Positions getFunction()
	{
		return getFunction(getContext());
	}

	/**
	 * @param context
	 * @return value of Function
	 */
	public final soccersquad.proxies.Positions getFunction(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.Function.toString());
		if (obj == null) {
			return null;
		}
		return soccersquad.proxies.Positions.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of Function
	 * @param function
	 */
	public final void setFunction(soccersquad.proxies.Positions function)
	{
		setFunction(getContext(), function);
	}

	/**
	 * Set value of Function
	 * @param context
	 * @param function
	 */
	public final void setFunction(com.mendix.systemwideinterfaces.core.IContext context, soccersquad.proxies.Positions function)
	{
		if (function != null) {
			getMendixObject().setValue(context, MemberNames.Function.toString(), function.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.Function.toString(), null);
		}
	}

	/**
	 * @return value of LicenseNumber
	 */
	public final java.lang.String getLicenseNumber()
	{
		return getLicenseNumber(getContext());
	}

	/**
	 * @param context
	 * @return value of LicenseNumber
	 */
	public final java.lang.String getLicenseNumber(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.LicenseNumber.toString());
	}

	/**
	 * Set value of LicenseNumber
	 * @param licensenumber
	 */
	public final void setLicenseNumber(java.lang.String licensenumber)
	{
		setLicenseNumber(getContext(), licensenumber);
	}

	/**
	 * Set value of LicenseNumber
	 * @param context
	 * @param licensenumber
	 */
	public final void setLicenseNumber(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String licensenumber)
	{
		getMendixObject().setValue(context, MemberNames.LicenseNumber.toString(), licensenumber);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Staff_Team
	 */
	public final soccersquad.proxies.Team getStaff_Team() throws com.mendix.core.CoreException
	{
		return getStaff_Team(getContext());
	}

	/**
	 * @param context
	 * @return value of Staff_Team
	 * @throws com.mendix.core.CoreException
	 */
	public final soccersquad.proxies.Team getStaff_Team(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		soccersquad.proxies.Team result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Staff_Team.toString());
		if (identifier != null) {
			result = soccersquad.proxies.Team.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Staff_Team
	 * @param staff_team
	 */
	public final void setStaff_Team(soccersquad.proxies.Team staff_team)
	{
		setStaff_Team(getContext(), staff_team);
	}

	/**
	 * Set value of Staff_Team
	 * @param context
	 * @param staff_team
	 */
	public final void setStaff_Team(com.mendix.systemwideinterfaces.core.IContext context, soccersquad.proxies.Team staff_team)
	{
		if (staff_team == null) {
			getMendixObject().setValue(context, MemberNames.Staff_Team.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Staff_Team.toString(), staff_team.getMendixObject().getId());
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
			final soccersquad.proxies.Staff that = (soccersquad.proxies.Staff) obj;
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
	 * @return String name of this class
	 */
	public static java.lang.String getType()
	{
		return entityName;
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@java.lang.Override
	@java.lang.Deprecated
	public java.lang.String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}
