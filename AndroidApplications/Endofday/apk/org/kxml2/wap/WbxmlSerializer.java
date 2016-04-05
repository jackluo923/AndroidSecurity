package org.kxml2.wap;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.Hashtable;
import java.util.Vector;
import org.xmlpull.v1.XmlSerializer;

public class WbxmlSerializer
  implements XmlSerializer
{
  private int attrPage;
  Hashtable attrStartTable;
  Hashtable attrValueTable;
  Vector attributes;
  ByteArrayOutputStream buf;
  int depth;
  private String encoding;
  private boolean headerSent;
  String name;
  String namespace;
  OutputStream out;
  String pending;
  Hashtable stringTable;
  ByteArrayOutputStream stringTableBuf;
  private int tagPage;
  Hashtable tagTable;
  
  public WbxmlSerializer()
  {
    Object localObject = new java/util/Hashtable;
    ((Hashtable)localObject).<init>();
    stringTable = ((Hashtable)localObject);
    localObject = new java/io/ByteArrayOutputStream;
    ((ByteArrayOutputStream)localObject).<init>();
    buf = ((ByteArrayOutputStream)localObject);
    localObject = new java/io/ByteArrayOutputStream;
    ((ByteArrayOutputStream)localObject).<init>();
    stringTableBuf = ((ByteArrayOutputStream)localObject);
    localObject = new java/util/Vector;
    ((Vector)localObject).<init>();
    attributes = ((Vector)localObject);
    localObject = new java/util/Hashtable;
    ((Hashtable)localObject).<init>();
    attrStartTable = ((Hashtable)localObject);
    localObject = new java/util/Hashtable;
    ((Hashtable)localObject).<init>();
    attrValueTable = ((Hashtable)localObject);
    localObject = new java/util/Hashtable;
    ((Hashtable)localObject).<init>();
    tagTable = ((Hashtable)localObject);
    boolean bool = false;
    headerSent = bool;
  }
  
  public int addToStringTable(String paramString, boolean paramBoolean)
    throws IOException
  {
    int i4 = 1;
    int i2 = 0;
    char c2 = ' ';
    boolean bool = headerSent;
    if (bool)
    {
      localObject1 = new java/io/IOException;
      String str1 = "stringtable sent";
      ((IOException)localObject1).<init>(str1);
      throw ((Throwable)localObject1);
    }
    Object localObject1 = stringTableBuf;
    int i = ((ByteArrayOutputStream)localObject1).size();
    int k = i;
    int m = paramString.charAt(i2);
    int n = 48;
    if ((m >= n) && (paramBoolean))
    {
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject2 = ((StringBuilder)localObject2).append(c2);
      localObject2 = ((StringBuilder)localObject2).append(paramString);
      paramString = ((StringBuilder)localObject2).toString();
      k += 1;
    }
    Object localObject2 = stringTable;
    Object localObject4 = new java/lang/Integer;
    ((Integer)localObject4).<init>(i);
    ((Hashtable)localObject2).put(paramString, localObject4);
    char c1 = paramString.charAt(i2);
    Integer localInteger;
    int i3;
    if (c1 == c2)
    {
      localObject3 = stringTable;
      localObject4 = paramString.substring(i4);
      localInteger = new java/lang/Integer;
      i3 = i + 1;
      localInteger.<init>(i3);
      ((Hashtable)localObject3).put(localObject4, localInteger);
    }
    int j = paramString.lastIndexOf(c2);
    if (j > i4)
    {
      localObject3 = stringTable;
      localObject4 = paramString.substring(j);
      localInteger = new java/lang/Integer;
      i3 = i + j;
      localInteger.<init>(i3);
      ((Hashtable)localObject3).put(localObject4, localInteger);
      localObject3 = stringTable;
      int i1 = j + 1;
      String str2 = paramString.substring(i1);
      localInteger = new java/lang/Integer;
      i3 = i + j;
      i3 += 1;
      localInteger.<init>(i3);
      ((Hashtable)localObject3).put(str2, localInteger);
    }
    Object localObject3 = stringTableBuf;
    writeStrI((OutputStream)localObject3, paramString);
    localObject3 = stringTableBuf;
    ((ByteArrayOutputStream)localObject3).flush();
    return k;
  }
  
  public XmlSerializer attribute(String paramString1, String paramString2, String paramString3)
  {
    Vector localVector = attributes;
    localVector.addElement(paramString2);
    localVector = attributes;
    localVector.addElement(paramString3);
    return this;
  }
  
  public void cdsect(String paramString)
    throws IOException
  {
    text(paramString);
  }
  
  public void checkPending(boolean paramBoolean)
    throws IOException
  {
    int i4 = 4;
    int i3 = 1;
    int i2 = 0;
    Object localObject3 = pending;
    if (localObject3 == null) {}
    for (;;)
    {
      return;
      localObject3 = attributes;
      int j = ((Vector)localObject3).size();
      localObject3 = tagTable;
      Object localObject5 = pending;
      localObject3 = ((Hashtable)localObject3).get(localObject5);
      localObject3 = (int[])localObject3;
      Object localObject1 = localObject3;
      localObject1 = (int[])localObject1;
      Object localObject2 = localObject1;
      int i;
      if (localObject2 == null)
      {
        localObject3 = buf;
        if (j == 0) {
          if (paramBoolean)
          {
            localObject5 = i4;
            ((ByteArrayOutputStream)localObject3).write(localObject5);
            localObject3 = pending;
            writeStrT((String)localObject3, i2);
            i = 0;
            label121:
            if (i >= j) {
              break label668;
            }
            localObject3 = attrStartTable;
            localObject5 = attributes;
            localObject5 = ((Vector)localObject5).elementAt(i);
            localObject3 = ((Hashtable)localObject3).get(localObject5);
            localObject3 = (int[])localObject3;
            localObject1 = localObject3;
            localObject1 = (int[])localObject1;
            localObject2 = localObject1;
            if (localObject2 != null) {
              break label492;
            }
            localObject3 = buf;
            ((ByteArrayOutputStream)localObject3).write(i4);
            localObject3 = attributes;
            localObject3 = ((Vector)localObject3).elementAt(i);
            localObject3 = (String)localObject3;
            writeStrT((String)localObject3, i2);
            label221:
            localObject3 = attrValueTable;
            localObject5 = attributes;
            i += 1;
            localObject5 = ((Vector)localObject5).elementAt(i);
            localObject3 = ((Hashtable)localObject3).get(localObject5);
            localObject3 = (int[])localObject3;
            localObject1 = localObject3;
            localObject1 = (int[])localObject1;
            localObject2 = localObject1;
            if (localObject2 != null) {
              break label580;
            }
            localObject3 = attributes;
            localObject3 = ((Vector)localObject3).elementAt(i);
            localObject3 = (String)localObject3;
            writeStr((String)localObject3);
          }
        }
      }
      for (;;)
      {
        i += 1;
        break label121;
        int i1 = 68;
        break;
        if (paramBoolean)
        {
          i1 = 132;
          break;
        }
        i1 = 196;
        break;
        int k = localObject2[i2];
        i1 = tagPage;
        if (k != i1)
        {
          k = localObject2[i2];
          tagPage = k;
          localByteArrayOutputStream1 = buf;
          localByteArrayOutputStream1.write(i2);
          localByteArrayOutputStream1 = buf;
          i1 = tagPage;
          localByteArrayOutputStream1.write(i1);
        }
        ByteArrayOutputStream localByteArrayOutputStream1 = buf;
        if (j == 0) {
          if (paramBoolean) {
            i1 = localObject2[i3];
          }
        }
        for (;;)
        {
          localByteArrayOutputStream1.write(i1);
          break;
          i1 = localObject2[i3];
          i1 |= 0x40;
          continue;
          if (paramBoolean)
          {
            i1 = localObject2[i3];
            i1 |= 0x80;
          }
          else
          {
            i1 = localObject2[i3];
            i1 |= 0xC0;
          }
        }
        label492:
        int m = localObject2[i2];
        i1 = attrPage;
        if (m != i1)
        {
          m = localObject2[i2];
          attrPage = m;
          localByteArrayOutputStream2 = buf;
          localByteArrayOutputStream2.write(i2);
          localByteArrayOutputStream2 = buf;
          i1 = attrPage;
          localByteArrayOutputStream2.write(i1);
        }
        ByteArrayOutputStream localByteArrayOutputStream2 = buf;
        i1 = localObject2[i3];
        localByteArrayOutputStream2.write(i1);
        break label221;
        label580:
        int n = localObject2[i2];
        i1 = attrPage;
        if (n != i1)
        {
          n = localObject2[i2];
          attrPage = n;
          localObject4 = buf;
          ((ByteArrayOutputStream)localObject4).write(i2);
          localObject4 = buf;
          i1 = attrPage;
          ((ByteArrayOutputStream)localObject4).write(i1);
        }
        localObject4 = buf;
        i1 = localObject2[i3];
        ((ByteArrayOutputStream)localObject4).write(i1);
      }
      label668:
      if (j > 0)
      {
        localObject4 = buf;
        ((ByteArrayOutputStream)localObject4).write(i3);
      }
      Object localObject4 = null;
      pending = ((String)localObject4);
      localObject4 = attributes;
      ((Vector)localObject4).removeAllElements();
    }
  }
  
  public void comment(String paramString) {}
  
  public void docdecl(String paramString)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "Cannot write docdecl for WBXML";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public void endDocument()
    throws IOException
  {
    flush();
  }
  
  public XmlSerializer endTag(String paramString1, String paramString2)
    throws IOException
  {
    int k = 1;
    String str = pending;
    if (str != null) {
      checkPending(k);
    }
    for (;;)
    {
      int i = depth;
      int j;
      i -= k;
      depth = j;
      return this;
      ByteArrayOutputStream localByteArrayOutputStream = buf;
      localByteArrayOutputStream.write(k);
    }
  }
  
  public void entityRef(String paramString)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "EntityReference not supported for WBXML";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public void flush()
    throws IOException
  {
    boolean bool1 = false;
    checkPending(bool1);
    bool1 = headerSent;
    if (!bool1)
    {
      OutputStream localOutputStream = out;
      ByteArrayOutputStream localByteArrayOutputStream = stringTableBuf;
      int i = localByteArrayOutputStream.size();
      writeInt(localOutputStream, i);
      localOutputStream = out;
      localObject2 = stringTableBuf;
      localObject2 = ((ByteArrayOutputStream)localObject2).toByteArray();
      localOutputStream.write((byte[])localObject2);
      boolean bool2 = true;
      headerSent = bool2;
    }
    Object localObject1 = out;
    Object localObject2 = buf;
    localObject2 = ((ByteArrayOutputStream)localObject2).toByteArray();
    ((OutputStream)localObject1).write((byte[])localObject2);
    localObject1 = buf;
    ((ByteArrayOutputStream)localObject1).reset();
  }
  
  public int getDepth()
  {
    int i = depth;
    return i;
  }
  
  public boolean getFeature(String paramString)
  {
    boolean bool = false;
    return bool;
  }
  
  public String getName()
  {
    String str = pending;
    return str;
  }
  
  public String getNamespace()
  {
    String str = null;
    return str;
  }
  
  public String getPrefix(String paramString, boolean paramBoolean)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "NYI";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public Object getProperty(String paramString)
  {
    Object localObject = null;
    return localObject;
  }
  
  public void ignorableWhitespace(String paramString) {}
  
  public void processingInstruction(String paramString)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "PI NYI";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public void setAttrStartTable(int paramInt, String[] paramArrayOfString)
  {
    int i = 0;
    for (;;)
    {
      int j = paramArrayOfString.length;
      if (i >= j) {
        break;
      }
      String str1 = paramArrayOfString[i];
      if (str1 != null)
      {
        int k = 2;
        int[] arrayOfInt = new int[k];
        k = 0;
        arrayOfInt[k] = paramInt;
        k = 1;
        int m = i + 5;
        arrayOfInt[k] = m;
        Hashtable localHashtable = attrStartTable;
        String str2 = paramArrayOfString[i];
        localHashtable.put(str2, arrayOfInt);
      }
      i += 1;
    }
  }
  
  public void setAttrValueTable(int paramInt, String[] paramArrayOfString)
  {
    int i = 0;
    for (;;)
    {
      int j = paramArrayOfString.length;
      if (i >= j) {
        break;
      }
      String str1 = paramArrayOfString[i];
      if (str1 != null)
      {
        int k = 2;
        int[] arrayOfInt = new int[k];
        k = 0;
        arrayOfInt[k] = paramInt;
        k = 1;
        int m = i + 133;
        arrayOfInt[k] = m;
        Hashtable localHashtable = attrValueTable;
        String str2 = paramArrayOfString[i];
        localHashtable.put(str2, arrayOfInt);
      }
      i += 1;
    }
  }
  
  public void setFeature(String paramString, boolean paramBoolean)
  {
    IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "unknown feature ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    localIllegalArgumentException.<init>((String)localObject);
    throw localIllegalArgumentException;
  }
  
  public void setOutput(OutputStream paramOutputStream, String paramString)
    throws IOException
  {
    if (paramString == null) {}
    String str;
    for (Object localObject = "UTF-8";; str = paramString)
    {
      encoding = ((String)localObject);
      out = paramOutputStream;
      localObject = new java/io/ByteArrayOutputStream;
      ((ByteArrayOutputStream)localObject).<init>();
      buf = ((ByteArrayOutputStream)localObject);
      localObject = new java/io/ByteArrayOutputStream;
      ((ByteArrayOutputStream)localObject).<init>();
      stringTableBuf = ((ByteArrayOutputStream)localObject);
      boolean bool = false;
      headerSent = bool;
      return;
    }
  }
  
  public void setOutput(Writer paramWriter)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "Wbxml requires an OutputStream!";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public void setPrefix(String paramString1, String paramString2)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "NYI";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public void setProperty(String paramString, Object paramObject)
  {
    IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "unknown property ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    localIllegalArgumentException.<init>((String)localObject);
    throw localIllegalArgumentException;
  }
  
  public void setTagTable(int paramInt, String[] paramArrayOfString)
  {
    int i = 0;
    for (;;)
    {
      int j = paramArrayOfString.length;
      if (i >= j) {
        break;
      }
      String str1 = paramArrayOfString[i];
      if (str1 != null)
      {
        int k = 2;
        int[] arrayOfInt = new int[k];
        k = 0;
        arrayOfInt[k] = paramInt;
        k = 1;
        int m = i + 5;
        arrayOfInt[k] = m;
        Hashtable localHashtable = tagTable;
        String str2 = paramArrayOfString[i];
        localHashtable.put(str2, arrayOfInt);
      }
      i += 1;
    }
  }
  
  public void startDocument(String paramString, Boolean paramBoolean)
    throws IOException
  {
    Object localObject1 = out;
    int i = 3;
    ((OutputStream)localObject1).write(i);
    localObject1 = out;
    i = 1;
    ((OutputStream)localObject1).write(i);
    if (paramString != null) {
      encoding = paramString;
    }
    localObject1 = encoding;
    localObject1 = ((String)localObject1).toUpperCase();
    String str1 = "UTF-8";
    boolean bool1 = ((String)localObject1).equals(str1);
    Object localObject2;
    if (bool1)
    {
      localObject2 = out;
      int j = 106;
      ((OutputStream)localObject2).write(j);
    }
    for (;;)
    {
      return;
      localObject2 = encoding;
      localObject2 = ((String)localObject2).toUpperCase();
      String str2 = "ISO-8859-1";
      boolean bool2 = ((String)localObject2).equals(str2);
      if (!bool2) {
        break;
      }
      localObject3 = out;
      int k = 4;
      ((OutputStream)localObject3).write(k);
    }
    Object localObject3 = new java/io/UnsupportedEncodingException;
    ((UnsupportedEncodingException)localObject3).<init>(paramString);
    throw ((Throwable)localObject3);
  }
  
  public XmlSerializer startTag(String paramString1, String paramString2)
    throws IOException
  {
    if (paramString1 != null)
    {
      String str1 = "";
      boolean bool1 = str1.equals(paramString1);
      if (!bool1)
      {
        RuntimeException localRuntimeException = new java/lang/RuntimeException;
        String str2 = "NSP NYI";
        localRuntimeException.<init>(str2);
        throw localRuntimeException;
      }
    }
    boolean bool2 = false;
    checkPending(bool2);
    pending = paramString2;
    int i = depth;
    i += 1;
    depth = i;
    return this;
  }
  
  public XmlSerializer text(String paramString)
    throws IOException
  {
    boolean bool = false;
    checkPending(bool);
    writeStr(paramString);
    return this;
  }
  
  public XmlSerializer text(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    boolean bool = false;
    checkPending(bool);
    String str = new java/lang/String;
    str.<init>(paramArrayOfChar, paramInt1, paramInt2);
    writeStr(str);
    return this;
  }
  
  static void writeInt(OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    int k = 5;
    byte[] arrayOfByte = new byte[k];
    int j;
    for (int i = 0;; i = j)
    {
      j = i + 1;
      k = paramInt & 0x7F;
      k = (byte)k;
      arrayOfByte[i] = k;
      paramInt >>= 7;
      if (paramInt == 0)
      {
        i = j;
        for (;;)
        {
          k = 1;
          if (i <= k) {
            break;
          }
          i += -1;
          k = arrayOfByte[i];
          k |= 0x80;
          paramOutputStream.write(k);
        }
        k = 0;
        k = arrayOfByte[k];
        paramOutputStream.write(k);
        return;
      }
    }
  }
  
  private void writeStr(String paramString)
    throws IOException
  {
    int i9 = 65;
    int i8 = 32;
    int i7 = 1;
    boolean bool2 = false;
    int i6 = 131;
    int k = 0;
    int i = 0;
    int j = paramString.length();
    boolean bool1 = headerSent;
    if (bool1)
    {
      ByteArrayOutputStream localByteArrayOutputStream = buf;
      writeStrI(localByteArrayOutputStream, paramString);
    }
    for (;;)
    {
      return;
      int i1;
      int i3 = i1 - k;
      int i5 = 10;
      if (i3 > i5)
      {
        if (k <= i) {
          break label238;
        }
        i3 = k - i7;
        i3 = paramString.charAt(i3);
        if (i3 != i8) {
          break label238;
        }
        Object localObject1 = stringTable;
        String str = paramString.substring(k, i1);
        localObject1 = ((Hashtable)localObject1).get(str);
        if (localObject1 != null) {
          break label238;
        }
        localObject1 = buf;
        ((ByteArrayOutputStream)localObject1).write(i6);
        localObject1 = paramString.substring(i, i1);
        writeStrT((String)localObject1, bool2);
      }
      label236:
      label238:
      Object localObject2;
      for (;;)
      {
        i = i1;
        k = i1;
        if (k >= j) {
          break label342;
        }
        int i4;
        int m;
        while (k < j)
        {
          i4 = paramString.charAt(k);
          if (i4 >= i9) {
            break;
          }
          k += 1;
        }
        i1 = m;
        int i2;
        for (;;)
        {
          if (i1 >= j) {
            break label236;
          }
          i4 = paramString.charAt(i1);
          if (i4 < i9) {
            break;
          }
          i1 += 1;
        }
        break;
        int n;
        if (m > i)
        {
          i4 = m - i7;
          i4 = paramString.charAt(i4);
          if (i4 == i8) {
            m += -1;
          }
        }
        if (n > i)
        {
          localObject2 = buf;
          ((ByteArrayOutputStream)localObject2).write(i6);
          localObject2 = paramString.substring(i, n);
          writeStrT((String)localObject2, bool2);
        }
        localObject2 = buf;
        ((ByteArrayOutputStream)localObject2).write(i6);
        localObject2 = paramString.substring(n, i2);
        writeStrT((String)localObject2, i7);
      }
      label342:
      if (i < j)
      {
        localObject2 = buf;
        ((ByteArrayOutputStream)localObject2).write(i6);
        localObject2 = paramString.substring(i, j);
        writeStrT((String)localObject2, bool2);
      }
    }
  }
  
  void writeStrI(OutputStream paramOutputStream, String paramString)
    throws IOException
  {
    String str = encoding;
    byte[] arrayOfByte = paramString.getBytes(str);
    paramOutputStream.write(arrayOfByte);
    int i = 0;
    paramOutputStream.write(i);
  }
  
  private final void writeStrT(String paramString, boolean paramBoolean)
    throws IOException
  {
    Object localObject2 = stringTable;
    Object localObject1 = ((Hashtable)localObject2).get(paramString);
    localObject1 = (Integer)localObject1;
    localObject2 = buf;
    if (localObject1 == null) {}
    for (int i = addToStringTable(paramString, paramBoolean);; i = ((Integer)localObject1).intValue())
    {
      writeInt((OutputStream)localObject2, i);
      return;
    }
  }
  
  public void writeWapExtension(int paramInt, Object paramObject)
    throws IOException
  {
    boolean bool = false;
    checkPending(bool);
    Object localObject3 = buf;
    ((ByteArrayOutputStream)localObject3).write(paramInt);
    int i;
    switch (paramInt)
    {
    default: 
      localObject3 = new java/lang/IllegalArgumentException;
      ((IllegalArgumentException)localObject3).<init>();
      throw ((Throwable)localObject3);
    case 195: 
      paramObject = (byte[])paramObject;
      Object localObject1 = paramObject;
      localObject1 = (byte[])localObject1;
      Object localObject2 = localObject1;
      localObject3 = buf;
      i = localObject2.length;
      writeInt((OutputStream)localObject3, i);
      localObject3 = buf;
      ((ByteArrayOutputStream)localObject3).write((byte[])localObject2);
    }
    for (;;)
    {
      return;
      localObject3 = buf;
      paramObject = (String)paramObject;
      writeStrI((OutputStream)localObject3, (String)paramObject);
      continue;
      paramObject = (String)paramObject;
      writeStrT((String)paramObject, i);
    }
  }
}

/* Location:
 * Qualified Name:     org.kxml2.wap.WbxmlSerializer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */