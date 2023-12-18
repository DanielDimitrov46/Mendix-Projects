// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package system.proxies;

/**
 * An entity that inherits from the System.FileDocument entity. Used to store images. The content of the file is verified to be an image. In some places, thumbnails are generated.
 */
public class Image extends system.proxies.FileDocument
{
	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "System.Image";

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
		Size("Size");

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

	public Image(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Image(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject imageMendixObject)
	{
		super(context, imageMendixObject);
		if (!com.mendix.core.Core.isSubClassOf(entityName, imageMendixObject.getType())) {
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
	public static system.proxies.Image initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		if (com.mendix.core.Core.isSubClassOf("MyFirstModule.Logo_Team", mendixObject.getType())) {
			return myfirstmodule.proxies.Logo_Team.initialize(context, mendixObject);
		}
		if (com.mendix.core.Core.isSubClassOf("MyFirstModule.Player_Logo", mendixObject.getType())) {
			return myfirstmodule.proxies.Player_Logo.initialize(context, mendixObject);
		}
		return new system.proxies.Image(context, mendixObject);
	}

	public static system.proxies.Image load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return system.proxies.Image.initialize(context, mendixObject);
	}

	public static java.util.List<? extends system.proxies.Image> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> system.proxies.Image.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of PublicThumbnailPath
	 */
	public final java.lang.String getPublicThumbnailPath()
	{
		return getPublicThumbnailPath(getContext());
	}

	/**
	 * @param context
	 * @return value of PublicThumbnailPath
	 */
	public final java.lang.String getPublicThumbnailPath(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.PublicThumbnailPath.toString());
	}

	/**
	 * Set value of PublicThumbnailPath
	 * @param publicthumbnailpath
	 */
	public final void setPublicThumbnailPath(java.lang.String publicthumbnailpath)
	{
		setPublicThumbnailPath(getContext(), publicthumbnailpath);
	}

	/**
	 * Set value of PublicThumbnailPath
	 * @param context
	 * @param publicthumbnailpath
	 */
	public final void setPublicThumbnailPath(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String publicthumbnailpath)
	{
		getMendixObject().setValue(context, MemberNames.PublicThumbnailPath.toString(), publicthumbnailpath);
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this) {
			return true;
		}
		if (obj != null && getClass().equals(obj.getClass()))
		{
			final system.proxies.Image that = (system.proxies.Image) obj;
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
