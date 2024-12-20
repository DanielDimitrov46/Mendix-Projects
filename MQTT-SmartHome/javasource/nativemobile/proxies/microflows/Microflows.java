// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package nativemobile.proxies.microflows;

import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;

public final class Microflows
{
	/**
	 * Private constructor to prevent instantiation of this class. 
	 */
	private Microflows() {}

	// These are the microflows for the NativeMobile module
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Light_ControlBuilder(
		mqttconnector.proxies.ConnectionDetail _connectionDetail
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("NativeMobile.ACT_Light_Control");
		builder = builder.withParam("ConnectionDetail", _connectionDetail);
		return builder;
	}

	public static void aCT_Light_Control(
		IContext context,
		mqttconnector.proxies.ConnectionDetail _connectionDetail
	)
	{
		aCT_Light_ControlBuilder(
				_connectionDetail
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Light_SaveBuilder(
		nativemobile.proxies.Light _light,
		mqttconnector.proxies.ConnectionDetail _connectionDetail
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("NativeMobile.ACT_Light_Save");
		builder = builder.withParam("Light", _light);
		builder = builder.withParam("ConnectionDetail", _connectionDetail);
		return builder;
	}

	public static void aCT_Light_Save(
		IContext context,
		nativemobile.proxies.Light _light,
		mqttconnector.proxies.ConnectionDetail _connectionDetail
	)
	{
		aCT_Light_SaveBuilder(
				_light,
				_connectionDetail
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder callBuilder(
		nativemobile.proxies.Light _light
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("NativeMobile.call");
		builder = builder.withParam("Light", _light);
		return builder;
	}

	public static void call(
		IContext context,
		nativemobile.proxies.Light _light
	)
	{
		callBuilder(
				_light
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder call_2Builder(
		nativemobile.proxies.Light _light
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("NativeMobile.call_2");
		builder = builder.withParam("Light", _light);
		return builder;
	}

	public static void call_2(
		IContext context,
		nativemobile.proxies.Light _light
	)
	{
		call_2Builder(
				_light
			)
			.execute(context);
	}
}
