package org.simpleframework.xml.stream;

import java.util.Iterator;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.XMLEvent;

class StreamReader
  implements EventReader
{
  private EventNode peek;
  private XMLEventReader reader;
  
  public StreamReader(XMLEventReader paramXMLEventReader)
  {
    reader = paramXMLEventReader;
  }
  
  private StreamReader.Entry attribute(Attribute paramAttribute)
  {
    return new StreamReader.Entry(paramAttribute);
  }
  
  private StreamReader.Start build(StreamReader.Start paramStart)
  {
    Iterator localIterator = paramStart.getAttributes();
    while (localIterator.hasNext())
    {
      StreamReader.Entry localEntry = attribute((Attribute)localIterator.next());
      if (!localEntry.isReserved()) {
        paramStart.add(localEntry);
      }
    }
    return paramStart;
  }
  
  private StreamReader.End end()
  {
    return new StreamReader.End(null);
  }
  
  private EventNode read()
  {
    XMLEvent localXMLEvent;
    do
    {
      localXMLEvent = reader.nextEvent();
      if (localXMLEvent.isEndDocument()) {
        break;
      }
      if (localXMLEvent.isStartElement()) {
        return start(localXMLEvent);
      }
      if (localXMLEvent.isCharacters()) {
        return text(localXMLEvent);
      }
    } while (!localXMLEvent.isEndElement());
    return end();
    return null;
  }
  
  private StreamReader.Start start(XMLEvent paramXMLEvent)
  {
    StreamReader.Start localStart = new StreamReader.Start(paramXMLEvent);
    paramXMLEvent = localStart;
    if (localStart.isEmpty()) {
      paramXMLEvent = build(localStart);
    }
    return paramXMLEvent;
  }
  
  private StreamReader.Text text(XMLEvent paramXMLEvent)
  {
    return new StreamReader.Text(paramXMLEvent);
  }
  
  public EventNode next()
  {
    EventNode localEventNode = peek;
    if (localEventNode == null) {
      return read();
    }
    peek = null;
    return localEventNode;
  }
  
  public EventNode peek()
  {
    if (peek == null) {
      peek = next();
    }
    return peek;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.StreamReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */