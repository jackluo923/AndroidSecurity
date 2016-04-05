package org.kxml2.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import org.xmlpull.v1.XmlSerializer;

public class KXmlSerializer
  implements XmlSerializer
{
  private int auto;
  private int depth;
  private String[] elementStack;
  private String encoding;
  private boolean[] indent;
  private int[] nspCounts;
  private String[] nspStack;
  private boolean pending;
  private boolean unicode;
  private Writer writer;
  
  public KXmlSerializer()
  {
    int i = 12;
    Object localObject1 = new String[i];
    elementStack = ((String[])localObject1);
    localObject1 = new int[k];
    nspCounts = ((int[])localObject1);
    int j = 8;
    Object localObject2 = new String[j];
    nspStack = ((String[])localObject2);
    localObject2 = new boolean[k];
    indent = ((boolean[])localObject2);
  }
  
  public XmlSerializer attribute(String paramString1, String paramString2, String paramString3)
    throws IOException
  {
    int n = 34;
    boolean bool1 = pending;
    if (!bool1)
    {
      localObject2 = new java/lang/IllegalStateException;
      String str2 = "illegal position for attribute";
      ((IllegalStateException)localObject2).<init>(str2);
      throw ((Throwable)localObject2);
    }
    if (paramString1 == null) {
      paramString1 = "";
    }
    Object localObject2 = "";
    boolean bool2 = ((String)localObject2).equals(paramString1);
    Object localObject1;
    int m;
    if (bool2)
    {
      Object localObject3 = "";
      localObject1 = localObject3;
      localObject3 = writer;
      m = 32;
      ((Writer)localObject3).write(m);
      localObject3 = "";
      boolean bool3 = ((String)localObject3).equals(localObject1);
      if (!bool3)
      {
        localWriter1 = writer;
        localWriter1.write((String)localObject1);
        localWriter1 = writer;
        m = 58;
        localWriter1.write(m);
      }
      Writer localWriter1 = writer;
      localWriter1.write(paramString2);
      localWriter1 = writer;
      m = 61;
      localWriter1.write(m);
      int j = paramString3.indexOf(n);
      m = -1;
      if (j != m) {
        break label242;
      }
    }
    label242:
    int k;
    for (int i = n;; i = k)
    {
      Writer localWriter2 = writer;
      localWriter2.write(i);
      writeEscaped(paramString3, i);
      localWriter2 = writer;
      localWriter2.write(i);
      return this;
      boolean bool4 = false;
      m = 1;
      String str1 = getPrefix(paramString1, bool4, m);
      localObject1 = str1;
      break;
      k = 39;
    }
  }
  
  public void cdsect(String paramString)
    throws IOException
  {
    boolean bool = false;
    check(bool);
    Writer localWriter = writer;
    String str = "<![CDATA[";
    localWriter.write(str);
    localWriter = writer;
    localWriter.write(paramString);
    localWriter = writer;
    str = "]]>";
    localWriter.write(str);
  }
  
  private final void check(boolean paramBoolean)
    throws IOException
  {
    int i10 = 34;
    int i9 = 1;
    int i8 = 0;
    boolean bool1 = pending;
    if (!bool1) {
      return;
    }
    int j = depth;
    j += 1;
    depth = j;
    pending = i8;
    boolean[] arrayOfBoolean1 = indent;
    int k = arrayOfBoolean1.length;
    int i1 = depth;
    Object localObject1;
    if (k <= i1)
    {
      k = depth;
      k += 4;
      localObject1 = new boolean[k];
      localObject2 = indent;
      i1 = depth;
      System.arraycopy(localObject2, i8, localObject1, i8, i1);
      indent = ((boolean[])localObject1);
    }
    Object localObject2 = indent;
    i1 = depth;
    boolean[] arrayOfBoolean2 = indent;
    int i7 = depth;
    i7 -= i9;
    int i5 = arrayOfBoolean2[i7];
    localObject2[i1] = i5;
    localObject2 = nspCounts;
    i1 = depth;
    i1 -= i9;
    int i = localObject2[i1];
    localObject2 = nspCounts;
    i1 = depth;
    int m = localObject2[i1];
    if (i < m)
    {
      Object localObject3 = writer;
      i1 = 32;
      ((Writer)localObject3).write(i1);
      localObject3 = writer;
      Object localObject7 = "xmlns";
      ((Writer)localObject3).write((String)localObject7);
      localObject3 = "";
      localObject7 = nspStack;
      i5 = i * 2;
      localObject7 = localObject7[i5];
      boolean bool2 = ((String)localObject3).equals(localObject7);
      Object localObject4;
      Object localObject8;
      if (!bool2)
      {
        localObject4 = writer;
        int i2 = 58;
        ((Writer)localObject4).write(i2);
        localObject4 = writer;
        localObject8 = nspStack;
        i5 = i * 2;
        localObject8 = localObject8[i5];
        ((Writer)localObject4).write((String)localObject8);
      }
      boolean bool4;
      do
      {
        boolean bool3;
        do
        {
          localObject4 = writer;
          localObject8 = "=\"";
          ((Writer)localObject4).write((String)localObject8);
          localObject4 = nspStack;
          int i3 = i * 2;
          i3 += 1;
          localObject4 = localObject4[i3];
          writeEscaped((String)localObject4, i10);
          localObject4 = writer;
          ((Writer)localObject4).write(i10);
          i += 1;
          break;
          localObject4 = "";
          localObject9 = getNamespace();
          bool3 = ((String)localObject4).equals(localObject9);
        } while (!bool3);
        String str1 = "";
        localObject9 = nspStack;
        i5 = i * 2;
        i5 += 1;
        localObject9 = localObject9[i5];
        bool4 = str1.equals(localObject9);
      } while (bool4);
      localObject5 = new java/lang/IllegalStateException;
      Object localObject9 = "Cannot set default namespace for elements in no namespace";
      ((IllegalStateException)localObject5).<init>((String)localObject9);
      throw ((Throwable)localObject5);
    }
    Object localObject5 = nspCounts;
    int n = localObject5.length;
    int i4 = depth;
    i4 += 1;
    if (n <= i4)
    {
      n = depth;
      n += 8;
      localObject1 = new int[n];
      localObject6 = nspCounts;
      i4 = depth;
      i4 += 1;
      System.arraycopy(localObject6, i8, localObject1, i8, i4);
      nspCounts = ((int[])localObject1);
    }
    Object localObject6 = nspCounts;
    i4 = depth;
    i4 += 1;
    int[] arrayOfInt = nspCounts;
    i7 = depth;
    int i6 = arrayOfInt[i7];
    localObject6[i4] = i6;
    localObject6 = writer;
    if (paramBoolean) {}
    for (String str2 = " />";; str2 = ">")
    {
      ((Writer)localObject6).write(str2);
      break;
    }
  }
  
  public void comment(String paramString)
    throws IOException
  {
    boolean bool = false;
    check(bool);
    Writer localWriter = writer;
    String str = "<!--";
    localWriter.write(str);
    localWriter = writer;
    localWriter.write(paramString);
    localWriter = writer;
    str = "-->";
    localWriter.write(str);
  }
  
  public void docdecl(String paramString)
    throws IOException
  {
    Writer localWriter = writer;
    String str = "<!DOCTYPE";
    localWriter.write(str);
    localWriter = writer;
    localWriter.write(paramString);
    localWriter = writer;
    str = ">";
    localWriter.write(str);
  }
  
  public void endDocument()
    throws IOException
  {
    for (;;)
    {
      int i = depth;
      if (i <= 0) {
        break;
      }
      Object localObject1 = elementStack;
      int j = depth;
      j *= 3;
      int k = 3;
      j -= k;
      localObject1 = localObject1[j];
      Object localObject2 = elementStack;
      k = depth;
      k *= 3;
      int m = 1;
      k -= m;
      localObject2 = localObject2[k];
      endTag((String)localObject1, (String)localObject2);
    }
    flush();
  }
  
  public XmlSerializer endTag(String paramString1, String paramString2)
    throws IOException
  {
    int i4 = 1;
    boolean bool1 = pending;
    if (!bool1)
    {
      int j = depth;
      j -= i4;
      depth = j;
    }
    Object localObject2;
    int i1;
    if (paramString1 == null)
    {
      localObject2 = elementStack;
      i1 = depth;
      i1 *= 3;
      localObject2 = localObject2[i1];
      if (localObject2 != null) {}
    }
    else if (paramString1 != null)
    {
      localObject2 = elementStack;
      i1 = depth;
      i1 *= 3;
      localObject2 = localObject2[i1];
      boolean bool2 = paramString1.equals(localObject2);
      if (!bool2) {}
    }
    else
    {
      Object localObject3 = elementStack;
      i1 = depth;
      i1 *= 3;
      i1 += 2;
      localObject3 = localObject3[i1];
      boolean bool3 = ((String)localObject3).equals(paramString2);
      if (bool3) {
        break label242;
      }
    }
    IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
    Object localObject7 = new java/lang/StringBuilder;
    ((StringBuilder)localObject7).<init>();
    Object localObject8 = "</{";
    localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
    localObject7 = ((StringBuilder)localObject7).append(paramString1);
    localObject8 = "}";
    localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
    localObject7 = ((StringBuilder)localObject7).append(paramString2);
    localObject8 = "> does not match start";
    localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
    localObject7 = ((StringBuilder)localObject7).toString();
    localIllegalArgumentException.<init>((String)localObject7);
    throw localIllegalArgumentException;
    label242:
    boolean bool4 = pending;
    if (bool4)
    {
      check(localObject8);
      Object localObject4 = depth;
      int k;
      localObject4 -= localObject8;
      depth = k;
    }
    for (;;)
    {
      Object localObject5 = nspCounts;
      int i2 = depth;
      i2 += 1;
      localObject8 = nspCounts;
      int i6 = depth;
      int i5 = localObject8[i6];
      localObject5[i2] = i5;
      return this;
      localObject5 = indent;
      i2 = depth;
      i2 += 1;
      int m = localObject5[i2];
      if (m != 0)
      {
        Writer localWriter1 = writer;
        str = "\r\n";
        localWriter1.write(str);
        int i = 0;
        for (;;)
        {
          int n = depth;
          if (i >= n) {
            break;
          }
          localObject6 = writer;
          str = "  ";
          ((Writer)localObject6).write(str);
          i += 1;
        }
      }
      Object localObject6 = writer;
      String str = "</";
      ((Writer)localObject6).write(str);
      localObject6 = elementStack;
      int i3 = depth;
      i3 *= 3;
      i3 += 1;
      Object localObject1 = localObject6[i3];
      localObject6 = "";
      boolean bool5 = ((String)localObject6).equals(localObject1);
      if (!bool5)
      {
        localWriter2 = writer;
        localWriter2.write((String)localObject1);
        localWriter2 = writer;
        i3 = 58;
        localWriter2.write(i3);
      }
      Writer localWriter2 = writer;
      localWriter2.write(paramString2);
      localWriter2 = writer;
      i3 = 62;
      localWriter2.write(i3);
    }
  }
  
  public void entityRef(String paramString)
    throws IOException
  {
    boolean bool = false;
    check(bool);
    Writer localWriter = writer;
    int i = 38;
    localWriter.write(i);
    localWriter = writer;
    localWriter.write(paramString);
    localWriter = writer;
    i = 59;
    localWriter.write(i);
  }
  
  public void flush()
    throws IOException
  {
    boolean bool = false;
    check(bool);
    Writer localWriter = writer;
    localWriter.flush();
  }
  
  public int getDepth()
  {
    boolean bool = pending;
    int i;
    if (bool)
    {
      i = depth;
      i += 1;
    }
    for (;;)
    {
      return i;
      i = depth;
    }
  }
  
  public boolean getFeature(String paramString)
  {
    String str = "http://xmlpull.org/v1/doc/features.html#indent-output";
    boolean bool = str.equals(paramString);
    boolean[] arrayOfBoolean;
    int k;
    if (bool)
    {
      arrayOfBoolean = indent;
      k = depth;
    }
    int j;
    for (int i = arrayOfBoolean[k];; j = 0) {
      return i;
    }
  }
  
  public String getName()
  {
    int i = getDepth();
    if (i == 0) {}
    int j;
    for (Object localObject = null;; localObject = localObject[j])
    {
      return (String)localObject;
      localObject = elementStack;
      j = getDepth();
      j *= 3;
      int k = 1;
      j -= k;
    }
  }
  
  public String getNamespace()
  {
    int i = getDepth();
    if (i == 0) {}
    int j;
    for (Object localObject = null;; localObject = localObject[j])
    {
      return (String)localObject;
      localObject = elementStack;
      j = getDepth();
      j *= 3;
      int k = 3;
      j -= k;
    }
  }
  
  public String getPrefix(String paramString, boolean paramBoolean)
  {
    boolean bool = false;
    try
    {
      localObject = getPrefix(paramString, bool, paramBoolean);
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      Object localObject = new java/lang/RuntimeException;
      String str = localIOException.toString();
      ((RuntimeException)localObject).<init>(str);
      throw ((Throwable)localObject);
    }
  }
  
  private final String getPrefix(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException
  {
    int i5 = 2;
    int[] arrayOfInt = nspCounts;
    int i1 = depth;
    i1 += 1;
    int k = arrayOfInt[i1];
    k *= 2;
    int i = k - i5;
    int j;
    label133:
    Object localObject6;
    if (i >= 0)
    {
      Object localObject2 = nspStack;
      i1 = i + 1;
      localObject2 = localObject2[i1];
      boolean bool2 = ((String)localObject2).equals(paramString);
      if (bool2) {
        if (!paramBoolean1)
        {
          Object localObject3 = nspStack;
          localObject3 = localObject3[i];
          String str2 = "";
          boolean bool3 = ((String)localObject3).equals(str2);
          if (bool3) {}
        }
        else
        {
          Object localObject4 = nspStack;
          Object localObject1 = localObject4[i];
          j = i + 2;
          localObject4 = nspCounts;
          int i2 = depth;
          i2 += 1;
          int m = localObject4[i2];
          m *= 2;
          if (j < m)
          {
            Object localObject5 = nspStack;
            localObject5 = localObject5[j];
            boolean bool4 = ((String)localObject5).equals(localObject1);
            if (bool4) {
              localObject1 = null;
            }
          }
          else
          {
            if (localObject1 == null) {
              break label222;
            }
            localObject6 = localObject1;
          }
        }
      }
    }
    for (;;)
    {
      return (String)localObject6;
      j += 1;
      break label133;
      label222:
      i += -2;
      break;
      if (!paramBoolean2)
      {
        localObject6 = null;
      }
      else
      {
        localObject6 = "";
        boolean bool5 = ((String)localObject6).equals(paramString);
        if (!bool5) {
          break label298;
        }
        str1 = "";
        boolean bool1 = pending;
        bool5 = false;
        pending = bool5;
        setPrefix(str1, paramString);
        pending = bool1;
        localObject7 = str1;
      }
    }
    label298:
    Object localObject7 = new java/lang/StringBuilder;
    ((StringBuilder)localObject7).<init>();
    String str3 = "n";
    localObject7 = ((StringBuilder)localObject7).append(str3);
    int i3 = auto;
    int i4 = i3 + 1;
    auto = i4;
    localObject7 = ((StringBuilder)localObject7).append(i3);
    String str1 = ((StringBuilder)localObject7).toString();
    localObject7 = nspCounts;
    i3 = depth;
    i3 += 1;
    int n = localObject7[i3];
    n *= 2;
    i = n - i5;
    for (;;)
    {
      if (i >= 0)
      {
        Object localObject8 = nspStack;
        localObject8 = localObject8[i];
        boolean bool6 = str1.equals(localObject8);
        if (bool6) {
          str1 = null;
        }
      }
      else
      {
        if (str1 == null) {
          break label298;
        }
        break;
      }
      i += -2;
    }
  }
  
  public Object getProperty(String paramString)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "Unsupported property";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public void ignorableWhitespace(String paramString)
    throws IOException
  {
    text(paramString);
  }
  
  public void processingInstruction(String paramString)
    throws IOException
  {
    boolean bool = false;
    check(bool);
    Writer localWriter = writer;
    String str = "<?";
    localWriter.write(str);
    localWriter = writer;
    localWriter.write(paramString);
    localWriter = writer;
    str = "?>";
    localWriter.write(str);
  }
  
  public void setFeature(String paramString, boolean paramBoolean)
  {
    String str1 = "http://xmlpull.org/v1/doc/features.html#indent-output";
    boolean bool = str1.equals(paramString);
    if (bool)
    {
      localObject = indent;
      int i = depth;
      localObject[i] = paramBoolean;
      return;
    }
    Object localObject = new java/lang/RuntimeException;
    String str2 = "Unsupported Feature";
    ((RuntimeException)localObject).<init>(str2);
    throw ((Throwable)localObject);
  }
  
  public void setOutput(OutputStream paramOutputStream, String paramString)
    throws IOException
  {
    Object localObject;
    if (paramOutputStream == null)
    {
      localObject = new java/lang/IllegalArgumentException;
      ((IllegalArgumentException)localObject).<init>();
      throw ((Throwable)localObject);
    }
    if (paramString == null)
    {
      localObject = new java/io/OutputStreamWriter;
      ((OutputStreamWriter)localObject).<init>(paramOutputStream);
    }
    for (;;)
    {
      setOutput((Writer)localObject);
      encoding = paramString;
      if (paramString != null)
      {
        localObject = paramString.toLowerCase();
        String str = "utf";
        boolean bool = ((String)localObject).startsWith(str);
        if (bool)
        {
          bool = true;
          unicode = bool;
        }
      }
      return;
      OutputStreamWriter localOutputStreamWriter = new java/io/OutputStreamWriter;
      localOutputStreamWriter.<init>(paramOutputStream, paramString);
    }
  }
  
  public void setOutput(Writer paramWriter)
  {
    int m = 1;
    int j = 2;
    int k = 0;
    writer = paramWriter;
    Object localObject = nspCounts;
    localObject[k] = j;
    localObject = nspCounts;
    localObject[m] = j;
    localObject = nspStack;
    String str1 = "";
    localObject[k] = str1;
    localObject = nspStack;
    str1 = "";
    localObject[m] = str1;
    localObject = nspStack;
    str1 = "xml";
    localObject[j] = str1;
    localObject = nspStack;
    int i = 3;
    String str2 = "http://www.w3.org/XML/1998/namespace";
    localObject[i] = str2;
    pending = k;
    auto = k;
    depth = k;
    unicode = k;
  }
  
  public void setPrefix(String paramString1, String paramString2)
    throws IOException
  {
    int i3 = 0;
    check(i3);
    if (paramString1 == null) {
      paramString1 = "";
    }
    if (paramString2 == null) {
      paramString2 = "";
    }
    boolean bool = true;
    String str = getPrefix(paramString2, bool, i3);
    bool = paramString1.equals(str);
    if (bool) {}
    for (;;)
    {
      return;
      Object localObject = nspCounts;
      int n = depth;
      n += 1;
      int i1 = localObject[n];
      int i2 = i1 + 1;
      localObject[n] = i2;
      int i = i1 << 1;
      localObject = nspStack;
      int k = localObject.length;
      n = i + 1;
      if (k < n)
      {
        String[] arrayOfString2 = nspStack;
        int m = arrayOfString2.length;
        m += 16;
        String[] arrayOfString1 = new String[m];
        arrayOfString3 = nspStack;
        System.arraycopy(arrayOfString3, i3, arrayOfString1, i3, i);
        nspStack = arrayOfString1;
      }
      String[] arrayOfString3 = nspStack;
      int j = i + 1;
      arrayOfString3[i] = paramString1;
      arrayOfString3 = nspStack;
      arrayOfString3[j] = paramString2;
    }
  }
  
  public void setProperty(String paramString, Object paramObject)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Unsupported Property:";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramObject);
    localObject = ((StringBuilder)localObject).toString();
    localRuntimeException.<init>((String)localObject);
    throw localRuntimeException;
  }
  
  public void startDocument(String paramString, Boolean paramBoolean)
    throws IOException
  {
    Object localObject1 = writer;
    String str1 = "<?xml version='1.0' ";
    ((Writer)localObject1).write(str1);
    if (paramString != null)
    {
      encoding = paramString;
      localObject1 = paramString.toLowerCase();
      str1 = "utf";
      boolean bool1 = ((String)localObject1).startsWith(str1);
      if (bool1)
      {
        bool1 = true;
        unicode = bool1;
      }
    }
    Object localObject2 = encoding;
    if (localObject2 != null)
    {
      localObject2 = writer;
      str1 = "encoding='";
      ((Writer)localObject2).write(str1);
      localObject2 = writer;
      str1 = encoding;
      ((Writer)localObject2).write(str1);
      localObject2 = writer;
      str1 = "' ";
      ((Writer)localObject2).write(str1);
    }
    if (paramBoolean != null)
    {
      localObject2 = writer;
      str1 = "standalone='";
      ((Writer)localObject2).write(str1);
      localObject2 = writer;
      boolean bool2 = paramBoolean.booleanValue();
      if (!bool2) {
        break label186;
      }
    }
    label186:
    for (String str2 = "yes";; str2 = "no")
    {
      ((Writer)localObject2).write(str2);
      localObject2 = writer;
      str2 = "' ";
      ((Writer)localObject2).write(str2);
      localObject2 = writer;
      str2 = "?>";
      ((Writer)localObject2).write(str2);
      return;
    }
  }
  
  public XmlSerializer startTag(String paramString1, String paramString2)
    throws IOException
  {
    boolean bool5 = true;
    int i8 = 0;
    check(i8);
    boolean[] arrayOfBoolean = indent;
    int i5 = depth;
    int m = arrayOfBoolean[i5];
    int k;
    if (m != 0)
    {
      Writer localWriter1 = writer;
      String str3 = "\r\n";
      localWriter1.write(str3);
      k = 0;
      for (;;)
      {
        int n = depth;
        if (k >= n) {
          break;
        }
        Writer localWriter2 = writer;
        str3 = "  ";
        localWriter2.write(str3);
        k += 1;
      }
    }
    int i1 = depth;
    int i = i1 * 3;
    String[] arrayOfString2 = elementStack;
    int i2 = arrayOfString2.length;
    int i6 = i + 3;
    Object localObject2;
    if (i2 < i6)
    {
      String[] arrayOfString3 = elementStack;
      int i3 = arrayOfString3.length;
      i3 += 12;
      String[] arrayOfString1 = new String[i3];
      localObject2 = elementStack;
      System.arraycopy(localObject2, i8, arrayOfString1, i8, i);
      elementStack = arrayOfString1;
    }
    Object localObject1;
    int[] arrayOfInt;
    if (paramString1 == null)
    {
      localObject2 = "";
      localObject1 = localObject2;
      localObject2 = "";
      boolean bool1 = ((String)localObject2).equals(paramString1);
      if (bool1)
      {
        arrayOfInt = nspCounts;
        i6 = depth;
        k = arrayOfInt[i6];
      }
    }
    else
    {
      for (;;)
      {
        arrayOfInt = nspCounts;
        i6 = depth;
        i6 += 1;
        int i4 = arrayOfInt[i6];
        if (k >= i4) {
          break label385;
        }
        String str1 = "";
        Object localObject4 = nspStack;
        int i9 = k * 2;
        localObject4 = localObject4[i9];
        boolean bool2 = str1.equals(localObject4);
        if (bool2)
        {
          String str2 = "";
          localObject4 = nspStack;
          i9 = k * 2;
          i9 += 1;
          localObject4 = localObject4[i9];
          boolean bool3 = str2.equals(localObject4);
          if (!bool3)
          {
            localObject3 = new java/lang/IllegalStateException;
            localObject4 = "Cannot set default namespace for elements in no namespace";
            ((IllegalStateException)localObject3).<init>((String)localObject4);
            throw ((Throwable)localObject3);
            localObject3 = getPrefix(paramString1, bool5, bool5);
            localObject1 = localObject3;
            break;
          }
        }
        k += 1;
      }
    }
    label385:
    Object localObject3 = elementStack;
    int j = i + 1;
    localObject3[i] = paramString1;
    localObject3 = elementStack;
    i = j + 1;
    localObject3[j] = localObject1;
    localObject3 = elementStack;
    localObject3[i] = paramString2;
    localObject3 = writer;
    int i7 = 60;
    ((Writer)localObject3).write(i7);
    localObject3 = "";
    boolean bool4 = ((String)localObject3).equals(localObject1);
    if (!bool4)
    {
      localWriter3 = writer;
      localWriter3.write((String)localObject1);
      localWriter3 = writer;
      i7 = 58;
      localWriter3.write(i7);
    }
    Writer localWriter3 = writer;
    localWriter3.write(paramString2);
    pending = bool5;
    return this;
  }
  
  public XmlSerializer text(String paramString)
    throws IOException
  {
    boolean bool = false;
    check(bool);
    boolean[] arrayOfBoolean = indent;
    int j = depth;
    arrayOfBoolean[j] = bool;
    int i = -1;
    writeEscaped(paramString, i);
    return this;
  }
  
  public XmlSerializer text(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    String str = new java/lang/String;
    str.<init>(paramArrayOfChar, paramInt1, paramInt2);
    text(str);
    return this;
  }
  
  private final void writeEscaped(String paramString, int paramInt)
    throws IOException
  {
    int j = 0;
    int k = paramString.length();
    if (j < k)
    {
      int i = paramString.charAt(j);
      switch (i)
      {
      default: 
        label100:
        k = 32;
        if (i >= k)
        {
          k = 64;
          if (i != k)
          {
            k = 127;
            if (i >= k)
            {
              boolean bool = unicode;
              if (!bool) {
                break;
              }
            }
            else
            {
              Writer localWriter1 = writer;
              localWriter1.write(i);
            }
          }
        }
        break;
      }
      for (;;)
      {
        j += 1;
        break;
        int m = -1;
        Writer localWriter2;
        if (paramInt == m)
        {
          localWriter2 = writer;
          localWriter2.write(i);
        }
        else
        {
          localWriter2 = writer;
          Object localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          String str1 = "&#";
          localObject1 = ((StringBuilder)localObject1).append(str1);
          localObject1 = ((StringBuilder)localObject1).append(i);
          char c = ';';
          localObject1 = ((StringBuilder)localObject1).append(c);
          localObject1 = ((StringBuilder)localObject1).toString();
          localWriter2.write((String)localObject1);
          continue;
          localWriter2 = writer;
          localObject1 = "&amp;";
          localWriter2.write((String)localObject1);
          continue;
          localWriter2 = writer;
          localObject1 = "&gt;";
          localWriter2.write((String)localObject1);
          continue;
          localWriter2 = writer;
          localObject1 = "&lt;";
          localWriter2.write((String)localObject1);
          continue;
          if (i != paramInt) {
            break label100;
          }
          localWriter2 = writer;
          int n = 34;
          if (i == n) {}
          for (Object localObject2 = "&quot;";; localObject2 = "&apos;")
          {
            localWriter2.write((String)localObject2);
            break;
          }
          localWriter2 = writer;
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          String str2 = "&#";
          localObject2 = ((StringBuilder)localObject2).append(str2);
          localObject2 = ((StringBuilder)localObject2).append(i);
          str2 = ";";
          localObject2 = ((StringBuilder)localObject2).append(str2);
          localObject2 = ((StringBuilder)localObject2).toString();
          localWriter2.write((String)localObject2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.kxml2.io.KXmlSerializer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */