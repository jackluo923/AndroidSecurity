package org.simpleframework.xml.core;

import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.stream.Format;

class ExtractorFactory$ElementMapExtractor
  implements Extractor<ElementMap>
{
  private final Contact contact;
  private final Format format;
  private final ElementMapUnion union;
  
  public ExtractorFactory$ElementMapExtractor(Contact paramContact, ElementMapUnion paramElementMapUnion, Format paramFormat)
  {
    contact = paramContact;
    format = paramFormat;
    union = paramElementMapUnion;
  }
  
  public ElementMap[] getAnnotations()
  {
    return union.value();
  }
  
  public Label getLabel(ElementMap paramElementMap)
  {
    return new ElementMapLabel(contact, paramElementMap, format);
  }
  
  public Class getType(ElementMap paramElementMap)
  {
    return paramElementMap.valueType();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory.ElementMapExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */