package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;

class StreamProvider
  implements Provider
{
  private final XMLInputFactory factory = XMLInputFactory.newInstance();
  
  private EventReader provide(XMLEventReader paramXMLEventReader)
  {
    return new StreamReader(paramXMLEventReader);
  }
  
  public EventReader provide(InputStream paramInputStream)
  {
    return provide(factory.createXMLEventReader(paramInputStream));
  }
  
  public EventReader provide(Reader paramReader)
  {
    return provide(factory.createXMLEventReader(paramReader));
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.StreamProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */