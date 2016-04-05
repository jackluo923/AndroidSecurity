package org.kxml2.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.Reader;
import java.util.Hashtable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class KXmlParser
  implements XmlPullParser
{
  private static final String ILLEGAL_TYPE = "Wrong event type";
  private static final int LEGACY = 999;
  private static final String UNEXPECTED_EOF = "Unexpected EOF";
  private static final int XML_DECL = 998;
  private int attributeCount;
  private String[] attributes;
  private int column;
  private boolean degenerated;
  private int depth;
  private String[] elementStack;
  private String encoding;
  private Hashtable entityMap;
  private String error;
  private boolean isWhitespace;
  private int line;
  private Object location;
  private String name;
  private String namespace;
  private int[] nspCounts;
  private String[] nspStack;
  private int[] peek;
  private int peekCount;
  private String prefix;
  private boolean processNsp;
  private Reader reader;
  private boolean relaxed;
  private char[] srcBuf;
  private int srcCount;
  private int srcPos;
  private Boolean standalone;
  private boolean token;
  private char[] txtBuf;
  private int txtPos;
  private int type;
  private boolean unresolved;
  private String version;
  private boolean wasCR;
  
  public KXmlParser()
  {
    String[] arrayOfString1 = new String[n];
    elementStack = arrayOfString1;
    int i = 8;
    String[] arrayOfString2 = new String[i];
    nspStack = arrayOfString2;
    int j = 4;
    Object localObject1 = new int[j];
    nspCounts = ((int[])localObject1);
    localObject1 = new char[arrayOfChar2];
    txtBuf = ((char[])localObject1);
    localObject1 = new String[n];
    attributes = ((String[])localObject1);
    int k = 2;
    Object localObject2 = new int[k];
    peek = ((int[])localObject2);
    localObject2 = Runtime.getRuntime();
    long l1 = ((Runtime)localObject2).freeMemory();
    long l2 = 1048576L;
    boolean bool = l1 < l2;
    if (!bool) {}
    char[] arrayOfChar1;
    for (int m = 8192;; arrayOfChar1 = arrayOfChar2)
    {
      arrayOfChar1 = new char[m];
      srcBuf = arrayOfChar1;
      return;
    }
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
    label147:
    Object localObject6;
    int i6;
    if (j < m)
    {
      String[] arrayOfString1 = attributes;
      int i5 = j + 2;
      str1 = arrayOfString1[i5];
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
          break label147;
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
          i5 = depth;
          int i9 = localObject1[i5];
          int i10 = i9 + 1;
          localObject1[i5] = i10;
          int k = i9 << 1;
          localObject1 = nspStack;
          i5 = k + 2;
          localObject1 = ensureCapacity((String[])localObject1, i5);
          nspStack = ((String[])localObject1);
          localObject1 = nspStack;
          localObject1[k] = str1;
          localObject1 = nspStack;
          i5 = k + 1;
          localObject6 = attributes;
          i10 = j + 3;
          localObject6 = localObject6[i10];
          localObject1[i5] = localObject6;
          if (str1 != null)
          {
            localObject1 = attributes;
            i5 = j + 3;
            localObject1 = localObject1[i5];
            String str7 = "";
            boolean bool4 = ((String)localObject1).equals(str7);
            if (bool4)
            {
              localObject2 = "illegal empty namespace";
              error((String)localObject2);
            }
          }
          Object localObject2 = attributes;
          i6 = j + 4;
          localObject6 = attributes;
          i10 = attributeCount;
          int i11 = 1;
          i10 -= i11;
          attributeCount = i10;
          i10 <<= 2;
          i10 -= j;
          System.arraycopy(localObject2, i6, localObject6, j, i10);
          j += -4;
        }
      }
    }
    if (bool1)
    {
      int i1 = attributeCount;
      i1 <<= 2;
      i6 = 4;
      j = i1 - i6;
      while (j >= 0)
      {
        String[] arrayOfString2 = attributes;
        i6 = j + 2;
        str1 = arrayOfString2[i6];
        int i2 = 58;
        i = str1.indexOf(i2);
        Object localObject5;
        if (i == 0)
        {
          boolean bool5 = relaxed;
          if (!bool5)
          {
            RuntimeException localRuntimeException = new java/lang/RuntimeException;
            localObject5 = new java/lang/StringBuilder;
            ((StringBuilder)localObject5).<init>();
            localObject6 = "illegal attribute name: ";
            localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
            localObject5 = ((StringBuilder)localObject5).append(str1);
            localObject6 = " at ";
            localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
            localObject5 = ((StringBuilder)localObject5).append(this);
            localObject5 = ((StringBuilder)localObject5).toString();
            localRuntimeException.<init>((String)localObject5);
            throw localRuntimeException;
          }
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
            boolean bool6 = relaxed;
            if (!bool6)
            {
              localObject3 = new java/lang/RuntimeException;
              localObject5 = new java/lang/StringBuilder;
              ((StringBuilder)localObject5).<init>();
              localObject6 = "Undefined Prefix: ";
              localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
              localObject5 = ((StringBuilder)localObject5).append(str3);
              localObject6 = " in ";
              localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
              localObject5 = ((StringBuilder)localObject5).append(this);
              localObject5 = ((StringBuilder)localObject5).toString();
              ((RuntimeException)localObject3).<init>((String)localObject5);
              throw ((Throwable)localObject3);
            }
          }
          localObject3 = attributes;
          localObject3[j] = str2;
          localObject3 = attributes;
          i7 = j + 1;
          localObject3[i7] = str3;
          localObject3 = attributes;
          i7 = j + 2;
          localObject3[i7] = str1;
        }
        j += -4;
      }
    }
    Object localObject3 = name;
    int i7 = 58;
    int i = ((String)localObject3).indexOf(i7);
    if (i == 0)
    {
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      String str8 = "illegal tag name: ";
      localObject3 = ((StringBuilder)localObject3).append(str8);
      str8 = name;
      localObject3 = ((StringBuilder)localObject3).append(str8);
      localObject3 = ((StringBuilder)localObject3).toString();
      error((String)localObject3);
    }
    int i4 = -1;
    if (i != i4)
    {
      localObject4 = name;
      int i8 = 0;
      localObject4 = ((String)localObject4).substring(i8, i);
      prefix = ((String)localObject4);
      localObject4 = name;
      i8 = i + 1;
      localObject4 = ((String)localObject4).substring(i8);
      name = ((String)localObject4);
    }
    Object localObject4 = prefix;
    localObject4 = getNamespace((String)localObject4);
    namespace = ((String)localObject4);
    localObject4 = namespace;
    if (localObject4 == null)
    {
      localObject4 = prefix;
      if (localObject4 != null)
      {
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        String str9 = "undefined prefix: ";
        localObject4 = ((StringBuilder)localObject4).append(str9);
        str9 = prefix;
        localObject4 = ((StringBuilder)localObject4).append(str9);
        localObject4 = ((StringBuilder)localObject4).toString();
        error((String)localObject4);
      }
      localObject4 = "";
      namespace = ((String)localObject4);
    }
    return bool1;
  }
  
  public void defineEntityReplacementText(String paramString1, String paramString2)
    throws XmlPullParserException
  {
    Object localObject = entityMap;
    if (localObject == null)
    {
      localObject = new java/lang/RuntimeException;
      String str = "entity replacement text must be defined after setInput!";
      ((RuntimeException)localObject).<init>(str);
      throw ((Throwable)localObject);
    }
    localObject = entityMap;
    ((Hashtable)localObject).put(paramString1, paramString2);
  }
  
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
  
  private final void error(String paramString)
    throws XmlPullParserException
  {
    boolean bool = relaxed;
    if (bool)
    {
      Object localObject = error;
      if (localObject == null)
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str = "ERR: ";
        localObject = ((StringBuilder)localObject).append(str);
        localObject = ((StringBuilder)localObject).append(paramString);
        localObject = ((StringBuilder)localObject).toString();
        error = ((String)localObject);
      }
    }
    for (;;)
    {
      return;
      exception(paramString);
    }
  }
  
  private final void exception(String paramString)
    throws XmlPullParserException
  {
    int k = 100;
    XmlPullParserException localXmlPullParserException = new org/xmlpull/v1/XmlPullParserException;
    int i = paramString.length();
    if (i < k) {}
    for (Object localObject = paramString;; localObject = ((StringBuilder)localObject).toString())
    {
      Throwable localThrowable = null;
      localXmlPullParserException.<init>((String)localObject, this, localThrowable);
      throw localXmlPullParserException;
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      int j = 0;
      String str = paramString.substring(j, k);
      localObject = ((StringBuilder)localObject).append(str);
      str = "\n";
      localObject = ((StringBuilder)localObject).append(str);
    }
  }
  
  private final String get(int paramInt)
  {
    String str = new java/lang/String;
    char[] arrayOfChar = txtBuf;
    int i = txtPos;
    i -= paramInt;
    str.<init>(arrayOfChar, paramInt, i);
    return str;
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
    int i = column;
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
    boolean bool3 = false;
    String str1 = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
    boolean bool1 = str1.equals(paramString);
    if (bool1) {
      bool1 = processNsp;
    }
    for (;;)
    {
      return bool1;
      String str2 = "relaxed";
      boolean bool2 = isProp(paramString, bool3, str2);
      if (bool2) {
        bool2 = relaxed;
      } else {
        bool2 = bool3;
      }
    }
  }
  
  public String getInputEncoding()
  {
    String str = encoding;
    return str;
  }
  
  public int getLineNumber()
  {
    int i = line;
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
            break label149;
          }
          if (paramString == null)
          {
            localObject1 = nspStack;
            localObject1 = localObject1[i];
            if (localObject1 != null) {
              break label141;
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
          label141:
          i += -2;
        }
        label149:
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
    int i9 = 16;
    int i8 = 3;
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
        if (m != i8) {
          break label687;
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
      if (n == i8)
      {
        n = 47;
        localStringBuffer.append(n);
      }
      Object localObject2 = prefix;
      if (localObject2 != null)
      {
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str5 = "{";
        localObject2 = ((StringBuilder)localObject2).append(str5);
        str5 = namespace;
        localObject2 = ((StringBuilder)localObject2).append(str5);
        str5 = "}";
        localObject2 = ((StringBuilder)localObject2).append(str5);
        str5 = prefix;
        localObject2 = ((StringBuilder)localObject2).append(str5);
        str5 = ":";
        localObject2 = ((StringBuilder)localObject2).append(str5);
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
          localObject6 = "{";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
          localObject6 = attributes;
          localObject6 = localObject6[j];
          localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
          localObject6 = "}";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
          localObject6 = attributes;
          i8 = j + 1;
          localObject6 = localObject6[i8];
          localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
          localObject6 = ":";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
          localObject3 = ((StringBuilder)localObject3).toString();
          localStringBuffer.append((String)localObject3);
        }
        localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        localObject6 = attributes;
        i8 = j + 2;
        localObject6 = localObject6[i8];
        localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
        localObject6 = "='";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
        localObject6 = attributes;
        i8 = j + 3;
        localObject6 = localObject6[i8];
        localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
        localObject6 = "'";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
        localObject3 = ((StringBuilder)localObject3).toString();
        localStringBuffer.append((String)localObject3);
        j += 4;
      }
    }
    char c2 = '>';
    localStringBuffer.append(c2);
    Object localObject4 = new java/lang/StringBuilder;
    ((StringBuilder)localObject4).<init>();
    Object localObject6 = "@";
    localObject4 = ((StringBuilder)localObject4).append((String)localObject6);
    int i6 = line;
    localObject4 = ((StringBuilder)localObject4).append(i6);
    String str6 = ":";
    localObject4 = ((StringBuilder)localObject4).append(str6);
    int i7 = column;
    localObject4 = ((StringBuilder)localObject4).append(i7);
    localObject4 = ((StringBuilder)localObject4).toString();
    localStringBuffer.append((String)localObject4);
    localObject4 = location;
    if (localObject4 != null)
    {
      localObject4 = " in ";
      localStringBuffer.append((String)localObject4);
      localObject4 = location;
      localStringBuffer.append(localObject4);
    }
    for (;;)
    {
      localObject4 = localStringBuffer.toString();
      return (String)localObject4;
      label687:
      int i2 = type;
      i7 = 7;
      if (i2 == i7) {
        break;
      }
      i2 = type;
      i7 = 4;
      if (i2 != i7)
      {
        String str3 = getText();
        localStringBuffer.append(str3);
        break;
      }
      boolean bool2 = isWhitespace;
      if (bool2)
      {
        String str4 = "(whitespace)";
        localStringBuffer.append(str4);
        break;
      }
      String str1 = getText();
      int i3 = str1.length();
      if (i3 > i9)
      {
        localObject5 = new java/lang/StringBuilder;
        ((StringBuilder)localObject5).<init>();
        i7 = 0;
        String str7 = str1.substring(i7, i9);
        localObject5 = ((StringBuilder)localObject5).append(str7);
        str7 = "...";
        localObject5 = ((StringBuilder)localObject5).append(str7);
        str1 = ((StringBuilder)localObject5).toString();
      }
      localStringBuffer.append(str1);
      break;
      Object localObject5 = reader;
      if (localObject5 != null)
      {
        localObject5 = " in ";
        localStringBuffer.append((String)localObject5);
        localObject5 = reader;
        localObject5 = localObject5.toString();
        localStringBuffer.append((String)localObject5);
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
    boolean bool4 = true;
    String str1 = "xmldecl-version";
    boolean bool1 = isProp(paramString, bool4, str1);
    String str2;
    if (bool1) {
      str2 = version;
    }
    for (;;)
    {
      return str2;
      str2 = "xmldecl-standalone";
      boolean bool2 = isProp(paramString, bool4, str2);
      Object localObject1;
      if (bool2)
      {
        localObject1 = standalone;
      }
      else
      {
        localObject1 = "location";
        boolean bool3 = isProp(paramString, bool4, (String)localObject1);
        Object localObject2;
        if (bool3)
        {
          localObject2 = location;
          if (localObject2 != null)
          {
            localObject2 = location;
          }
          else
          {
            localObject2 = reader;
            localObject2 = localObject2.toString();
          }
        }
        else
        {
          localObject2 = null;
        }
      }
    }
  }
  
  public String getText()
  {
    int i = type;
    int k = 4;
    if (i >= k)
    {
      i = type;
      k = 6;
      if (i != k) {
        break label39;
      }
      boolean bool = unresolved;
      if (!bool) {
        break label39;
      }
    }
    label39:
    int j;
    String str2;
    for (String str1 = null;; str2 = get(j))
    {
      return str1;
      j = 0;
    }
  }
  
  public char[] getTextCharacters(int[] paramArrayOfInt)
  {
    int i2 = -1;
    int i1 = 1;
    int n = 0;
    int i = type;
    int m = 4;
    Object localObject;
    if (i >= m)
    {
      i = type;
      m = 6;
      if (i == m)
      {
        paramArrayOfInt[n] = n;
        String str = name;
        int j = str.length();
        paramArrayOfInt[i1] = j;
        localObject = name;
        localObject = ((String)localObject).toCharArray();
      }
    }
    for (;;)
    {
      return (char[])localObject;
      paramArrayOfInt[n] = n;
      int k = txtPos;
      paramArrayOfInt[i1] = k;
      char[] arrayOfChar = txtBuf;
      continue;
      paramArrayOfInt[n] = i2;
      paramArrayOfInt[i1] = i2;
      arrayOfChar = null;
    }
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
  
  private final boolean isProp(String paramString1, boolean paramBoolean, String paramString2)
  {
    String str1 = "http://xmlpull.org/v1/doc/";
    boolean bool1 = paramString1.startsWith(str1);
    if (!bool1) {
      bool1 = false;
    }
    for (;;)
    {
      return bool1;
      if (paramBoolean)
      {
        int i = 42;
        String str2 = paramString1.substring(i);
        boolean bool2 = str2.equals(paramString2);
      }
      else
      {
        int j = 40;
        String str3 = paramString1.substring(j);
        boolean bool3 = str3.equals(paramString2);
      }
    }
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
    int m = 0;
    int k = 4;
    txtPos = m;
    int j = 1;
    isWhitespace = j;
    int i = 9999;
    token = m;
    do
    {
      do
      {
        nextImpl();
        j = type;
        if (j < i) {
          i = type;
        }
        j = 6;
      } while (i > j);
      if (i < k) {
        break;
      }
      j = peekType();
    } while (j >= k);
    type = i;
    j = type;
    if (j > k) {
      type = k;
    }
    j = type;
    return j;
  }
  
  private final void nextImpl()
    throws IOException, XmlPullParserException
  {
    int i4 = 3;
    int i3 = 1;
    boolean bool5 = false;
    String str3 = null;
    Object localObject = reader;
    if (localObject == null)
    {
      localObject = "No Input specified";
      exception((String)localObject);
    }
    int j = type;
    if (j == i4)
    {
      j = depth;
      j -= i3;
      depth = j;
    }
    j = -1;
    attributeCount = j;
    boolean bool1 = degenerated;
    if (bool1)
    {
      degenerated = bool5;
      type = i4;
    }
    for (;;)
    {
      return;
      String str1 = error;
      int m;
      if (str1 != null)
      {
        int i = 0;
        for (;;)
        {
          str1 = error;
          int k = str1.length();
          if (i >= k) {
            break;
          }
          String str2 = error;
          m = str2.charAt(i);
          push(m);
          i += 1;
        }
        error = str3;
        m = 9;
        type = m;
      }
      else
      {
        prefix = str3;
        name = str3;
        namespace = str3;
        m = peekType();
        type = m;
        m = type;
        switch (m)
        {
        case 1: 
        case 5: 
        default: 
          boolean bool2 = token;
          n = parseLegacy(bool2);
          type = n;
          n = type;
          int i2 = 998;
          if (n == i2) {
            break;
          }
          break;
        case 6: 
          pushEntity();
          break;
        case 2: 
          parseStartTag(bool5);
          break;
        case 3: 
          parseEndTag();
        }
      }
    }
    int n = 60;
    boolean bool4 = token;
    if (!bool4) {}
    for (bool4 = i3;; bool4 = bool5)
    {
      pushText(n, bool4);
      n = depth;
      if (n != 0) {
        break;
      }
      boolean bool3 = isWhitespace;
      if (!bool3) {
        break;
      }
      int i1 = 7;
      type = i1;
      break;
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
    boolean bool = true;
    isWhitespace = bool;
    int i = 0;
    txtPos = i;
    token = bool;
    nextImpl();
    i = type;
    return i;
  }
  
  private final void parseDoctype(boolean paramBoolean)
    throws IOException, XmlPullParserException
  {
    int j = 1;
    int k = 0;
    for (;;)
    {
      label6:
      int i = read();
      switch (i)
      {
      default: 
        label56:
        if (!paramBoolean) {
          break label114;
        }
        push(i);
      }
    }
    String str = "Unexpected EOF";
    error(str);
    for (;;)
    {
      return;
      int m;
      if (k == 0) {
        m = 1;
      }
      for (k = m;; k = m)
      {
        break;
        m = 0;
      }
      if (k != 0) {
        break label56;
      }
      j += 1;
      break label56;
      label114:
      break label6;
      if (k != 0) {
        break;
      }
      j += -1;
      if (j != 0) {
        break;
      }
    }
  }
  
  private final void parseEndTag()
    throws IOException, XmlPullParserException
  {
    read();
    read();
    String str1 = readName();
    name = str1;
    skip();
    char c = '>';
    read(c);
    int j = depth;
    int m = 1;
    j -= m;
    int i = j << 2;
    j = depth;
    if (j == 0)
    {
      String str2 = "element stack empty";
      error(str2);
      int k = 9;
      type = k;
    }
    for (;;)
    {
      return;
      boolean bool1 = relaxed;
      if (!bool1)
      {
        String str3 = name;
        Object localObject2 = elementStack;
        int i1 = i + 3;
        localObject2 = localObject2[i1];
        boolean bool2 = str3.equals(localObject2);
        if (!bool2)
        {
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          localObject2 = "expected: /";
          localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
          localObject2 = elementStack;
          i1 = i + 3;
          localObject2 = localObject2[i1];
          localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
          localObject2 = " read: ";
          localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
          localObject2 = name;
          localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
          localObject1 = ((StringBuilder)localObject1).toString();
          error((String)localObject1);
        }
        Object localObject1 = elementStack;
        localObject1 = localObject1[i];
        namespace = ((String)localObject1);
        localObject1 = elementStack;
        int n = i + 1;
        localObject1 = localObject1[n];
        prefix = ((String)localObject1);
        localObject1 = elementStack;
        n = i + 2;
        localObject1 = localObject1[n];
        name = ((String)localObject1);
      }
    }
  }
  
  private final int parseLegacy(boolean paramBoolean)
    throws IOException, XmlPullParserException
  {
    String str1 = "";
    int n = 0;
    read();
    int i = read();
    int i3 = 63;
    Object localObject1;
    if (i == i3)
    {
      i3 = 0;
      i3 = peek(i3);
      int i14 = 120;
      if (i3 != i14)
      {
        i3 = 0;
        i3 = peek(i3);
        i14 = 88;
        if (i3 != i14) {}
      }
      else
      {
        i3 = 1;
        i3 = peek(i3);
        i14 = 109;
        if (i3 != i14)
        {
          i3 = 1;
          i3 = peek(i3);
          i14 = 77;
          if (i3 != i14) {}
        }
        else
        {
          if (paramBoolean)
          {
            i3 = 0;
            i3 = peek(i3);
            push(i3);
            i3 = 1;
            i3 = peek(i3);
            push(i3);
          }
          read();
          read();
          i3 = 0;
          i3 = peek(i3);
          i14 = 108;
          if (i3 != i14)
          {
            i3 = 0;
            i3 = peek(i3);
            i14 = 76;
            if (i3 != i14) {}
          }
          else
          {
            i3 = 1;
            i3 = peek(i3);
            i14 = 32;
            if (i3 <= i14)
            {
              i3 = line;
              i14 = 1;
              if (i3 == i14)
              {
                i3 = column;
                i14 = 4;
                if (i3 <= i14) {}
              }
              else
              {
                String str2 = "PI must not start with xml";
                error(str2);
              }
              boolean bool1 = true;
              parseStartTag(bool1);
              int i4 = attributeCount;
              i14 = 1;
              int i20;
              if (i4 >= i14)
              {
                String str3 = "version";
                Object localObject7 = attributes;
                i20 = 2;
                localObject7 = localObject7[i20];
                boolean bool2 = str3.equals(localObject7);
                if (bool2) {}
              }
              else
              {
                localObject2 = "version expected";
                error((String)localObject2);
              }
              Object localObject2 = attributes;
              int i15 = 3;
              localObject2 = localObject2[i15];
              version = ((String)localObject2);
              int m = 1;
              int i5 = attributeCount;
              if (m < i5)
              {
                String str4 = "encoding";
                Object localObject8 = attributes;
                i20 = 6;
                localObject8 = localObject8[i20];
                boolean bool3 = str4.equals(localObject8);
                if (bool3)
                {
                  Object localObject3 = attributes;
                  int i16 = 7;
                  localObject3 = localObject3[i16];
                  encoding = ((String)localObject3);
                  m += 1;
                }
              }
              int i6 = attributeCount;
              if (m < i6)
              {
                String str5 = "standalone";
                Object localObject9 = attributes;
                i20 = m * 4;
                i20 += 2;
                localObject9 = localObject9[i20];
                boolean bool4 = str5.equals(localObject9);
                if (bool4)
                {
                  Object localObject4 = attributes;
                  int i17 = m * 4;
                  i17 += 3;
                  localObject1 = localObject4[i17];
                  localObject4 = "yes";
                  boolean bool5 = ((String)localObject4).equals(localObject1);
                  if (!bool5) {
                    break label621;
                  }
                  Boolean localBoolean = new java/lang/Boolean;
                  i17 = 1;
                  localBoolean.<init>(i17);
                  standalone = localBoolean;
                  m += 1;
                }
              }
              int i7 = attributeCount;
              if (m != i7)
              {
                String str6 = "illegal xmldecl";
                error(str6);
              }
              i8 = 1;
              isWhitespace = i8;
              i8 = 0;
              txtPos = i8;
            }
          }
        }
      }
    }
    label621:
    int i2;
    int i1;
    for (int i8 = 998;; i11 = 9)
    {
      return i8;
      String str7 = "no";
      boolean bool6 = str7.equals(localObject1);
      if (bool6)
      {
        localObject5 = new java/lang/Boolean;
        boolean bool8 = false;
        ((Boolean)localObject5).<init>(bool8);
        standalone = ((Boolean)localObject5);
        break;
      }
      Object localObject5 = new java/lang/StringBuilder;
      ((StringBuilder)localObject5).<init>();
      String str10 = "illegal standalone value: ";
      localObject5 = ((StringBuilder)localObject5).append(str10);
      localObject5 = ((StringBuilder)localObject5).append((String)localObject1);
      localObject5 = ((StringBuilder)localObject5).toString();
      error((String)localObject5);
      break;
      i2 = 63;
      i1 = 8;
      for (;;)
      {
        int j = 0;
        for (;;)
        {
          int i9 = str1.length();
          if (j >= i9) {
            break;
          }
          i9 = str1.charAt(j);
          read(i9);
          int k;
          j += 1;
        }
        int i10 = 33;
        if (i != i10) {
          break;
        }
        i10 = 0;
        i10 = peek(i10);
        int i18 = 45;
        if (i10 == i18)
        {
          i1 = 9;
          str1 = "--";
          i2 = 45;
        }
        else
        {
          i10 = 0;
          i10 = peek(i10);
          i18 = 91;
          if (i10 == i18)
          {
            i1 = 5;
            str1 = "[CDATA[";
            i2 = 93;
            paramBoolean = true;
          }
          else
          {
            i1 = 10;
            str1 = "DOCTYPE";
            i2 = -1;
          }
        }
      }
      Object localObject6 = new java/lang/StringBuilder;
      ((StringBuilder)localObject6).<init>();
      String str11 = "illegal: <";
      localObject6 = ((StringBuilder)localObject6).append(str11);
      localObject6 = ((StringBuilder)localObject6).append(i);
      localObject6 = ((StringBuilder)localObject6).toString();
      error((String)localObject6);
    }
    int i11 = 10;
    if (i1 == i11) {
      parseDoctype(paramBoolean);
    }
    for (;;)
    {
      i11 = i1;
      break;
      int i19;
      do
      {
        do
        {
          do
          {
            n = i;
            i = read();
            i11 = -1;
            if (i == i11)
            {
              String str8 = "Unexpected EOF";
              error(str8);
              i12 = 9;
              break;
            }
            if (paramBoolean) {
              push(i);
            }
            i12 = 63;
          } while ((i2 != i12) && (i != i2));
          i12 = 0;
          i12 = peek(i12);
        } while (i12 != i2);
        i12 = 1;
        i12 = peek(i12);
        i19 = 62;
      } while (i12 != i19);
      int i12 = 45;
      if (i2 == i12)
      {
        i12 = 45;
        if (n == i12)
        {
          boolean bool7 = relaxed;
          if (!bool7)
          {
            String str9 = "illegal comment delimiter: --->";
            error(str9);
          }
        }
      }
      read();
      read();
      if (paramBoolean)
      {
        int i13 = 63;
        if (i2 != i13)
        {
          i13 = txtPos;
          i19 = 1;
          i13 -= i19;
          txtPos = i13;
        }
      }
    }
  }
  
  private final void parseStartTag(boolean paramBoolean)
    throws IOException, XmlPullParserException
  {
    int i16 = 61;
    char c = '>';
    int i15 = 1;
    int i13 = 0;
    if (!paramBoolean) {
      read();
    }
    String str3 = readName();
    name = str3;
    attributeCount = i13;
    skip();
    String str2 = peek(i13);
    int i1;
    label80:
    label113:
    int n;
    int i14;
    if (paramBoolean)
    {
      i1 = 63;
      if (str2 == i1)
      {
        read();
        read(c);
      }
    }
    else
    {
      i1 = 47;
      if (str2 == i1)
      {
        degenerated = i15;
        read();
        skip();
        read(c);
        i1 = depth;
        int i8 = i1 + 1;
        depth = i8;
        n = i1 << 2;
        String[] arrayOfString1 = elementStack;
        i8 = n + 4;
        arrayOfString1 = ensureCapacity(arrayOfString1, i8);
        elementStack = arrayOfString1;
        arrayOfString1 = elementStack;
        i8 = n + 3;
        Object localObject3 = name;
        arrayOfString1[i8] = localObject3;
        int i2 = depth;
        int[] arrayOfInt3 = nspCounts;
        int i9 = arrayOfInt3.length;
        if (i2 >= i9)
        {
          i2 = depth;
          i2 += 4;
          int[] arrayOfInt1 = new int[i2];
          arrayOfInt2 = nspCounts;
          int[] arrayOfInt4 = nspCounts;
          i10 = arrayOfInt4.length;
          System.arraycopy(arrayOfInt2, i13, arrayOfInt1, i13, i10);
          nspCounts = arrayOfInt1;
        }
        int[] arrayOfInt2 = nspCounts;
        int i10 = depth;
        localObject3 = nspCounts;
        i13 = depth;
        i13 -= i15;
        int i12 = localObject3[i14];
        arrayOfInt2[i10] = i12;
        boolean bool1 = processNsp;
        if (!bool1) {
          break label807;
        }
        adjustNsp();
      }
    }
    for (;;)
    {
      String[] arrayOfString2 = elementStack;
      String str8 = namespace;
      arrayOfString2[n] = str8;
      arrayOfString2 = elementStack;
      int i11 = n + 1;
      String str10 = prefix;
      arrayOfString2[i11] = str10;
      arrayOfString2 = elementStack;
      i11 = n + 2;
      str10 = name;
      arrayOfString2[i11] = str10;
      break label80;
      if ((str2 == str10) && (!paramBoolean))
      {
        read();
        break label113;
      }
      String str4 = -1;
      if (str2 == str4)
      {
        String str5 = "Unexpected EOF";
        error(str5);
        break label80;
      }
      String str1 = readName();
      int i3 = str1.length();
      if (i3 == 0)
      {
        String str6 = "attr name expected";
        error(str6);
        break label113;
      }
      int i4 = attributeCount;
      i11 = i4 + 1;
      attributeCount = i11;
      int j = i4 << 2;
      String[] arrayOfString3 = attributes;
      i11 = j + 4;
      arrayOfString3 = ensureCapacity(arrayOfString3, i11);
      attributes = arrayOfString3;
      arrayOfString3 = attributes;
      int k = j + 1;
      String str9 = "";
      arrayOfString3[j] = str9;
      arrayOfString3 = attributes;
      j = k + 1;
      str9 = null;
      arrayOfString3[k] = str9;
      arrayOfString3 = attributes;
      k = j + 1;
      arrayOfString3[j] = str1;
      skip();
      int i5 = peek(i14);
      if (i5 != i16)
      {
        boolean bool2 = relaxed;
        if (!bool2)
        {
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          str9 = "Attr.value missing f. ";
          localObject1 = ((StringBuilder)localObject1).append(str9);
          localObject1 = ((StringBuilder)localObject1).append(str1);
          localObject1 = ((StringBuilder)localObject1).toString();
          error((String)localObject1);
        }
        Object localObject1 = attributes;
        localObject1[k] = str1;
        break;
      }
      read(i16);
      skip();
      int i = peek(i14);
      int i6 = 39;
      Object localObject2;
      if (i != i6)
      {
        i6 = 34;
        if (i != i6)
        {
          boolean bool3 = relaxed;
          if (!bool3)
          {
            localObject2 = "attr value delimiter missing!";
            error((String)localObject2);
          }
          i = 32;
        }
      }
      for (;;)
      {
        int m = txtPos;
        pushText(i, i15);
        localObject2 = attributes;
        str9 = get(m);
        localObject2[k] = str9;
        txtPos = m;
        int i7 = 32;
        if (i == i7) {
          break;
        }
        read();
        break;
        read();
      }
      label807:
      String str7 = "";
      namespace = str7;
    }
  }
  
  private final int peek(int paramInt)
    throws IOException
  {
    int i9 = 10;
    int i8 = 1;
    int i7 = 0;
    int j = peekCount;
    if (paramInt >= j)
    {
      char[] arrayOfChar1 = srcBuf;
      int k = arrayOfChar1.length;
      Reader localReader;
      if (k <= i8) {
        localReader = reader;
      }
      int i3;
      for (int i = localReader.read();; i = localObject[i3])
      {
        int m = 13;
        if (i != m) {
          break label210;
        }
        wasCR = i8;
        int[] arrayOfInt1 = peek;
        i3 = peekCount;
        int i5 = i3 + 1;
        peekCount = i5;
        arrayOfInt1[i3] = i9;
        break;
        int n = srcPos;
        i3 = srcCount;
        if (n >= i3) {
          break label139;
        }
        localObject = srcBuf;
        i3 = srcPos;
        i5 = i3 + 1;
        srcPos = i5;
      }
      label139:
      Object localObject = reader;
      char[] arrayOfChar3 = srcBuf;
      char[] arrayOfChar4 = srcBuf;
      int i6 = arrayOfChar4.length;
      int i1 = ((Reader)localObject).read(arrayOfChar3, i7, i6);
      srcCount = i1;
      i1 = srcCount;
      if (i1 <= 0) {}
      char[] arrayOfChar2;
      for (i = -1;; i = arrayOfChar2[i7])
      {
        srcPos = i8;
        break;
        arrayOfChar2 = srcBuf;
      }
      label210:
      int i4;
      if (i == i9)
      {
        boolean bool = wasCR;
        if (!bool)
        {
          arrayOfInt2 = peek;
          i4 = peekCount;
          i6 = i4 + 1;
          peekCount = i6;
          arrayOfInt2[i4] = i9;
        }
      }
      for (;;)
      {
        wasCR = i7;
        break;
        arrayOfInt2 = peek;
        i4 = peekCount;
        i6 = i4 + 1;
        peekCount = i6;
        arrayOfInt2[i4] = i;
      }
    }
    int[] arrayOfInt2 = peek;
    int i2 = arrayOfInt2[paramInt];
    return i2;
  }
  
  private final int peekType()
    throws IOException
  {
    int j = 1;
    int i = 0;
    i = peek(i);
    switch (i)
    {
    default: 
      i = 4;
    }
    for (;;)
    {
      return i;
      i = j;
      continue;
      i = 6;
      continue;
      i = peek(j);
      switch (i)
      {
      default: 
        i = 2;
        break;
      case 47: 
        i = 3;
        break;
      case 33: 
      case 63: 
        i = 999;
      }
    }
  }
  
  private final void push(int paramInt)
  {
    int n = 0;
    int i = isWhitespace;
    int k = 32;
    if (paramInt <= k) {}
    int m;
    for (k = 1;; m = n)
    {
      i &= k;
      isWhitespace = i;
      int j = txtPos;
      char[] arrayOfChar3 = txtBuf;
      m = arrayOfChar3.length;
      if (j == m)
      {
        j = txtPos;
        j *= 4;
        j /= 3;
        j += 4;
        char[] arrayOfChar1 = new char[j];
        arrayOfChar2 = txtBuf;
        m = txtPos;
        System.arraycopy(arrayOfChar2, n, arrayOfChar1, n, m);
        txtBuf = arrayOfChar1;
      }
      char[] arrayOfChar2 = txtBuf;
      m = txtPos;
      n = m + 1;
      txtPos = n;
      n = (char)paramInt;
      arrayOfChar2[m] = n;
      return;
    }
  }
  
  private final void pushEntity()
    throws IOException, XmlPullParserException
  {
    int i9 = 35;
    int i7 = 0;
    Hashtable localHashtable2 = 1;
    int m = read();
    push(m);
    int k = txtPos;
    int i = peek(i7);
    m = 59;
    String str1;
    int i1;
    if (i == m)
    {
      read();
      str1 = get(k);
      m = k - localHashtable2;
      txtPos = m;
      boolean bool1 = token;
      if (bool1)
      {
        n = type;
        i6 = 6;
        if (n == i6) {
          name = str1;
        }
      }
      int n = str1.charAt(i7);
      if (n != i9) {
        break label395;
      }
      n = str1.charAt(localHashtable2);
      int i6 = 120;
      if (n != i6) {
        break label374;
      }
      n = 2;
      String str2 = str1.substring(n);
      i6 = 16;
      i1 = Integer.parseInt(str2, i6);
    }
    Object localObject4;
    String str5;
    label374:
    int i3;
    for (i = i1;; i = i3)
    {
      push(i);
      for (;;)
      {
        return;
        i1 = 128;
        if (i >= i1) {
          break;
        }
        i1 = 48;
        if (i >= i1)
        {
          i1 = 57;
          if (i <= i1) {
            break;
          }
        }
        i1 = 97;
        if (i >= i1)
        {
          i1 = 122;
          if (i <= i1) {
            break;
          }
        }
        i1 = 65;
        if (i >= i1)
        {
          i1 = 90;
          if (i <= i1) {
            break;
          }
        }
        i1 = 95;
        if (i == i1) {
          break;
        }
        i1 = 45;
        if ((i == i1) || (i == i9)) {
          break;
        }
        boolean bool2 = relaxed;
        if (!bool2)
        {
          localObject2 = "unterminated entity ref";
          error((String)localObject2);
        }
        Object localObject2 = System.out;
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        String str4 = "broken entitiy: ";
        localObject4 = ((StringBuilder)localObject4).append(str4);
        int i8 = k - localHashtable2;
        str5 = get(i8);
        localObject4 = ((StringBuilder)localObject4).append(str5);
        localObject4 = ((StringBuilder)localObject4).toString();
        ((PrintStream)localObject2).println((String)localObject4);
      }
      int i2 = read();
      push(i2);
      break;
      String str3 = str1.substring(localHashtable2);
      i3 = Integer.parseInt(str3);
    }
    label395:
    Hashtable localHashtable1 = entityMap;
    Object localObject1 = localHashtable1.get(str1);
    localObject1 = (String)localObject1;
    if (localObject1 == null) {}
    int i4;
    for (localHashtable1 = localHashtable2;; i4 = str5)
    {
      unresolved = localHashtable1;
      boolean bool3 = unresolved;
      if (!bool3) {
        break label520;
      }
      bool3 = token;
      if (bool3) {
        break;
      }
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      localObject4 = "unresolved: &";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
      localObject3 = ((StringBuilder)localObject3).append(str1);
      localObject4 = ";";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
      localObject3 = ((StringBuilder)localObject3).toString();
      error((String)localObject3);
      break;
    }
    label520:
    int j = 0;
    for (;;)
    {
      int i5 = ((String)localObject1).length();
      if (j >= i5) {
        break;
      }
      i5 = ((String)localObject1).charAt(j);
      push(i5);
      j += 1;
    }
  }
  
  private final void pushText(int paramInt, boolean paramBoolean)
    throws IOException, XmlPullParserException
  {
    int i4 = 93;
    int i3 = 62;
    int i2 = 2;
    int i1 = 0;
    int n = 32;
    int j = peek(i1);
    int i = 0;
    int k = -1;
    if ((j == k) || (j == paramInt) || ((paramInt == n) && ((j <= n) || (j == i3)))) {}
    do
    {
      return;
      k = 38;
      if (j != k) {
        break;
      }
    } while (!paramBoolean);
    pushEntity();
    label85:
    if ((j == i3) && (i >= i2) && (paramInt != i4))
    {
      String str = "Illegal: ]]>";
      error(str);
    }
    if (j == i4) {
      i += 1;
    }
    for (;;)
    {
      j = peek(i1);
      break;
      int m = 10;
      if (j == m)
      {
        m = type;
        if (m == i2)
        {
          read();
          push(n);
          break label85;
        }
      }
      m = read();
      push(m);
      break label85;
      i = 0;
    }
  }
  
  private final int read()
    throws IOException
  {
    int n = 1;
    int m = 0;
    int j = peekCount;
    int i;
    if (j == 0) {
      i = peek(m);
    }
    for (;;)
    {
      j = peekCount;
      j -= n;
      peekCount = j;
      j = column;
      j += 1;
      column = j;
      j = 10;
      if (i == j)
      {
        j = line;
        j += 1;
        line = j;
        column = n;
      }
      return i;
      int[] arrayOfInt1 = peek;
      i = arrayOfInt1[m];
      arrayOfInt1 = peek;
      int[] arrayOfInt2 = peek;
      int k = arrayOfInt2[n];
      arrayOfInt1[m] = k;
    }
  }
  
  private final void read(char paramChar)
    throws IOException, XmlPullParserException
  {
    char c1 = read();
    if (c1 != paramChar)
    {
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str1 = "expected: '";
      localObject = ((StringBuilder)localObject).append(str1);
      localObject = ((StringBuilder)localObject).append(paramChar);
      str1 = "' actual: '";
      localObject = ((StringBuilder)localObject).append(str1);
      char c2 = (char)c1;
      localObject = ((StringBuilder)localObject).append(c2);
      String str2 = "'";
      localObject = ((StringBuilder)localObject).append(str2);
      localObject = ((StringBuilder)localObject).toString();
      error((String)localObject);
    }
  }
  
  private final String readName()
    throws IOException, XmlPullParserException
  {
    int i4 = 95;
    int i3 = 90;
    int i2 = 65;
    int i1 = 58;
    int n = 0;
    int j = txtPos;
    int i = peek(n);
    int k = 97;
    if (i >= k)
    {
      k = 122;
      if (i <= k) {}
    }
    else if (((i < i2) || (i > i3)) && (i != i4) && (i != i1))
    {
      k = 192;
      if (i < k)
      {
        boolean bool = relaxed;
        if (!bool)
        {
          String str2 = "name expected";
          error(str2);
        }
      }
    }
    int m;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  m = read();
                  push(m);
                  i = peek(n);
                  m = 97;
                  if (i < m) {
                    break;
                  }
                  m = 122;
                } while (i <= m);
              } while ((i >= i2) && (i <= i3));
              m = 48;
              if (i < m) {
                break;
              }
              m = 57;
            } while (i <= m);
          } while (i == i4);
          m = 45;
        } while ((i == m) || (i == i1));
        m = 46;
      } while (i == m);
      m = 183;
    } while (i >= m);
    String str1 = get(j);
    txtPos = j;
    return str1;
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
          return;
        }
        String str2 = getName();
        boolean bool2 = paramString2.equals(str2);
        if (bool2) {
          return;
        }
      }
    }
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject2 = "expected: ";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = TYPES;
    localObject2 = localObject2[paramInt];
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = " {";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).append(paramString1);
    localObject2 = "}";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).append(paramString2);
    localObject1 = ((StringBuilder)localObject1).toString();
    exception((String)localObject1);
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
      bool = false;
      String str2 = "relaxed";
      bool = isProp(paramString, bool, str2);
      if (bool)
      {
        relaxed = paramBoolean;
      }
      else
      {
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        str2 = "unsupported feature: ";
        localObject = ((StringBuilder)localObject).append(str2);
        localObject = ((StringBuilder)localObject).append(paramString);
        localObject = ((StringBuilder)localObject).toString();
        exception((String)localObject);
      }
    }
  }
  
  public void setInput(InputStream paramInputStream, String paramString)
    throws XmlPullParserException
  {
    int i8 = 0;
    int i = i8;
    Object localObject7 = this;
    srcPos = i;
    i8 = 0;
    i = i8;
    localObject7 = this;
    srcCount = i;
    String str1 = paramString;
    IllegalArgumentException localIllegalArgumentException2;
    if (paramInputStream == null)
    {
      localIllegalArgumentException2 = new java/lang/IllegalArgumentException;
      localIllegalArgumentException2.<init>();
      throw localIllegalArgumentException2;
    }
    int i2;
    KXmlParser localKXmlParser1;
    if (str1 == null)
    {
      i2 = 0;
      localKXmlParser1 = this;
    }
    for (;;)
    {
      Exception localException5;
      int i29;
      int i27;
      try
      {
        IllegalArgumentException localIllegalArgumentException1 = srcCount;
        localIllegalArgumentException2 = localIllegalArgumentException1;
        IllegalArgumentException localIllegalArgumentException3 = 4;
        int i9;
        int i21;
        if (localIllegalArgumentException2 < localIllegalArgumentException3)
        {
          localException5 = paramInputStream.read();
          i9 = -1;
          if (localException5 != i9) {}
        }
        else
        {
          KXmlParser localKXmlParser2 = this;
          int j = srcCount;
          i9 = j;
          i21 = 4;
          if (i9 != i21) {}
        }
        switch (i2)
        {
        default: 
          i9 = -65536;
          i9 &= i2;
          i21 = -16842752;
          if (i9 != i21) {
            break label1079;
          }
          str1 = "UTF-16BE";
          Object localObject1 = this;
          localObject1 = srcBuf;
          Object localObject9 = localObject1;
          i21 = 0;
          localObject1 = this;
          localObject1 = srcBuf;
          Object localObject20 = localObject1;
          int i26 = 2;
          int i23 = localObject20[i26];
          i23 <<= 8;
          localObject1 = this;
          localObject1 = srcBuf;
          Object localObject23 = localObject1;
          i29 = 3;
          i27 = localObject23[i29];
          i23 |= i27;
          localObject1 = i23;
          int k = (char)localObject1;
          i23 = k;
          localObject9[i21] = i23;
          int i10 = 1;
          k = i10;
          localObject7 = this;
          srcCount = k;
          if (str1 == null) {
            str1 = "UTF-8";
          }
          KXmlParser localKXmlParser3 = this;
          int m = srcCount;
          int i7 = m;
          InputStreamReader localInputStreamReader = new java/io/InputStreamReader;
          Object localObject2 = localInputStreamReader;
          localObject7 = paramInputStream;
          localObject8 = str1;
          ((InputStreamReader)localObject2).<init>((InputStream)localObject7, (String)localObject8);
          localObject2 = this;
          localObject7 = localInputStreamReader;
          ((KXmlParser)localObject2).setInput((Reader)localObject7);
          localObject2 = paramString;
          localObject7 = this;
          encoding = ((String)localObject2);
          localObject2 = i7;
          localObject7 = this;
          srcCount = localObject2;
          return;
          int i11 = i2 << 8;
          i2 = i11 | localException5;
          localObject2 = this;
          localObject2 = srcBuf;
          Object localObject10 = localObject2;
          localObject2 = this;
          int n = srcCount;
          i21 = n;
          i23 = i21 + 1;
          n = i23;
          localObject7 = this;
          srcCount = n;
          n = localException5;
          n = (char)n;
          i23 = n;
          localObject10[i21] = i23;
        }
      }
      catch (Exception localException6)
      {
        Exception localException4 = localException6;
        XmlPullParserException localXmlPullParserException = new org/xmlpull/v1/XmlPullParserException;
        Object localObject19 = new java/lang/StringBuilder;
        ((StringBuilder)localObject19).<init>();
        String str3 = "Invalid stream or encoding: ";
        localObject19 = ((StringBuilder)localObject19).append(str3);
        str3 = localException4.toString();
        localObject19 = ((StringBuilder)localObject19).append(str3);
        localObject19 = ((StringBuilder)localObject19).toString();
        localObject3 = localXmlPullParserException;
        localObject7 = localObject19;
        localObject8 = this;
        localException3 = localException4;
        ((XmlPullParserException)localObject3).<init>((String)localObject7, (XmlPullParser)localObject8, localException3);
        throw localXmlPullParserException;
      }
      str1 = "UTF-32BE";
      int i12 = 0;
      Object localObject3 = i12;
      localObject7 = this;
      srcCount = localObject3;
      continue;
      str1 = "UTF-32LE";
      i12 = 0;
      localObject3 = i12;
      localObject7 = this;
      srcCount = localObject3;
      continue;
      str1 = "UTF-32BE";
      localObject3 = this;
      localObject3 = srcBuf;
      Object localObject11 = localObject3;
      int i22 = 0;
      Exception localException7 = 60;
      localObject11[i22] = localException7;
      int i13 = 1;
      localObject3 = i13;
      localObject7 = this;
      srcCount = localObject3;
      continue;
      str1 = "UTF-32LE";
      localObject3 = this;
      localObject3 = srcBuf;
      Object localObject12 = localObject3;
      i22 = 0;
      localException7 = 60;
      localObject12[i22] = localException7;
      int i14 = 1;
      localObject3 = i14;
      localObject7 = this;
      srcCount = localObject3;
      continue;
      str1 = "UTF-16BE";
      localObject3 = this;
      localObject3 = srcBuf;
      Object localObject13 = localObject3;
      i22 = 0;
      localException7 = 60;
      localObject13[i22] = localException7;
      localObject3 = this;
      localObject3 = srcBuf;
      localObject13 = localObject3;
      i22 = 1;
      localException7 = 63;
      localObject13[i22] = localException7;
      int i15 = 2;
      localObject3 = i15;
      localObject7 = this;
      srcCount = localObject3;
      continue;
      str1 = "UTF-16LE";
      localObject3 = this;
      localObject3 = srcBuf;
      Object localObject14 = localObject3;
      i22 = 0;
      localException7 = 60;
      localObject14[i22] = localException7;
      localObject3 = this;
      localObject3 = srcBuf;
      localObject14 = localObject3;
      i22 = 1;
      localException7 = 63;
      localObject14[i22] = localException7;
      int i16 = 2;
      localObject3 = i16;
      localObject7 = this;
      srcCount = localObject3;
      continue;
      int i17;
      do
      {
        localException5 = paramInputStream.read();
        i16 = -1;
        if (localException5 == i16) {
          break;
        }
        localObject3 = this;
        localObject3 = srcBuf;
        Object localObject15 = localObject3;
        localObject3 = this;
        Exception localException1 = srcCount;
        i22 = localException1;
        localException7 = i22 + 1;
        localException1 = localException7;
        localObject7 = this;
        srcCount = localException1;
        localException1 = localException5;
        localException1 = (char)localException1;
        localException7 = localException1;
        localObject15[i22] = localException7;
        i17 = 62;
      } while (localException5 != i17);
      String str2 = new java/lang/String;
      Object localObject4 = this;
      localObject4 = srcBuf;
      Object localObject16 = localObject4;
      i22 = 0;
      localObject4 = this;
      Exception localException2 = srcCount;
      localException7 = localException2;
      Object localObject5 = str2;
      localObject7 = localObject16;
      Object localObject8 = i22;
      Exception localException3 = localException7;
      ((String)localObject5).<init>((char[])localObject7, localObject8, localException3);
      localObject16 = "encoding";
      int i4 = str2.indexOf((String)localObject16);
      int i18 = -1;
      if (i4 != i18)
      {
        for (int i5 = i4;; i5 = i4)
        {
          i18 = str2.charAt(i5);
          i22 = 34;
          if (i18 == i22) {
            break;
          }
          i18 = str2.charAt(i5);
          i22 = 39;
          if (i18 == i22) {
            break;
          }
          i4 = i5 + 1;
        }
        i4 = i5 + 1;
        int i3 = str2.charAt(i5);
        int i6 = str2.indexOf(i3, i4);
        str1 = str2.substring(i4, i6);
        continue;
        label1079:
        i18 = -65536;
        i18 &= i2;
        i22 = -131072;
        int i28;
        int i19;
        if (i18 == i22)
        {
          str1 = "UTF-16LE";
          localObject5 = this;
          localObject5 = srcBuf;
          Object localObject17 = localObject5;
          i22 = 0;
          localObject5 = this;
          localObject5 = srcBuf;
          Object localObject21 = localObject5;
          i27 = 3;
          int i24 = localObject21[i27];
          i24 <<= 8;
          localObject5 = this;
          localObject5 = srcBuf;
          Object localObject24 = localObject5;
          i29 = 2;
          i28 = localObject24[i29];
          i24 |= i28;
          localObject5 = i24;
          int i1 = (char)localObject5;
          i24 = i1;
          localObject17[i22] = i24;
          i19 = 1;
          i1 = i19;
          localObject7 = this;
          srcCount = i1;
        }
        else
        {
          i19 = i2 + 65280;
          i22 = -272908544;
          if (i19 == i22)
          {
            str1 = "UTF-8";
            Object localObject6 = this;
            localObject6 = srcBuf;
            Object localObject18 = localObject6;
            i22 = 0;
            localObject6 = this;
            localObject6 = srcBuf;
            Object localObject22 = localObject6;
            i28 = 3;
            int i25 = localObject22[i28];
            localObject18[i22] = i25;
            int i20 = 1;
            localObject6 = i20;
            localObject7 = this;
            srcCount = localObject6;
          }
        }
      }
    }
  }
  
  public void setInput(Reader paramReader)
    throws XmlPullParserException
  {
    String str2 = null;
    int j = 0;
    reader = paramReader;
    int i = 1;
    line = i;
    column = j;
    type = j;
    name = str2;
    namespace = str2;
    degenerated = j;
    i = -1;
    attributeCount = i;
    encoding = str2;
    version = str2;
    standalone = str2;
    if (paramReader == null) {}
    for (;;)
    {
      return;
      srcPos = j;
      srcCount = j;
      peekCount = j;
      depth = j;
      Hashtable localHashtable = new java/util/Hashtable;
      localHashtable.<init>();
      entityMap = localHashtable;
      localHashtable = entityMap;
      String str1 = "amp";
      str2 = "&";
      localHashtable.put(str1, str2);
      localHashtable = entityMap;
      str1 = "apos";
      str2 = "'";
      localHashtable.put(str1, str2);
      localHashtable = entityMap;
      str1 = "gt";
      str2 = ">";
      localHashtable.put(str1, str2);
      localHashtable = entityMap;
      str1 = "lt";
      str2 = "<";
      localHashtable.put(str1, str2);
      localHashtable = entityMap;
      str1 = "quot";
      str2 = "\"";
      localHashtable.put(str1, str2);
    }
  }
  
  public void setProperty(String paramString, Object paramObject)
    throws XmlPullParserException
  {
    boolean bool = true;
    Object localObject = "location";
    bool = isProp(paramString, bool, (String)localObject);
    if (bool)
    {
      location = paramObject;
      return;
    }
    XmlPullParserException localXmlPullParserException = new org/xmlpull/v1/XmlPullParserException;
    localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "unsupported property: ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    localXmlPullParserException.<init>((String)localObject);
    throw localXmlPullParserException;
  }
  
  private final void skip()
    throws IOException
  {
    for (;;)
    {
      int j = 0;
      int i = peek(j);
      j = 32;
      if (i <= j)
      {
        j = -1;
        if (i != j) {}
      }
      else
      {
        return;
      }
      read();
    }
  }
  
  public void skipSubTree()
    throws XmlPullParserException, IOException
  {
    String str = null;
    int m = 2;
    require(m, str, str);
    int j = 1;
    while (j > 0)
    {
      int i = next();
      int k = 3;
      if (i == k) {
        j += -1;
      } else if (i == m) {
        j += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.kxml2.io.KXmlParser
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */