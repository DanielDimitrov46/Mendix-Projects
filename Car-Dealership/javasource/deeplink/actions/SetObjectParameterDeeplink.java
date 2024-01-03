// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package deeplink.actions;

import java.util.List;
import com.mendix.core.Core;
import com.mendix.logging.ILogNode;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;
import com.mendix.webui.CustomJavaAction;
import deeplink.proxies.DeepLink;
import deeplink.proxies.microflows.Microflows;
import deeplink.utils.DeeplinkUtils;

/**
 * Creates a deeplink configuration using DeepLinkname as identifier.
 * Any existing configurations with this identifier will be deleted.
 */
public class SetObjectParameterDeeplink extends CustomJavaAction<java.lang.Void>
{
	private final java.lang.String Microflow;
	private final java.lang.String Description;
	private final java.lang.String DeepLinkName;
	private final java.lang.String Entity;
	private final java.lang.String Attribute;
	private final java.lang.Boolean ForceLogin;
	private final java.lang.Boolean KeepAsHomeDeeplink;

	public SetObjectParameterDeeplink(
		IContext context,
		java.lang.String _microflow,
		java.lang.String _description,
		java.lang.String _deepLinkName,
		java.lang.String _entity,
		java.lang.String _attribute,
		java.lang.Boolean _forceLogin,
		java.lang.Boolean _keepAsHomeDeeplink
	)
	{
		super(context);
		this.Microflow = _microflow;
		this.Description = _description;
		this.DeepLinkName = _deepLinkName;
		this.Entity = _entity;
		this.Attribute = _attribute;
		this.ForceLogin = _forceLogin;
		this.KeepAsHomeDeeplink = _keepAsHomeDeeplink;
	}

	@java.lang.Override
	public java.lang.Void executeAction() throws Exception
	{
		// BEGIN USER CODE
		DeeplinkUtils.updateOrCreateDeeplink(getContext(), DeepLinkName, ForceLogin, Description, Microflow, KeepAsHomeDeeplink, Entity, Attribute);
		
		return null;
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 * @return a string representation of this action
	 */
	@java.lang.Override
	public java.lang.String toString()
	{
		return "SetObjectParameterDeeplink";
	}

	// BEGIN EXTRA CODE

	// END EXTRA CODE
}
