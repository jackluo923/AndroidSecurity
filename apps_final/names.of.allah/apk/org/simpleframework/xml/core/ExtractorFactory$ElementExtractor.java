package org.simpleframework.xml.core;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory$ElementExtractor
  implements Extractor<Element>
{
  private final Contact contact;
  private final Format format;
  private final ElementUnion union;
  
  public ExtractorFactory$ElementExtractor(Contact paramContact, ElementUnion paramElementUnion, Format paramFormat)
  {
    contact = paramContact;
    format = paramFormat;
    union = paramElementUnion;
  }
  
  public Element[] getAnnotations()
  {
    return union.value();
  }
  
  public Label getLabel(Element paramElement)
  {
    return new ElementLabel(contact, paramElement, format);
  }
  
  public Class getType(Element paramElement)
  {
    Class localClass = paramElement.type();
    paramElement = localClass;
    if (localClass == Void.TYPE) {
      paramElement = contact.getType();
    }
    return paramElement;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory.ElementExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */