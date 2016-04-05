package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class y
  implements aq
{
  private static y afr;
  private static final Object tn = new Object();
  private cf aeG;
  private String afs;
  private String aft;
  private ar afu;
  
  private y(Context paramContext)
  {
    this(as.M(paramContext), new cv());
  }
  
  y(ar paramar, cf paramcf)
  {
    afu = paramar;
    aeG = paramcf;
  }
  
  public static aq K(Context paramContext)
  {
    synchronized (tn)
    {
      if (afr == null) {
        afr = new y(paramContext);
      }
      paramContext = afr;
      return paramContext;
    }
  }
  
  public boolean bR(String paramString)
  {
    if (!aeG.dj())
    {
      bh.D("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
      return false;
    }
    String str = paramString;
    if (afs != null)
    {
      str = paramString;
      if (aft == null) {}
    }
    try
    {
      str = afs + "?" + aft + "=" + URLEncoder.encode(paramString, "UTF-8");
      bh.C("Sending wrapped url hit: " + str);
      afu.bU(str);
      return true;
    }
    catch (UnsupportedEncodingException paramString)
    {
      bh.c("Error wrapping URL for testing.", paramString);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */