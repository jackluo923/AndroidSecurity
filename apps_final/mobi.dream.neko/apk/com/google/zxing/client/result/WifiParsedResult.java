package com.google.zxing.client.result;

public final class WifiParsedResult
  extends ParsedResult
{
  private final boolean hidden;
  private final String networkEncryption;
  private final String password;
  private final String ssid;
  
  public WifiParsedResult(String paramString1, String paramString2, String paramString3)
  {
    this(paramString1, paramString2, paramString3, false);
  }
  
  public WifiParsedResult(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    super(ParsedResultType.WIFI);
    ssid = paramString2;
    networkEncryption = paramString1;
    password = paramString3;
    hidden = paramBoolean;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    maybeAppend(ssid, localStringBuilder);
    maybeAppend(networkEncryption, localStringBuilder);
    maybeAppend(password, localStringBuilder);
    maybeAppend(Boolean.toString(hidden), localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public String getNetworkEncryption()
  {
    return networkEncryption;
  }
  
  public String getPassword()
  {
    return password;
  }
  
  public String getSsid()
  {
    return ssid;
  }
  
  public boolean isHidden()
  {
    return hidden;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.WifiParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */