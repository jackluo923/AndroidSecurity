package org.kxml2.kdom;

import java.io.IOException;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class Node
{
  public static final int CDSECT = 5;
  public static final int COMMENT = 9;
  public static final int DOCDECL = 10;
  public static final int DOCUMENT = 0;
  public static final int ELEMENT = 2;
  public static final int ENTITY_REF = 6;
  public static final int IGNORABLE_WHITESPACE = 7;
  public static final int PROCESSING_INSTRUCTION = 8;
  public static final int TEXT = 4;
  protected Vector children;
  protected StringBuffer types;
  
  public void addChild(int paramInt1, int paramInt2, Object paramObject)
  {
    if (paramObject == null)
    {
      localObject2 = new java/lang/NullPointerException;
      ((NullPointerException)localObject2).<init>();
      throw ((Throwable)localObject2);
    }
    Object localObject2 = children;
    if (localObject2 == null)
    {
      localObject2 = new java/util/Vector;
      ((Vector)localObject2).<init>();
      children = ((Vector)localObject2);
      localObject2 = new java/lang/StringBuffer;
      ((StringBuffer)localObject2).<init>();
      types = ((StringBuffer)localObject2);
    }
    int i = 2;
    Object localObject3;
    if (paramInt2 == i)
    {
      boolean bool1 = paramObject instanceof Element;
      if (!bool1)
      {
        localObject3 = new java/lang/RuntimeException;
        String str1 = "Element obj expected)";
        ((RuntimeException)localObject3).<init>(str1);
        throw ((Throwable)localObject3);
      }
      Object localObject1 = paramObject;
      localObject1 = (Element)localObject1;
      localObject3 = localObject1;
      ((Element)localObject3).setParent(this);
    }
    boolean bool2;
    do
    {
      localObject3 = children;
      ((Vector)localObject3).insertElementAt(paramObject, paramInt1);
      localObject3 = types;
      char c = (char)paramInt2;
      ((StringBuffer)localObject3).insert(paramInt1, c);
      return;
      bool2 = paramObject instanceof String;
    } while (bool2);
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str2 = "String expected";
    localRuntimeException.<init>(str2);
    throw localRuntimeException;
  }
  
  public void addChild(int paramInt, Object paramObject)
  {
    int i = getChildCount();
    addChild(i, paramInt, paramObject);
  }
  
  public Element createElement(String paramString1, String paramString2)
  {
    Element localElement = new org/kxml2/kdom/Element;
    localElement.<init>();
    if (paramString1 == null) {}
    for (String str = "";; str = paramString1)
    {
      namespace = str;
      name = paramString2;
      return localElement;
    }
  }
  
  public Object getChild(int paramInt)
  {
    Object localObject = children;
    localObject = ((Vector)localObject).elementAt(paramInt);
    return localObject;
  }
  
  public int getChildCount()
  {
    Vector localVector1 = children;
    if (localVector1 == null) {}
    Vector localVector2;
    int j;
    for (int i = 0;; j = localVector2.size())
    {
      return i;
      localVector2 = children;
    }
  }
  
  public Element getElement(int paramInt)
  {
    Object localObject1 = getChild(paramInt);
    boolean bool = localObject1 instanceof Element;
    if (bool) {
      localObject1 = (Element)localObject1;
    }
    for (Object localObject2 = localObject1;; localObject2 = null) {
      return (Element)localObject2;
    }
  }
  
  public Element getElement(String paramString1, String paramString2)
  {
    int m = -1;
    int k = 0;
    int i = indexOf(paramString1, paramString2, k);
    k = i + 1;
    int j = indexOf(paramString1, paramString2, k);
    if ((i == m) || (j != m))
    {
      localObject1 = new java/lang/RuntimeException;
      Object localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str = "Element {";
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject2 = ((StringBuilder)localObject2).append(paramString1);
      str = "}";
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject2 = ((StringBuilder)localObject2).append(paramString2);
      if (i == m) {}
      for (str = " not found in ";; str = " more than once in ")
      {
        localObject2 = ((StringBuilder)localObject2).append(str);
        localObject2 = ((StringBuilder)localObject2).append(this);
        localObject2 = ((StringBuilder)localObject2).toString();
        ((RuntimeException)localObject1).<init>((String)localObject2);
        throw ((Throwable)localObject1);
      }
    }
    Object localObject1 = getElement(i);
    return (Element)localObject1;
  }
  
  public String getText(int paramInt)
  {
    boolean bool = isText(paramInt);
    if (bool)
    {
      this = getChild(paramInt);
      this = (String)this;
    }
    for (Node localNode = this;; localNode = null) {
      return localNode;
    }
  }
  
  public int getType(int paramInt)
  {
    StringBuffer localStringBuffer = types;
    int i = localStringBuffer.charAt(paramInt);
    return i;
  }
  
  public int indexOf(String paramString1, String paramString2, int paramInt)
  {
    int j = getChildCount();
    int i = paramInt;
    if (i < j)
    {
      Element localElement = getElement(i);
      if (localElement != null)
      {
        String str1 = localElement.getName();
        boolean bool = paramString2.equals(str1);
        if (bool) {
          if (paramString1 != null)
          {
            String str2 = localElement.getNamespace();
            k = paramString1.equals(str2);
            if (k == 0) {
              break label81;
            }
          }
        }
      }
    }
    label81:
    int m;
    for (int k = i;; m = -1)
    {
      return k;
      i += 1;
      break;
    }
  }
  
  public boolean isText(int paramInt)
  {
    int i = getType(paramInt);
    int j = 4;
    if (i != j)
    {
      j = 7;
      if (i != j)
      {
        j = 5;
        if (i != j) {
          break label33;
        }
      }
    }
    label33:
    int k;
    for (j = 1;; k = 0) {
      return j;
    }
  }
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    int n = 6;
    int i = 0;
    int j = paramXmlPullParser.getEventType();
    label67:
    String str4;
    switch (j)
    {
    default: 
      String str1 = paramXmlPullParser.getText();
      if (str1 != null) {
        if (j == n)
        {
          int k = 4;
          str4 = paramXmlPullParser.getText();
          addChild(k, str4);
        }
      }
      break;
    }
    for (;;)
    {
      paramXmlPullParser.nextToken();
      while (i != 0)
      {
        return;
        String str2 = paramXmlPullParser.getNamespace();
        str4 = paramXmlPullParser.getName();
        Element localElement = createElement(str2, str4);
        m = 2;
        addChild(m, localElement);
        localElement.parse(paramXmlPullParser);
        continue;
        i = 1;
      }
      int m = j;
      break label67;
      if (j == n)
      {
        String str3 = paramXmlPullParser.getName();
        if (str3 != null)
        {
          str3 = paramXmlPullParser.getName();
          addChild(n, str3);
        }
      }
    }
  }
  
  public void removeChild(int paramInt)
  {
    Object localObject = children;
    ((Vector)localObject).removeElementAt(paramInt);
    localObject = types;
    int k = ((StringBuffer)localObject).length();
    int m = 1;
    int j = k - m;
    int i = paramInt;
    while (i < j)
    {
      localStringBuffer1 = types;
      StringBuffer localStringBuffer2 = types;
      int n = i + 1;
      char c = localStringBuffer2.charAt(n);
      localStringBuffer1.setCharAt(i, c);
      i += 1;
    }
    StringBuffer localStringBuffer1 = types;
    localStringBuffer1.setLength(j);
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    writeChildren(paramXmlSerializer);
    paramXmlSerializer.flush();
  }
  
  public void writeChildren(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    Object localObject2 = children;
    if (localObject2 == null) {}
    int j;
    int i;
    do
    {
      return;
      localObject2 = children;
      j = ((Vector)localObject2).size();
      i = 0;
    } while (i >= j);
    int k = getType(i);
    localObject2 = children;
    Object localObject1 = ((Vector)localObject2).elementAt(i);
    switch (k)
    {
    case 3: 
    default: 
      localObject2 = new java/lang/RuntimeException;
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      String str = "Illegal type: ";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).append(k);
      localObject3 = ((StringBuilder)localObject3).toString();
      ((RuntimeException)localObject2).<init>((String)localObject3);
      throw ((Throwable)localObject2);
    case 2: 
      localObject1 = (Element)localObject1;
      ((Element)localObject1).write(paramXmlSerializer);
    }
    for (;;)
    {
      i += 1;
      break;
      localObject1 = (String)localObject1;
      paramXmlSerializer.text((String)localObject1);
      continue;
      localObject1 = (String)localObject1;
      paramXmlSerializer.ignorableWhitespace((String)localObject1);
      continue;
      localObject1 = (String)localObject1;
      paramXmlSerializer.cdsect((String)localObject1);
      continue;
      localObject1 = (String)localObject1;
      paramXmlSerializer.comment((String)localObject1);
      continue;
      localObject1 = (String)localObject1;
      paramXmlSerializer.entityRef((String)localObject1);
      continue;
      localObject1 = (String)localObject1;
      paramXmlSerializer.processingInstruction((String)localObject1);
      continue;
      localObject1 = (String)localObject1;
      paramXmlSerializer.docdecl((String)localObject1);
    }
  }
}

/* Location:
 * Qualified Name:     org.kxml2.kdom.Node
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */