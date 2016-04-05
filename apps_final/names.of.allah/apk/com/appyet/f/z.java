package com.appyet.f;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public final class z
{
  public static String a(String paramString)
  {
    try
    {
      paramString = URLDecoder.decode(URLDecoder.decode(p.e.a(paramString), "UTF-8"), "UTF-8");
      return paramString.replace("\n", "");
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        paramString = "";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */