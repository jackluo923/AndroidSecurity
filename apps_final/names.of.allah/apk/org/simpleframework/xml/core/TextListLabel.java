package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.strategy.Type;

class TextListLabel
  extends TemplateLabel
{
  private final String empty;
  private final Label label;
  private final Text text;
  
  public TextListLabel(Label paramLabel, Text paramText)
  {
    empty = paramText.empty();
    label = paramLabel;
    text = paramText;
  }
  
  public Annotation getAnnotation()
  {
    return label.getAnnotation();
  }
  
  public Contact getContact()
  {
    return label.getContact();
  }
  
  public Converter getConverter(Context paramContext)
  {
    Contact localContact = getContact();
    if (!label.isCollection()) {
      throw new TextException("Cannot use %s to represent %s", new Object[] { localContact, label });
    }
    return new TextList(paramContext, localContact, label);
  }
  
  public Decorator getDecorator()
  {
    return null;
  }
  
  public Type getDependent()
  {
    return label.getDependent();
  }
  
  public String getEmpty(Context paramContext)
  {
    return empty;
  }
  
  public String getEntry()
  {
    return label.getEntry();
  }
  
  public Expression getExpression()
  {
    return label.getExpression();
  }
  
  public Object getKey()
  {
    return label.getKey();
  }
  
  public String getName()
  {
    return label.getName();
  }
  
  public String[] getNames()
  {
    return label.getNames();
  }
  
  public String getOverride()
  {
    return label.getOverride();
  }
  
  public String getPath()
  {
    return label.getPath();
  }
  
  public String[] getPaths()
  {
    return label.getPaths();
  }
  
  public Class getType()
  {
    return label.getType();
  }
  
  public boolean isCollection()
  {
    return true;
  }
  
  public boolean isData()
  {
    return label.isData();
  }
  
  public boolean isInline()
  {
    return label.isInline();
  }
  
  public boolean isRequired()
  {
    return label.isRequired();
  }
  
  public boolean isTextList()
  {
    return true;
  }
  
  public String toString()
  {
    return String.format("%s %s", new Object[] { text, label });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TextListLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */