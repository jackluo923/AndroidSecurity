package com.adsdk.sdk.customevents;

public class CustomEvent
{
  private String className;
  private String optionalParameter;
  private String pixelUrl;
  
  public CustomEvent(String paramString1, String paramString2, String paramString3)
  {
    className = paramString1;
    optionalParameter = paramString2;
    pixelUrl = paramString3;
  }
  
  public String getClassName()
  {
    return className;
  }
  
  public String getOptionalParameter()
  {
    return optionalParameter;
  }
  
  public String getPixelUrl()
  {
    return pixelUrl;
  }
  
  public void setClassName(String paramString)
  {
    className = paramString;
  }
  
  public void setOptionalParameter(String paramString)
  {
    optionalParameter = paramString;
  }
  
  public void setPixelUrl(String paramString)
  {
    pixelUrl = paramString;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */