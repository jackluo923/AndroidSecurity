package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;

class HttpTransport$ChunkedInputStream
  extends AbstractHttpInputStream
{
  private static final int NO_CHUNK_YET = -1;
  private int bytesRemainingInChunk = -1;
  private boolean hasMoreChunks = true;
  private final HttpTransport transport;
  
  HttpTransport$ChunkedInputStream(InputStream paramInputStream, CacheRequest paramCacheRequest, HttpTransport paramHttpTransport)
    throws IOException
  {
    super(paramInputStream, HttpTransport.access$300(paramHttpTransport), paramCacheRequest);
    transport = paramHttpTransport;
  }
  
  private void readChunkSize()
    throws IOException
  {
    if (bytesRemainingInChunk != -1) {
      Util.readAsciiLine(in);
    }
    String str = Util.readAsciiLine(in);
    int i = str.indexOf(";");
    Object localObject = str;
    if (i != -1) {
      localObject = str.substring(0, i);
    }
    try
    {
      bytesRemainingInChunk = Integer.parseInt(((String)localObject).trim(), 16);
      if (bytesRemainingInChunk == 0)
      {
        hasMoreChunks = false;
        localObject = httpEngine.responseHeaders.getHeaders();
        RawHeaders.readHeaders(HttpTransport.access$400(transport), (RawHeaders)localObject);
        httpEngine.receiveHeaders((RawHeaders)localObject);
        endOfInput(false);
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException("Expected a hex chunk size but was " + (String)localObject);
    }
  }
  
  public int available()
    throws IOException
  {
    checkNotClosed();
    if ((!hasMoreChunks) || (bytesRemainingInChunk == -1)) {
      return 0;
    }
    return Math.min(in.available(), bytesRemainingInChunk);
  }
  
  public void close()
    throws IOException
  {
    if (closed) {
      return;
    }
    if ((hasMoreChunks) && (!HttpTransport.access$200(httpEngine, this))) {
      unexpectedEndOfInput();
    }
    closed = true;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    checkNotClosed();
    if (!hasMoreChunks) {
      return -1;
    }
    if ((bytesRemainingInChunk == 0) || (bytesRemainingInChunk == -1))
    {
      readChunkSize();
      if (!hasMoreChunks) {
        return -1;
      }
    }
    paramInt2 = in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, bytesRemainingInChunk));
    if (paramInt2 == -1)
    {
      unexpectedEndOfInput();
      throw new IOException("unexpected end of stream");
    }
    bytesRemainingInChunk -= paramInt2;
    cacheWrite(paramArrayOfByte, paramInt1, paramInt2);
    return paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpTransport.ChunkedInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */