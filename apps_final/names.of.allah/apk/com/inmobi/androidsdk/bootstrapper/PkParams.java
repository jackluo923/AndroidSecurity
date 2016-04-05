package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class PkParams
{
  public static String SK_ALGORITHM = "";
  public static String SK_EXPONENT = "";
  public static String SK_MODULUS = "";
  public static String SK_VERSION = "";
  UID a = new UID();
  
  public String getAlgorithm()
  {
    return SK_ALGORITHM;
  }
  
  public String getExponent()
  {
    return SK_EXPONENT;
  }
  
  public String getModulus()
  {
    return SK_MODULUS;
  }
  
  public UID getUID()
  {
    return a;
  }
  
  public String getVersion()
  {
    return SK_VERSION;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    paramMap = (Map)paramMap.get("pk");
    String str = InternalSDKUtil.getStringFromMap(paramMap, "ver");
    SK_VERSION = str;
    if (str.equals(""))
    {
      Log.internal("[InMobi]-4.4.1", "Key ver has illegal value");
      throw new IllegalArgumentException();
    }
    str = InternalSDKUtil.getStringFromMap(paramMap, "alg");
    SK_ALGORITHM = str;
    if (str.equals(""))
    {
      Log.internal("[InMobi]-4.4.1", "Key alg has illegal value");
      throw new IllegalArgumentException();
    }
    if (SK_ALGORITHM.equalsIgnoreCase("rsa"))
    {
      paramMap = (Map)paramMap.get("val");
      SK_EXPONENT = InternalSDKUtil.getStringFromMap(paramMap, "e");
      paramMap = InternalSDKUtil.getStringFromMap(paramMap, "m");
      SK_MODULUS = paramMap;
      if (paramMap.equals(""))
      {
        Log.internal("[InMobi]-4.4.1", "Key m has illegal value");
        throw new IllegalArgumentException();
      }
      if (SK_EXPONENT.equals(""))
      {
        Log.internal("[InMobi]-4.4.1", "Key e has illegal value");
        throw new IllegalArgumentException();
      }
      if (!InternalSDKUtil.isHexString(SK_EXPONENT))
      {
        Log.internal("[InMobi]-4.4.1", "Key e has illegal value");
        throw new IllegalArgumentException();
      }
      if (!InternalSDKUtil.isHexString(SK_MODULUS))
      {
        Log.internal("[InMobi]-4.4.1", "Key m has illegal value");
        throw new IllegalArgumentException();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.bootstrapper.PkParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */