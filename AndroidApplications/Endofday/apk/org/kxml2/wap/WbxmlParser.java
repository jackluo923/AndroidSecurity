package org.kxml2.wap;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class WbxmlParser
  implements XmlPullParser
{
  static final String HEX_DIGITS = "0123456789abcdef";
  private static final String ILLEGAL_TYPE = "Wrong event type";
  private static final String UNEXPECTED_EOF = "Unexpected EOF";
  public static final int WAP_EXTENSION = 64;
  private int ATTR_START_TABLE;
  private int ATTR_VALUE_TABLE;
  private int TAG_TABLE;
  private String[] attrStartTable;
  private String[] attrValueTable;
  private int attributeCount;
  private String[] attributes;
  private Hashtable cacheStringTable;
  private boolean degenerated;
  private int depth;
  private String[] elementStack;
  private String encoding;
  private InputStream in;
  private boolean isWhitespace;
  private String name;
  private String namespace;
  private int nextId;
  private int[] nspCounts;
  private String[] nspStack;
  private String prefix;
  private boolean processNsp;
  private int publicIdentifierId;
  private byte[] stringTable;
  private Vector tables;
  private String[] tagTable;
  private String text;
  private int type;
  private int version;
  private int wapCode;
  private Object wapExtensionData;
  
  public WbxmlParser()
  {
    int i = 0;
    TAG_TABLE = i;
    i = 1;
    ATTR_START_TABLE = i;
    i = 2;
    ATTR_VALUE_TABLE = i;
    String[] arrayOfString1 = null;
    cacheStringTable = arrayOfString1;
    arrayOfString1 = new String[n];
    elementStack = arrayOfString1;
    int j = 8;
    String[] arrayOfString2 = new String[j];
    nspStack = arrayOfString2;
    int k = 4;
    Object localObject = new int[k];
    nspCounts = ((int[])localObject);
    localObject = new String[n];
    attributes = ((String[])localObject);
    int m = -2;
    nextId = m;
    Vector localVector = new java/util/Vector;
    localVector.<init>();
    tables = localVector;
  }
  
  private final boolean adjustNsp()
    throws XmlPullParserException
  {
    boolean bool1 = false;
    int j = 0;
    int m = attributeCount;
    m <<= 2;
    String str1;
    label91:
    label145:
    int k;
    Object localObject8;
    int i7;
    if (j < m)
    {
      String[] arrayOfString1 = attributes;
      int i6 = j + 2;
      str1 = arrayOfString1[i6];
      int n = 58;
      i = str1.indexOf(n);
      n = -1;
      String str4;
      if (i != n)
      {
        n = 0;
        str4 = str1.substring(n, i);
        n = i + 1;
        str1 = str1.substring(n);
        String str5 = "xmlns";
        boolean bool2 = str4.equals(str5);
        if (bool2) {
          break label145;
        }
        bool1 = true;
      }
      for (;;)
      {
        j += 4;
        break;
        String str6 = "xmlns";
        boolean bool3 = str1.equals(str6);
        if (bool3)
        {
          str4 = str1;
          str1 = null;
          break label91;
          Object localObject1 = nspCounts;
          i6 = depth;
          int i11 = localObject1[i6];
          int i12 = i11 + 1;
          localObject1[i6] = i12;
          k = i11 << 1;
          localObject1 = nspStack;
          i6 = k + 2;
          localObject1 = ensureCapacity((String[])localObject1, i6);
          nspStack = ((String[])localObject1);
          localObject1 = nspStack;
          localObject1[k] = str1;
          localObject1 = nspStack;
          i6 = k + 1;
          localObject8 = attributes;
          i12 = j + 3;
          localObject8 = localObject8[i12];
          localObject1[i6] = localObject8;
          if (str1 != null)
          {
            localObject1 = attributes;
            i6 = j + 3;
            localObject1 = localObject1[i6];
            String str8 = "";
            boolean bool4 = ((String)localObject1).equals(str8);
            if (bool4)
            {
              localObject2 = "illegal empty namespace";
              exception((String)localObject2);
            }
          }
          Object localObject2 = attributes;
          i7 = j + 4;
          localObject8 = attributes;
          i12 = attributeCount;
          int i13 = 1;
          i12 -= i13;
          attributeCount = i12;
          i12 <<= 2;
          i12 -= j;
          System.arraycopy(localObject2, i7, localObject8, j, i12);
          j += -4;
        }
      }
    }
    if (bool1)
    {
      int i1 = attributeCount;
      i1 <<= 2;
      i7 = 4;
      j = i1 - i7;
      while (j >= 0)
      {
        String[] arrayOfString2 = attributes;
        i7 = j + 2;
        str1 = arrayOfString2[i7];
        int i2 = 58;
        i = str1.indexOf(i2);
        Object localObject7;
        if (i == 0)
        {
          RuntimeException localRuntimeException = new java/lang/RuntimeException;
          localObject7 = new java/lang/StringBuilder;
          ((StringBuilder)localObject7).<init>();
          localObject8 = "illegal attribute name: ";
          localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
          localObject7 = ((StringBuilder)localObject7).append(str1);
          localObject8 = " at ";
          localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
          localObject7 = ((StringBuilder)localObject7).append(this);
          localObject7 = ((StringBuilder)localObject7).toString();
          localRuntimeException.<init>((String)localObject7);
          throw localRuntimeException;
        }
        int i3 = -1;
        if (i != i3)
        {
          i3 = 0;
          String str3 = str1.substring(i3, i);
          i3 = i + 1;
          str1 = str1.substring(i3);
          String str2 = getNamespace(str3);
          if (str2 == null)
          {
            localObject3 = new java/lang/RuntimeException;
            localObject7 = new java/lang/StringBuilder;
            ((StringBuilder)localObject7).<init>();
            localObject8 = "Undefined Prefix: ";
            localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
            localObject7 = ((StringBuilder)localObject7).append(str3);
            localObject8 = " in ";
            localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
            localObject7 = ((StringBuilder)localObject7).append(this);
            localObject7 = ((StringBuilder)localObject7).toString();
            ((RuntimeException)localObject3).<init>((String)localObject7);
            throw ((Throwable)localObject3);
          }
          Object localObject3 = attributes;
          localObject3[j] = str2;
          localObject3 = attributes;
          int i8 = j + 1;
          localObject3[i8] = str3;
          localObject3 = attributes;
          i8 = j + 2;
          localObject3[i8] = str1;
          int i4 = attributeCount;
          i4 <<= 2;
          i8 = 4;
          k = i4 - i8;
          while (k > j)
          {
            Object localObject4 = attributes;
            i8 = k + 2;
            localObject4 = localObject4[i8];
            boolean bool5 = str1.equals(localObject4);
            if (bool5)
            {
              Object localObject5 = attributes;
              localObject5 = localObject5[k];
              boolean bool6 = str2.equals(localObject5);
              if (bool6)
              {
                localObject6 = new java/lang/StringBuilder;
                ((StringBuilder)localObject6).<init>();
                String str9 = "Duplicate Attribute: {";
                localObject6 = ((StringBuilder)localObject6).append(str9);
                localObject6 = ((StringBuilder)localObject6).append(str2);
                str9 = "}";
                localObject6 = ((StringBuilder)localObject6).append(str9);
                localObject6 = ((StringBuilder)localObject6).append(str1);
                localObject6 = ((StringBuilder)localObject6).toString();
                exception((String)localObject6);
              }
            }
            k += -4;
          }
        }
        j += -4;
      }
    }
    Object localObject6 = name;
    int i9 = 58;
    int i = ((String)localObject6).indexOf(i9);
    String str10;
    if (i == 0)
    {
      localObject6 = new java/lang/StringBuilder;
      ((StringBuilder)localObject6).<init>();
      str10 = "illegal tag name: ";
      localObject6 = ((StringBuilder)localObject6).append(str10);
      str10 = name;
      localObject6 = ((StringBuilder)localObject6).append(str10);
      localObject6 = ((StringBuilder)localObject6).toString();
      exception((String)localObject6);
    }
    for (;;)
    {
      localObject6 = prefix;
      localObject6 = getNamespace((String)localObject6);
      namespace = ((String)localObject6);
      localObject6 = namespace;
      if (localObject6 == null)
      {
        localObject6 = prefix;
        if (localObject6 != null)
        {
          localObject6 = new java/lang/StringBuilder;
          ((StringBuilder)localObject6).<init>();
          str10 = "undefined prefix: ";
          localObject6 = ((StringBuilder)localObject6).append(str10);
          str10 = prefix;
          localObject6 = ((StringBuilder)localObject6).append(str10);
          localObject6 = ((StringBuilder)localObject6).toString();
          exception((String)localObject6);
        }
        localObject6 = "";
        namespace = ((String)localObject6);
      }
      return bool1;
      int i5 = -1;
      if (i != i5)
      {
        String str7 = name;
        int i10 = 0;
        str7 = str7.substring(i10, i);
        prefix = str7;
        str7 = name;
        i10 = i + 1;
        str7 = str7.substring(i10);
        name = str7;
      }
    }
  }
  
  public void defineEntityReplacementText(String paramString1, String paramString2)
    throws XmlPullParserException
  {}
  
  private final String[] ensureCapacity(String[] paramArrayOfString, int paramInt)
  {
    int k = 0;
    int i = paramArrayOfString.length;
    if (i >= paramInt) {}
    String[] arrayOfString1;
    Object localObject;
    for (String[] arrayOfString2 = paramArrayOfString;; localObject = arrayOfString1)
    {
      return arrayOfString2;
      int j = paramInt + 16;
      arrayOfString1 = new String[j];
      j = paramArrayOfString.length;
      System.arraycopy(paramArrayOfString, k, arrayOfString1, k, j);
    }
  }
  
  private final void exception(String paramString)
    throws XmlPullParserException
  {
    XmlPullParserException localXmlPullParserException = new org/xmlpull/v1/XmlPullParserException;
    Throwable localThrowable = null;
    localXmlPullParserException.<init>(paramString, this, localThrowable);
    throw localXmlPullParserException;
  }
  
  public int getAttributeCount()
  {
    int i = attributeCount;
    return i;
  }
  
  public String getAttributeName(int paramInt)
  {
    int i = attributeCount;
    if (paramInt >= i)
    {
      localObject = new java/lang/IndexOutOfBoundsException;
      ((IndexOutOfBoundsException)localObject).<init>();
      throw ((Throwable)localObject);
    }
    Object localObject = attributes;
    int j = paramInt << 2;
    j += 2;
    localObject = localObject[j];
    return (String)localObject;
  }
  
  public String getAttributeNamespace(int paramInt)
  {
    int i = attributeCount;
    if (paramInt >= i)
    {
      localObject = new java/lang/IndexOutOfBoundsException;
      ((IndexOutOfBoundsException)localObject).<init>();
      throw ((Throwable)localObject);
    }
    Object localObject = attributes;
    int j = paramInt << 2;
    localObject = localObject[j];
    return (String)localObject;
  }
  
  public String getAttributePrefix(int paramInt)
  {
    int i = attributeCount;
    if (paramInt >= i)
    {
      localObject = new java/lang/IndexOutOfBoundsException;
      ((IndexOutOfBoundsException)localObject).<init>();
      throw ((Throwable)localObject);
    }
    Object localObject = attributes;
    int j = paramInt << 2;
    j += 1;
    localObject = localObject[j];
    return (String)localObject;
  }
  
  public String getAttributeType(int paramInt)
  {
    String str = "CDATA";
    return str;
  }
  
  public String getAttributeValue(int paramInt)
  {
    int i = attributeCount;
    if (paramInt >= i)
    {
      localObject = new java/lang/IndexOutOfBoundsException;
      ((IndexOutOfBoundsException)localObject).<init>();
      throw ((Throwable)localObject);
    }
    Object localObject = attributes;
    int j = paramInt << 2;
    j += 3;
    localObject = localObject[j];
    return (String)localObject;
  }
  
  public String getAttributeValue(String paramString1, String paramString2)
  {
    int j = attributeCount;
    j <<= 2;
    int k = 4;
    int i = j - k;
    if (i >= 0)
    {
      Object localObject1 = attributes;
      k = i + 2;
      localObject1 = localObject1[k];
      boolean bool1 = ((String)localObject1).equals(paramString2);
      if (bool1) {
        if (paramString1 != null)
        {
          Object localObject2 = attributes;
          localObject2 = localObject2[i];
          boolean bool2 = ((String)localObject2).equals(paramString1);
          if (!bool2) {}
        }
        else
        {
          localObject3 = attributes;
          k = i + 3;
        }
      }
    }
    for (Object localObject3 = localObject3[k];; localObject3 = null)
    {
      return (String)localObject3;
      i += -4;
      break;
    }
  }
  
  public int getColumnNumber()
  {
    int i = -1;
    return i;
  }
  
  public int getDepth()
  {
    int i = depth;
    return i;
  }
  
  public int getEventType()
    throws XmlPullParserException
  {
    int i = type;
    return i;
  }
  
  public boolean getFeature(String paramString)
  {
    String str = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
    boolean bool = str.equals(paramString);
    if (bool) {}
    for (bool = processNsp;; bool = false) {
      return bool;
    }
  }
  
  public String getInputEncoding()
  {
    String str = encoding;
    return str;
  }
  
  public int getLineNumber()
  {
    int i = -1;
    return i;
  }
  
  public String getName()
  {
    String str = name;
    return str;
  }
  
  public String getNamespace()
  {
    String str = namespace;
    return str;
  }
  
  public String getNamespace(String paramString)
  {
    String str1 = "xml";
    boolean bool1 = str1.equals(paramString);
    String str2;
    if (bool1) {
      str2 = "http://www.w3.org/XML/1998/namespace";
    }
    for (;;)
    {
      return str2;
      str2 = "xmlns";
      boolean bool2 = str2.equals(paramString);
      if (bool2)
      {
        String str3 = "http://www.w3.org/2000/xmlns/";
      }
      else
      {
        int j = depth;
        j = getNamespaceCount(j);
        j <<= 1;
        int k = 2;
        int i = j - k;
        for (;;)
        {
          if (i < 0) {
            break label147;
          }
          if (paramString == null)
          {
            localObject1 = nspStack;
            localObject1 = localObject1[i];
            if (localObject1 != null) {
              break label139;
            }
            localObject1 = nspStack;
            k = i + 1;
            localObject1 = localObject1[k];
            break;
          }
          Object localObject1 = nspStack;
          localObject1 = localObject1[i];
          boolean bool3 = paramString.equals(localObject1);
          if (bool3)
          {
            localObject2 = nspStack;
            k = i + 1;
            localObject2 = localObject2[k];
            break;
          }
          label139:
          i += -2;
        }
        label147:
        Object localObject2 = null;
      }
    }
  }
  
  public int getNamespaceCount(int paramInt)
  {
    int i = depth;
    if (paramInt > i)
    {
      localObject = new java/lang/IndexOutOfBoundsException;
      ((IndexOutOfBoundsException)localObject).<init>();
      throw ((Throwable)localObject);
    }
    Object localObject = nspCounts;
    int j = localObject[paramInt];
    return j;
  }
  
  public String getNamespacePrefix(int paramInt)
  {
    Object localObject = nspStack;
    int i = paramInt << 1;
    localObject = localObject[i];
    return (String)localObject;
  }
  
  public String getNamespaceUri(int paramInt)
  {
    Object localObject = nspStack;
    int i = paramInt << 1;
    i += 1;
    localObject = localObject[i];
    return (String)localObject;
  }
  
  public String getPositionDescription()
  {
    char c3 = ' ';
    int i8 = 16;
    int i7 = 3;
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    int k = type;
    String[] arrayOfString = TYPES;
    int i4 = arrayOfString.length;
    if (k < i4)
    {
      localObject1 = TYPES;
      i4 = type;
    }
    Object localObject3;
    for (Object localObject1 = localObject1[i4];; localObject3 = "unknown")
    {
      localStringBuffer.<init>((String)localObject1);
      localStringBuffer.append(c3);
      int m = type;
      i4 = 2;
      if (m != i4)
      {
        m = type;
        if (m != i7) {
          break label572;
        }
      }
      boolean bool1 = degenerated;
      if (bool1)
      {
        String str2 = "(empty) ";
        localStringBuffer.append(str2);
      }
      char c1 = '<';
      localStringBuffer.append(c1);
      int n = type;
      if (n == i7)
      {
        n = 47;
        localStringBuffer.append(n);
      }
      Object localObject2 = prefix;
      if (localObject2 != null)
      {
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str6 = "{";
        localObject2 = ((StringBuilder)localObject2).append(str6);
        str6 = namespace;
        localObject2 = ((StringBuilder)localObject2).append(str6);
        str6 = "}";
        localObject2 = ((StringBuilder)localObject2).append(str6);
        str6 = prefix;
        localObject2 = ((StringBuilder)localObject2).append(str6);
        str6 = ":";
        localObject2 = ((StringBuilder)localObject2).append(str6);
        localObject2 = ((StringBuilder)localObject2).toString();
        localStringBuffer.append((String)localObject2);
      }
      localObject2 = name;
      localStringBuffer.append((String)localObject2);
      int i1 = attributeCount;
      int i = i1 << 2;
      int j = 0;
      while (j < i)
      {
        localStringBuffer.append(c3);
        localObject3 = attributes;
        int i5 = j + 1;
        localObject3 = localObject3[i5];
        if (localObject3 != null)
        {
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          localObject4 = "{";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
          localObject4 = attributes;
          localObject4 = localObject4[j];
          localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
          localObject4 = "}";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
          localObject4 = attributes;
          i7 = j + 1;
          localObject4 = localObject4[i7];
          localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
          localObject4 = ":";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
          localObject3 = ((StringBuilder)localObject3).toString();
          localStringBuffer.append((String)localObject3);
        }
        localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        Object localObject4 = attributes;
        i7 = j + 2;
        localObject4 = localObject4[i7];
        localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
        localObject4 = "='";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
        localObject4 = attributes;
        i7 = j + 3;
        localObject4 = localObject4[i7];
        localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
        localObject4 = "'";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
        localObject3 = ((StringBuilder)localObject3).toString();
        localStringBuffer.append((String)localObject3);
        j += 4;
      }
    }
    char c2 = '>';
    localStringBuffer.append(c2);
    for (;;)
    {
      String str3 = localStringBuffer.toString();
      return str3;
      label572:
      int i2 = type;
      int i6 = 7;
      if (i2 != i6)
      {
        i2 = type;
        i6 = 4;
        if (i2 != i6)
        {
          String str4 = getText();
          localStringBuffer.append(str4);
        }
        else
        {
          boolean bool2 = isWhitespace;
          if (bool2)
          {
            String str5 = "(whitespace)";
            localStringBuffer.append(str5);
          }
          else
          {
            String str1 = getText();
            int i3 = str1.length();
            if (i3 > i8)
            {
              StringBuilder localStringBuilder = new java/lang/StringBuilder;
              localStringBuilder.<init>();
              i6 = 0;
              String str7 = str1.substring(i6, i8);
              localStringBuilder = localStringBuilder.append(str7);
              str7 = "...";
              localStringBuilder = localStringBuilder.append(str7);
              str1 = localStringBuilder.toString();
            }
            localStringBuffer.append(str1);
          }
        }
      }
    }
  }
  
  public String getPrefix()
  {
    String str = prefix;
    return str;
  }
  
  public Object getProperty(String paramString)
  {
    Object localObject = null;
    return localObject;
  }
  
  public String getText()
  {
    String str = text;
    return str;
  }
  
  public char[] getTextCharacters(int[] paramArrayOfInt)
  {
    int i3 = 1;
    int i2 = -1;
    int i1 = 0;
    int i = type;
    int m = 4;
    char[] arrayOfChar;
    if (i >= m)
    {
      paramArrayOfInt[i1] = i1;
      String str1 = text;
      int j = str1.length();
      paramArrayOfInt[i3] = j;
      String str2 = text;
      int k = str2.length();
      arrayOfChar = new char[k];
      localObject = text;
      String str3 = text;
      int n = str3.length();
      ((String)localObject).getChars(i1, n, arrayOfChar, i1);
    }
    for (Object localObject = arrayOfChar;; localObject = null)
    {
      return (char[])localObject;
      paramArrayOfInt[i1] = i2;
      paramArrayOfInt[i3] = i2;
    }
  }
  
  public int getWapCode()
  {
    int i = wapCode;
    return i;
  }
  
  public Object getWapExtensionData()
  {
    Object localObject = wapExtensionData;
    return localObject;
  }
  
  public boolean isAttributeDefault(int paramInt)
  {
    boolean bool = false;
    return bool;
  }
  
  public boolean isEmptyElementTag()
    throws XmlPullParserException
  {
    int i = type;
    int j = 2;
    if (i != j)
    {
      String str = "Wrong event type";
      exception(str);
    }
    boolean bool = degenerated;
    return bool;
  }
  
  public boolean isWhitespace()
    throws XmlPullParserException
  {
    int i = type;
    int j = 4;
    if (i != j)
    {
      i = type;
      j = 7;
      if (i != j)
      {
        i = type;
        j = 5;
        if (i != j)
        {
          String str = "Wrong event type";
          exception(str);
        }
      }
    }
    boolean bool = isWhitespace;
    return bool;
  }
  
  public int next()
    throws XmlPullParserException, IOException
  {
    int m = 4;
    int j = 1;
    isWhitespace = j;
    int i = 9999;
    String str1;
    do
    {
      str1 = text;
      nextImpl();
      j = type;
      if (j < i) {
        i = type;
      }
      j = 5;
    } while (i > j);
    if (i >= m) {
      if (str1 != null)
      {
        localObject1 = text;
        if (localObject1 != null) {
          break label173;
        }
      }
    }
    label173:
    Object localObject2;
    for (Object localObject1 = str1;; localObject2 = ((StringBuilder)localObject2).toString())
    {
      text = ((String)localObject1);
      int k = peekId();
      switch (k)
      {
      }
      type = i;
      k = type;
      if (k > m) {
        type = m;
      }
      k = type;
      return k;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject2 = ((StringBuilder)localObject2).append(str1);
      String str2 = text;
      localObject2 = ((StringBuilder)localObject2).append(str2);
    }
  }
  
  private final void nextImpl()
    throws IOException, XmlPullParserException
  {
    int i8 = 4;
    int i7 = -2;
    String str2 = null;
    int i6 = 3;
    int i4 = 1;
    int k = type;
    if (k == i6)
    {
      k = depth;
      int m;
      k -= i4;
      depth = m;
    }
    boolean bool = degenerated;
    if (bool)
    {
      type = i6;
      bool = false;
      degenerated = bool;
    }
    for (;;)
    {
      return;
      text = str2;
      prefix = str2;
      name = str2;
      int n;
      for (int i = peekId(); i == 0; i = peekId())
      {
        nextId = i7;
        n = readByte();
        selectPage(n, i4);
      }
      nextId = i7;
      Object localObject2;
      String str1;
      Object localObject3;
      switch (i)
      {
      default: 
        parseElement(i);
        break;
      case -1: 
        type = i4;
        break;
      case 1: 
        n = depth;
        int i1;
        n -= i4;
        int j = i1 << 2;
        type = i6;
        Object localObject1 = elementStack;
        localObject1 = localObject1[j];
        namespace = ((String)localObject1);
        localObject1 = elementStack;
        int i5 = j + 1;
        localObject1 = localObject1[i5];
        prefix = ((String)localObject1);
        localObject1 = elementStack;
        i5 = j + 2;
        localObject1 = localObject1[i5];
        name = ((String)localObject1);
        break;
      case 2: 
        int i2 = 6;
        type = i2;
        i2 = readInt();
        char c = (char)i2;
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        str1 = "";
        localObject2 = ((StringBuilder)localObject2).append(str1);
        localObject2 = ((StringBuilder)localObject2).append(c);
        localObject2 = ((StringBuilder)localObject2).toString();
        text = ((String)localObject2);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        str1 = "#";
        localObject2 = ((StringBuilder)localObject2).append(str1);
        localObject2 = ((StringBuilder)localObject2).append(c);
        localObject2 = ((StringBuilder)localObject2).toString();
        name = ((String)localObject2);
        break;
      case 3: 
        type = i8;
        localObject2 = readStrI();
        text = ((String)localObject2);
        break;
      case 64: 
      case 65: 
      case 66: 
      case 128: 
      case 129: 
      case 130: 
      case 192: 
      case 193: 
      case 194: 
      case 195: 
        int i3 = 64;
        type = i3;
        wapCode = i;
        localObject3 = parseWapExtension(i);
        wapExtensionData = localObject3;
        break;
      case 67: 
        localObject3 = new java/lang/RuntimeException;
        str1 = "PI curr. not supp.";
        ((RuntimeException)localObject3).<init>(str1);
        throw ((Throwable)localObject3);
      case 131: 
        type = i8;
        localObject3 = readStrT();
        text = ((String)localObject3);
      }
    }
  }
  
  public int nextTag()
    throws XmlPullParserException, IOException
  {
    next();
    int i = type;
    int m = 4;
    if (i == m)
    {
      boolean bool = isWhitespace;
      if (bool) {
        next();
      }
    }
    int j = type;
    m = 3;
    if (j != m)
    {
      j = type;
      m = 2;
      if (j != m)
      {
        String str = "unexpected type";
        exception(str);
      }
    }
    int k = type;
    return k;
  }
  
  public String nextText()
    throws XmlPullParserException, IOException
  {
    int i = type;
    int k = 2;
    if (i != k)
    {
      String str2 = "precondition: START_TAG";
      exception(str2);
    }
    next();
    int j = type;
    k = 4;
    String str1;
    if (j == k)
    {
      str1 = getText();
      next();
    }
    for (;;)
    {
      j = type;
      k = 3;
      if (j != k)
      {
        String str3 = "END_TAG expected";
        exception(str3);
      }
      return str1;
      str1 = "";
    }
  }
  
  public int nextToken()
    throws XmlPullParserException, IOException
  {
    int i = 1;
    isWhitespace = i;
    nextImpl();
    i = type;
    return i;
  }
  
  void parseElement(int paramInt)
    throws IOException, XmlPullParserException
  {
    int i9 = 1;
    int i8 = 0;
    int m = 2;
    type = m;
    Object localObject1 = tagTable;
    int i3 = paramInt & 0x3F;
    localObject1 = resolveId((String[])localObject1, i3);
    name = ((String)localObject1);
    attributeCount = i8;
    int n = paramInt + 128;
    if (n != 0) {
      readAttr();
    }
    n = paramInt & 0x40;
    int k;
    int i;
    if (n == 0)
    {
      n = i9;
      degenerated = n;
      n = depth;
      i3 = n + 1;
      depth = i3;
      k = n << 2;
      String[] arrayOfString = elementStack;
      i3 = k + 4;
      arrayOfString = ensureCapacity(arrayOfString, i3);
      elementStack = arrayOfString;
      arrayOfString = elementStack;
      i3 = k + 3;
      Object localObject4 = name;
      arrayOfString[i3] = localObject4;
      int i1 = depth;
      int[] arrayOfInt3 = nspCounts;
      int i4 = arrayOfInt3.length;
      if (i1 >= i4)
      {
        i1 = depth;
        i1 += 4;
        int[] arrayOfInt1 = new int[i1];
        arrayOfInt2 = nspCounts;
        int[] arrayOfInt4 = nspCounts;
        i5 = arrayOfInt4.length;
        System.arraycopy(arrayOfInt2, i8, arrayOfInt1, i8, i5);
        nspCounts = arrayOfInt1;
      }
      int[] arrayOfInt2 = nspCounts;
      int i5 = depth;
      localObject4 = nspCounts;
      i8 = depth;
      i8 -= i9;
      int i7 = localObject4[i8];
      arrayOfInt2[i5] = i7;
      int i2 = attributeCount;
      i = i2 - i9;
    }
    String str2;
    for (;;)
    {
      if (i <= 0) {
        break label414;
      }
      int j = 0;
      for (;;)
      {
        if (j < i)
        {
          String str1 = getAttributeName(i);
          str2 = getAttributeName(j);
          boolean bool1 = str1.equals(str2);
          if (bool1)
          {
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            str2 = "Duplicate Attribute: ";
            localObject2 = ((StringBuilder)localObject2).append(str2);
            str2 = getAttributeName(i);
            localObject2 = ((StringBuilder)localObject2).append(str2);
            localObject2 = ((StringBuilder)localObject2).toString();
            exception((String)localObject2);
          }
          j += 1;
          continue;
          Object localObject2 = i8;
          break;
        }
      }
      i += -1;
    }
    label414:
    boolean bool2 = processNsp;
    if (bool2) {
      adjustNsp();
    }
    for (;;)
    {
      Object localObject3 = elementStack;
      str2 = namespace;
      localObject3[k] = str2;
      localObject3 = elementStack;
      int i6 = k + 1;
      String str3 = prefix;
      localObject3[i6] = str3;
      localObject3 = elementStack;
      i6 = k + 2;
      str3 = name;
      localObject3[i6] = str3;
      return;
      localObject3 = "";
      namespace = ((String)localObject3);
    }
  }
  
  public Object parseWapExtension(int paramInt)
    throws IOException, XmlPullParserException
  {
    Object localObject3 = null;
    Object localObject1;
    switch (paramInt)
    {
    default: 
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      String str = "illegal id: ";
      localObject1 = ((StringBuilder)localObject1).append(str);
      localObject1 = ((StringBuilder)localObject1).append(paramInt);
      localObject1 = ((StringBuilder)localObject1).toString();
      exception((String)localObject1);
      localObject1 = localObject3;
    }
    for (;;)
    {
      return localObject1;
      localObject1 = readStrI();
      continue;
      localObject1 = new java/lang/Integer;
      int k = readInt();
      ((Integer)localObject1).<init>(k);
      continue;
      localObject1 = localObject3;
      continue;
      int i = readInt();
      byte[] arrayOfByte = new byte[i];
      while (i > 0)
      {
        localObject1 = in;
        k = arrayOfByte.length;
        k -= i;
        int j = ((InputStream)localObject1).read(arrayOfByte, k, i);
        i -= j;
      }
      Object localObject2 = arrayOfByte;
    }
  }
  
  private int peekId()
    throws IOException
  {
    int i = nextId;
    int k = -2;
    if (i == k)
    {
      InputStream localInputStream = in;
      j = localInputStream.read();
      nextId = j;
    }
    int j = nextId;
    return j;
  }
  
  public void readAttr()
    throws IOException, XmlPullParserException
  {
    int i7 = 128;
    int i6 = 0;
    int m = readByte();
    int j = 0;
    int k = j;
    for (;;)
    {
      int n = 1;
      if (m == n) {
        break;
      }
      while (m == 0)
      {
        n = readByte();
        selectPage(n, i6);
        m = readByte();
      }
      String[] arrayOfString = attrStartTable;
      String str1 = resolveId(arrayOfString, m);
      int i1 = 61;
      int i = str1.indexOf(i1);
      i1 = -1;
      StringBuffer localStringBuffer;
      if (i == i1)
      {
        localStringBuffer = new java/lang/StringBuffer;
        localStringBuffer.<init>();
        m = readByte();
        label110:
        if ((m <= i7) && (m != 0))
        {
          i1 = 2;
          if (m != i1)
          {
            i1 = 3;
            if (m != i1)
            {
              i1 = 131;
              if (m != i1)
              {
                i1 = 64;
                if (m >= i1)
                {
                  i1 = 66;
                  if (m <= i1) {}
                }
                else
                {
                  if (m < i7) {
                    break label494;
                  }
                  i1 = 130;
                  if (m > i1) {
                    break label494;
                  }
                }
              }
            }
          }
        }
        switch (m)
        {
        default: 
          Object localObject1 = attrValueTable;
          localObject1 = resolveId((String[])localObject1, m);
          localStringBuffer.append((String)localObject1);
        }
      }
      for (;;)
      {
        m = readByte();
        break label110;
        localStringBuffer = new java/lang/StringBuffer;
        int i2 = i + 1;
        String str2 = str1.substring(i2);
        localStringBuffer.<init>(str2);
        str1 = str1.substring(i6, i);
        break;
        int i3 = readByte();
        selectPage(i3, i6);
        continue;
        i3 = readInt();
        i3 = (char)i3;
        localStringBuffer.append(i3);
        continue;
        localObject2 = readStrI();
        localStringBuffer.append((String)localObject2);
        continue;
        localObject2 = parseWapExtension(m);
        localObject2 = resolveWapExtension(m, localObject2);
        localStringBuffer.append((String)localObject2);
        continue;
        localObject2 = readStrT();
        localStringBuffer.append((String)localObject2);
      }
      label494:
      Object localObject2 = attributes;
      int i5 = k + 4;
      localObject2 = ensureCapacity((String[])localObject2, i5);
      attributes = ((String[])localObject2);
      localObject2 = attributes;
      j = k + 1;
      String str3 = "";
      localObject2[k] = str3;
      localObject2 = attributes;
      k = j + 1;
      str3 = null;
      localObject2[j] = str3;
      localObject2 = attributes;
      j = k + 1;
      localObject2[k] = str1;
      localObject2 = attributes;
      k = j + 1;
      str3 = localStringBuffer.toString();
      localObject2[j] = str3;
      int i4 = attributeCount;
      i4 += 1;
      attributeCount = i4;
    }
  }
  
  int readByte()
    throws IOException
  {
    InputStream localInputStream = in;
    int i = localInputStream.read();
    int j = -1;
    if (i == j)
    {
      IOException localIOException = new java/io/IOException;
      String str = "Unexpected EOF";
      localIOException.<init>(str);
      throw localIOException;
    }
    return i;
  }
  
  int readInt()
    throws IOException
  {
    int j = 0;
    int k;
    do
    {
      int i = readByte();
      k = j << 7;
      int m = i & 0x7F;
      j = k | m;
      k = i + 128;
    } while (k != 0);
    return j;
  }
  
  String readStrI()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new java/io/ByteArrayOutputStream;
    localByteArrayOutputStream.<init>();
    boolean bool = true;
    for (;;)
    {
      Object localObject = in;
      int i = ((InputStream)localObject).read();
      String str2;
      if (i == 0)
      {
        isWhitespace = bool;
        String str1 = new java/lang/String;
        localObject = localByteArrayOutputStream.toByteArray();
        str2 = encoding;
        str1.<init>((byte[])localObject, str2);
        localByteArrayOutputStream.close();
        return str1;
      }
      int j = -1;
      if (i == j)
      {
        IOException localIOException = new java/io/IOException;
        str2 = "Unexpected EOF";
        localIOException.<init>(str2);
        throw localIOException;
      }
      int k = 32;
      if (i > k) {
        bool = false;
      }
      localByteArrayOutputStream.write(i);
    }
  }
  
  String readStrT()
    throws IOException
  {
    int j = readInt();
    Object localObject2 = cacheStringTable;
    if (localObject2 == null)
    {
      localObject2 = new java/util/Hashtable;
      ((Hashtable)localObject2).<init>();
      cacheStringTable = ((Hashtable)localObject2);
    }
    localObject2 = cacheStringTable;
    Integer localInteger1 = new java/lang/Integer;
    localInteger1.<init>(j);
    Object localObject1 = ((Hashtable)localObject2).get(localInteger1);
    localObject1 = (String)localObject1;
    if (localObject1 == null)
    {
      int i = j;
      for (;;)
      {
        localObject2 = stringTable;
        int k = localObject2.length;
        if (i >= k) {
          break;
        }
        byte[] arrayOfByte = stringTable;
        int m = arrayOfByte[i];
        if (m == 0) {
          break;
        }
        i += 1;
      }
      localObject1 = new java/lang/String;
      Object localObject3 = stringTable;
      int n = i - j;
      String str = encoding;
      ((String)localObject1).<init>((byte[])localObject3, j, n, str);
      localObject3 = cacheStringTable;
      Integer localInteger2 = new java/lang/Integer;
      localInteger2.<init>(j);
      ((Hashtable)localObject3).put(localInteger2, localObject1);
    }
    return (String)localObject1;
  }
  
  public void require(int paramInt, String paramString1, String paramString2)
    throws XmlPullParserException, IOException
  {
    int i = type;
    if (paramInt == i) {
      if (paramString1 != null)
      {
        String str1 = getNamespace();
        boolean bool1 = paramString1.equals(str1);
        if (!bool1) {}
      }
      else
      {
        if (paramString2 == null) {
          break label119;
        }
        String str2 = getName();
        boolean bool2 = paramString2.equals(str2);
        if (bool2) {
          break label119;
        }
      }
    }
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    String str3 = "expected: ";
    localObject1 = ((StringBuilder)localObject1).append(str3);
    int j = 64;
    if (paramInt == j) {}
    for (Object localObject2 = "WAP Ext.";; localObject2 = ((StringBuilder)localObject2).toString())
    {
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).toString();
      exception((String)localObject1);
      label119:
      return;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = TYPES;
      localObject3 = localObject3[paramInt];
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = " {";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject2 = ((StringBuilder)localObject2).append(paramString1);
      localObject3 = "}";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject2 = ((StringBuilder)localObject2).append(paramString2);
    }
  }
  
  String resolveId(String[] paramArrayOfString, int paramInt)
    throws IOException
  {
    int i1 = -1;
    int j = paramInt & 0x7F;
    int n = 5;
    int i = j - n;
    if (i == i1) {
      wapCode = i1;
    }
    label136:
    String str2;
    for (String str1 = readStrT();; str2 = paramArrayOfString[i])
    {
      return str1;
      if ((i >= 0) && (paramArrayOfString != null))
      {
        int k = paramArrayOfString.length;
        if (i < k)
        {
          localObject1 = paramArrayOfString[i];
          if (localObject1 != null) {
            break label136;
          }
        }
      }
      Object localObject1 = new java/io/IOException;
      Object localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str3 = "id ";
      localObject2 = ((StringBuilder)localObject2).append(str3);
      localObject2 = ((StringBuilder)localObject2).append(paramInt);
      str3 = " undef.";
      localObject2 = ((StringBuilder)localObject2).append(str3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IOException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
      int m = i + 5;
      wapCode = m;
    }
  }
  
  protected String resolveWapExtension(int paramInt, Object paramObject)
  {
    boolean bool = paramObject instanceof byte[];
    StringBuffer localStringBuffer;
    if (bool)
    {
      localStringBuffer = new java/lang/StringBuffer;
      localStringBuffer.<init>();
      paramObject = (byte[])paramObject;
      Object localObject1 = paramObject;
      localObject1 = (byte[])localObject1;
      Object localObject2 = localObject1;
      int i = 0;
      for (;;)
      {
        int j = localObject2.length;
        if (i >= j) {
          break;
        }
        String str1 = "0123456789abcdef";
        int k = localObject2[i];
        k >>= 4;
        k &= 0xF;
        char c1 = str1.charAt(k);
        localStringBuffer.append(c1);
        String str2 = "0123456789abcdef";
        k = localObject2[i];
        k &= 0xF;
        char c2 = str2.charAt(k);
        localStringBuffer.append(c2);
        i += 1;
      }
    }
    for (Object localObject3 = localStringBuffer.toString();; localObject3 = ((StringBuilder)localObject3).toString())
    {
      return (String)localObject3;
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      String str3 = "$(";
      localObject3 = ((StringBuilder)localObject3).append(str3);
      localObject3 = ((StringBuilder)localObject3).append(paramObject);
      str3 = ")";
      localObject3 = ((StringBuilder)localObject3).append(str3);
    }
  }
  
  private void selectPage(int paramInt, boolean paramBoolean)
    throws XmlPullParserException
  {
    Vector localVector1 = tables;
    int i = localVector1.size();
    if ((i == 0) && (paramInt == 0)) {}
    for (;;)
    {
      return;
      i = paramInt * 3;
      Vector localVector2 = tables;
      int j = localVector2.size();
      Object localObject;
      if (i > j)
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str = "Code Page ";
        localObject = ((StringBuilder)localObject).append(str);
        localObject = ((StringBuilder)localObject).append(paramInt);
        str = " undefined!";
        localObject = ((StringBuilder)localObject).append(str);
        localObject = ((StringBuilder)localObject).toString();
        exception((String)localObject);
      }
      int k;
      int m;
      if (paramBoolean)
      {
        localObject = tables;
        k = paramInt * 3;
        m = TAG_TABLE;
        k += m;
        localObject = ((Vector)localObject).elementAt(k);
        localObject = (String[])localObject;
        localObject = (String[])localObject;
        tagTable = ((String[])localObject);
      }
      else
      {
        localObject = tables;
        k = paramInt * 3;
        m = ATTR_START_TABLE;
        k += m;
        localObject = ((Vector)localObject).elementAt(k);
        localObject = (String[])localObject;
        localObject = (String[])localObject;
        attrStartTable = ((String[])localObject);
        localObject = tables;
        k = paramInt * 3;
        m = ATTR_VALUE_TABLE;
        k += m;
        localObject = ((Vector)localObject).elementAt(k);
        localObject = (String[])localObject;
        localObject = (String[])localObject;
        attrValueTable = ((String[])localObject);
      }
    }
  }
  
  public void setAttrStartTable(int paramInt, String[] paramArrayOfString)
  {
    int i = ATTR_START_TABLE;
    setTable(paramInt, i, paramArrayOfString);
  }
  
  public void setAttrValueTable(int paramInt, String[] paramArrayOfString)
  {
    int i = ATTR_VALUE_TABLE;
    setTable(paramInt, i, paramArrayOfString);
  }
  
  public void setFeature(String paramString, boolean paramBoolean)
    throws XmlPullParserException
  {
    String str1 = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
    boolean bool = str1.equals(paramString);
    if (bool) {
      processNsp = paramBoolean;
    }
    for (;;)
    {
      return;
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str2 = "unsupported feature: ";
      localObject = ((StringBuilder)localObject).append(str2);
      localObject = ((StringBuilder)localObject).append(paramString);
      localObject = ((StringBuilder)localObject).toString();
      exception((String)localObject);
    }
  }
  
  public void setInput(InputStream paramInputStream, String paramString)
    throws XmlPullParserException
  {
    in = paramInputStream;
    try
    {
      int n = readByte();
      version = n;
      n = readInt();
      publicIdentifierId = n;
      n = publicIdentifierId;
      if (n == 0) {
        readInt();
      }
      int i = readInt();
      if (paramString != null) {
        break label269;
      }
      switch (i)
      {
      default: 
        UnsupportedEncodingException localUnsupportedEncodingException = new java/io/UnsupportedEncodingException;
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str2 = "";
        localObject2 = ((StringBuilder)localObject2).append(str2);
        localObject2 = ((StringBuilder)localObject2).append(i);
        localObject2 = ((StringBuilder)localObject2).toString();
        localUnsupportedEncodingException.<init>((String)localObject2);
        throw localUnsupportedEncodingException;
      }
    }
    catch (IOException localIOException2)
    {
      IOException localIOException1 = localIOException2;
      localObject1 = "Illegal input format";
      exception((String)localObject1);
    }
    return;
    Object localObject1 = "ISO-8859-1";
    encoding = ((String)localObject1);
    label167:
    int m = readInt();
    localObject1 = new byte[m];
    stringTable = ((byte[])localObject1);
    int k = 0;
    for (;;)
    {
      int i2;
      int j;
      if (k < m)
      {
        localObject1 = stringTable;
        i2 = m - k;
        j = paramInputStream.read((byte[])localObject1, k, i2);
        if (j > 0) {}
      }
      else
      {
        int i1 = 0;
        i2 = 1;
        selectPage(i1, i2);
        i1 = 0;
        boolean bool = false;
        selectPage(i1, bool);
        break;
        String str1 = "UTF-8";
        encoding = str1;
        break label167;
        label269:
        encoding = paramString;
        break label167;
      }
      k += j;
    }
  }
  
  public void setInput(Reader paramReader)
    throws XmlPullParserException
  {
    String str = "InputStream required";
    exception(str);
  }
  
  public void setProperty(String paramString, Object paramObject)
    throws XmlPullParserException
  {
    XmlPullParserException localXmlPullParserException = new org/xmlpull/v1/XmlPullParserException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "unsupported property: ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    localXmlPullParserException.<init>((String)localObject);
    throw localXmlPullParserException;
  }
  
  private final void setTable(int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    Object localObject1 = stringTable;
    if (localObject1 != null)
    {
      localObject1 = new java/lang/RuntimeException;
      String str = "setXxxTable must be called before setInput!";
      ((RuntimeException)localObject1).<init>(str);
      throw ((Throwable)localObject1);
    }
    for (;;)
    {
      localObject1 = tables;
      int i = ((Vector)localObject1).size();
      int j = paramInt1 * 3;
      j += 3;
      if (i >= j) {
        break;
      }
      localVector = tables;
      Object localObject2 = null;
      localVector.addElement(localObject2);
    }
    Vector localVector = tables;
    int k = paramInt1 * 3;
    k += paramInt2;
    localVector.setElementAt(paramArrayOfString, k);
  }
  
  public void setTagTable(int paramInt, String[] paramArrayOfString)
  {
    int i = TAG_TABLE;
    setTable(paramInt, i, paramArrayOfString);
  }
}

/* Location:
 * Qualified Name:     org.kxml2.wap.WbxmlParser
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */