// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package calendarevents.proxies;

public class Booking implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject bookingMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "CalendarEvents.Booking";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		NameOfBook("NameOfBook"),
		Description("Description"),
		StartDate("StartDate"),
		EndDate("EndDate"),
		Persons("Persons"),
		Duration("Duration"),
		ReservedFrom("ReservedFrom"),
		FirstFreeChoice("FirstFreeChoice"),
		BookedRoom("BookedRoom"),
		isSent("isSent"),
		Calendar_Booking("CalendarEvents.Calendar_Booking"),
		Booking_Room("CalendarEvents.Booking_Room"),
		Booking_User("CalendarEvents.Booking_User"),
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

	public Booking(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Booking(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject bookingMendixObject)
	{
		if (bookingMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, bookingMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.bookingMendixObject = bookingMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static calendarevents.proxies.Booking initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new calendarevents.proxies.Booking(context, mendixObject);
	}

	public static calendarevents.proxies.Booking load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return calendarevents.proxies.Booking.initialize(context, mendixObject);
	}

	public static java.util.List<calendarevents.proxies.Booking> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> calendarevents.proxies.Booking.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of NameOfBook
	 */
	public final java.lang.String getNameOfBook()
	{
		return getNameOfBook(getContext());
	}

	/**
	 * @param context
	 * @return value of NameOfBook
	 */
	public final java.lang.String getNameOfBook(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.NameOfBook.toString());
	}

	/**
	 * Set value of NameOfBook
	 * @param nameofbook
	 */
	public final void setNameOfBook(java.lang.String nameofbook)
	{
		setNameOfBook(getContext(), nameofbook);
	}

	/**
	 * Set value of NameOfBook
	 * @param context
	 * @param nameofbook
	 */
	public final void setNameOfBook(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String nameofbook)
	{
		getMendixObject().setValue(context, MemberNames.NameOfBook.toString(), nameofbook);
	}

	/**
	 * @return value of Description
	 */
	public final java.lang.String getDescription()
	{
		return getDescription(getContext());
	}

	/**
	 * @param context
	 * @return value of Description
	 */
	public final java.lang.String getDescription(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Description.toString());
	}

	/**
	 * Set value of Description
	 * @param description
	 */
	public final void setDescription(java.lang.String description)
	{
		setDescription(getContext(), description);
	}

	/**
	 * Set value of Description
	 * @param context
	 * @param description
	 */
	public final void setDescription(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String description)
	{
		getMendixObject().setValue(context, MemberNames.Description.toString(), description);
	}

	/**
	 * @return value of StartDate
	 */
	public final java.util.Date getStartDate()
	{
		return getStartDate(getContext());
	}

	/**
	 * @param context
	 * @return value of StartDate
	 */
	public final java.util.Date getStartDate(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.StartDate.toString());
	}

	/**
	 * Set value of StartDate
	 * @param startdate
	 */
	public final void setStartDate(java.util.Date startdate)
	{
		setStartDate(getContext(), startdate);
	}

	/**
	 * Set value of StartDate
	 * @param context
	 * @param startdate
	 */
	public final void setStartDate(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date startdate)
	{
		getMendixObject().setValue(context, MemberNames.StartDate.toString(), startdate);
	}

	/**
	 * @return value of EndDate
	 */
	public final java.util.Date getEndDate()
	{
		return getEndDate(getContext());
	}

	/**
	 * @param context
	 * @return value of EndDate
	 */
	public final java.util.Date getEndDate(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.EndDate.toString());
	}

	/**
	 * Set value of EndDate
	 * @param enddate
	 */
	public final void setEndDate(java.util.Date enddate)
	{
		setEndDate(getContext(), enddate);
	}

	/**
	 * Set value of EndDate
	 * @param context
	 * @param enddate
	 */
	public final void setEndDate(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date enddate)
	{
		getMendixObject().setValue(context, MemberNames.EndDate.toString(), enddate);
	}

	/**
	 * @return value of Persons
	 */
	public final java.lang.String getPersons()
	{
		return getPersons(getContext());
	}

	/**
	 * @param context
	 * @return value of Persons
	 */
	public final java.lang.String getPersons(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Persons.toString());
	}

	/**
	 * Set value of Persons
	 * @param persons
	 */
	public final void setPersons(java.lang.String persons)
	{
		setPersons(getContext(), persons);
	}

	/**
	 * Set value of Persons
	 * @param context
	 * @param persons
	 */
	public final void setPersons(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String persons)
	{
		getMendixObject().setValue(context, MemberNames.Persons.toString(), persons);
	}

	/**
	 * @return value of Duration
	 */
	public final java.math.BigDecimal getDuration()
	{
		return getDuration(getContext());
	}

	/**
	 * @param context
	 * @return value of Duration
	 */
	public final java.math.BigDecimal getDuration(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.math.BigDecimal) getMendixObject().getValue(context, MemberNames.Duration.toString());
	}

	/**
	 * Set value of Duration
	 * @param duration
	 */
	public final void setDuration(java.math.BigDecimal duration)
	{
		setDuration(getContext(), duration);
	}

	/**
	 * Set value of Duration
	 * @param context
	 * @param duration
	 */
	public final void setDuration(com.mendix.systemwideinterfaces.core.IContext context, java.math.BigDecimal duration)
	{
		getMendixObject().setValue(context, MemberNames.Duration.toString(), duration);
	}

	/**
	 * @return value of ReservedFrom
	 */
	public final java.lang.String getReservedFrom()
	{
		return getReservedFrom(getContext());
	}

	/**
	 * @param context
	 * @return value of ReservedFrom
	 */
	public final java.lang.String getReservedFrom(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.ReservedFrom.toString());
	}

	/**
	 * Set value of ReservedFrom
	 * @param reservedfrom
	 */
	public final void setReservedFrom(java.lang.String reservedfrom)
	{
		setReservedFrom(getContext(), reservedfrom);
	}

	/**
	 * Set value of ReservedFrom
	 * @param context
	 * @param reservedfrom
	 */
	public final void setReservedFrom(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String reservedfrom)
	{
		getMendixObject().setValue(context, MemberNames.ReservedFrom.toString(), reservedfrom);
	}

	/**
	 * @return value of FirstFreeChoice
	 */
	public final java.util.Date getFirstFreeChoice()
	{
		return getFirstFreeChoice(getContext());
	}

	/**
	 * @param context
	 * @return value of FirstFreeChoice
	 */
	public final java.util.Date getFirstFreeChoice(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.FirstFreeChoice.toString());
	}

	/**
	 * Set value of FirstFreeChoice
	 * @param firstfreechoice
	 */
	public final void setFirstFreeChoice(java.util.Date firstfreechoice)
	{
		setFirstFreeChoice(getContext(), firstfreechoice);
	}

	/**
	 * Set value of FirstFreeChoice
	 * @param context
	 * @param firstfreechoice
	 */
	public final void setFirstFreeChoice(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date firstfreechoice)
	{
		getMendixObject().setValue(context, MemberNames.FirstFreeChoice.toString(), firstfreechoice);
	}

	/**
	 * @return value of BookedRoom
	 */
	public final java.lang.String getBookedRoom()
	{
		return getBookedRoom(getContext());
	}

	/**
	 * @param context
	 * @return value of BookedRoom
	 */
	public final java.lang.String getBookedRoom(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.BookedRoom.toString());
	}

	/**
	 * Set value of BookedRoom
	 * @param bookedroom
	 */
	public final void setBookedRoom(java.lang.String bookedroom)
	{
		setBookedRoom(getContext(), bookedroom);
	}

	/**
	 * Set value of BookedRoom
	 * @param context
	 * @param bookedroom
	 */
	public final void setBookedRoom(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String bookedroom)
	{
		getMendixObject().setValue(context, MemberNames.BookedRoom.toString(), bookedroom);
	}

	/**
	 * @return value of isSent
	 */
	public final java.lang.Boolean getisSent()
	{
		return getisSent(getContext());
	}

	/**
	 * @param context
	 * @return value of isSent
	 */
	public final java.lang.Boolean getisSent(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.isSent.toString());
	}

	/**
	 * Set value of isSent
	 * @param issent
	 */
	public final void setisSent(java.lang.Boolean issent)
	{
		setisSent(getContext(), issent);
	}

	/**
	 * Set value of isSent
	 * @param context
	 * @param issent
	 */
	public final void setisSent(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean issent)
	{
		getMendixObject().setValue(context, MemberNames.isSent.toString(), issent);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Calendar_Booking
	 */
	public final calendarevents.proxies.Calendar getCalendar_Booking() throws com.mendix.core.CoreException
	{
		return getCalendar_Booking(getContext());
	}

	/**
	 * @param context
	 * @return value of Calendar_Booking
	 * @throws com.mendix.core.CoreException
	 */
	public final calendarevents.proxies.Calendar getCalendar_Booking(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		calendarevents.proxies.Calendar result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Calendar_Booking.toString());
		if (identifier != null) {
			result = calendarevents.proxies.Calendar.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Calendar_Booking
	 * @param calendar_booking
	 */
	public final void setCalendar_Booking(calendarevents.proxies.Calendar calendar_booking)
	{
		setCalendar_Booking(getContext(), calendar_booking);
	}

	/**
	 * Set value of Calendar_Booking
	 * @param context
	 * @param calendar_booking
	 */
	public final void setCalendar_Booking(com.mendix.systemwideinterfaces.core.IContext context, calendarevents.proxies.Calendar calendar_booking)
	{
		if (calendar_booking == null) {
			getMendixObject().setValue(context, MemberNames.Calendar_Booking.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Calendar_Booking.toString(), calendar_booking.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Booking_Room
	 */
	public final rooms.proxies.Room getBooking_Room() throws com.mendix.core.CoreException
	{
		return getBooking_Room(getContext());
	}

	/**
	 * @param context
	 * @return value of Booking_Room
	 * @throws com.mendix.core.CoreException
	 */
	public final rooms.proxies.Room getBooking_Room(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		rooms.proxies.Room result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Booking_Room.toString());
		if (identifier != null) {
			result = rooms.proxies.Room.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Booking_Room
	 * @param booking_room
	 */
	public final void setBooking_Room(rooms.proxies.Room booking_room)
	{
		setBooking_Room(getContext(), booking_room);
	}

	/**
	 * Set value of Booking_Room
	 * @param context
	 * @param booking_room
	 */
	public final void setBooking_Room(com.mendix.systemwideinterfaces.core.IContext context, rooms.proxies.Room booking_room)
	{
		if (booking_room == null) {
			getMendixObject().setValue(context, MemberNames.Booking_Room.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Booking_Room.toString(), booking_room.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Booking_User
	 */
	public final usermanagement.proxies.User getBooking_User() throws com.mendix.core.CoreException
	{
		return getBooking_User(getContext());
	}

	/**
	 * @param context
	 * @return value of Booking_User
	 * @throws com.mendix.core.CoreException
	 */
	public final usermanagement.proxies.User getBooking_User(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		usermanagement.proxies.User result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Booking_User.toString());
		if (identifier != null) {
			result = usermanagement.proxies.User.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Booking_User
	 * @param booking_user
	 */
	public final void setBooking_User(usermanagement.proxies.User booking_user)
	{
		setBooking_User(getContext(), booking_user);
	}

	/**
	 * Set value of Booking_User
	 * @param context
	 * @param booking_user
	 */
	public final void setBooking_User(com.mendix.systemwideinterfaces.core.IContext context, usermanagement.proxies.User booking_user)
	{
		if (booking_user == null) {
			getMendixObject().setValue(context, MemberNames.Booking_User.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Booking_User.toString(), booking_user.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Booking_Notification
	 */
	public final notification.proxies.Notification getBooking_Notification() throws com.mendix.core.CoreException
	{
		return getBooking_Notification(getContext());
	}

	/**
	 * @param context
	 * @return value of Booking_Notification
	 * @throws com.mendix.core.CoreException
	 */
	public final notification.proxies.Notification getBooking_Notification(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		notification.proxies.Notification result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Booking_Notification.toString());
		if (identifier != null) {
			result = notification.proxies.Notification.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Booking_Notification
	 * @param booking_notification
	 */
	public final void setBooking_Notification(notification.proxies.Notification booking_notification)
	{
		setBooking_Notification(getContext(), booking_notification);
	}

	/**
	 * Set value of Booking_Notification
	 * @param context
	 * @param booking_notification
	 */
	public final void setBooking_Notification(com.mendix.systemwideinterfaces.core.IContext context, notification.proxies.Notification booking_notification)
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
		return bookingMendixObject;
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
			final calendarevents.proxies.Booking that = (calendarevents.proxies.Booking) obj;
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
