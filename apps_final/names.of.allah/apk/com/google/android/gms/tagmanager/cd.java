package com.google.android.gms.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class cd
{
  private static cd agu;
  private volatile String aeq;
  private volatile cd.a agv;
  private volatile String agw;
  private volatile String agx;
  
  cd()
  {
    clear();
  }
  
  private String ca(String paramString)
  {
    return paramString.split("&")[0].split("=")[1];
  }
  
  private String i(Uri paramUri)
  {
    return paramUri.getQuery().replace("&gtm_debug=x", "");
  }
  
  static cd lY()
  {
    try
    {
      if (agu == null) {
        agu = new cd();
      }
      cd localcd = agu;
      return localcd;
    }
    finally {}
  }
  
  void clear()
  {
    agv = cd.a.agy;
    agw = null;
    aeq = null;
    agx = null;
  }
  
  String getContainerId()
  {
    return aeq;
  }
  
  boolean h(Uri paramUri)
  {
    boolean bool = true;
    String str;
    try
    {
      str = URLDecoder.decode(paramUri.toString(), "UTF-8");
      if (!str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
        break label147;
      }
      bh.C("Container preview url: " + str);
      if (!str.matches(".*?&gtm_debug=x$")) {
        break label132;
      }
      agv = cd.a.agA;
    }
    catch (UnsupportedEncodingException paramUri)
    {
      for (;;)
      {
        bool = false;
        continue;
        agv = cd.a.agz;
      }
    }
    finally {}
    agx = i(paramUri);
    if ((agv == cd.a.agz) || (agv == cd.a.agA)) {
      agw = ("/r?" + agx);
    }
    aeq = ca(agx);
    for (;;)
    {
      return bool;
      label132:
      label147:
      if (str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"))
      {
        if (ca(paramUri.getQuery()).equals(aeq))
        {
          bh.C("Exit preview mode for container: " + aeq);
          agv = cd.a.agy;
          agw = null;
        }
      }
      else
      {
        bh.D("Invalid preview uri: " + str);
        bool = false;
        continue;
      }
      bool = false;
    }
  }
  
  cd.a lZ()
  {
    return agv;
  }
  
  String ma()
  {
    return agw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */