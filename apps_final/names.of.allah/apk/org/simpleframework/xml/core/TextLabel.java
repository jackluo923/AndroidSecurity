package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.stream.Format;

class TextLabel
  extends TemplateLabel
{
  private Contact contact;
  private boolean data;
  private Introspector detail;
  private String empty;
  private Text label;
  private Expression path;
  private boolean required;
  private Class type;
  
  public TextLabel(Contact paramContact, Text paramText, Format paramFormat)
  {
    detail = new Introspector(paramContact, this, paramFormat);
    required = paramText.required();
    type = paramContact.getType();
    empty = paramText.empty();
    data = paramText.data();
    contact = paramContact;
    label = paramText;
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Converter getConverter(Context paramContext)
  {
    String str = getEmpty(paramContext);
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localContact)) {
      throw new TextException("Cannot use %s to represent %s", new Object[] { localContact, label });
    }
    return new Primitive(paramContext, localContact, str);
  }
  
  public Decorator getDecorator()
  {
    return null;
  }
  
  public String getEmpty(Context paramContext)
  {
    if (detail.isEmpty(empty)) {
      return null;
    }
    return empty;
  }
  
  public Expression getExpression()
  {
    if (path == null) {
      path = detail.getExpression();
    }
    return path;
  }
  
  public String getName()
  {
    return "";
  }
  
  public String getOverride()
  {
    return contact.toString();
  }
  
  public String getPath()
  {
    return getExpression().getPath();
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isData()
  {
    return data;
  }
  
  public boolean isInline()
  {
    return true;
  }
  
  public boolean isRequired()
  {
    return required;
  }
  
  public boolean isText()
  {
    return true;
  }
  
  public String toString()
  {
    return detail.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TextLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */