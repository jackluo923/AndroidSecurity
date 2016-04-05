package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.AbstractOutputStream;
import com.squareup.okhttp.internal.FaultRecoveringOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class HttpURLConnectionImpl$1
  extends FaultRecoveringOutputStream
{
  HttpURLConnectionImpl$1(HttpURLConnectionImpl paramHttpURLConnectionImpl, int paramInt, OutputStream paramOutputStream)
  {
    super(paramInt, paramOutputStream);
  }
  
  protected OutputStream replacementStream(IOException paramIOException)
    throws IOException
  {
    if (((this$0.httpEngine.getRequestBody() instanceof AbstractOutputStream)) && (((AbstractOutputStream)this$0.httpEngine.getRequestBody()).isClosed())) {
      return null;
    }
    if (HttpURLConnectionImpl.access$000(this$0, paramIOException)) {
      return this$0.httpEngine.getRequestBody();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpURLConnectionImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */