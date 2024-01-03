// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package forgotpassword.proxies.microflows;

import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public final class Microflows
{
	/**
	 * Private constructor to prevent instantiation of this class. 
	 */
	private Microflows() {}

	// These are the microflows for the ForgotPassword module
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aCT_ConnectLanguageToTemplateBuilder(
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.ACT_ConnectLanguageToTemplate");
		builder = builder.withParam("EmailTemplate", _emailTemplate);
		return builder;
	}

	public static void aCT_ConnectLanguageToTemplate(
		IContext context,
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		aCT_ConnectLanguageToTemplateBuilder(
				_emailTemplate
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder cA_ConfigurationHasDeeplinkBuilder(
		forgotpassword.proxies.Configuration _configuration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.CA_ConfigurationHasDeeplink");
		builder = builder.withParam("Configuration", _configuration);
		return builder;
	}

	public static boolean cA_ConfigurationHasDeeplink(
		IContext context,
		forgotpassword.proxies.Configuration _configuration
	)
	{
		Object result = cA_ConfigurationHasDeeplinkBuilder(
				_configuration
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder cA_ConfigurationHasEmailTemplate_ResetBuilder(
		forgotpassword.proxies.Configuration _configuration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.CA_ConfigurationHasEmailTemplate_Reset");
		builder = builder.withParam("Configuration", _configuration);
		return builder;
	}

	public static boolean cA_ConfigurationHasEmailTemplate_Reset(
		IContext context,
		forgotpassword.proxies.Configuration _configuration
	)
	{
		Object result = cA_ConfigurationHasEmailTemplate_ResetBuilder(
				_configuration
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder cA_ConfigurationHasEmailTemplate_SignupBuilder(
		forgotpassword.proxies.Configuration _configuration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.CA_ConfigurationHasEmailTemplate_Signup");
		builder = builder.withParam("Configuration", _configuration);
		return builder;
	}

	public static boolean cA_ConfigurationHasEmailTemplate_Signup(
		IContext context,
		forgotpassword.proxies.Configuration _configuration
	)
	{
		Object result = cA_ConfigurationHasEmailTemplate_SignupBuilder(
				_configuration
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder createNewUserFromSignupBuilder(
		forgotpassword.proxies.ForgotPassword _forgotPassword
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.CreateNewUserFromSignup");
		builder = builder.withParam("ForgotPassword", _forgotPassword);
		return builder;
	}

	public static void createNewUserFromSignup(
		IContext context,
		forgotpassword.proxies.ForgotPassword _forgotPassword
	)
	{
		createNewUserFromSignupBuilder(
				_forgotPassword
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder decryptForgotPasswordURLBuilder(
		forgotpassword.proxies.ForgotPassword _forgotPassword
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.DecryptForgotPasswordURL");
		builder = builder.withParam("ForgotPassword", _forgotPassword);
		return builder;
	}

	public static forgotpassword.proxies.ForgotPassword decryptForgotPasswordURL(
		IContext context,
		forgotpassword.proxies.ForgotPassword _forgotPassword
	)
	{
		Object result = decryptForgotPasswordURLBuilder(
				_forgotPassword
			)
			.execute(context);
		return result == null ? null : forgotpassword.proxies.ForgotPassword.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dS_CreateLanguageObjectBuilder(
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.DS_CreateLanguageObject");
		builder = builder.withParam("EmailTemplate", _emailTemplate);
		return builder;
	}

	public static forgotpassword.proxies.EmailTemplateLanguage dS_CreateLanguageObject(
		IContext context,
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		Object result = dS_CreateLanguageObjectBuilder(
				_emailTemplate
			)
			.execute(context);
		return result == null ? null : forgotpassword.proxies.EmailTemplateLanguage.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dS_CreateSMTPObjectBuilder(
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.DS_CreateSMTPObject");
		builder = builder.withParam("EmailTemplate", _emailTemplate);
		return builder;
	}

	public static forgotpassword.proxies.EmailTemplateSMTP dS_CreateSMTPObject(
		IContext context,
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		Object result = dS_CreateSMTPObjectBuilder(
				_emailTemplate
			)
			.execute(context);
		return result == null ? null : forgotpassword.proxies.EmailTemplateSMTP.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dS_GetEmailAccountBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.DS_GetEmailAccount");
		return builder;
	}

	public static email_connector.proxies.EmailAccount dS_GetEmailAccount(IContext context)
	{
		Object result = dS_GetEmailAccountBuilder().execute(context);
		return result == null ? null : email_connector.proxies.EmailAccount.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dV_GetConfigurationBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.DV_GetConfiguration");
		return builder;
	}

	public static forgotpassword.proxies.Configuration dV_GetConfiguration(IContext context)
	{
		Object result = dV_GetConfigurationBuilder().execute(context);
		return result == null ? null : forgotpassword.proxies.Configuration.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder generateUIDAndURLBuilder(
		forgotpassword.proxies.ForgotPassword _forgotPassword
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.GenerateUIDAndURL");
		builder = builder.withParam("ForgotPassword", _forgotPassword);
		return builder;
	}

	public static void generateUIDAndURL(
		IContext context,
		forgotpassword.proxies.ForgotPassword _forgotPassword
	)
	{
		generateUIDAndURLBuilder(
				_forgotPassword
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder getValidUntilDateTimeBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.GetValidUntilDateTime");
		return builder;
	}

	public static java.util.Date getValidUntilDateTime(IContext context)
	{
		Object result = getValidUntilDateTimeBuilder().execute(context);
		return (java.util.Date) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_CreateDeeplinkBuilder(
		forgotpassword.proxies.Configuration _configuration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.IVK_CreateDeeplink");
		builder = builder.withParam("Configuration", _configuration);
		return builder;
	}

	public static void iVK_CreateDeeplink(
		IContext context,
		forgotpassword.proxies.Configuration _configuration
	)
	{
		iVK_CreateDeeplinkBuilder(
				_configuration
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_CreateEmailTemplate_ResetBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.IVK_CreateEmailTemplate_Reset");
		return builder;
	}

	public static void iVK_CreateEmailTemplate_Reset(IContext context)
	{
		iVK_CreateEmailTemplate_ResetBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_CreateEmailTemplate_SignupBuilder(
		forgotpassword.proxies.Configuration _configuration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.IVK_CreateEmailTemplate_Signup");
		builder = builder.withParam("Configuration", _configuration);
		return builder;
	}

	public static void iVK_CreateEmailTemplate_Signup(
		IContext context,
		forgotpassword.proxies.Configuration _configuration
	)
	{
		iVK_CreateEmailTemplate_SignupBuilder(
				_configuration
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder mB_Step2_SendConfirmationEmailBuilder(
		forgotpassword.proxies.SignupHelper _signupHelper
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.MB_Step2_SendConfirmationEmail");
		builder = builder.withParam("SignupHelper", _signupHelper);
		return builder;
	}

	public static void mB_Step2_SendConfirmationEmail(
		IContext context,
		forgotpassword.proxies.SignupHelper _signupHelper
	)
	{
		mB_Step2_SendConfirmationEmailBuilder(
				_signupHelper
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder nav_GuestHomePageBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.Nav_GuestHomePage");
		return builder;
	}

	public static void nav_GuestHomePage(IContext context)
	{
		nav_GuestHomePageBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder oCh_NameBuilder(
		deeplink.proxies.DeepLink _deepLink,
		forgotpassword.proxies.Configuration _configuration
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.OCh_Name");
		builder = builder.withParam("DeepLink", _deepLink);
		builder = builder.withParam("Configuration", _configuration);
		return builder;
	}

	public static void oCh_Name(
		IContext context,
		deeplink.proxies.DeepLink _deepLink,
		forgotpassword.proxies.Configuration _configuration
	)
	{
		oCh_NameBuilder(
				_deepLink,
				_configuration
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder sF_CheckForDuplicateAccountBuilder(
		java.lang.String _email
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.SF_CheckForDuplicateAccount");
		builder = builder.withParam("Email", _email);
		return builder;
	}

	public static boolean sF_CheckForDuplicateAccount(
		IContext context,
		java.lang.String _email
	)
	{
		Object result = sF_CheckForDuplicateAccountBuilder(
				_email
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder sF_CreateAndSendEmailBuilder(
		forgotpassword.proxies.ForgotPassword _forgotPassword,
		boolean _isSignUp,
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.SF_CreateAndSendEmail");
		builder = builder.withParam("ForgotPassword", _forgotPassword);
		builder = builder.withParam("IsSignUp", _isSignUp);
		builder = builder.withParam("EmailTemplate", _emailTemplate);
		return builder;
	}

	public static boolean sF_CreateAndSendEmail(
		IContext context,
		forgotpassword.proxies.ForgotPassword _forgotPassword,
		boolean _isSignUp,
		email_connector.proxies.EmailTemplate _emailTemplate
	)
	{
		Object result = sF_CreateAndSendEmailBuilder(
				_forgotPassword,
				_isSignUp,
				_emailTemplate
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder sF_CreateAndSendEmailForResetBuilder(
		forgotpassword.proxies.ForgotPassword _forgotPassword,
		boolean _isSignUp
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.SF_CreateAndSendEmailForReset");
		builder = builder.withParam("ForgotPassword", _forgotPassword);
		builder = builder.withParam("IsSignUp", _isSignUp);
		return builder;
	}

	public static boolean sF_CreateAndSendEmailForReset(
		IContext context,
		forgotpassword.proxies.ForgotPassword _forgotPassword,
		boolean _isSignUp
	)
	{
		Object result = sF_CreateAndSendEmailForResetBuilder(
				_forgotPassword,
				_isSignUp
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder sF_CreateAndSendEmailForSignupBuilder(
		forgotpassword.proxies.ForgotPassword _forgotPassword,
		boolean _isSignUp
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.SF_CreateAndSendEmailForSignup");
		builder = builder.withParam("ForgotPassword", _forgotPassword);
		builder = builder.withParam("IsSignUp", _isSignUp);
		return builder;
	}

	public static boolean sF_CreateAndSendEmailForSignup(
		IContext context,
		forgotpassword.proxies.ForgotPassword _forgotPassword,
		boolean _isSignUp
	)
	{
		Object result = sF_CreateAndSendEmailForSignupBuilder(
				_forgotPassword,
				_isSignUp
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder sF_CreateForgotPasswordRequestBuilder(
		java.lang.String _emailAddress
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.SF_CreateForgotPasswordRequest");
		builder = builder.withParam("EmailAddress", _emailAddress);
		return builder;
	}

	public static forgotpassword.proxies.ForgotPassword sF_CreateForgotPasswordRequest(
		IContext context,
		java.lang.String _emailAddress
	)
	{
		Object result = sF_CreateForgotPasswordRequestBuilder(
				_emailAddress
			)
			.execute(context);
		return result == null ? null : forgotpassword.proxies.ForgotPassword.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder sF_SendEmailRecoverPasswordBuilder(
		java.lang.String _emailAddress
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.SF_SendEmailRecoverPassword");
		builder = builder.withParam("EmailAddress", _emailAddress);
		return builder;
	}

	public static void sF_SendEmailRecoverPassword(
		IContext context,
		java.lang.String _emailAddress
	)
	{
		sF_SendEmailRecoverPasswordBuilder(
				_emailAddress
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder step1_ShowForgotPasswordPageBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.Step1_ShowForgotPasswordPage");
		return builder;
	}

	public static void step1_ShowForgotPasswordPage(IContext context)
	{
		step1_ShowForgotPasswordPageBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder step1_ShowSignupPageBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.Step1_ShowSignupPage");
		return builder;
	}

	public static void step1_ShowSignupPage(IContext context)
	{
		step1_ShowSignupPageBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder step2_SendEmailRecoverPasswordBuilder(
		forgotpassword.proxies.ForgotPasswordHelper _forgotPasswordHelper
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.Step2_SendEmailRecoverPassword");
		builder = builder.withParam("ForgotPasswordHelper", _forgotPasswordHelper);
		return builder;
	}

	public static void step2_SendEmailRecoverPassword(
		IContext context,
		forgotpassword.proxies.ForgotPasswordHelper _forgotPasswordHelper
	)
	{
		step2_SendEmailRecoverPasswordBuilder(
				_forgotPasswordHelper
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder step3_DL_SetNewPasswordBuilder(
		java.lang.String _gUID
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.Step3_DL_SetNewPassword");
		builder = builder.withParam("GUID", _gUID);
		return builder;
	}

	public static void step3_DL_SetNewPassword(
		IContext context,
		java.lang.String _gUID
	)
	{
		step3_DL_SetNewPasswordBuilder(
				_gUID
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder step4_SubmitPasswordBuilder(
		forgotpassword.proxies.AccountPasswordData _accountPasswordData
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.Step4_SubmitPassword");
		builder = builder.withParam("AccountPasswordData", _accountPasswordData);
		return builder;
	}

	public static void step4_SubmitPassword(
		IContext context,
		forgotpassword.proxies.AccountPasswordData _accountPasswordData
	)
	{
		step4_SubmitPasswordBuilder(
				_accountPasswordData
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder userAccountValidationBuilder(
		java.lang.String _emailAddress
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("ForgotPassword.UserAccountValidation");
		builder = builder.withParam("EmailAddress", _emailAddress);
		return builder;
	}

	public static boolean userAccountValidation(
		IContext context,
		java.lang.String _emailAddress
	)
	{
		Object result = userAccountValidationBuilder(
				_emailAddress
			)
			.execute(context);
		return (boolean) result;
	}
}