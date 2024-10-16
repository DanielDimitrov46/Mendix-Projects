// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package mendixsso.actions;

import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.webui.CustomJavaAction;
import mendixsso.implementation.UserMapper;

public class InitializeUserMapper extends CustomJavaAction<java.lang.Boolean>
{
	private final java.lang.String createUserMicroflow;
	private final java.lang.String updateUserMicroflow;

	public InitializeUserMapper(
		IContext context,
		java.lang.String _createUserMicroflow,
		java.lang.String _updateUserMicroflow
	)
	{
		super(context);
		this.createUserMicroflow = _createUserMicroflow;
		this.updateUserMicroflow = _updateUserMicroflow;
	}

	@java.lang.Override
	public java.lang.Boolean executeAction() throws Exception
	{
		// BEGIN USER CODE
        UserMapper.getInstance().initialize(this.createUserMicroflow, this.updateUserMicroflow);
        return true;
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 * @return a string representation of this action
	 */
	@java.lang.Override
	public java.lang.String toString()
	{
		return "InitializeUserMapper";
	}

	// BEGIN EXTRA CODE
	// END EXTRA CODE
}
