package org.simpleframework.xml.core;

import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory$ElementListExtractor
  implements Extractor<ElementList>
{
  private final Contact contact;
  private final Format format;
  private final ElementListUnion union;
  
  public ExtractorFactory$ElementListExtractor(Contact paramContact, ElementListUnion paramElementListUnion, Format paramFormat)
  {
    contact = paramContact;
    format = paramFormat;
    union = paramElementListUnion;
  }
  
  public ElementList[] getAnnotations()
  {
    return union.value();
  }
  
  public Label getLabel(ElementList paramElementList)
  {
    return new ElementListLabel(contact, paramElementList, format);
  }
  
  public Class getType(ElementList paramElementList)
  {
    return paramElementList.type();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory.ElementListExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */