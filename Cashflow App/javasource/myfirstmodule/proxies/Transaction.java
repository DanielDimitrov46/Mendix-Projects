// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies;

public class Transaction implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject transactionMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "MyFirstModule.Transaction";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Name("Name"),
		Amount("Amount"),
		TypeOfTransaction("TypeOfTransaction"),
		Transaction_Category("MyFirstModule.Transaction_Category");

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

	public Transaction(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected Transaction(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject transactionMendixObject)
	{
		if (transactionMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, transactionMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.transactionMendixObject = transactionMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static myfirstmodule.proxies.Transaction initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new myfirstmodule.proxies.Transaction(context, mendixObject);
	}

	public static myfirstmodule.proxies.Transaction load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return myfirstmodule.proxies.Transaction.initialize(context, mendixObject);
	}

	public static java.util.List<myfirstmodule.proxies.Transaction> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> myfirstmodule.proxies.Transaction.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of Name
	 */
	public final java.lang.String getName()
	{
		return getName(getContext());
	}

	/**
	 * @param context
	 * @return value of Name
	 */
	public final java.lang.String getName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Name.toString());
	}

	/**
	 * Set value of Name
	 * @param name
	 */
	public final void setName(java.lang.String name)
	{
		setName(getContext(), name);
	}

	/**
	 * Set value of Name
	 * @param context
	 * @param name
	 */
	public final void setName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String name)
	{
		getMendixObject().setValue(context, MemberNames.Name.toString(), name);
	}

	/**
	 * @return value of Amount
	 */
	public final java.math.BigDecimal getAmount()
	{
		return getAmount(getContext());
	}

	/**
	 * @param context
	 * @return value of Amount
	 */
	public final java.math.BigDecimal getAmount(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.math.BigDecimal) getMendixObject().getValue(context, MemberNames.Amount.toString());
	}

	/**
	 * Set value of Amount
	 * @param amount
	 */
	public final void setAmount(java.math.BigDecimal amount)
	{
		setAmount(getContext(), amount);
	}

	/**
	 * Set value of Amount
	 * @param context
	 * @param amount
	 */
	public final void setAmount(com.mendix.systemwideinterfaces.core.IContext context, java.math.BigDecimal amount)
	{
		getMendixObject().setValue(context, MemberNames.Amount.toString(), amount);
	}

	/**
	 * Get value of TypeOfTransaction
	 * @param typeoftransaction
	 */
	public final myfirstmodule.proxies.ENUM_Transaction_Type getTypeOfTransaction()
	{
		return getTypeOfTransaction(getContext());
	}

	/**
	 * @param context
	 * @return value of TypeOfTransaction
	 */
	public final myfirstmodule.proxies.ENUM_Transaction_Type getTypeOfTransaction(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.TypeOfTransaction.toString());
		if (obj == null) {
			return null;
		}
		return myfirstmodule.proxies.ENUM_Transaction_Type.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of TypeOfTransaction
	 * @param typeoftransaction
	 */
	public final void setTypeOfTransaction(myfirstmodule.proxies.ENUM_Transaction_Type typeoftransaction)
	{
		setTypeOfTransaction(getContext(), typeoftransaction);
	}

	/**
	 * Set value of TypeOfTransaction
	 * @param context
	 * @param typeoftransaction
	 */
	public final void setTypeOfTransaction(com.mendix.systemwideinterfaces.core.IContext context, myfirstmodule.proxies.ENUM_Transaction_Type typeoftransaction)
	{
		if (typeoftransaction != null) {
			getMendixObject().setValue(context, MemberNames.TypeOfTransaction.toString(), typeoftransaction.toString());
		} else {
			getMendixObject().setValue(context, MemberNames.TypeOfTransaction.toString(), null);
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of Transaction_Category
	 */
	public final myfirstmodule.proxies.Category getTransaction_Category() throws com.mendix.core.CoreException
	{
		return getTransaction_Category(getContext());
	}

	/**
	 * @param context
	 * @return value of Transaction_Category
	 * @throws com.mendix.core.CoreException
	 */
	public final myfirstmodule.proxies.Category getTransaction_Category(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		myfirstmodule.proxies.Category result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Transaction_Category.toString());
		if (identifier != null) {
			result = myfirstmodule.proxies.Category.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of Transaction_Category
	 * @param transaction_category
	 */
	public final void setTransaction_Category(myfirstmodule.proxies.Category transaction_category)
	{
		setTransaction_Category(getContext(), transaction_category);
	}

	/**
	 * Set value of Transaction_Category
	 * @param context
	 * @param transaction_category
	 */
	public final void setTransaction_Category(com.mendix.systemwideinterfaces.core.IContext context, myfirstmodule.proxies.Category transaction_category)
	{
		if (transaction_category == null) {
			getMendixObject().setValue(context, MemberNames.Transaction_Category.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.Transaction_Category.toString(), transaction_category.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return transactionMendixObject;
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
			final myfirstmodule.proxies.Transaction that = (myfirstmodule.proxies.Transaction) obj;
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
