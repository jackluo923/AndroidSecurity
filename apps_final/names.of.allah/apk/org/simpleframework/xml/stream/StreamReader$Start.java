package org.simpleframework.xml.stream;

import java.util.Iterator;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;

class StreamReader$Start
  extends EventElement
{
  private final StartElement element;
  private final Location location;
  
  public StreamReader$Start(XMLEvent paramXMLEvent)
  {
    element = paramXMLEvent.asStartElement();
    location = paramXMLEvent.getLocation();
  }
  
  public Iterator<Attribute> getAttributes()
  {
    return element.getAttributes();
  }
  
  public int getLine()
  {
    return location.getLineNumber();
  }
  
  public String getName()
  {
    return element.getName().getLocalPart();
  }
  
  public String getPrefix()
  {
    return element.getName().getPrefix();
  }
  
  public String getReference()
  {
    return element.getName().getNamespaceURI();
  }
  
  public Object getSource()
  {
    return element;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.StreamReader.Start
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */