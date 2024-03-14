// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package mxmodelreflection.proxies.microflows;

import com.mendix.core.Core;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public final class Microflows
{
	/**
	 * Private constructor to prevent instantiation of this class. 
	 */
	private Microflows() {}

	// These are the microflows for the MxModelReflection module
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder aSu_CheckMetamodelBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.ASu_CheckMetamodel");
		return builder;
	}

	public static boolean aSu_CheckMetamodel(IContext context)
	{
		Object result = aSu_CheckMetamodelBuilder().execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder bCo_MxObjectMember_CreateCompleteMemberNameBuilder(
		mxmodelreflection.proxies.MxObjectMember _mxObjectMember
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.BCo_MxObjectMember_CreateCompleteMemberName");
		builder = builder.withParam("MxObjectMember", _mxObjectMember);
		return builder;
	}

	public static boolean bCo_MxObjectMember_CreateCompleteMemberName(
		IContext context,
		mxmodelreflection.proxies.MxObjectMember _mxObjectMember
	)
	{
		Object result = bCo_MxObjectMember_CreateCompleteMemberNameBuilder(
				_mxObjectMember
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder bCo_MxObjectReferenceBuilder(
		mxmodelreflection.proxies.MxObjectReference _mxObjectReference
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.BCo_MxObjectReference");
		builder = builder.withParam("MxObjectReference", _mxObjectReference);
		return builder;
	}

	public static boolean bCo_MxObjectReference(
		IContext context,
		mxmodelreflection.proxies.MxObjectReference _mxObjectReference
	)
	{
		Object result = bCo_MxObjectReferenceBuilder(
				_mxObjectReference
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder bCo_MxObjectTypeBuilder(
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.BCo_MxObjectType");
		builder = builder.withParam("MxObjectType", _mxObjectType);
		return builder;
	}

	public static boolean bCo_MxObjectType(
		IContext context,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		Object result = bCo_MxObjectTypeBuilder(
				_mxObjectType
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder bCo_TokenBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.BCo_Token");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static boolean bCo_Token(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		Object result = bCo_TokenBuilder(
				_token
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder bDe_MxObjectTypeBuilder(
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.BDe_MxObjectType");
		builder = builder.withParam("MxObjectType", _mxObjectType);
		return builder;
	}

	public static boolean bDe_MxObjectType(
		IContext context,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		Object result = bDe_MxObjectTypeBuilder(
				_mxObjectType
			)
			.execute(context);
		return (boolean) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_FindMemberBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_FindMember");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_FindMember(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_FindMemberBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_FindMemberReferenceBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_FindMemberReference");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_FindMemberReference(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_FindMemberReferenceBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_FindObjectTypeReferenceBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_FindObjectTypeReference");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_FindObjectTypeReference(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_FindObjectTypeReferenceBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_FindReferenceBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_FindReference");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_FindReference(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_FindReferenceBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_MemberBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_Member");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_Member(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_MemberBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_ObjecttypeReferenceBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_ObjecttypeReference");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_ObjecttypeReference(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_ObjecttypeReferenceBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_ObjectTypeStartBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_ObjectTypeStart");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_ObjectTypeStart(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_ObjectTypeStartBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder ch_ReferenceBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Ch_Reference");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void ch_Reference(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		ch_ReferenceBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dSL_ModulesBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.DSL_Modules");
		return builder;
	}

	public static java.util.List<mxmodelreflection.proxies.Module> dSL_Modules(IContext context)
	{
		Object result = dSL_ModulesBuilder().execute(context);
		return result == null ? null : com.mendix.utils.ListUtils.map((java.util.List<IMendixObject>) result, obj -> mxmodelreflection.proxies.Module.initialize(context, obj));
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder dSO_InheritsFromContainerBuilder(
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.DSO_InheritsFromContainer");
		builder = builder.withParam("MxObjectType", _mxObjectType);
		return builder;
	}

	public static mxmodelreflection.proxies.InheritsFromContainer dSO_InheritsFromContainer(
		IContext context,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		Object result = dSO_InheritsFromContainerBuilder(
				_mxObjectType
			)
			.execute(context);
		return result == null ? null : mxmodelreflection.proxies.InheritsFromContainer.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder findMemberBuilder(
		java.lang.String _memberSearchString,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.FindMember");
		builder = builder.withParam("MemberSearchString", _memberSearchString);
		builder = builder.withParam("MxObjectType", _mxObjectType);
		return builder;
	}

	public static mxmodelreflection.proxies.MxObjectMember findMember(
		IContext context,
		java.lang.String _memberSearchString,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		Object result = findMemberBuilder(
				_memberSearchString,
				_mxObjectType
			)
			.execute(context);
		return result == null ? null : mxmodelreflection.proxies.MxObjectMember.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder findMicroflowBuilder(
		java.lang.String _microflowSearchString
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.FindMicroflow");
		builder = builder.withParam("MicroflowSearchString", _microflowSearchString);
		return builder;
	}

	public static mxmodelreflection.proxies.Microflows findMicroflow(
		IContext context,
		java.lang.String _microflowSearchString
	)
	{
		Object result = findMicroflowBuilder(
				_microflowSearchString
			)
			.execute(context);
		return result == null ? null : mxmodelreflection.proxies.Microflows.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder findObjectTypeBuilder(
		java.lang.String _objectTypeSearchString,
		mxmodelreflection.proxies.MxObjectReference _mxObjectReference_optional
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.FindObjectType");
		builder = builder.withParam("ObjectTypeSearchString", _objectTypeSearchString);
		builder = builder.withParam("MxObjectReference_optional", _mxObjectReference_optional);
		return builder;
	}

	public static mxmodelreflection.proxies.MxObjectType findObjectType(
		IContext context,
		java.lang.String _objectTypeSearchString,
		mxmodelreflection.proxies.MxObjectReference _mxObjectReference_optional
	)
	{
		Object result = findObjectTypeBuilder(
				_objectTypeSearchString,
				_mxObjectReference_optional
			)
			.execute(context);
		return result == null ? null : mxmodelreflection.proxies.MxObjectType.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder findReferenceBuilder(
		java.lang.String _referenceSearchString,
		mxmodelreflection.proxies.MxObjectType _mxObjectType_optional
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.FindReference");
		builder = builder.withParam("ReferenceSearchString", _referenceSearchString);
		builder = builder.withParam("MxObjectType_optional", _mxObjectType_optional);
		return builder;
	}

	public static mxmodelreflection.proxies.MxObjectReference findReference(
		IContext context,
		java.lang.String _referenceSearchString,
		mxmodelreflection.proxies.MxObjectType _mxObjectType_optional
	)
	{
		Object result = findReferenceBuilder(
				_referenceSearchString,
				_mxObjectType_optional
			)
			.execute(context);
		return result == null ? null : mxmodelreflection.proxies.MxObjectReference.initialize(context, (IMendixObject) result);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_MxObjectTypeCommitBuilder(
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.IVK_MxObjectTypeCommit");
		builder = builder.withParam("MxObjectType", _mxObjectType);
		return builder;
	}

	public static void iVK_MxObjectTypeCommit(
		IContext context,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		iVK_MxObjectTypeCommitBuilder(
				_mxObjectType
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_OpenReferencedMendixObjectBuilder(
		mxmodelreflection.proxies.MxObjectReference _selection,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.IVK_OpenReferencedMendixObject");
		builder = builder.withParam("Selection", _selection);
		builder = builder.withParam("MxObjectType", _mxObjectType);
		return builder;
	}

	public static void iVK_OpenReferencedMendixObject(
		IContext context,
		mxmodelreflection.proxies.MxObjectReference _selection,
		mxmodelreflection.proxies.MxObjectType _mxObjectType
	)
	{
		iVK_OpenReferencedMendixObjectBuilder(
				_selection,
				_mxObjectType
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_RecalculateSizeBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.IVK_RecalculateSize");
		return builder;
	}

	public static void iVK_RecalculateSize(IContext context)
	{
		iVK_RecalculateSizeBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_SyncObjectsBuilder()
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.IVK_SyncObjects");
		return builder;
	}

	public static void iVK_SyncObjects(IContext context)
	{
		iVK_SyncObjectsBuilder().execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder iVK_ToggleModuleBuilder(
		mxmodelreflection.proxies.Module _module
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.IVK_ToggleModule");
		builder = builder.withParam("Module", _module);
		return builder;
	}

	public static void iVK_ToggleModule(
		IContext context,
		mxmodelreflection.proxies.Module _module
	)
	{
		iVK_ToggleModuleBuilder(
				_module
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder logBuilder(
		java.lang.Long _base,
		java.lang.Long _x
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.Log");
		builder = builder.withParam("Base", _base);
		builder = builder.withParam("x", _x);
		return builder;
	}

	public static java.lang.Long log(
		IContext context,
		java.lang.Long _base,
		java.lang.Long _x
	)
	{
		Object result = logBuilder(
				_base,
				_x
			)
			.execute(context);
		return (java.lang.Long) result;
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder mB_TestThePatternBuilder(
		mxmodelreflection.proxies.TestPattern _testPattern
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.MB_TestThePattern");
		builder = builder.withParam("TestPattern", _testPattern);
		return builder;
	}

	public static void mB_TestThePattern(
		IContext context,
		mxmodelreflection.proxies.TestPattern _testPattern
	)
	{
		mB_TestThePatternBuilder(
				_testPattern
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder mB_TestTokenPatternBuilder(
		mxmodelreflection.proxies.Token _token
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.MB_TestTokenPattern");
		builder = builder.withParam("Token", _token);
		return builder;
	}

	public static void mB_TestTokenPattern(
		IContext context,
		mxmodelreflection.proxies.Token _token
	)
	{
		mB_TestTokenPatternBuilder(
				_token
			)
			.execute(context);
	}
	public static com.mendix.core.actionmanagement.MicroflowCallBuilder oC_FindObjectTypeBuilder(
		mxmodelreflection.proxies.DbSizeEstimate _dbSizeEstimate
	)
	{
		com.mendix.core.actionmanagement.MicroflowCallBuilder builder = Core.microflowCall("MxModelReflection.OC_FindObjectType");
		builder = builder.withParam("DbSizeEstimate", _dbSizeEstimate);
		return builder;
	}

	public static void oC_FindObjectType(
		IContext context,
		mxmodelreflection.proxies.DbSizeEstimate _dbSizeEstimate
	)
	{
		oC_FindObjectTypeBuilder(
				_dbSizeEstimate
			)
			.execute(context);
	}
}