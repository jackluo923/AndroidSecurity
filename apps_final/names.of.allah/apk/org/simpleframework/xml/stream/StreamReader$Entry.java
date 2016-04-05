package org.simpleframework.xml.stream;

import javax.xml.namespace.QName;
import javax.xml.stream.events.Attribute;

class StreamReader$Entry
  extends EventAttribute
{
  private final Attribute entry;
  
  public StreamReader$Entry(Attribute paramAttribute)
  {
    entry = paramAttribute;
  }
  
  public String getName()
  {
    return entry.getName().getLocalPart();
  }
  
  public String getPrefix()
  {
    return entry.getName().getPrefix();
  }
  
  public String getReference()
  {
    return entry.getName().getNamespaceURI();
  }
  
  public Object getSource()
  {
    return entry;
  }
  
  public String getValue()
  {
    return entry.getValue();
  }
  
  public boolean isReserved()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.StreamReader.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */