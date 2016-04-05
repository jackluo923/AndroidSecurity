package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public abstract interface SpdyReader$Handler
{
  public abstract void data(int paramInt1, int paramInt2, InputStream paramInputStream, int paramInt3)
    throws IOException;
  
  public abstract void goAway(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void headers(int paramInt1, int paramInt2, List<String> paramList)
    throws IOException;
  
  public abstract void noop();
  
  public abstract void ping(int paramInt1, int paramInt2);
  
  public abstract void rstStream(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void settings(int paramInt, Settings paramSettings);
  
  public abstract void synReply(int paramInt1, int paramInt2, List<String> paramList)
    throws IOException;
  
  public abstract void synStream(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, List<String> paramList);
  
  public abstract void windowUpdate(int paramInt1, int paramInt2, int paramInt3);
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyReader.Handler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */