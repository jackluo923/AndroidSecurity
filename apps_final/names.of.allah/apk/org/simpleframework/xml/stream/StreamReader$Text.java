package org.simpleframework.xml.stream;

import javax.xml.stream.events.Characters;
import javax.xml.stream.events.XMLEvent;

class StreamReader$Text
  extends EventToken
{
  private final Characters text;
  
  public StreamReader$Text(XMLEvent paramXMLEvent)
  {
    text = paramXMLEvent.asCharacters();
  }
  
  public Object getSource()
  {
    return text;
  }
  
  public String getValue()
  {
    return text.getData();
  }
  
  public boolean isText()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.StreamReader.Text
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */