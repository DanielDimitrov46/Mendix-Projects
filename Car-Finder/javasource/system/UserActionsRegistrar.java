package system;

import com.mendix.core.actionmanagement.IActionRegistrator;

public class UserActionsRegistrar
{
  public void registerActions(IActionRegistrator registrator)
  {
    registrator.registerUserAction(deeplink.actions.ExecuteDeeplink.class);
    registrator.registerUserAction(deeplink.actions.GetApplicationUrl.class);
    registrator.registerUserAction(deeplink.actions.GetAttributeValueByEntityName.class);
    registrator.registerUserAction(deeplink.actions.GetCurrentSessionID.class);
    registrator.registerUserAction(deeplink.actions.GetInputParams.class);
    registrator.registerUserAction(deeplink.actions.GetObjectTypeFromParameter.class);
    registrator.registerUserAction(deeplink.actions.ReadMicroflows.class);
    registrator.registerUserAction(deeplink.actions.SetObjectParameterDeeplink.class);
    registrator.registerUserAction(deeplink.actions.SetStringParameterDeeplink.class);
    registrator.registerUserAction(deeplink.actions.StartDeeplinkJava.class);
    registrator.registerUserAction(email_connector.actions.CalculateIncomingAccountMetrics.class);
    registrator.registerUserAction(email_connector.actions.CalculateOutgoingAccountMetrics.class);
    registrator.registerUserAction(email_connector.actions.CheckServerConnection.class);
    registrator.registerUserAction(email_connector.actions.ConvertHTMLBodyToPlainText.class);
    registrator.registerUserAction(email_connector.actions.CopyAttachmentContent.class);
    registrator.registerUserAction(email_connector.actions.CreateEmailFromTemplate.class);
    registrator.registerUserAction(email_connector.actions.EndTransaction.class);
    registrator.registerUserAction(email_connector.actions.GenerateOAuthNonce.class);
    registrator.registerUserAction(email_connector.actions.GetAppRootURL.class);
    registrator.registerUserAction(email_connector.actions.GetAutoConfig.class);
    registrator.registerUserAction(email_connector.actions.GetBaseDNList.class);
    registrator.registerUserAction(email_connector.actions.GetFolderNames.class);
    registrator.registerUserAction(email_connector.actions.GetMendixID.class);
    registrator.registerUserAction(email_connector.actions.GetPayloadFromJWT.class);
    registrator.registerUserAction(email_connector.actions.RetrieveEmailMessages.class);
    registrator.registerUserAction(email_connector.actions.SendEmail.class);
    registrator.registerUserAction(email_connector.actions.SendEmailWithTemplate.class);
    registrator.registerUserAction(email_connector.actions.SubscribeToIncomingEmail.class);
    registrator.registerUserAction(email_connector.actions.UnsubscribeFromIncomingEmail.class);
    registrator.registerUserAction(encryption.actions.DecryptString.class);
    registrator.registerUserAction(encryption.actions.EncryptString.class);
    registrator.registerUserAction(encryption.actions.GeneratePGPKeyRing.class);
    registrator.registerUserAction(encryption.actions.PGPDecryptDocument.class);
    registrator.registerUserAction(encryption.actions.PGPEncryptDocument.class);
    registrator.registerUserAction(encryption.actions.ValidatePrivateKeyRing.class);
    registrator.registerUserAction(forgotpassword.actions.GenerateRandomPassword.class);
    registrator.registerUserAction(forgotpassword.actions.GenerateURL.class);
    registrator.registerUserAction(forgotpassword.actions.GenerateUUID.class);
    registrator.registerUserAction(forgotpassword.actions.ReplaceEmailTemplateTokens.class);
    registrator.registerUserAction(forgotpassword.actions.SignIn.class);
    registrator.registerUserAction(mxmodelreflection.actions.ReplaceToken.class);
    registrator.registerUserAction(mxmodelreflection.actions.SyncObjects.class);
    registrator.registerUserAction(mxmodelreflection.actions.TestThePattern.class);
    registrator.registerUserAction(mxmodelreflection.actions.ValidateTokensInMessage.class);
    registrator.registerUserAction(system.actions.VerifyPassword.class);
  }
}
