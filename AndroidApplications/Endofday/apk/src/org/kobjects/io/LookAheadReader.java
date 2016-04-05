package org.kobjects.io;

import java.io.IOException;
import java.io.Reader;

public class LookAheadReader
  extends Reader
{
  char[] buf;
  int bufPos;
  int bufValid;
  Reader reader;
  
  public LookAheadReader(Reader paramReader)
  {
    Runtime localRuntime = Runtime.getRuntime();
    long l1 = localRuntime.freeMemory();
    long l2 = 1000000L;
    boolean bool = l1 < l2;
    if (bool) {}
    int j;
    for (int i = 16384;; j = 128)
    {
      char[] arrayOfChar = new char[i];
      buf = arrayOfChar;
      bufPos = k;
      bufValid = k;
      reader = paramReader;
      return;
    }
  }
  
  public void close()
    throws IOException
  {
    Reader localReader = reader;
    localReader.close();
  }
  
  public int peek(int paramInt)
    throws IOException
  {
    int i8 = -1;
    int k = 127;
    if (paramInt > k)
    {
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      String str = "peek > 127 not supported!";
      localRuntimeException.<init>(str);
      throw localRuntimeException;
    }
    int i;
    do
    {
      int m = bufValid;
      m += i;
      bufValid = m;
      m = bufValid;
      if (paramInt < m) {
        break;
      }
      m = bufPos;
      int i2 = bufValid;
      m += i2;
      char[] arrayOfChar2 = buf;
      int i3 = arrayOfChar2.length;
      int j = m % i3;
      char[] arrayOfChar1 = buf;
      int n = arrayOfChar1.length;
      n -= j;
      char[] arrayOfChar3 = buf;
      int i4 = arrayOfChar3.length;
      int i6 = bufValid;
      i4 -= i6;
      i = Math.min(n, i4);
      localObject = reader;
      char[] arrayOfChar4 = buf;
      i = ((Reader)localObject).read(arrayOfChar4, j, i);
    } while (i != i8);
    int i5;
    int i1;
    for (Object localObject = i8;; i1 = localObject[i5])
    {
      return (int)localObject;
      localObject = buf;
      i5 = bufPos;
      char[] arrayOfChar5 = buf;
      int i7 = arrayOfChar5.length;
      i7 = paramInt % i7;
      i5 += i7;
    }
  }
  
  public int read()
    throws IOException
  {
    int m = 0;
    int i = peek(m);
    int j = -1;
    if (i != j)
    {
      j = bufPos;
      j += 1;
      bufPos = j;
      char[] arrayOfChar = buf;
      int k = arrayOfChar.length;
      if (j == k) {
        bufPos = m;
      }
      j = bufValid;
      k = 1;
      j -= k;
      bufValid = j;
    }
    return i;
  }
  
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    int n = -1;
    int i = bufValid;
    if (i == 0)
    {
      i = 0;
      i = peek(i);
      if (i != n) {}
    }
    int m;
    for (i = n;; m = paramInt2)
    {
      return i;
      i = bufValid;
      if (paramInt2 > i) {
        paramInt2 = bufValid;
      }
      char[] arrayOfChar1 = buf;
      int j = arrayOfChar1.length;
      n = bufPos;
      j -= n;
      if (paramInt2 > j)
      {
        char[] arrayOfChar2 = buf;
        int k = arrayOfChar2.length;
        n = bufPos;
        paramInt2 = k - n;
      }
      char[] arrayOfChar3 = buf;
      n = bufPos;
      System.arraycopy(arrayOfChar3, n, paramArrayOfChar, paramInt1, paramInt2);
      m = bufValid;
      m -= paramInt2;
      bufValid = m;
      m = bufPos;
      m += paramInt2;
      bufPos = m;
      m = bufPos;
      char[] arrayOfChar4 = buf;
      int i1 = arrayOfChar4.length;
      if (m > i1)
      {
        m = bufPos;
        char[] arrayOfChar5 = buf;
        int i2 = arrayOfChar5.length;
        m -= i2;
        bufPos = m;
      }
    }
  }
  
  public String readLine()
    throws IOException
  {
    int m = 0;
    int i = peek(m);
    int k = -1;
    if (i == k) {}
    String str1;
    Object localObject;
    for (String str2 = null;; localObject = str1)
    {
      return str2;
      str2 = "\r\n";
      str1 = readTo(str2);
      int j = read();
      k = 13;
      if (j == k)
      {
        j = peek(m);
        k = 10;
        if (j == k) {
          read();
        }
      }
    }
  }
  
  public String readTo(char paramChar)
    throws IOException
  {
    int i = 0;
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    for (;;)
    {
      char c1 = peek(i);
      char c2 = '￿';
      if (c1 == c2) {
        break;
      }
      c1 = peek(i);
      if (c1 == paramChar) {
        break;
      }
      c1 = read();
      c1 = (char)c1;
      localStringBuffer.append(c1);
    }
    String str = localStringBuffer.toString();
    return str;
  }
  
  public String readTo(String paramString)
    throws IOException
  {
    int k = 0;
    int j = -1;
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    for (;;)
    {
      int i = peek(k);
      if (i == j) {
        break;
      }
      i = peek(k);
      i = (char)i;
      i = paramString.indexOf(i);
      if (i != j) {
        break;
      }
      i = read();
      i = (char)i;
      localStringBuffer.append(i);
    }
    String str = localStringBuffer.toString();
    return str;
  }
  
  public String readWhile(String paramString)
    throws IOException
  {
    int k = 0;
    int j = -1;
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    for (;;)
    {
      int i = peek(k);
      if (i == j) {
        break;
      }
      i = peek(k);
      i = (char)i;
      i = paramString.indexOf(i);
      if (i == j) {
        break;
      }
      i = read();
      i = (char)i;
      localStringBuffer.append(i);
    }
    String str = localStringBuffer.toString();
    return str;
  }
  
  public void skip(String paramString)
    throws IOException
  {
    int k = 0;
    int j = -1;
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    for (;;)
    {
      int i = peek(k);
      if (i == j) {
        break;
      }
      i = peek(k);
      i = (char)i;
      i = paramString.indexOf(i);
      if (i == j) {
        break;
      }
      read();
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.io.LookAheadReader
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */