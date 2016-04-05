package org.kxml2.kdom;

import java.io.IOException;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class Element
  extends Node
{
  protected Vector attributes;
  protected String name;
  protected String namespace;
  protected Node parent;
  protected Vector prefixes;
  
  public void clear()
  {
    Vector localVector = null;
    attributes = localVector;
    children = localVector;
  }
  
  public Element createElement(String paramString1, String paramString2)
  {
    Object localObject = parent;
    if (localObject == null) {}
    for (localObject = super.createElement(paramString1, paramString2);; localObject = ((Node)localObject).createElement(paramString1, paramString2))
    {
      return (Element)localObject;
      localObject = parent;
    }
  }
  
  public int getAttributeCount()
  {
    Vector localVector1 = attributes;
    if (localVector1 == null) {}
    Vector localVector2;
    int j;
    for (int i = 0;; j = localVector2.size())
    {
      return i;
      localVector2 = attributes;
    }
  }
  
  public String getAttributeName(int paramInt)
  {
    Vector localVector = attributes;
    this = localVector.elementAt(paramInt);
    this = (String[])this;
    this = (String[])this;
    int i = 1;
    String str = this[i];
    return str;
  }
  
  public String getAttributeNamespace(int paramInt)
  {
    Vector localVector = attributes;
    this = localVector.elementAt(paramInt);
    this = (String[])this;
    this = (String[])this;
    int i = 0;
    String str = this[i];
    return str;
  }
  
  public String getAttributeValue(int paramInt)
  {
    Vector localVector = attributes;
    this = localVector.elementAt(paramInt);
    this = (String[])this;
    this = (String[])this;
    int i = 2;
    String str = this[i];
    return str;
  }
  
  public String getAttributeValue(String paramString1, String paramString2)
  {
    int i = 0;
    int j = getAttributeCount();
    if (i < j)
    {
      String str1 = getAttributeName(i);
      boolean bool1 = paramString2.equals(str1);
      if (bool1) {
        if (paramString1 != null)
        {
          String str2 = getAttributeNamespace(i);
          boolean bool2 = paramString1.equals(str2);
          if (!bool2) {
            break label69;
          }
        }
      }
    }
    for (String str3 = getAttributeValue(i);; str3 = null)
    {
      return str3;
      label69:
      i += 1;
      break;
    }
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
  
  public int getNamespaceCount()
  {
    Vector localVector1 = prefixes;
    if (localVector1 == null) {}
    Vector localVector2;
    int j;
    for (int i = 0;; j = localVector2.size())
    {
      return i;
      localVector2 = prefixes;
    }
  }
  
  public String getNamespacePrefix(int paramInt)
  {
    Vector localVector = prefixes;
    this = localVector.elementAt(paramInt);
    this = (String[])this;
    this = (String[])this;
    int i = 0;
    String str = this[i];
    return str;
  }
  
  public String getNamespaceUri(int paramInt)
  {
    Vector localVector = prefixes;
    this = localVector.elementAt(paramInt);
    this = (String[])this;
    this = (String[])this;
    int i = 1;
    String str = this[i];
    return str;
  }
  
  public String getNamespaceUri(String paramString)
  {
    int i = getNamespaceCount();
    int j = 0;
    Object localObject;
    if (j < i)
    {
      String str1 = getNamespacePrefix(j);
      if (paramString != str1)
      {
        if (paramString != null)
        {
          str1 = getNamespacePrefix(j);
          boolean bool1 = paramString.equals(str1);
          if (!bool1) {}
        }
      }
      else {
        localObject = getNamespaceUri(j);
      }
    }
    for (;;)
    {
      return (String)localObject;
      j += 1;
      break;
      localObject = parent;
      boolean bool2 = localObject instanceof Element;
      String str2;
      if (bool2)
      {
        this = parent;
        this = (Element)this;
        str2 = getNamespaceUri(paramString);
      }
      else
      {
        str2 = null;
      }
    }
  }
  
  public Node getParent()
  {
    Node localNode = parent;
    return localNode;
  }
  
  public Node getRoot()
  {
    Object localObject1 = this;
    Node localNode = parent;
    if (localNode != null)
    {
      localNode = parent;
      boolean bool = localNode instanceof Element;
      if (bool) {}
    }
    for (Object localObject2 = parent;; localObject2 = localObject1)
    {
      return (Node)localObject2;
      localObject1 = parent;
      localObject1 = (Element)localObject1;
      break;
    }
  }
  
  public void init() {}
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    int j = paramXmlPullParser.getDepth();
    int n = 1;
    j -= n;
    int i = paramXmlPullParser.getNamespaceCount(j);
    String str3;
    for (;;)
    {
      j = paramXmlPullParser.getDepth();
      j = paramXmlPullParser.getNamespaceCount(j);
      if (i >= j) {
        break;
      }
      String str1 = paramXmlPullParser.getNamespacePrefix(i);
      str3 = paramXmlPullParser.getNamespaceUri(i);
      setPrefix(str1, str3);
      i += 1;
    }
    i = 0;
    String str4;
    for (;;)
    {
      int k = paramXmlPullParser.getAttributeCount();
      if (i >= k) {
        break;
      }
      String str2 = paramXmlPullParser.getAttributeNamespace(i);
      str3 = paramXmlPullParser.getAttributeName(i);
      str4 = paramXmlPullParser.getAttributeValue(i);
      setAttribute(str2, str3, str4);
      i += 1;
    }
    init();
    boolean bool = paramXmlPullParser.isEmptyElementTag();
    if (bool) {
      paramXmlPullParser.nextToken();
    }
    for (;;)
    {
      int m = 3;
      str3 = getNamespace();
      str4 = getName();
      paramXmlPullParser.require(m, str3, str4);
      paramXmlPullParser.nextToken();
      return;
      paramXmlPullParser.nextToken();
      super.parse(paramXmlPullParser);
      m = getChildCount();
      if (m == 0)
      {
        m = 7;
        str3 = "";
        addChild(m, str3);
      }
    }
  }
  
  public void setAttribute(String paramString1, String paramString2, String paramString3)
  {
    int i1 = 2;
    int n = 0;
    int m = 1;
    Vector localVector1 = attributes;
    if (localVector1 == null)
    {
      localVector1 = new java/util/Vector;
      localVector1.<init>();
      attributes = localVector1;
    }
    if (paramString1 == null) {
      paramString1 = "";
    }
    localVector1 = attributes;
    int j = localVector1.size();
    int i = j - m;
    Object localObject2;
    Vector localVector2;
    if (i >= 0)
    {
      Object localObject3 = attributes;
      localObject3 = ((Vector)localObject3).elementAt(i);
      localObject3 = (String[])localObject3;
      Object localObject1 = localObject3;
      localObject1 = (String[])localObject1;
      localObject2 = localObject1;
      localObject3 = localObject2[n];
      boolean bool1 = ((String)localObject3).equals(paramString1);
      if (bool1)
      {
        Object localObject4 = localObject2[m];
        boolean bool2 = ((String)localObject4).equals(paramString2);
        if (bool2) {
          if (paramString3 == null)
          {
            localVector2 = attributes;
            localVector2.removeElementAt(i);
          }
        }
      }
    }
    for (;;)
    {
      return;
      localObject2[i1] = paramString3;
      continue;
      i += -1;
      break;
      localVector2 = attributes;
      int k = 3;
      String[] arrayOfString = new String[k];
      arrayOfString[n] = paramString1;
      arrayOfString[m] = paramString2;
      arrayOfString[i1] = paramString3;
      localVector2.addElement(arrayOfString);
    }
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setNamespace(String paramString)
  {
    if (paramString == null)
    {
      NullPointerException localNullPointerException = new java/lang/NullPointerException;
      String str = "Use \"\" for empty namespace";
      localNullPointerException.<init>(str);
      throw localNullPointerException;
    }
    namespace = paramString;
  }
  
  protected void setParent(Node paramNode)
  {
    parent = paramNode;
  }
  
  public void setPrefix(String paramString1, String paramString2)
  {
    Vector localVector = prefixes;
    if (localVector == null)
    {
      localVector = new java/util/Vector;
      localVector.<init>();
      prefixes = localVector;
    }
    localVector = prefixes;
    int i = 2;
    String[] arrayOfString = new String[i];
    int j = 0;
    arrayOfString[j] = paramString1;
    j = 1;
    arrayOfString[j] = paramString2;
    localVector.addElement(arrayOfString);
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    Vector localVector = prefixes;
    if (localVector != null)
    {
      i = 0;
      for (;;)
      {
        localVector = prefixes;
        int k = localVector.size();
        if (i >= k) {
          break;
        }
        str1 = getNamespacePrefix(i);
        str2 = getNamespaceUri(i);
        paramXmlSerializer.setPrefix(str1, str2);
        i += 1;
      }
    }
    String str1 = getNamespace();
    String str2 = getName();
    paramXmlSerializer.startTag(str1, str2);
    int j = getAttributeCount();
    int i = 0;
    while (i < j)
    {
      str1 = getAttributeNamespace(i);
      str2 = getAttributeName(i);
      String str3 = getAttributeValue(i);
      paramXmlSerializer.attribute(str1, str2, str3);
      i += 1;
    }
    writeChildren(paramXmlSerializer);
    str1 = getNamespace();
    str2 = getName();
    paramXmlSerializer.endTag(str1, str2);
  }
}

/* Location:
 * Qualified Name:     org.kxml2.kdom.Element
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */