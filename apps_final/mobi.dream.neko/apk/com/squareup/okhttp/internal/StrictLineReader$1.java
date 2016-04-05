package com.squareup.okhttp.internal;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class StrictLineReader$1
  extends ByteArrayOutputStream
{
  StrictLineReader$1(StrictLineReader paramStrictLineReader, int paramInt)
  {
    super(paramInt);
  }
  
  public String toString()
  {
    if ((count > 0) && (buf[(count - 1)] == 13)) {}
    for (int i = count - 1;; i = count) {
      try
      {
        String str = new String(buf, 0, i, StrictLineReader.access$000(this$0).name());
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new AssertionError(localUnsupportedEncodingException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.StrictLineReader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */