// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package deeplink.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IDataType;
import com.mendix.webui.CustomJavaAction;
import deeplink.proxies.KeyValue;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public class GetInputParams extends CustomJavaAction<java.util.List<IMendixObject>>
{
	private final java.lang.String Microflow;

	public GetInputParams(
		IContext context,
		java.lang.String _microflow
	)
	{
		super(context);
		this.Microflow = _microflow;
	}

	@java.lang.Override
	public java.util.List<IMendixObject> executeAction() throws Exception
	{
		// BEGIN USER CODE
		List<IMendixObject> keyvalueList = new ArrayList();
		
		Map<String,IDataType> map= Core.getInputParameters(Microflow);		
		
		Iterator it = map.entrySet().iterator();
		while(it.hasNext()) {
			Entry mapItem = (Entry)it.next();
			
			KeyValue kv = new KeyValue(getContext());
			kv.setKey(mapItem.getKey().toString());
			kv.setValue(((IDataType)mapItem.getValue()).getType().toString());
			keyvalueList.add(kv.getMendixObject());
		}
		return keyvalueList;
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 * @return a string representation of this action
	 */
	@java.lang.Override
	public java.lang.String toString()
	{
		return "GetInputParams";
	}

	// BEGIN EXTRA CODE
	// END EXTRA CODE
}
