package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

final class SpdyReader
  implements Closeable
{
  static final byte[] DICTIONARY;
  private int compressedLimit;
  private final DataInputStream in;
  private final DataInputStream nameValueBlockIn;
  
  static
  {
    try
    {
      DICTIONARY = "\000\000\000\007options\000\000\000\004head\000\000\000\004post\000\000\000\003put\000\000\000\006delete\000\000\000\005trace\000\000\000\006accept\000\000\000\016accept-charset\000\000\000\017accept-encoding\000\000\000\017accept-language\000\000\000\raccept-ranges\000\000\000\003age\000\000\000\005allow\000\000\000\rauthorization\000\000\000\rcache-control\000\000\000\nconnection\000\000\000\fcontent-base\000\000\000\020content-encoding\000\000\000\020content-language\000\000\000\016content-length\000\000\000\020content-location\000\000\000\013content-md5\000\000\000\rcontent-range\000\000\000\fcontent-type\000\000\000\004date\000\000\000\004etag\000\000\000\006expect\000\000\000\007expires\000\000\000\004from\000\000\000\004host\000\000\000\bif-match\000\000\000\021if-modified-since\000\000\000\rif-none-match\000\000\000\bif-range\000\000\000\023if-unmodified-since\000\000\000\rlast-modified\000\000\000\blocation\000\000\000\fmax-forwards\000\000\000\006pragma\000\000\000\022proxy-authenticate\000\000\000\023proxy-authorization\000\000\000\005range\000\000\000\007referer\000\000\000\013retry-after\000\000\000\006server\000\000\000\002te\000\000\000\007trailer\000\000\000\021transfer-encoding\000\000\000\007upgrade\000\000\000\nuser-agent\000\000\000\004vary\000\000\000\003via\000\000\000\007warning\000\000\000\020www-authenticate\000\000\000\006method\000\000\000\003get\000\000\000\006status\000\000\000\006200 OK\000\000\000\007version\000\000\000\bHTTP/1.1\000\000\000\003url\000\000\000\006public\000\000\000\nset-cookie\000\000\000\nkeep-alive\000\000\000\006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(Util.UTF_8.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError();
    }
  }
  
  SpdyReader(InputStream paramInputStream)
  {
    in = new DataInputStream(paramInputStream);
    nameValueBlockIn = newNameValueBlockStream();
  }
  
  private static IOException ioException(String paramString, Object... paramVarArgs)
    throws IOException
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  private DataInputStream newNameValueBlockStream()
  {
    new DataInputStream(new InflaterInputStream(new InputStream()new Inflater
    {
      public void close()
        throws IOException
      {
        in.close();
      }
      
      public int read()
        throws IOException
      {
        return Util.readSingleByte(this);
      }
      
      public int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
        throws IOException
      {
        paramAnonymousInt2 = Math.min(paramAnonymousInt2, compressedLimit);
        paramAnonymousInt1 = in.read(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        SpdyReader.access$020(SpdyReader.this, paramAnonymousInt1);
        return paramAnonymousInt1;
      }
    }, new Inflater()
    {
      public int inflate(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
        throws DataFormatException
      {
        int j = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        int i = j;
        if (j == 0)
        {
          i = j;
          if (needsDictionary())
          {
            setDictionary(SpdyReader.DICTIONARY);
            i = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
          }
        }
        return i;
      }
    }));
  }
  
  private void readGoAway(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 != 8) {
      throw ioException("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramHandler.goAway(paramInt1, in.readInt() & 0x7FFFFFFF, in.readInt());
  }
  
  private void readHeaders(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    paramHandler.headers(paramInt1, in.readInt() & 0x7FFFFFFF, readNameValueBlock(paramInt2 - 4));
  }
  
  private List<String> readNameValueBlock(int paramInt)
    throws IOException
  {
    compressedLimit += paramInt;
    int i;
    try
    {
      i = nameValueBlockIn.readInt();
      if (i < 0)
      {
        Logger.getLogger(getClass().getName()).warning("numberOfPairs < 0: " + i);
        throw ioException("numberOfPairs < 0", new Object[0]);
      }
    }
    catch (DataFormatException localDataFormatException)
    {
      throw new IOException(localDataFormatException.getMessage());
    }
    ArrayList localArrayList = new ArrayList(i * 2);
    paramInt = 0;
    while (paramInt < i)
    {
      String str1 = readString();
      String str2 = readString();
      if (str1.length() == 0) {
        throw ioException("name.length == 0", new Object[0]);
      }
      if (str2.length() == 0) {
        throw ioException("values.length == 0", new Object[0]);
      }
      localArrayList.add(str1);
      localArrayList.add(str2);
      paramInt += 1;
    }
    if (compressedLimit != 0) {
      Logger.getLogger(getClass().getName()).warning("compressedLimit > 0: " + compressedLimit);
    }
    return localArrayList;
  }
  
  private void readPing(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 != 4) {
      throw ioException("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramHandler.ping(paramInt1, in.readInt());
  }
  
  private void readRstStream(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 != 8) {
      throw ioException("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramHandler.rstStream(paramInt1, in.readInt() & 0x7FFFFFFF, in.readInt());
  }
  
  private void readSettings(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = in.readInt();
    if (paramInt2 != i * 8 + 4) {
      throw ioException("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
    }
    Settings localSettings = new Settings();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      int j = in.readInt();
      localSettings.set(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, in.readInt());
      paramInt2 += 1;
    }
    paramHandler.settings(paramInt1, localSettings);
  }
  
  private String readString()
    throws DataFormatException, IOException
  {
    int i = nameValueBlockIn.readInt();
    byte[] arrayOfByte = new byte[i];
    Util.readFully(nameValueBlockIn, arrayOfByte);
    return new String(arrayOfByte, 0, i, "UTF-8");
  }
  
  private void readSynReply(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    paramHandler.synReply(paramInt1, in.readInt() & 0x7FFFFFFF, readNameValueBlock(paramInt2 - 4));
  }
  
  private void readSynStream(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = in.readInt();
    int j = in.readInt();
    int k = in.readShort();
    paramHandler.synStream(paramInt1, i & 0x7FFFFFFF, j & 0x7FFFFFFF, (0xE000 & k) >>> 13, k & 0xFF, readNameValueBlock(paramInt2 - 10));
  }
  
  private void readWindowUpdate(Handler paramHandler, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 != 8) {
      throw ioException("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramHandler.windowUpdate(paramInt1, in.readInt() & 0x7FFFFFFF, in.readInt() & 0x7FFFFFFF);
  }
  
  public void close()
    throws IOException
  {
    Util.closeAll(in, nameValueBlockIn);
  }
  
  public boolean nextFrame(Handler paramHandler)
    throws IOException
  {
    int j;
    int k;
    int m;
    for (;;)
    {
      try
      {
        j = in.readInt();
        k = in.readInt();
        if ((0x80000000 & j) != 0)
        {
          i = 1;
          m = (0xFF000000 & k) >>> 24;
          k &= 0xFFFFFF;
          if (i == 0) {
            break label333;
          }
          i = (0x7FFF0000 & j) >>> 16;
          if (i == 3) {
            break;
          }
          throw new ProtocolException("version != 3: " + i);
        }
      }
      catch (IOException paramHandler)
      {
        return false;
      }
      int i = 0;
    }
    switch (j & 0xFFFF)
    {
    case 10: 
    case 11: 
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    default: 
      throw new IOException("Unexpected frame");
    case 1: 
      readSynStream(paramHandler, m, k);
      return true;
    case 2: 
      readSynReply(paramHandler, m, k);
      return true;
    case 3: 
      readRstStream(paramHandler, m, k);
      return true;
    case 4: 
      readSettings(paramHandler, m, k);
      return true;
    case 5: 
      if (k != 0) {
        throw ioException("TYPE_NOOP length: %d != 0", new Object[] { Integer.valueOf(k) });
      }
      paramHandler.noop();
      return true;
    case 6: 
      readPing(paramHandler, m, k);
      return true;
    case 7: 
      readGoAway(paramHandler, m, k);
      return true;
    case 8: 
      readHeaders(paramHandler, m, k);
      return true;
    case 9: 
      readWindowUpdate(paramHandler, m, k);
      return true;
    }
    Util.skipByReading(in, k);
    throw new UnsupportedOperationException("TODO");
    label333:
    paramHandler.data(m, j & 0x7FFFFFFF, in, k);
    return true;
  }
  
  public static abstract interface Handler
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
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */