package com.appyet.manager;

import java.io.IOException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

final class bm
  implements HttpRequestRetryHandler
{
  bm(bl parambl) {}
  
  public final boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    return paramInt <= 0;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */