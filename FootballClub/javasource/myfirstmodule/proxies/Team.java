// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies;

public class Team implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject teamMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "MyFirstModule.Team";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Name("Name"),
		HomeStadium("HomeStadium"),
		Captain_Team("MyFirstModule.Captain_Team"),
		Team_Logo_Team("MyFirstModule.Team_Logo_Team");

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

	public Team(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Team(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject teamMendixObject)
	{
		if (teamMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, teamMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.teamMendixObject = teamMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static myfirstmodule.proxies.Team initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new myfirstmodule.proxies.Team(context, mendixObject);
	}

	public static myfirstmodule.proxies.Team load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return myfirstmodule.proxies.Team.initialize(context, mendixObject);
	}

	public static java.util.List<myfirstmodule.proxies.Team> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> myfirstmodule.proxies.Team.initialize(context, obj))
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
	 * @return value of HomeStadium
	 */
	public final java.lang.String getHomeStadium()
	{
		return getHomeStadium(getContext());
	}

	/**
	 * @param context
	 * @return value of HomeStadium
	 */
	public final java.lang.String getHomeStadium(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.HomeStadium.toString());
	}

	/**
	 * Set value of HomeStadium
	 * @param homestadium
	 */
	public final void setHomeStadium(java.lang.String homestadium)
	{
		setHomeStadium(getContext(), homestadium);
	}

	/**
	 * Set value of HomeStadium
	 * @param context
	 * @param homestadium
	 */
	public final void setHomeStadium(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String homestadium)
	{
		getMendixObject().setValue(context, MemberNames.HomeStadium.toString(), homestadium);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Captain_Team
	 */
	public final myfirstmodule.proxies.Player getCaptain_Team() throws com.mendix.core.CoreException
	{
		return getCaptain_Team(getContext());
	}

	/**
	 * @param context
	 * @return value of Captain_Team
	 * @throws com.mendix.core.CoreException
	 */
	public final myfirstmodule.proxies.Player getCaptain_Team(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		myfirstmodule.proxies.Player result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Captain_Team.toString());
		if (identifier != null) {
			result = myfirstmodule.proxies.Player.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Captain_Team
	 * @param captain_team
	 */
	public final void setCaptain_Team(myfirstmodule.proxies.Player captain_team)
	{
		setCaptain_Team(getContext(), captain_team);
	}

	/**
	 * Set value of Captain_Team
	 * @param context
	 * @param captain_team
	 */
	public final void setCaptain_Team(com.mendix.systemwideinterfaces.core.IContext context, myfirstmodule.proxies.Player captain_team)
	{
		if (captain_team == null) {
			getMendixObject().setValue(context, MemberNames.Captain_Team.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Captain_Team.toString(), captain_team.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Team_Logo_Team
	 */
	public final myfirstmodule.proxies.Logo_Team getTeam_Logo_Team() throws com.mendix.core.CoreException
	{
		return getTeam_Logo_Team(getContext());
	}

	/**
	 * @param context
	 * @return value of Team_Logo_Team
	 * @throws com.mendix.core.CoreException
	 */
	public final myfirstmodule.proxies.Logo_Team getTeam_Logo_Team(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		myfirstmodule.proxies.Logo_Team result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Team_Logo_Team.toString());
		if (identifier != null) {
			result = myfirstmodule.proxies.Logo_Team.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Team_Logo_Team
	 * @param team_logo_team
	 */
	public final void setTeam_Logo_Team(myfirstmodule.proxies.Logo_Team team_logo_team)
	{
		setTeam_Logo_Team(getContext(), team_logo_team);
	}

	/**
	 * Set value of Team_Logo_Team
	 * @param context
	 * @param team_logo_team
	 */
	public final void setTeam_Logo_Team(com.mendix.systemwideinterfaces.core.IContext context, myfirstmodule.proxies.Logo_Team team_logo_team)
	{
		if (team_logo_team == null) {
			getMendixObject().setValue(context, MemberNames.Team_Logo_Team.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Team_Logo_Team.toString(), team_logo_team.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return teamMendixObject;
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
			final myfirstmodule.proxies.Team that = (myfirstmodule.proxies.Team) obj;
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
