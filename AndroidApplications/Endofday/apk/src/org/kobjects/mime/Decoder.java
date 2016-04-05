package org.kobjects.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.Hashtable;
import org.kobjects.base64.Base64;

public class Decoder
{
  String boundary;
  char[] buf;
  String characterEncoding;
  boolean consumed;
  boolean eof;
  Hashtable header;
  InputStream is;
  
  public Decoder(InputStream paramInputStream, String paramString)
    throws IOException
  {
    this(paramInputStream, paramString, str);
  }
  
  public Decoder(InputStream paramInputStream, String paramString1, String paramString2)
    throws IOException
  {
    int j = 256;
    Object localObject = new char[j];
    buf = ((char[])localObject);
    characterEncoding = paramString2;
    is = paramInputStream;
    localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str3 = "--";
    localObject = ((StringBuilder)localObject).append(str3);
    localObject = ((StringBuilder)localObject).append(paramString1);
    localObject = ((StringBuilder)localObject).toString();
    boundary = ((String)localObject);
    int i = 0;
    String str1;
    boolean bool1;
    do
    {
      str1 = readLine();
      if (str1 == null)
      {
        localObject = new java/io/IOException;
        str3 = "Unexpected EOF";
        ((IOException)localObject).<init>(str3);
        throw ((Throwable)localObject);
      }
      localObject = boundary;
      bool1 = str1.startsWith((String)localObject);
    } while (!bool1);
    String str2 = "--";
    boolean bool2 = str1.endsWith(str2);
    if (bool2)
    {
      eof = bool3;
      paramInputStream.close();
    }
    consumed = bool3;
  }
  
  public String getHeader(String paramString)
  {
    Hashtable localHashtable = header;
    String str = paramString.toLowerCase();
    this = localHashtable.get(str);
    this = (String)this;
    return this;
  }
  
  public static Hashtable getHeaderElements(String paramString)
  {
    int i4 = 59;
    int i3 = 34;
    int i2 = -1;
    String str3 = "";
    int j = 0;
    Hashtable localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    int i = paramString.length();
    for (;;)
    {
      int k;
      if (j < i)
      {
        k = paramString.charAt(j);
        int i1 = 32;
        if (k <= i1)
        {
          j += 1;
          continue;
        }
      }
      if (j >= i) {}
      String str5;
      label330:
      String str2;
      do
      {
        String str1;
        for (;;)
        {
          return localHashtable;
          k = paramString.charAt(j);
          if (k == i3)
          {
            j += 1;
            str1 = paramString.indexOf(i3, j);
            Object localObject3;
            if (str1 == i2)
            {
              localObject1 = new java/lang/RuntimeException;
              localObject3 = new java/lang/StringBuilder;
              ((StringBuilder)localObject3).<init>();
              str5 = "End quote expected in ";
              localObject3 = ((StringBuilder)localObject3).append(str5);
              localObject3 = ((StringBuilder)localObject3).append(paramString);
              localObject3 = ((StringBuilder)localObject3).toString();
              ((RuntimeException)localObject1).<init>((String)localObject3);
              throw ((Throwable)localObject1);
            }
            Object localObject1 = paramString.substring(j, str1);
            localHashtable.put(str3, localObject1);
            j = str1 + 2;
            if (j < i)
            {
              int m = 1;
              m = j - m;
              m = paramString.charAt(m);
              if (m == i4) {
                break label330;
              }
              localObject2 = new java/lang/RuntimeException;
              localObject3 = new java/lang/StringBuilder;
              ((StringBuilder)localObject3).<init>();
              str5 = "; expected in ";
              localObject3 = ((StringBuilder)localObject3).append(str5);
              localObject3 = ((StringBuilder)localObject3).append(paramString);
              localObject3 = ((StringBuilder)localObject3).toString();
              ((RuntimeException)localObject2).<init>((String)localObject3);
              throw ((Throwable)localObject2);
            }
          }
          else
          {
            str1 = paramString.indexOf(i4, j);
            if (str1 != str5) {
              break;
            }
            localObject2 = paramString.substring(j);
            localHashtable.put(str3, localObject2);
          }
        }
        Object localObject2 = paramString.substring(j, str1);
        localHashtable.put(str3, localObject2);
        j = str1 + 1;
        int n = 61;
        str2 = paramString.indexOf(n, j);
      } while (str2 == str5);
      String str4 = paramString.substring(j, str2);
      str4 = str4.toLowerCase();
      str3 = str4.trim();
      j = str2 + 1;
    }
  }
  
  public Enumeration getHeaderNames()
  {
    Object localObject = header;
    localObject = ((Hashtable)localObject).keys();
    return (Enumeration)localObject;
  }
  
  public boolean next()
    throws IOException
  {
    int m = 0;
    boolean bool1 = consumed;
    if (!bool1)
    {
      OutputStream localOutputStream = null;
      readContent(localOutputStream);
    }
    boolean bool2 = eof;
    if (bool2)
    {
      bool2 = m;
      return bool2;
    }
    Object localObject1 = new java/util/Hashtable;
    ((Hashtable)localObject1).<init>();
    header = ((Hashtable)localObject1);
    for (;;)
    {
      String str1 = readLine();
      boolean bool3;
      if (str1 != null)
      {
        localObject1 = "";
        bool3 = str1.equals(localObject1);
        if (!bool3) {}
      }
      else
      {
        consumed = m;
        bool3 = true;
        break;
      }
      int j = 58;
      int i = str1.indexOf(j);
      j = -1;
      if (i == j)
      {
        localObject2 = new java/io/IOException;
        localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        String str2 = "colon missing in multipart header line: ";
        localObject3 = ((StringBuilder)localObject3).append(str2);
        localObject3 = ((StringBuilder)localObject3).append(str1);
        localObject3 = ((StringBuilder)localObject3).toString();
        ((IOException)localObject2).<init>((String)localObject3);
        throw ((Throwable)localObject2);
      }
      Object localObject2 = header;
      Object localObject3 = str1.substring(m, i);
      localObject3 = ((String)localObject3).trim();
      localObject3 = ((String)localObject3).toLowerCase();
      int k = i + 1;
      String str3 = str1.substring(k);
      str3 = str3.trim();
      ((Hashtable)localObject2).put(localObject3, str3);
    }
  }
  
  public String readContent()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new java/io/ByteArrayOutputStream;
    localByteArrayOutputStream.<init>();
    readContent(localByteArrayOutputStream);
    Object localObject2 = characterEncoding;
    Object localObject3;
    if (localObject2 == null)
    {
      localObject2 = new java/lang/String;
      localObject3 = localByteArrayOutputStream.toByteArray();
      ((String)localObject2).<init>((byte[])localObject3);
    }
    for (Object localObject1 = localObject2;; localObject1 = localObject2)
    {
      localObject2 = System.out;
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      String str = "Field content: '";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).append((String)localObject1);
      str = "'";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).toString();
      ((PrintStream)localObject2).println((String)localObject3);
      return (String)localObject1;
      localObject2 = new java/lang/String;
      localObject3 = localByteArrayOutputStream.toByteArray();
      str = characterEncoding;
      ((String)localObject2).<init>((byte[])localObject3, str);
    }
  }
  
  public void readContent(OutputStream paramOutputStream)
    throws IOException
  {
    int i3 = 0;
    int i2 = 1;
    boolean bool1 = consumed;
    if (bool1)
    {
      localObject1 = new java/lang/RuntimeException;
      str5 = "Content already consumed!";
      ((RuntimeException)localObject1).<init>(str5);
      throw ((Throwable)localObject1);
    }
    String str3 = "";
    Object localObject1 = "Content-Type";
    String str1 = getHeader((String)localObject1);
    localObject1 = "base64";
    String str5 = "Content-Transfer-Encoding";
    str5 = getHeader(str5);
    boolean bool2 = ((String)localObject1).equals(str5);
    if (bool2)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new java/io/ByteArrayOutputStream;
      localByteArrayOutputStream.<init>();
      for (;;)
      {
        str3 = readLine();
        if (str3 == null)
        {
          localObject2 = new java/io/IOException;
          str5 = "Unexpected EOF";
          ((IOException)localObject2).<init>(str5);
          throw ((Throwable)localObject2);
        }
        Object localObject2 = boundary;
        boolean bool3 = str3.startsWith((String)localObject2);
        if (bool3)
        {
          String str4 = "--";
          boolean bool4 = str3.endsWith(str4);
          if (bool4) {
            eof = i2;
          }
          consumed = i2;
          return;
        }
        Base64.decode(str3, paramOutputStream);
      }
    }
    Object localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    str5 = "\r\n";
    localObject3 = ((StringBuilder)localObject3).append(str5);
    str5 = boundary;
    localObject3 = ((StringBuilder)localObject3).append(str5);
    String str2 = ((StringBuilder)localObject3).toString();
    int k = 0;
    label408:
    label413:
    for (;;)
    {
      localObject3 = is;
      int i = ((InputStream)localObject3).read();
      int m = -1;
      if (i == m)
      {
        RuntimeException localRuntimeException = new java/lang/RuntimeException;
        str5 = "Unexpected EOF";
        localRuntimeException.<init>(str5);
        throw localRuntimeException;
      }
      int n = (char)i;
      int i1 = str2.charAt(k);
      if (n == i1)
      {
        k += 1;
        n = str2.length();
        if (k != n) {
          continue;
        }
        str3 = readLine();
        break;
      }
      if (k > 0)
      {
        int j = 0;
        while (j < k)
        {
          n = str2.charAt(j);
          n = (byte)n;
          paramOutputStream.write(n);
          j += 1;
        }
        n = (char)i;
        i1 = str2.charAt(i3);
        if (n != i1) {
          break label408;
        }
      }
      for (k = i2;; k = i3)
      {
        if (k != 0) {
          break label413;
        }
        n = (byte)i;
        paramOutputStream.write(n);
        break;
      }
    }
  }
  
  private final String readLine()
    throws IOException
  {
    int i5 = -1;
    int i4 = 0;
    int i = 0;
    for (;;)
    {
      InputStream localInputStream = is;
      int k = localInputStream.read();
      if ((k == i5) && (i == 0)) {
        localInputStream = null;
      }
      char[] arrayOfChar5;
      for (;;)
      {
        return localInputStream;
        if (k != i5)
        {
          int m = 10;
          if (k != m) {
            break;
          }
        }
        String str = new java/lang/String;
        arrayOfChar5 = buf;
        str.<init>(arrayOfChar5, i4, i);
      }
      int n = 13;
      if (k != n)
      {
        char[] arrayOfChar2 = buf;
        int i1 = arrayOfChar2.length;
        if (i >= i1)
        {
          char[] arrayOfChar3 = buf;
          int i2 = arrayOfChar3.length;
          i2 *= 3;
          i2 /= 2;
          char[] arrayOfChar1 = new char[i2];
          arrayOfChar4 = buf;
          arrayOfChar5 = buf;
          i3 = arrayOfChar5.length;
          System.arraycopy(arrayOfChar4, i4, arrayOfChar1, i4, i3);
          buf = arrayOfChar1;
        }
        char[] arrayOfChar4 = buf;
        int j = i + 1;
        int i3 = (char)k;
        arrayOfChar4[i] = i3;
        i = j;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.mime.Decoder
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */