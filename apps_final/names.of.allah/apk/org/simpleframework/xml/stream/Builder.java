package org.simpleframework.xml.stream;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class Builder
  implements Style
{
  private final Cache<String> attributes = new ConcurrentCache();
  private final Cache<String> elements = new ConcurrentCache();
  private final Style style;
  
  public Builder(Style paramStyle)
  {
    style = paramStyle;
  }
  
  public String getAttribute(String paramString)
  {
    Object localObject = (String)attributes.fetch(paramString);
    if (localObject != null) {}
    String str;
    do
    {
      return (String)localObject;
      str = style.getAttribute(paramString);
      localObject = str;
    } while (str == null);
    attributes.cache(paramString, str);
    return str;
  }
  
  public String getElement(String paramString)
  {
    Object localObject = (String)elements.fetch(paramString);
    if (localObject != null) {}
    String str;
    do
    {
      return (String)localObject;
      str = style.getElement(paramString);
      localObject = str;
    } while (str == null);
    elements.cache(paramString, str);
    return str;
  }
  
  public void setAttribute(String paramString1, String paramString2)
  {
    attributes.cache(paramString1, paramString2);
  }
  
  public void setElement(String paramString1, String paramString2)
  {
    elements.cache(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */