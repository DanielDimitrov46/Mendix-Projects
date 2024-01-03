// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package email_connector.proxies;

public class EmailTemplate implements com.mendix.systemwideinterfaces.core.IEntityProxy
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject emailTemplateMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "Email_Connector.EmailTemplate";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		TemplateName("TemplateName"),
		CreationDate("CreationDate"),
		Subject("Subject"),
		SentDate("SentDate"),
		To("To"),
		CC("CC"),
		BCC("BCC"),
		Content("Content"),
		UseOnlyPlainText("UseOnlyPlainText"),
		hasAttachment("hasAttachment"),
		ReplyTo("ReplyTo"),
		PlainBody("PlainBody"),
		FromDisplayName("FromDisplayName"),
		Signed("Signed"),
		Encrypted("Encrypted"),
		RecipientsToggle("RecipientsToggle"),
		FromAddress("FromAddress"),
		EmailTemplateLanguage_EmailTemplate("ForgotPassword.EmailTemplateLanguage_EmailTemplate"),
		EmailTemplateSMTP_EmailTemplate("ForgotPassword.EmailTemplateSMTP_EmailTemplate"),
		EmailTemplate_Token("Email_Connector.EmailTemplate_Token"),
		EmailTemplate_MxObjectType("Email_Connector.EmailTemplate_MxObjectType");

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

	public EmailTemplate(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, entityName));
	}

	protected EmailTemplate(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject emailTemplateMendixObject)
	{
		if (emailTemplateMendixObject == null) {
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		}
		if (!com.mendix.core.Core.isSubClassOf(entityName, emailTemplateMendixObject.getType())) {
			throw new java.lang.IllegalArgumentException(String.format("The given object is not a %s", entityName));
		}	

		this.emailTemplateMendixObject = emailTemplateMendixObject;
		this.context = context;
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 * @param context The context to be used
	 * @param mendixObject The Mendix object for the new instance
	 * @return a new instance of this proxy class
	 */
	public static email_connector.proxies.EmailTemplate initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new email_connector.proxies.EmailTemplate(context, mendixObject);
	}

	public static email_connector.proxies.EmailTemplate load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return email_connector.proxies.EmailTemplate.initialize(context, mendixObject);
	}

	public static java.util.List<email_connector.proxies.EmailTemplate> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		return com.mendix.core.Core.createXPathQuery(String.format("//%1$s%2$s", entityName, xpathConstraint))
			.execute(context)
			.stream()
			.map(obj -> email_connector.proxies.EmailTemplate.initialize(context, obj))
			.collect(java.util.stream.Collectors.toList());
	}

	/**
	 * @return value of TemplateName
	 */
	public final java.lang.String getTemplateName()
	{
		return getTemplateName(getContext());
	}

	/**
	 * @param context
	 * @return value of TemplateName
	 */
	public final java.lang.String getTemplateName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.TemplateName.toString());
	}

	/**
	 * Set value of TemplateName
	 * @param templatename
	 */
	public final void setTemplateName(java.lang.String templatename)
	{
		setTemplateName(getContext(), templatename);
	}

	/**
	 * Set value of TemplateName
	 * @param context
	 * @param templatename
	 */
	public final void setTemplateName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String templatename)
	{
		getMendixObject().setValue(context, MemberNames.TemplateName.toString(), templatename);
	}

	/**
	 * @return value of CreationDate
	 */
	public final java.util.Date getCreationDate()
	{
		return getCreationDate(getContext());
	}

	/**
	 * @param context
	 * @return value of CreationDate
	 */
	public final java.util.Date getCreationDate(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.CreationDate.toString());
	}

	/**
	 * Set value of CreationDate
	 * @param creationdate
	 */
	public final void setCreationDate(java.util.Date creationdate)
	{
		setCreationDate(getContext(), creationdate);
	}

	/**
	 * Set value of CreationDate
	 * @param context
	 * @param creationdate
	 */
	public final void setCreationDate(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date creationdate)
	{
		getMendixObject().setValue(context, MemberNames.CreationDate.toString(), creationdate);
	}

	/**
	 * @return value of Subject
	 */
	public final java.lang.String getSubject()
	{
		return getSubject(getContext());
	}

	/**
	 * @param context
	 * @return value of Subject
	 */
	public final java.lang.String getSubject(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Subject.toString());
	}

	/**
	 * Set value of Subject
	 * @param subject
	 */
	public final void setSubject(java.lang.String subject)
	{
		setSubject(getContext(), subject);
	}

	/**
	 * Set value of Subject
	 * @param context
	 * @param subject
	 */
	public final void setSubject(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String subject)
	{
		getMendixObject().setValue(context, MemberNames.Subject.toString(), subject);
	}

	/**
	 * @return value of SentDate
	 */
	public final java.util.Date getSentDate()
	{
		return getSentDate(getContext());
	}

	/**
	 * @param context
	 * @return value of SentDate
	 */
	public final java.util.Date getSentDate(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.util.Date) getMendixObject().getValue(context, MemberNames.SentDate.toString());
	}

	/**
	 * Set value of SentDate
	 * @param sentdate
	 */
	public final void setSentDate(java.util.Date sentdate)
	{
		setSentDate(getContext(), sentdate);
	}

	/**
	 * Set value of SentDate
	 * @param context
	 * @param sentdate
	 */
	public final void setSentDate(com.mendix.systemwideinterfaces.core.IContext context, java.util.Date sentdate)
	{
		getMendixObject().setValue(context, MemberNames.SentDate.toString(), sentdate);
	}

	/**
	 * @return value of To
	 */
	public final java.lang.String getTo()
	{
		return getTo(getContext());
	}

	/**
	 * @param context
	 * @return value of To
	 */
	public final java.lang.String getTo(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.To.toString());
	}

	/**
	 * Set value of To
	 * @param to
	 */
	public final void setTo(java.lang.String to)
	{
		setTo(getContext(), to);
	}

	/**
	 * Set value of To
	 * @param context
	 * @param to
	 */
	public final void setTo(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String to)
	{
		getMendixObject().setValue(context, MemberNames.To.toString(), to);
	}

	/**
	 * @return value of CC
	 */
	public final java.lang.String getCC()
	{
		return getCC(getContext());
	}

	/**
	 * @param context
	 * @return value of CC
	 */
	public final java.lang.String getCC(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.CC.toString());
	}

	/**
	 * Set value of CC
	 * @param cc
	 */
	public final void setCC(java.lang.String cc)
	{
		setCC(getContext(), cc);
	}

	/**
	 * Set value of CC
	 * @param context
	 * @param cc
	 */
	public final void setCC(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String cc)
	{
		getMendixObject().setValue(context, MemberNames.CC.toString(), cc);
	}

	/**
	 * @return value of BCC
	 */
	public final java.lang.String getBCC()
	{
		return getBCC(getContext());
	}

	/**
	 * @param context
	 * @return value of BCC
	 */
	public final java.lang.String getBCC(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.BCC.toString());
	}

	/**
	 * Set value of BCC
	 * @param bcc
	 */
	public final void setBCC(java.lang.String bcc)
	{
		setBCC(getContext(), bcc);
	}

	/**
	 * Set value of BCC
	 * @param context
	 * @param bcc
	 */
	public final void setBCC(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String bcc)
	{
		getMendixObject().setValue(context, MemberNames.BCC.toString(), bcc);
	}

	/**
	 * @return value of Content
	 */
	public final java.lang.String getContent()
	{
		return getContent(getContext());
	}

	/**
	 * @param context
	 * @return value of Content
	 */
	public final java.lang.String getContent(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Content.toString());
	}

	/**
	 * Set value of Content
	 * @param content
	 */
	public final void setContent(java.lang.String content)
	{
		setContent(getContext(), content);
	}

	/**
	 * Set value of Content
	 * @param context
	 * @param content
	 */
	public final void setContent(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String content)
	{
		getMendixObject().setValue(context, MemberNames.Content.toString(), content);
	}

	/**
	 * @return value of UseOnlyPlainText
	 */
	public final java.lang.Boolean getUseOnlyPlainText()
	{
		return getUseOnlyPlainText(getContext());
	}

	/**
	 * @param context
	 * @return value of UseOnlyPlainText
	 */
	public final java.lang.Boolean getUseOnlyPlainText(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.UseOnlyPlainText.toString());
	}

	/**
	 * Set value of UseOnlyPlainText
	 * @param useonlyplaintext
	 */
	public final void setUseOnlyPlainText(java.lang.Boolean useonlyplaintext)
	{
		setUseOnlyPlainText(getContext(), useonlyplaintext);
	}

	/**
	 * Set value of UseOnlyPlainText
	 * @param context
	 * @param useonlyplaintext
	 */
	public final void setUseOnlyPlainText(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean useonlyplaintext)
	{
		getMendixObject().setValue(context, MemberNames.UseOnlyPlainText.toString(), useonlyplaintext);
	}

	/**
	 * @return value of hasAttachment
	 */
	public final java.lang.Boolean gethasAttachment()
	{
		return gethasAttachment(getContext());
	}

	/**
	 * @param context
	 * @return value of hasAttachment
	 */
	public final java.lang.Boolean gethasAttachment(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.hasAttachment.toString());
	}

	/**
	 * Set value of hasAttachment
	 * @param hasattachment
	 */
	public final void sethasAttachment(java.lang.Boolean hasattachment)
	{
		sethasAttachment(getContext(), hasattachment);
	}

	/**
	 * Set value of hasAttachment
	 * @param context
	 * @param hasattachment
	 */
	public final void sethasAttachment(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean hasattachment)
	{
		getMendixObject().setValue(context, MemberNames.hasAttachment.toString(), hasattachment);
	}

	/**
	 * @return value of ReplyTo
	 */
	public final java.lang.String getReplyTo()
	{
		return getReplyTo(getContext());
	}

	/**
	 * @param context
	 * @return value of ReplyTo
	 */
	public final java.lang.String getReplyTo(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.ReplyTo.toString());
	}

	/**
	 * Set value of ReplyTo
	 * @param replyto
	 */
	public final void setReplyTo(java.lang.String replyto)
	{
		setReplyTo(getContext(), replyto);
	}

	/**
	 * Set value of ReplyTo
	 * @param context
	 * @param replyto
	 */
	public final void setReplyTo(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String replyto)
	{
		getMendixObject().setValue(context, MemberNames.ReplyTo.toString(), replyto);
	}

	/**
	 * @return value of PlainBody
	 */
	public final java.lang.String getPlainBody()
	{
		return getPlainBody(getContext());
	}

	/**
	 * @param context
	 * @return value of PlainBody
	 */
	public final java.lang.String getPlainBody(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.PlainBody.toString());
	}

	/**
	 * Set value of PlainBody
	 * @param plainbody
	 */
	public final void setPlainBody(java.lang.String plainbody)
	{
		setPlainBody(getContext(), plainbody);
	}

	/**
	 * Set value of PlainBody
	 * @param context
	 * @param plainbody
	 */
	public final void setPlainBody(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String plainbody)
	{
		getMendixObject().setValue(context, MemberNames.PlainBody.toString(), plainbody);
	}

	/**
	 * @return value of FromDisplayName
	 */
	public final java.lang.String getFromDisplayName()
	{
		return getFromDisplayName(getContext());
	}

	/**
	 * @param context
	 * @return value of FromDisplayName
	 */
	public final java.lang.String getFromDisplayName(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.FromDisplayName.toString());
	}

	/**
	 * Set value of FromDisplayName
	 * @param fromdisplayname
	 */
	public final void setFromDisplayName(java.lang.String fromdisplayname)
	{
		setFromDisplayName(getContext(), fromdisplayname);
	}

	/**
	 * Set value of FromDisplayName
	 * @param context
	 * @param fromdisplayname
	 */
	public final void setFromDisplayName(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String fromdisplayname)
	{
		getMendixObject().setValue(context, MemberNames.FromDisplayName.toString(), fromdisplayname);
	}

	/**
	 * @return value of Signed
	 */
	public final java.lang.Boolean getSigned()
	{
		return getSigned(getContext());
	}

	/**
	 * @param context
	 * @return value of Signed
	 */
	public final java.lang.Boolean getSigned(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.Signed.toString());
	}

	/**
	 * Set value of Signed
	 * @param signed
	 */
	public final void setSigned(java.lang.Boolean signed)
	{
		setSigned(getContext(), signed);
	}

	/**
	 * Set value of Signed
	 * @param context
	 * @param signed
	 */
	public final void setSigned(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean signed)
	{
		getMendixObject().setValue(context, MemberNames.Signed.toString(), signed);
	}

	/**
	 * @return value of Encrypted
	 */
	public final java.lang.Boolean getEncrypted()
	{
		return getEncrypted(getContext());
	}

	/**
	 * @param context
	 * @return value of Encrypted
	 */
	public final java.lang.Boolean getEncrypted(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.Encrypted.toString());
	}

	/**
	 * Set value of Encrypted
	 * @param encrypted
	 */
	public final void setEncrypted(java.lang.Boolean encrypted)
	{
		setEncrypted(getContext(), encrypted);
	}

	/**
	 * Set value of Encrypted
	 * @param context
	 * @param encrypted
	 */
	public final void setEncrypted(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean encrypted)
	{
		getMendixObject().setValue(context, MemberNames.Encrypted.toString(), encrypted);
	}

	/**
	 * @return value of RecipientsToggle
	 */
	public final java.lang.Boolean getRecipientsToggle()
	{
		return getRecipientsToggle(getContext());
	}

	/**
	 * @param context
	 * @return value of RecipientsToggle
	 */
	public final java.lang.Boolean getRecipientsToggle(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames.RecipientsToggle.toString());
	}

	/**
	 * Set value of RecipientsToggle
	 * @param recipientstoggle
	 */
	public final void setRecipientsToggle(java.lang.Boolean recipientstoggle)
	{
		setRecipientsToggle(getContext(), recipientstoggle);
	}

	/**
	 * Set value of RecipientsToggle
	 * @param context
	 * @param recipientstoggle
	 */
	public final void setRecipientsToggle(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean recipientstoggle)
	{
		getMendixObject().setValue(context, MemberNames.RecipientsToggle.toString(), recipientstoggle);
	}

	/**
	 * @return value of FromAddress
	 */
	public final java.lang.String getFromAddress()
	{
		return getFromAddress(getContext());
	}

	/**
	 * @param context
	 * @return value of FromAddress
	 */
	public final java.lang.String getFromAddress(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.FromAddress.toString());
	}

	/**
	 * Set value of FromAddress
	 * @param fromaddress
	 */
	public final void setFromAddress(java.lang.String fromaddress)
	{
		setFromAddress(getContext(), fromaddress);
	}

	/**
	 * Set value of FromAddress
	 * @param context
	 * @param fromaddress
	 */
	public final void setFromAddress(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String fromaddress)
	{
		getMendixObject().setValue(context, MemberNames.FromAddress.toString(), fromaddress);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailTemplateLanguage_EmailTemplate
	 */
	public final forgotpassword.proxies.EmailTemplateLanguage getEmailTemplateLanguage_EmailTemplate() throws com.mendix.core.CoreException
	{
		return getEmailTemplateLanguage_EmailTemplate(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailTemplateLanguage_EmailTemplate
	 * @throws com.mendix.core.CoreException
	 */
	public final forgotpassword.proxies.EmailTemplateLanguage getEmailTemplateLanguage_EmailTemplate(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		forgotpassword.proxies.EmailTemplateLanguage result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.EmailTemplateLanguage_EmailTemplate.toString());
		if (identifier != null) {
			result = forgotpassword.proxies.EmailTemplateLanguage.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of EmailTemplateLanguage_EmailTemplate
	 * @param emailtemplatelanguage_emailtemplate
	 */
	public final void setEmailTemplateLanguage_EmailTemplate(forgotpassword.proxies.EmailTemplateLanguage emailtemplatelanguage_emailtemplate)
	{
		setEmailTemplateLanguage_EmailTemplate(getContext(), emailtemplatelanguage_emailtemplate);
	}

	/**
	 * Set value of EmailTemplateLanguage_EmailTemplate
	 * @param context
	 * @param emailtemplatelanguage_emailtemplate
	 */
	public final void setEmailTemplateLanguage_EmailTemplate(com.mendix.systemwideinterfaces.core.IContext context, forgotpassword.proxies.EmailTemplateLanguage emailtemplatelanguage_emailtemplate)
	{
		if (emailtemplatelanguage_emailtemplate == null) {
			getMendixObject().setValue(context, MemberNames.EmailTemplateLanguage_EmailTemplate.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.EmailTemplateLanguage_EmailTemplate.toString(), emailtemplatelanguage_emailtemplate.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailTemplateSMTP_EmailTemplate
	 */
	public final forgotpassword.proxies.EmailTemplateSMTP getEmailTemplateSMTP_EmailTemplate() throws com.mendix.core.CoreException
	{
		return getEmailTemplateSMTP_EmailTemplate(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailTemplateSMTP_EmailTemplate
	 * @throws com.mendix.core.CoreException
	 */
	public final forgotpassword.proxies.EmailTemplateSMTP getEmailTemplateSMTP_EmailTemplate(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		forgotpassword.proxies.EmailTemplateSMTP result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.EmailTemplateSMTP_EmailTemplate.toString());
		if (identifier != null) {
			result = forgotpassword.proxies.EmailTemplateSMTP.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of EmailTemplateSMTP_EmailTemplate
	 * @param emailtemplatesmtp_emailtemplate
	 */
	public final void setEmailTemplateSMTP_EmailTemplate(forgotpassword.proxies.EmailTemplateSMTP emailtemplatesmtp_emailtemplate)
	{
		setEmailTemplateSMTP_EmailTemplate(getContext(), emailtemplatesmtp_emailtemplate);
	}

	/**
	 * Set value of EmailTemplateSMTP_EmailTemplate
	 * @param context
	 * @param emailtemplatesmtp_emailtemplate
	 */
	public final void setEmailTemplateSMTP_EmailTemplate(com.mendix.systemwideinterfaces.core.IContext context, forgotpassword.proxies.EmailTemplateSMTP emailtemplatesmtp_emailtemplate)
	{
		if (emailtemplatesmtp_emailtemplate == null) {
			getMendixObject().setValue(context, MemberNames.EmailTemplateSMTP_EmailTemplate.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.EmailTemplateSMTP_EmailTemplate.toString(), emailtemplatesmtp_emailtemplate.getMendixObject().getId());
		}
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailTemplate_Token
	 */
	public final java.util.List<mxmodelreflection.proxies.Token> getEmailTemplate_Token() throws com.mendix.core.CoreException
	{
		return getEmailTemplate_Token(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailTemplate_Token
	 * @throws com.mendix.core.CoreException
	 */
	@SuppressWarnings("unchecked")
	public final java.util.List<mxmodelreflection.proxies.Token> getEmailTemplate_Token(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		java.util.List<mxmodelreflection.proxies.Token> result = new java.util.ArrayList<>();
		Object valueObject = getMendixObject().getValue(context, MemberNames.EmailTemplate_Token.toString());
		if (valueObject == null) {
			return result;
		}
		for (com.mendix.systemwideinterfaces.core.IMendixObject mendixObject : com.mendix.core.Core.retrieveIdList(context, (java.util.List<com.mendix.systemwideinterfaces.core.IMendixIdentifier>) valueObject)) {
			result.add(mxmodelreflection.proxies.Token.initialize(context, mendixObject));
		}
		return result;
	}

	/**
	 * Set value of EmailTemplate_Token
	 * @param emailtemplate_token
	 */
	public final void setEmailTemplate_Token(java.util.List<mxmodelreflection.proxies.Token> emailtemplate_token)
	{
		setEmailTemplate_Token(getContext(), emailtemplate_token);
	}

	/**
	 * Set value of EmailTemplate_Token
	 * @param context
	 * @param emailtemplate_token
	 */
	public final void setEmailTemplate_Token(com.mendix.systemwideinterfaces.core.IContext context, java.util.List<mxmodelreflection.proxies.Token> emailtemplate_token)
	{
		var identifiers = emailtemplate_token
			.stream()
			.map(proxyObject -> proxyObject.getMendixObject().getId())
			.collect(java.util.stream.Collectors.toList());
		
		getMendixObject().setValue(context, MemberNames.EmailTemplate_Token.toString(), identifiers);
	}

	/**
	 * @throws com.mendix.core.CoreException
	 * @return value of EmailTemplate_MxObjectType
	 */
	public final mxmodelreflection.proxies.MxObjectType getEmailTemplate_MxObjectType() throws com.mendix.core.CoreException
	{
		return getEmailTemplate_MxObjectType(getContext());
	}

	/**
	 * @param context
	 * @return value of EmailTemplate_MxObjectType
	 * @throws com.mendix.core.CoreException
	 */
	public final mxmodelreflection.proxies.MxObjectType getEmailTemplate_MxObjectType(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		mxmodelreflection.proxies.MxObjectType result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.EmailTemplate_MxObjectType.toString());
		if (identifier != null) {
			result = mxmodelreflection.proxies.MxObjectType.load(context, identifier);
		}
		return result;
	}

	/**
	 * Set value of EmailTemplate_MxObjectType
	 * @param emailtemplate_mxobjecttype
	 */
	public final void setEmailTemplate_MxObjectType(mxmodelreflection.proxies.MxObjectType emailtemplate_mxobjecttype)
	{
		setEmailTemplate_MxObjectType(getContext(), emailtemplate_mxobjecttype);
	}

	/**
	 * Set value of EmailTemplate_MxObjectType
	 * @param context
	 * @param emailtemplate_mxobjecttype
	 */
	public final void setEmailTemplate_MxObjectType(com.mendix.systemwideinterfaces.core.IContext context, mxmodelreflection.proxies.MxObjectType emailtemplate_mxobjecttype)
	{
		if (emailtemplate_mxobjecttype == null) {
			getMendixObject().setValue(context, MemberNames.EmailTemplate_MxObjectType.toString(), null);
		} else {
			getMendixObject().setValue(context, MemberNames.EmailTemplate_MxObjectType.toString(), emailtemplate_mxobjecttype.getMendixObject().getId());
		}
	}

	@Override
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return emailTemplateMendixObject;
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
			final email_connector.proxies.EmailTemplate that = (email_connector.proxies.EmailTemplate) obj;
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
