package org.kobjects.xml;

import java.io.IOException;
import java.io.Reader;
import java.util.Hashtable;

public class XmlReader
{
  static final int CDSECT = 5;
  public static final int END_DOCUMENT = 1;
  public static final int END_TAG = 3;
  static final int ENTITY_REF = 6;
  private static final int LEGACY = 999;
  public static final int START_DOCUMENT = 0;
  public static final int START_TAG = 2;
  public static final int TEXT = 4;
  private static final String UNEXPECTED_EOF = "Unexpected EOF";
  private String[] TYPES;
  private int attributeCount;
  private String[] attributes;
  private int column;
  private boolean degenerated;
  private int depth;
  private String[] elementStack;
  private Hashtable entityMap;
  private boolean eof;
  private boolean isWhitespace;
  private int line;
  private String name;
  private int peek0;
  private int peek1;
  private Reader reader;
  public boolean relaxed;
  private char[] srcBuf;
  private int srcCount;
  private int srcPos;
  private String text;
  private char[] txtBuf;
  private int txtPos;
  private int type;
  
  public XmlReader(Reader paramReader)
    throws IOException
  {
    Object localObject = new String[i3];
    elementStack = ((String[])localObject);
    localObject = Runtime.getRuntime();
    long l1 = ((Runtime)localObject).freeMemory();
    long l2 = 1048576L;
    boolean bool = l1 < l2;
    String str4;
    if (!bool)
    {
      int i = 8192;
      char[] arrayOfChar = new char[i];
      srcBuf = arrayOfChar;
      arrayOfChar = new char[localHashtable3];
      txtBuf = arrayOfChar;
      int j = 16;
      String[] arrayOfString1 = new String[j];
      attributes = arrayOfString1;
      int k = 5;
      String[] arrayOfString2 = new String[k];
      String str1 = "Start Document";
      arrayOfString2[localHashtable2] = str1;
      str1 = "End Document";
      arrayOfString2[i2] = str1;
      int n = 2;
      str4 = "Start Tag";
      arrayOfString2[n] = str4;
      n = 3;
      str4 = "End Tag";
      arrayOfString2[n] = str4;
      String str2 = "Text";
      arrayOfString2[i3] = str2;
      TYPES = arrayOfString2;
      reader = paramReader;
      m = paramReader.read();
      peek0 = m;
      m = paramReader.read();
      peek1 = m;
      m = peek0;
      int i1 = -1;
      if (m != i1) {
        break label325;
      }
    }
    Hashtable localHashtable1;
    label325:
    for (int m = i2;; localHashtable1 = localHashtable2)
    {
      eof = m;
      localHashtable1 = new java/util/Hashtable;
      localHashtable1.<init>();
      entityMap = localHashtable1;
      localHashtable1 = entityMap;
      String str3 = "amp";
      str4 = "&";
      localHashtable1.put(str3, str4);
      localHashtable1 = entityMap;
      str3 = "apos";
      str4 = "'";
      localHashtable1.put(str3, str4);
      localHashtable1 = entityMap;
      str3 = "gt";
      str4 = ">";
      localHashtable1.put(str3, str4);
      localHashtable1 = entityMap;
      str3 = "lt";
      str4 = "<";
      localHashtable1.put(str3, str4);
      localHashtable1 = entityMap;
      str3 = "quot";
      str4 = "\"";
      localHashtable1.put(str3, str4);
      line = i2;
      column = i2;
      return;
      localHashtable1 = localHashtable3;
      break;
    }
  }
  
  public void defineCharacterEntity(String paramString1, String paramString2)
  {
    Hashtable localHashtable = entityMap;
    localHashtable.put(paramString1, paramString2);
  }
  
  private static final String[] ensureCapacity(String[] paramArrayOfString, int paramInt)
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
    throws IOException
  {
    IOException localIOException = new java/io/IOException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    localObject = ((StringBuilder)localObject).append(paramString);
    String str = " pos: ";
    localObject = ((StringBuilder)localObject).append(str);
    str = getPositionDescription();
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).toString();
    localIOException.<init>((String)localObject);
    throw localIOException;
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
    int j = paramInt << 1;
    localObject = localObject[j];
    return (String)localObject;
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
    int j = paramInt << 1;
    j += 1;
    localObject = localObject[j];
    return (String)localObject;
  }
  
  public String getAttributeValue(String paramString)
  {
    int j = attributeCount;
    j <<= 1;
    int k = 2;
    int i = j - k;
    if (i >= 0)
    {
      Object localObject1 = attributes;
      localObject1 = localObject1[i];
      boolean bool = ((String)localObject1).equals(paramString);
      if (bool)
      {
        localObject2 = attributes;
        k = i + 1;
      }
    }
    for (Object localObject2 = localObject2[k];; localObject2 = null)
    {
      return (String)localObject2;
      i += -2;
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
  
  public String getPositionDescription()
  {
    int i3 = 3;
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    int i = type;
    String[] arrayOfString = TYPES;
    int m = arrayOfString.length;
    if (i < m)
    {
      Object localObject = TYPES;
      m = type;
      localObject = localObject[m];
      localStringBuffer.<init>((String)localObject);
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str4 = " @";
      localObject = ((StringBuilder)localObject).append(str4);
      int n = line;
      localObject = ((StringBuilder)localObject).append(n);
      String str5 = ":";
      localObject = ((StringBuilder)localObject).append(str5);
      int i1 = column;
      localObject = ((StringBuilder)localObject).append(i1);
      String str6 = ": ";
      localObject = ((StringBuilder)localObject).append(str6);
      localObject = ((StringBuilder)localObject).toString();
      localStringBuffer.append((String)localObject);
      int j = type;
      int i2 = 2;
      if (j != i2)
      {
        j = type;
        if (j != i3) {
          break label198;
        }
      }
      j = 60;
      localStringBuffer.append(j);
      int k = type;
      if (k == i3)
      {
        k = 47;
        localStringBuffer.append(k);
      }
      String str1 = name;
      localStringBuffer.append(str1);
      char c = '>';
      localStringBuffer.append(c);
    }
    for (;;)
    {
      String str2 = localStringBuffer.toString();
      return str2;
      str2 = "Other";
      break;
      label198:
      boolean bool = isWhitespace;
      String str3;
      if (bool)
      {
        str3 = "[whitespace]";
        localStringBuffer.append(str3);
      }
      else
      {
        str3 = getText();
        localStringBuffer.append(str3);
      }
    }
  }
  
  public String getText()
  {
    String str1 = text;
    if (str1 == null)
    {
      int i = 0;
      str2 = pop(i);
      text = str2;
    }
    String str2 = text;
    return str2;
  }
  
  public int getType()
  {
    int i = type;
    return i;
  }
  
  public boolean isEmptyElementTag()
  {
    boolean bool = degenerated;
    return bool;
  }
  
  public boolean isWhitespace()
  {
    boolean bool = isWhitespace;
    return bool;
  }
  
  public int next()
    throws IOException
  {
    String str = null;
    int i4 = 1;
    int i3 = 4;
    int i2 = 0;
    boolean bool1 = degenerated;
    int j;
    if (bool1)
    {
      int i = 3;
      type = i;
      degenerated = i2;
      i = depth;
      i -= i4;
      depth = j;
      j = type;
      return j;
    }
    txtPos = i2;
    isWhitespace = i4;
    label141:
    do
    {
      do
      {
        attributeCount = i2;
        name = str;
        text = str;
        j = peekType();
        type = j;
        j = type;
        switch (j)
        {
        default: 
          parseLegacy(i2);
        case 1: 
          j = type;
        }
      } while (j > i3);
      j = type;
      if (j != i3) {
        break;
      }
      j = peekType();
    } while (j >= i3);
    int k = isWhitespace;
    int n = type;
    if (n == i3) {}
    boolean bool4;
    for (n = i4;; bool4 = i2)
    {
      k &= n;
      isWhitespace = k;
      int m = type;
      break;
      boolean bool2 = isWhitespace;
      boolean bool3 = pushEntity();
      bool2 &= bool3;
      isWhitespace = bool2;
      type = i3;
      break label141;
      parseStartTag();
      break label141;
      parseEndTag();
      break label141;
      bool2 = isWhitespace;
      int i1 = 60;
      bool4 = pushText(i1);
      bool2 &= bool4;
      isWhitespace = bool2;
      break label141;
      parseLegacy(i4);
      isWhitespace = i2;
      type = i3;
      break label141;
    }
  }
  
  private final void parseDoctype()
    throws IOException
  {
    int j = 1;
    do
    {
      for (;;)
      {
        int i = read();
        switch (i)
        {
        default: 
          break;
        case -1: 
          String str = "Unexpected EOF";
          exception(str);
        case 60: 
          j += 1;
        }
      }
      j += -1;
    } while (j != 0);
  }
  
  private final void parseEndTag()
    throws IOException
  {
    int m = 1;
    read();
    read();
    String str1 = readName();
    name = str1;
    int i = depth;
    if (i == 0)
    {
      boolean bool1 = relaxed;
      if (!bool1)
      {
        str2 = "element stack empty";
        exception(str2);
      }
    }
    String str2 = name;
    Object localObject2 = elementStack;
    int k = depth;
    k -= m;
    localObject2 = localObject2[k];
    boolean bool2 = str2.equals(localObject2);
    int j;
    if (bool2)
    {
      j = depth;
      j -= m;
      depth = j;
    }
    for (;;)
    {
      skip();
      j = 62;
      read(j);
      return;
      boolean bool3 = relaxed;
      if (!bool3)
      {
        Object localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        localObject2 = "expected: ";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = elementStack;
        k = depth;
        localObject2 = localObject2[k];
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).toString();
        exception((String)localObject1);
      }
    }
  }
  
  private final void parseLegacy(boolean paramBoolean)
    throws IOException
  {
    int i5 = 63;
    String str1 = "";
    read();
    int i = read();
    int k;
    if (i == i5) {
      k = 63;
    }
    for (;;)
    {
      int j = 0;
      for (;;)
      {
        int m = str1.length();
        if (j >= m) {
          break;
        }
        m = str1.charAt(j);
        read(m);
        j += 1;
      }
      int n = 33;
      if (i == n)
      {
        n = peek0;
        int i3 = 45;
        if (n == i3)
        {
          str1 = "--";
          k = 45;
        }
        else
        {
          str1 = "DOCTYPE";
          k = -1;
        }
      }
      else
      {
        n = 91;
        if (i != n)
        {
          Object localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          String str3 = "cantreachme: ";
          localObject = ((StringBuilder)localObject).append(str3);
          localObject = ((StringBuilder)localObject).append(i);
          localObject = ((StringBuilder)localObject).toString();
          exception((String)localObject);
        }
        str1 = "CDATA[";
        k = 93;
      }
    }
    int i1 = -1;
    if (k == i1) {
      parseDoctype();
    }
    for (;;)
    {
      return;
      int i2;
      int i4;
      do
      {
        do
        {
          do
          {
            boolean bool = eof;
            if (bool)
            {
              String str2 = "Unexpected EOF";
              exception(str2);
            }
            i = read();
            if (paramBoolean) {
              push(i);
            }
          } while ((k != i5) && (i != k));
          i2 = peek0;
        } while (i2 != k);
        i2 = peek1;
        i4 = 62;
      } while (i2 != i4);
      read();
      read();
      if ((paramBoolean) && (k != i5))
      {
        i2 = txtPos;
        i4 = 1;
        i2 -= i4;
        pop(i2);
      }
    }
  }
  
  private final void parseStartTag()
    throws IOException
  {
    int i10 = 62;
    read();
    Object localObject1 = readName();
    name = ((String)localObject1);
    localObject1 = elementStack;
    int i7 = depth;
    i7 += 1;
    localObject1 = ensureCapacity((String[])localObject1, i7);
    elementStack = ((String[])localObject1);
    localObject1 = elementStack;
    i7 = depth;
    int i9 = i7 + 1;
    depth = i9;
    String str6 = name;
    localObject1[i7] = str6;
    for (;;)
    {
      skip();
      int i = peek0;
      int i2 = 47;
      if (i == i2)
      {
        i2 = 1;
        degenerated = i2;
        read();
        skip();
        read(i10);
      }
      for (;;)
      {
        return;
        if (i != i10) {
          break;
        }
        read();
      }
      i2 = -1;
      if (i == i2)
      {
        String str2 = "Unexpected EOF";
        exception(str2);
      }
      String str1 = readName();
      int i3 = str1.length();
      if (i3 == 0)
      {
        String str3 = "attr name expected";
        exception(str3);
      }
      skip();
      int i4 = 61;
      read(i4);
      skip();
      int j = read();
      i4 = 39;
      int k;
      if (j != i4)
      {
        i4 = 34;
        if (j != i4)
        {
          boolean bool = relaxed;
          if (!bool)
          {
            Object localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            String str4 = "<";
            localObject2 = ((StringBuilder)localObject2).append(str4);
            str4 = name;
            localObject2 = ((StringBuilder)localObject2).append(str4);
            str4 = ">: invalid delimiter: ";
            localObject2 = ((StringBuilder)localObject2).append(str4);
            char c = (char)j;
            localObject2 = ((StringBuilder)localObject2).append(c);
            localObject2 = ((StringBuilder)localObject2).toString();
            exception((String)localObject2);
          }
          k = 32;
        }
      }
      int i5 = attributeCount;
      int i8 = i5 + 1;
      attributeCount = i8;
      int m = i5 << 1;
      String[] arrayOfString = attributes;
      i8 = m + 4;
      arrayOfString = ensureCapacity(arrayOfString, i8);
      attributes = arrayOfString;
      arrayOfString = attributes;
      int n = m + 1;
      arrayOfString[m] = str1;
      int i1 = txtPos;
      pushText(k);
      arrayOfString = attributes;
      String str5 = pop(i1);
      arrayOfString[n] = str5;
      int i6 = 32;
      if (k != i6) {
        read();
      }
    }
  }
  
  private final int peekType()
  {
    int i = peek0;
    switch (i)
    {
    default: 
      i = 4;
    }
    for (;;)
    {
      return i;
      i = 1;
      continue;
      i = 6;
      continue;
      i = peek1;
      switch (i)
      {
      default: 
        i = 2;
        break;
      case 47: 
        i = 3;
        break;
      case 91: 
        i = 5;
        break;
      case 33: 
      case 63: 
        i = 999;
      }
    }
  }
  
  private final String pop(int paramInt)
  {
    String str = new java/lang/String;
    char[] arrayOfChar = txtBuf;
    int i = txtPos;
    i -= paramInt;
    str.<init>(arrayOfChar, paramInt, i);
    txtPos = paramInt;
    return str;
  }
  
  private final void push(int paramInt)
  {
    int k = 0;
    if (paramInt == 0) {}
    for (;;)
    {
      return;
      int i = txtPos;
      char[] arrayOfChar3 = txtBuf;
      int j = arrayOfChar3.length;
      if (i == j)
      {
        i = txtPos;
        i *= 4;
        i /= 3;
        i += 4;
        char[] arrayOfChar1 = new char[i];
        arrayOfChar2 = txtBuf;
        j = txtPos;
        System.arraycopy(arrayOfChar2, k, arrayOfChar1, k, j);
        txtBuf = arrayOfChar1;
      }
      char[] arrayOfChar2 = txtBuf;
      j = txtPos;
      k = j + 1;
      txtPos = k;
      k = (char)paramInt;
      arrayOfChar2[j] = k;
    }
  }
  
  public final boolean pushEntity()
    throws IOException
  {
    int i8 = 32;
    int i7 = 0;
    int i6 = 1;
    read();
    int m = txtPos;
    int i5;
    for (;;)
    {
      boolean bool = eof;
      if (bool) {
        break;
      }
      i1 = peek0;
      i5 = 59;
      if (i1 == i5) {
        break;
      }
      i1 = read();
      push(i1);
    }
    String str1 = pop(m);
    read();
    int i1 = str1.length();
    int i2;
    int i;
    if (i1 > 0)
    {
      i1 = str1.charAt(i7);
      i5 = 35;
      if (i1 == i5)
      {
        i1 = str1.charAt(i6);
        i5 = 120;
        if (i1 == i5)
        {
          i1 = 2;
          String str2 = str1.substring(i1);
          i5 = 16;
          i2 = Integer.parseInt(str2, i5);
          i = i2;
          push(i);
          if (i > i8) {
            break label192;
          }
          i2 = i6;
        }
      }
    }
    for (;;)
    {
      return i2;
      String str3 = str1.substring(i6);
      int i3 = Integer.parseInt(str3);
      i = i3;
      break;
      label192:
      i3 = i7;
      continue;
      Object localObject2 = entityMap;
      Object localObject1 = ((Hashtable)localObject2).get(str1);
      localObject1 = (String)localObject1;
      int n = 1;
      if (localObject1 == null)
      {
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str4 = "&";
        localObject2 = ((StringBuilder)localObject2).append(str4);
        localObject2 = ((StringBuilder)localObject2).append(str1);
        str4 = ";";
        localObject2 = ((StringBuilder)localObject2).append(str4);
        localObject1 = ((StringBuilder)localObject2).toString();
      }
      int k = 0;
      for (;;)
      {
        i4 = ((String)localObject1).length();
        if (k >= i4) {
          break;
        }
        int j = ((String)localObject1).charAt(k);
        if (j > i8) {
          n = 0;
        }
        push(j);
        k += 1;
      }
      int i4 = n;
    }
  }
  
  private final boolean pushText(int paramInt)
    throws IOException
  {
    int m = 32;
    boolean bool1 = true;
    int i = peek0;
    boolean bool2 = eof;
    if ((!bool2) && (i != paramInt))
    {
      if (paramInt != m) {
        break label52;
      }
      if (i > m)
      {
        j = 62;
        if (i != j) {
          break label52;
        }
      }
    }
    return bool1;
    label52:
    int j = 38;
    if (i == j)
    {
      boolean bool3 = pushEntity();
      if (!bool3) {
        bool1 = false;
      }
    }
    for (;;)
    {
      i = peek0;
      break;
      if (i > m) {
        bool1 = false;
      }
      int k = read();
      push(k);
    }
  }
  
  private final int read()
    throws IOException
  {
    int i2 = 13;
    int n = 10;
    int i5 = -1;
    int i4 = 0;
    int i = peek0;
    int j = peek1;
    peek0 = j;
    j = peek0;
    if (j == i5)
    {
      j = 1;
      eof = j;
    }
    for (;;)
    {
      return i;
      if ((i == n) || (i == i2))
      {
        j = line;
        j += 1;
        line = j;
        column = i4;
        if (i == i2)
        {
          j = peek0;
          if (j == n) {
            peek0 = i4;
          }
        }
      }
      j = column;
      j += 1;
      column = j;
      j = srcPos;
      n = srcCount;
      int i3;
      if (j >= n)
      {
        Reader localReader = reader;
        char[] arrayOfChar2 = srcBuf;
        char[] arrayOfChar3 = srcBuf;
        i3 = arrayOfChar3.length;
        int k = localReader.read(arrayOfChar2, i4, i3);
        srcCount = k;
        k = srcCount;
        if (k <= 0) {
          peek1 = i5;
        } else {
          srcPos = i4;
        }
      }
      else
      {
        char[] arrayOfChar1 = srcBuf;
        int i1 = srcPos;
        i3 = i1 + 1;
        srcPos = i3;
        int m = arrayOfChar1[i1];
        peek1 = m;
      }
    }
  }
  
  private final void read(char paramChar)
    throws IOException
  {
    char c1 = read();
    if (c1 != paramChar)
    {
      boolean bool = relaxed;
      if (!bool) {
        break label38;
      }
      char c2 = ' ';
      if (paramChar <= c2)
      {
        skip();
        read();
      }
    }
    for (;;)
    {
      return;
      label38:
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str = "expected: '";
      localObject = ((StringBuilder)localObject).append(str);
      localObject = ((StringBuilder)localObject).append(paramChar);
      str = "'";
      localObject = ((StringBuilder)localObject).append(str);
      localObject = ((StringBuilder)localObject).toString();
      exception((String)localObject);
    }
  }
  
  private final String readName()
    throws IOException
  {
    int i4 = 97;
    int i3 = 95;
    int i2 = 90;
    int i1 = 65;
    int n = 58;
    int j = txtPos;
    int i = peek0;
    if (i >= i4)
    {
      int k = 122;
      if (i <= k) {}
    }
    else if (((i < i1) || (i > i2)) && (i != i3) && (i != n))
    {
      boolean bool = relaxed;
      if (!bool)
      {
        String str1 = "name expected";
        exception(str1);
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
                m = read();
                push(m);
                i = peek0;
                if (i < i4) {
                  break;
                }
                m = 122;
              } while (i <= m);
            } while ((i >= i1) && (i <= i2));
            m = 48;
            if (i < m) {
              break;
            }
            m = 57;
          } while (i <= m);
        } while (i == i3);
        m = 45;
      } while ((i == m) || (i == n));
      m = 46;
    } while (i == m);
    String str2 = pop(j);
    return str2;
  }
  
  public String readText()
    throws IOException
  {
    int i = type;
    int j = 4;
    if (i != j) {}
    String str;
    for (Object localObject = "";; localObject = str)
    {
      return (String)localObject;
      str = getText();
      next();
    }
  }
  
  public void require(int paramInt, String paramString)
    throws IOException
  {
    int k = 4;
    int i = type;
    if ((i == k) && (paramInt != k))
    {
      boolean bool1 = isWhitespace();
      if (bool1) {
        next();
      }
    }
    int j = type;
    if (paramInt == j)
    {
      if (paramString != null)
      {
        String str = getName();
        boolean bool2 = paramString.equals(str);
        if (bool2) {}
      }
    }
    else
    {
      Object localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      Object localObject2 = "expected: ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = TYPES;
      localObject2 = localObject2[paramInt];
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = "/";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).append(paramString);
      localObject1 = ((StringBuilder)localObject1).toString();
      exception((String)localObject1);
    }
  }
  
  private final void skip()
    throws IOException
  {
    for (;;)
    {
      boolean bool = eof;
      if (bool) {
        break;
      }
      int i = peek0;
      int j = 32;
      if (i > j) {
        break;
      }
      read();
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.xml.XmlReader
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */