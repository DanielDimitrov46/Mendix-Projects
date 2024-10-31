// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package usermanagement.proxies.microflows;

import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public final class Microflows
{
	/**
	 * Private constructor to prevent instantiation of this class. 
	 */
	private Microflows() {}

	// These are the microflows for the UserManagement module
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Country_CreationBuilder(
		java.util.List<usermanagement.proxies.Name> _nameList
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_Country_Creation");
		builder = builder.withParam("NameList", _nameList);
		return builder;
	}

	public static void aCT_Country_Creation(
		IContext context,
		java.util.List<usermanagement.proxies.Name> _nameList
	)
	{
		aCT_Country_CreationBuilder(
				_nameList
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Country_DeleteDataBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_Country_DeleteData");
		return builder;
	}

	public static void aCT_Country_DeleteData(IContext context)
	{
		aCT_Country_DeleteDataBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_Show_PasswordFormBuilder(
		usermanagement.proxies.User _user
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_Show_PasswordForm");
		builder = builder.withParam("User", _user);
		return builder;
	}

	public static void aCT_Show_PasswordForm(
		IContext context,
		usermanagement.proxies.User _user
	)
	{
		aCT_Show_PasswordFormBuilder(
				_user
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_User_ChangePasswordBuilder(
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_User_ChangePassword");
		builder = builder.withParam("AccountPasswordData", _accountPasswordData);
		return builder;
	}

	public static void aCT_User_ChangePassword(
		IContext context,
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		aCT_User_ChangePasswordBuilder(
				_accountPasswordData
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_User_CreateTraineeBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_User_CreateTrainee");
		return builder;
	}

	public static void aCT_User_CreateTrainee(IContext context)
	{
		aCT_User_CreateTraineeBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_User_CreateUserBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_User_CreateUser");
		return builder;
	}

	public static void aCT_User_CreateUser(IContext context)
	{
		aCT_User_CreateUserBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_User_EditAccountBuilder(
		usermanagement.proxies.User _user_2
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_User_EditAccount");
		builder = builder.withParam("User_2", _user_2);
		return builder;
	}

	public static void aCT_User_EditAccount(
		IContext context,
		usermanagement.proxies.User _user_2
	)
	{
		aCT_User_EditAccountBuilder(
				_user_2
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_User_EditUserBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_User_EditUser");
		return builder;
	}

	public static void aCT_User_EditUser(IContext context)
	{
		aCT_User_EditUserBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_User_SaveTraineeBuilder(
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_User_SaveTrainee");
		builder = builder.withParam("AccountPasswordData", _accountPasswordData);
		return builder;
	}

	public static void aCT_User_SaveTrainee(
		IContext context,
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		aCT_User_SaveTraineeBuilder(
				_accountPasswordData
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_User_SaveUserBuilder(
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.ACT_User_SaveUser");
		builder = builder.withParam("AccountPasswordData", _accountPasswordData);
		return builder;
	}

	public static void aCT_User_SaveUser(
		IContext context,
		administration.proxies.AccountPasswordData _accountPasswordData
	)
	{
		aCT_User_SaveUserBuilder(
				_accountPasswordData
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder cWS_Retrieve_CountriesBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.CWS_Retrieve_Countries");
		return builder;
	}

	public static boolean cWS_Retrieve_Countries(IContext context)
	{
		Object result = cWS_Retrieve_CountriesBuilder().execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dS_Trainee_RetrieveBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("UserManagement.DS_Trainee_Retrieve");
		return builder;
	}

	public static java.util.List<usermanagement.proxies.User> dS_Trainee_Retrieve(IContext context)
	{
		Object result = dS_Trainee_RetrieveBuilder().execute(context);
		return result == null ? null : com.mendix.utils.ListUtils.map((java.util.List<IMendixObject>) result, obj -> usermanagement.proxies.User.initialize(context, obj));
	}
}
