package org.simpleframework.xml.stream;

class IdentityStyle
  implements Style
{
  public String getAttribute(String paramString)
  {
    return paramString;
  }
  
  public String getElement(String paramString)
  {
    return paramString;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.IdentityStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */