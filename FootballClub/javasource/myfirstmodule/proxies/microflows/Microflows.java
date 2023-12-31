// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies.microflows;

import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public final class Microflows
{
	/**
	 * Private constructor to prevent instantiation of this class. 
	 */
	private Microflows() {}

	// These are the microflows for the MyFirstModule module
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dS_Team_LogoBuilder(
		myfirstmodule.proxies.Team _team
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.DS_Team_Logo");
		builder = builder.withParam("Team", _team);
		return builder;
	}

	public static myfirstmodule.proxies.Logo_Team dS_Team_Logo(
		IContext context,
		myfirstmodule.proxies.Team _team
	)
	{
		Object result = dS_Team_LogoBuilder(
				_team
			)
			.execute(context);
		return result == null ? null : myfirstmodule.proxies.Logo_Team.initialize(context, (IMendixObject) result);
	}
}
