package org.java_websocket.handshake;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Set;

public class HandshakedataImpl1
  implements HandshakeBuilder
{
  private byte[] content;
  private LinkedHashMap<String, String> map = new LinkedHashMap();
  
  public byte[] getContent()
  {
    return content;
  }
  
  public String getFieldValue(String paramString)
  {
    String str = (String)map.get(paramString.toLowerCase(Locale.ENGLISH));
    paramString = str;
    if (str == null) {
      paramString = "";
    }
    return paramString;
  }
  
  public boolean hasFieldValue(String paramString)
  {
    return map.containsKey(paramString.toLowerCase(Locale.ENGLISH));
  }
  
  public Iterator<String> iterateHttpFields()
  {
    return Collections.unmodifiableSet(map.keySet()).iterator();
  }
  
  public void put(String paramString1, String paramString2)
  {
    map.put(paramString1.toLowerCase(Locale.ENGLISH), paramString2);
  }
  
  public void setContent(byte[] paramArrayOfByte)
  {
    content = paramArrayOfByte;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.HandshakedataImpl1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */