// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package soccersquad.proxies;

public class Player extends soccersquad.proxies.Person
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "SoccerSquad.Player";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		ShirtNumber("ShirtNumber"),
		ShoeSize("ShoeSize"),
		IsGoalKeeper("IsGoalKeeper"),
		FullName("FullName"),
		EmailAddress("EmailAddress"),
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

	public Player(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Player(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject playerMendixObject)
	{
		super(context, playerMendixObject);
		if (!com.mendix.core.Core.isSubClassOf(entityName, playerMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	
	}

	/**
	 * @deprecated Use 'Player.load(IContext, IMendixIdentifier)' instead.
	 */
	@java.lang.Deprecated
	public static soccersquad.proxies.Player initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return soccersquad.proxies.Player.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static soccersquad.proxies.Player initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		if (com.mendix.core.Core.isSubClassOf("SoccerSquad.Staff", mendixObject.getType())) {
			return soccersquad.proxies.Staff.initialize(context, mendixObject);
		}
		return new soccersquad.proxies.Player(context, mendixObject);
	}

	public static soccersquad.proxies.Player load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return soccersquad.proxies.Player.initialize(context, mendixObject);
	}

	public static java.util.List<? extends soccersquad.proxies.Player> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> soccersquad.proxies.Player.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of ShirtNumber
	 */
	public final java.lang.Integer getShirtNumber()
	{
		return getShirtNumber(getContext());
	}

	/**
	 * @param context
	 * @return value of ShirtNumber
	 */
	public final java.lang.Integer getShirtNumber(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Integer) getMendixObject().getValue(context, MemberNames.ShirtNumber.toString());
	}

	/**
	 * Set value of ShirtNumber
	 * @param shirtnumber
	 */
	public final void setShirtNumber(java.lang.Integer shirtnumber)
	{
		setShirtNumber(getContext(), shirtnumber);
	}

	/**
	 * Set value of ShirtNumber
	 * @param context
	 * @param shirtnumber
	 */
	public final void setShirtNumber(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Integer shirtnumber)
	{
		getMendixObject().setValue(context, MemberNames.ShirtNumber.toString(), shirtnumber);
	}

	/**
	 * @return value of ShoeSize
	 */
	public final java.math.BigDecimal getShoeSize()
	{
		return getShoeSize(getContext());
	}

	/**
	 * @param context
	 * @return value of ShoeSize
	 */
	public final java.math.BigDecimal getShoeSize(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.math.BigDecimal) getMendixObject().getValue(context, MemberNames.ShoeSize.toString());
	}

	/**
	 * Set value of ShoeSize
	 * @param shoesize
	 */
	public final void setShoeSize(java.math.BigDecimal shoesize)
	{
		setShoeSize(getContext(), shoesize);
	}

	/**
	 * Set value of ShoeSize
	 * @param context
	 * @param shoesize
	 */
	public final void setShoeSize(com.mendix.systemwideinterfaces.core.IContext context, java.math.BigDecimal shoesize)
	{
		getMendixObject().setValue(context, MemberNames.ShoeSize.toString(), shoesize);
	}

	/**
	 * @return value of IsGoalKeeper
	 */
	public final java.lang.Boolean getIsGoalKeeper()
	{
		return getIsGoalKeeper(getContext());
	}

	/**
	 * @param context
	 * @return value of IsGoalKeeper
	 */
	public final java.lang.Boolean getIsGoalKeeper(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.IsGoalKeeper.toString());
	}

	/**
	 * Set value of IsGoalKeeper
	 * @param isgoalkeeper
	 */
	public final void setIsGoalKeeper(java.lang.Boolean isgoalkeeper)
	{
		setIsGoalKeeper(getContext(), isgoalkeeper);
	}

	/**
	 * Set value of IsGoalKeeper
	 * @param context
	 * @param isgoalkeeper
	 */
	public final void setIsGoalKeeper(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean isgoalkeeper)
	{
		getMendixObject().setValue(context, MemberNames.IsGoalKeeper.toString(), isgoalkeeper);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Player_Team
	 */
	public final soccersquad.proxies.Team getPlayer_Team() throws com.mendix.core.CoreException
	{
		return getPlayer_Team(getContext());
	}

	/**
	 * @param context
	 * @return value of Player_Team
	 * @throws com.mendix.core.CoreException
	 */
	public final soccersquad.proxies.Team getPlayer_Team(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		soccersquad.proxies.Team result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Player_Team.toString());
		if (identifier != null) {
			result = soccersquad.proxies.Team.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Player_Team
	 * @param player_team
	 */
	public final void setPlayer_Team(soccersquad.proxies.Team player_team)
	{
		setPlayer_Team(getContext(), player_team);
	}

	/**
	 * Set value of Player_Team
	 * @param context
	 * @param player_team
	 */
	public final void setPlayer_Team(com.mendix.systemwideinterfaces.core.IContext context, soccersquad.proxies.Team player_team)
	{
		if (player_team == null) {
			getMendixObject().setValue(context, MemberNames.Player_Team.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Player_Team.toString(), player_team.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Team_Captain
	 */
	public final soccersquad.proxies.Team getTeam_Captain() throws com.mendix.core.CoreException
	{
		return getTeam_Captain(getContext());
	}

	/**
	 * @param context
	 * @return value of Team_Captain
	 * @throws com.mendix.core.CoreException
	 */
	public final soccersquad.proxies.Team getTeam_Captain(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		soccersquad.proxies.Team result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Team_Captain.toString());
		if (identifier != null) {
			result = soccersquad.proxies.Team.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Team_Captain
	 * @param team_captain
	 */
	public final void setTeam_Captain(soccersquad.proxies.Team team_captain)
	{
		setTeam_Captain(getContext(), team_captain);
	}

	/**
	 * Set value of Team_Captain
	 * @param context
	 * @param team_captain
	 */
	public final void setTeam_Captain(com.mendix.systemwideinterfaces.core.IContext context, soccersquad.proxies.Team team_captain)
	{
		if (team_captain == null) {
			getMendixObject().setValue(context, MemberNames.Team_Captain.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Team_Captain.toString(), team_captain.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Apprentice_Buddy
	 */
	public final soccersquad.proxies.Player getApprentice_Buddy() throws com.mendix.core.CoreException
	{
		return getApprentice_Buddy(getContext());
	}

	/**
	 * @param context
	 * @return value of Apprentice_Buddy
	 * @throws com.mendix.core.CoreException
	 */
	public final soccersquad.proxies.Player getApprentice_Buddy(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		soccersquad.proxies.Player result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Apprentice_Buddy.toString());
		if (identifier != null) {
			result = soccersquad.proxies.Player.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Apprentice_Buddy
	 * @param apprentice_buddy
	 */
	public final void setApprentice_Buddy(soccersquad.proxies.Player apprentice_buddy)
	{
		setApprentice_Buddy(getContext(), apprentice_buddy);
	}

	/**
	 * Set value of Apprentice_Buddy
	 * @param context
	 * @param apprentice_buddy
	 */
	public final void setApprentice_Buddy(com.mendix.systemwideinterfaces.core.IContext context, soccersquad.proxies.Player apprentice_buddy)
	{
		if (apprentice_buddy == null) {
			getMendixObject().setValue(context, MemberNames.Apprentice_Buddy.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Apprentice_Buddy.toString(), apprentice_buddy.getMendixObject().getId());
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
			final soccersquad.proxies.Player that = (soccersquad.proxies.Player) obj;
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