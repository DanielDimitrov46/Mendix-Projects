// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies.microflows;

import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;

public final class Microflows
{
	/**
	 * Private constructor to prevent instantiation of this class. 
	 */
	private Microflows() {}

	// These are the microflows for the MyFirstModule module
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Account_SaveBuilder(
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.ACT_Account_Save");
		builder = builder.withParam("AccountPasswordData", _accountPasswordData);
		return builder;
	}

	public static void aCT_Account_Save(
		IContext context,
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		aCT_Account_SaveBuilder(
				_accountPasswordData
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_New_AccountBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.ACT_New_Account");
		return builder;
	}

	public static void aCT_New_Account(IContext context)
	{
		aCT_New_AccountBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Registration_FinishSignUpBuilder(
		myfirstmodule.proxies.Registration _registration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.ACT_Registration_FinishSignUp");
		builder = builder.withParam("Registration", _registration);
		return builder;
	}

	public static boolean aCT_Registration_FinishSignUp(
		IContext context,
		myfirstmodule.proxies.Registration _registration
	)
	{
		Object result = aCT_Registration_FinishSignUpBuilder(
				_registration
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Registration_StartSignUpBuilder(
		administration.proxies.Account _account
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.ACT_Registration_StartSignUp");
		builder = builder.withParam("Account", _account);
		return builder;
	}

	public static void aCT_Registration_StartSignUp(
		IContext context,
		administration.proxies.Account _account
	)
	{
		aCT_Registration_StartSignUpBuilder(
				_account
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Transaction_CreateBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.ACT_Transaction_Create");
		return builder;
	}

	public static void aCT_Transaction_Create(IContext context)
	{
		aCT_Transaction_CreateBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Transaction_EditBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.ACT_Transaction_Edit");
		return builder;
	}

	public static void aCT_Transaction_Edit(IContext context)
	{
		aCT_Transaction_EditBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder vAL_RegistrationBuilder(
		myfirstmodule.proxies.Registration _registration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MyFirstModule.VAL_Registration");
		builder = builder.withParam("Registration", _registration);
		return builder;
	}

	public static boolean vAL_Registration(
		IContext context,
		myfirstmodule.proxies.Registration _registration
	)
	{
		Object result = vAL_RegistrationBuilder(
				_registration
			)
			.execute(context);
		return (boolean) result;
	}
}