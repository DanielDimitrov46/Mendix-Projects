// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package notification.proxies;

public class Notification implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject notificationMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "Notification.Notification";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Message("Message"),
		toShow("toShow"),
		Notification_User("Notification.Notification_User"),
		Booking_Notification("CalendarEvents.Booking_Notification");

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

	public Notification(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Notification(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject notificationMendixObject)
	{
		if (notificationMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, notificationMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.notificationMendixObject = notificationMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static notification.proxies.Notification initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new notification.proxies.Notification(context, mendixObject);
	}

	public static notification.proxies.Notification load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return notification.proxies.Notification.initialize(context, mendixObject);
	}

	public static java.util.List<notification.proxies.Notification> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> notification.proxies.Notification.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of Message
	 */
	public final java.lang.String getMessage()
	{
		return getMessage(getContext());
	}

	/**
	 * @param context
	 * @return value of Message
	 */
	public final java.lang.String getMessage(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Message.toString());
	}

	/**
	 * Set value of Message
	 * @param message
	 */
	public final void setMessage(java.lang.String message)
	{
		setMessage(getContext(), message);
	}

	/**
	 * Set value of Message
	 * @param context
	 * @param message
	 */
	public final void setMessage(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String message)
	{
		getMendixObject().setValue(context, MemberNames.Message.toString(), message);
	}

	/**
	 * @return value of toShow
	 */
	public final java.lang.Boolean gettoShow()
	{
		return gettoShow(getContext());
	}

	/**
	 * @param context
	 * @return value of toShow
	 */
	public final java.lang.Boolean gettoShow(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.toShow.toString());
	}

	/**
	 * Set value of toShow
	 * @param toshow
	 */
	public final void settoShow(java.lang.Boolean toshow)
	{
		settoShow(getContext(), toshow);
	}

	/**
	 * Set value of toShow
	 * @param context
	 * @param toshow
	 */
	public final void settoShow(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean toshow)
	{
		getMendixObject().setValue(context, MemberNames.toShow.toString(), toshow);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Notification_User
	 */
	public final usermanagement.proxies.User getNotification_User() throws com.mendix.core.CoreException
	{
		return getNotification_User(getContext());
	}

	/**
	 * @param context
	 * @return value of Notification_User
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.User getNotification_User(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.User result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Notification_User.toString());
		if (identifier != null) {
			result = usermanagement.proxies.User.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Notification_User
	 * @param notification_user
	 */
	public final void setNotification_User(usermanagement.proxies.User notification_user)
	{
		setNotification_User(getContext(), notification_user);
	}

	/**
	 * Set value of Notification_User
	 * @param context
	 * @param notification_user
	 */
	public final void setNotification_User(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.User notification_user)
	{
		if (notification_user == null) {
			getMendixObject().setValue(context, MemberNames.Notification_User.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Notification_User.toString(), notification_user.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Booking_Notification
	 */
	public final calendarevents.proxies.Booking getBooking_Notification() throws com.mendix.core.CoreException
	{
		return getBooking_Notification(getContext());
	}

	/**
	 * @param context
	 * @return value of Booking_Notification
	 * @throws com.mendix.core.CoreException
	 */
	public final calendarevents.proxies.Booking getBooking_Notification(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		calendarevents.proxies.Booking result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Booking_Notification.toString());
		if (identifier != null) {
			result = calendarevents.proxies.Booking.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Booking_Notification
	 * @param booking_notification
	 */
	public final void setBooking_Notification(calendarevents.proxies.Booking booking_notification)
	{
		setBooking_Notification(getContext(), booking_notification);
	}

	/**
	 * Set value of Booking_Notification
	 * @param context
	 * @param booking_notification
	 */
	public final void setBooking_Notification(com.mendix.systemwideinterfaces.core.IContext context, calendarevents.proxies.Booking booking_notification)
	{
		if (booking_notification == null) {
			getMendixObject().setValue(context, MemberNames.Booking_Notification.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Booking_Notification.toString(), booking_notification.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return notificationMendixObject;
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IContext getContext()
	{
		return context;
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this) {
			return true;
		}
		if (obj != null && getClass().equals(obj.getClass()))
		{
			final notification.proxies.Notification that = (notification.proxies.Notification) obj;
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
