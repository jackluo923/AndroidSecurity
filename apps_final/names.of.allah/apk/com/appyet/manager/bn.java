package com.appyet.manager;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.protocol.HttpContext;

final class bn
  extends ae
{
  bn(bl parambl) {}
  
  public final boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    boolean bool2 = super.isRedirectRequested(paramHttpResponse, paramHttpContext);
    boolean bool1 = bool2;
    if (!bool2)
    {
      int i = paramHttpResponse.getStatusLine().getStatusCode();
      if (i != 301)
      {
        bool1 = bool2;
        if (i != 302) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */