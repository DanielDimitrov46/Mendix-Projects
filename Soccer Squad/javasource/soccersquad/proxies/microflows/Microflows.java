// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package soccersquad.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public class Microflows
{
	/**
	 * @deprecated
	 * The default constructor of the Microflows class should not be used.
	 * Use the static microflow invocation methods instead.
	 */
	@java.lang.Deprecated(since = "9.12", forRemoval = true)
	public Microflows() {}

	// These are the microflows for the SoccerSquad module
	public static void aCR_Team_CreateStadium(IContext context, soccersquad.proxies.Team _team)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Team", _team == null ? null : _team.getMendixObject());
		Core.microflowCall("SoccerSquad.ACR_Team_CreateStadium").withParams(params).execute(context);
	}
	public static void aCT_Match_FinalizeScore(IContext context, soccersquad.proxies.Score _score, soccersquad.proxies.Match _match)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Score", _score == null ? null : _score.getMendixObject());
		params.put("Match", _match == null ? null : _match.getMendixObject());
		Core.microflowCall("SoccerSquad.ACT_Match_FinalizeScore").withParams(params).execute(context);
	}
	public static void aCT_Save_Team(IContext context, soccersquad.proxies.Team _team)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Team", _team == null ? null : _team.getMendixObject());
		Core.microflowCall("SoccerSquad.ACT_Save_Team").withParams(params).execute(context);
	}
	public static void aCT_Score_GoalAwayTeam(IContext context, soccersquad.proxies.Score _score, soccersquad.proxies.Match _match)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Score", _score == null ? null : _score.getMendixObject());
		params.put("Match", _match == null ? null : _match.getMendixObject());
		Core.microflowCall("SoccerSquad.ACT_Score_GoalAwayTeam").withParams(params).execute(context);
	}
	public static void aCT_Score_GoalHomeTeam(IContext context, soccersquad.proxies.Score _score, soccersquad.proxies.Match _match)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Score", _score == null ? null : _score.getMendixObject());
		params.put("Match", _match == null ? null : _match.getMendixObject());
		Core.microflowCall("SoccerSquad.ACT_Score_GoalHomeTeam").withParams(params).execute(context);
	}
	public static boolean bCO_Match_MatchStadium(IContext context, soccersquad.proxies.Match _match)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Match", _match == null ? null : _match.getMendixObject());
		return (java.lang.Boolean) Core.microflowCall("SoccerSquad.BCO_Match_MatchStadium").withParams(params).execute(context);
	}
	public static java.lang.String cAL_Match_CalculateMinutesPlayed(IContext context, soccersquad.proxies.Match _match)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Match", _match == null ? null : _match.getMendixObject());
		return (java.lang.String) Core.microflowCall("SoccerSquad.CAL_Match_CalculateMinutesPlayed").withParams(params).execute(context);
	}
	public static soccersquad.proxies.Score dS_Match_GetScore(IContext context, soccersquad.proxies.Match _match)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Match", _match == null ? null : _match.getMendixObject());
		IMendixObject result = (IMendixObject)Core.microflowCall("SoccerSquad.DS_Match_GetScore").withParams(params).execute(context);
		return result == null ? null : soccersquad.proxies.Score.initialize(context, result);
	}
	public static java.util.List<soccersquad.proxies.Player> dS_Team_GetPlayers(IContext context, soccersquad.proxies.Team _team)
	{
		Map<java.lang.String, Object> params = new HashMap<>();
		params.put("Team", _team == null ? null : _team.getMendixObject());
		java.util.List<IMendixObject> objs = Core.microflowCall("SoccerSquad.DS_Team_GetPlayers").withParams(params).execute(context);
		if (objs == null) {
			return null;
		} else {
			return objs.stream()
				.map(obj -> soccersquad.proxies.Player.initialize(context, obj))
				.collect(java.util.stream.Collectors.toList());
		}
	}
}