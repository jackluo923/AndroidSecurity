package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.net.URISyntaxException;

public class fd
  extends WebViewClient
{
  private final ey lL;
  private final String sQ = G(paramString);
  private boolean sR = false;
  private final dp sS;
  
  public fd(dp paramdp, ey paramey, String paramString)
  {
    lL = paramey;
    sS = paramdp;
  }
  
  private String G(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return paramString;
      try
      {
        if (paramString.endsWith("/"))
        {
          String str = paramString.substring(0, paramString.length() - 1);
          return str;
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        ev.A(localIndexOutOfBoundsException.getMessage());
      }
    }
    return paramString;
  }
  
  protected boolean F(String paramString)
  {
    paramString = G(paramString);
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      try
      {
        Object localObject1 = new URI(paramString);
        if ("passback".equals(((URI)localObject1).getScheme()))
        {
          ev.z("Passback received");
          sS.bk();
          return true;
        }
        if (!TextUtils.isEmpty(sQ))
        {
          Object localObject2 = new URI(sQ);
          paramString = ((URI)localObject2).getHost();
          String str = ((URI)localObject1).getHost();
          localObject2 = ((URI)localObject2).getPath();
          localObject1 = ((URI)localObject1).getPath();
          if ((hl.equal(paramString, str)) && (hl.equal(localObject2, localObject1)))
          {
            ev.z("Passback received");
            sS.bk();
            return true;
          }
        }
      }
      catch (URISyntaxException paramString)
      {
        ev.A(paramString.getMessage());
      }
    }
    return false;
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    ev.z("JavascriptAdWebViewClient::onLoadResource: " + paramString);
    if (!F(paramString)) {
      lL.bW().onLoadResource(lL, paramString);
    }
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    ev.z("JavascriptAdWebViewClient::onPageFinished: " + paramString);
    if (!sR)
    {
      sS.bj();
      sR = true;
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    ev.z("JavascriptAdWebViewClient::shouldOverrideUrlLoading: " + paramString);
    if (F(paramString))
    {
      ev.z("shouldOverrideUrlLoading: received passback url");
      return true;
    }
    return lL.bW().shouldOverrideUrlLoading(lL, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */