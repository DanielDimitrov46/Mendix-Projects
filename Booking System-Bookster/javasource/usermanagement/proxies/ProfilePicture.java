// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package usermanagement.proxies;

public class ProfilePicture extends system.proxies.Image
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "UserManagement.ProfilePicture";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		PublicThumbnailPath("PublicThumbnailPath"),
		FileID("FileID"),
		Name("Name"),
		DeleteAfterDownload("DeleteAfterDownload"),
		Contents("Contents"),
		HasContents("HasContents"),
		Size("Size"),
		ProfilePicture_User("UserManagement.ProfilePicture_User");

		private final java.lang.String metaName;

		MemberNames(java.lang.String s)
		{
			metaName = s;
		}

		@java.lang.Override
		public java.lang.String toString()
		{
			return metaName;
		}
	}

	public ProfilePicture(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected ProfilePicture(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject profilePictureMendixObject)
	{
		super(context, profilePictureMendixObject);
		if (!com.mendix.core.Core.isSubClassOf(entityName, profilePictureMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static usermanagement.proxies.ProfilePicture initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new usermanagement.proxies.ProfilePicture(context, mendixObject);
	}

	public static usermanagement.proxies.ProfilePicture load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return usermanagement.proxies.ProfilePicture.initialize(context, mendixObject);
	}

	public static java.util.List<usermanagement.proxies.ProfilePicture> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> usermanagement.proxies.ProfilePicture.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of ProfilePicture_User
	 */
	public final usermanagement.proxies.User getProfilePicture_User() throws com.mendix.core.CoreException
	{
		return getProfilePicture_User(getContext());
	}

	/**
	 * @param context
	 * @return value of ProfilePicture_User
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.User getProfilePicture_User(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.User result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.ProfilePicture_User.toString());
		if (identifier != null) {
			result = usermanagement.proxies.User.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of ProfilePicture_User
	 * @param profilepicture_user
	 */
	public final void setProfilePicture_User(usermanagement.proxies.User profilepicture_user)
	{
		setProfilePicture_User(getContext(), profilepicture_user);
	}

	/**
	 * Set value of ProfilePicture_User
	 * @param context
	 * @param profilepicture_user
	 */
	public final void setProfilePicture_User(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.User profilepicture_user)
	{
		if (profilepicture_user == null) {
			getMendixObject().setValue(context, MemberNames.ProfilePicture_User.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.ProfilePicture_User.toString(), profilepicture_user.getMendixObject().getId());
		}
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this) {
			return true;
		}
		if (obj != null && getClass().equals(obj.getClass()))
		{
			final usermanagement.proxies.ProfilePicture that = (usermanagement.proxies.ProfilePicture) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@java.lang.Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

  /**
   * Gives full name ("Module.Entity" name) of the type of the entity.
   *
   * @return the name
   */
	public static java.lang.String getType()
	{
		return entityName;
	}
}