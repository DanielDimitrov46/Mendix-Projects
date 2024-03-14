package system;

import com.mendix.core.actionmanagement.IActionRegistrator;

public class UserActionsRegistrar
{
  public void registerActions(IActionRegistrator registrator)
  {
    registrator.registerUserAction(mqttconnector.actions.Connect.class);
    registrator.registerUserAction(mqttconnector.actions.Disconnect.class);
    registrator.registerUserAction(mqttconnector.actions.Encrypt.class);
    registrator.registerUserAction(mqttconnector.actions.Publish.class);
    registrator.registerUserAction(mqttconnector.actions.Subscribe.class);
    registrator.registerUserAction(mqttconnector.actions.Unsubscribe.class);
    registrator.registerUserAction(system.actions.VerifyPassword.class);
  }
}
