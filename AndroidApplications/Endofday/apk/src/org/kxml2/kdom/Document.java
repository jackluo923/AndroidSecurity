package org.kxml2.kdom;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class Document
  extends Node
{
  String encoding;
  protected int rootIndex;
  Boolean standalone;
  
  public Document()
  {
    int i = -1;
    rootIndex = i;
  }
  
  public void addChild(int paramInt1, int paramInt2, Object paramObject)
  {
    int i = 2;
    if (paramInt2 == i) {
      rootIndex = paramInt1;
    }
    for (;;)
    {
      super.addChild(paramInt1, paramInt2, paramObject);
      return;
      i = rootIndex;
      if (i >= paramInt1)
      {
        i = rootIndex;
        i += 1;
        rootIndex = i;
      }
    }
  }
  
  public String getEncoding()
  {
    String str = encoding;
    return str;
  }
  
  public String getName()
  {
    String str = "#document";
    return str;
  }
  
  public Element getRootElement()
  {
    int i = rootIndex;
    int k = -1;
    if (i == k)
    {
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      String str = "Document has no root element!";
      localRuntimeException.<init>(str);
      throw localRuntimeException;
    }
    int j = rootIndex;
    this = getChild(j);
    this = (Element)this;
    return this;
  }
  
  public Boolean getStandalone()
  {
    Boolean localBoolean = standalone;
    return localBoolean;
  }
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    String str1 = null;
    int i = 0;
    paramXmlPullParser.require(i, str1, str1);
    paramXmlPullParser.nextToken();
    Object localObject = paramXmlPullParser.getInputEncoding();
    encoding = ((String)localObject);
    localObject = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone";
    localObject = paramXmlPullParser.getProperty((String)localObject);
    localObject = (Boolean)localObject;
    standalone = ((Boolean)localObject);
    super.parse(paramXmlPullParser);
    int j = paramXmlPullParser.getEventType();
    int k = 1;
    if (j != k)
    {
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      String str2 = "Document end expected!";
      localRuntimeException.<init>(str2);
      throw localRuntimeException;
    }
  }
  
  public void removeChild(int paramInt)
  {
    int i = rootIndex;
    if (paramInt == i)
    {
      i = -1;
      rootIndex = i;
    }
    for (;;)
    {
      super.removeChild(paramInt);
      return;
      i = rootIndex;
      if (paramInt < i)
      {
        i = rootIndex;
        int j = 1;
        i -= j;
        rootIndex = i;
      }
    }
  }
  
  public void setEncoding(String paramString)
  {
    encoding = paramString;
  }
  
  public void setStandalone(Boolean paramBoolean)
  {
    standalone = paramBoolean;
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    String str = encoding;
    Boolean localBoolean = standalone;
    paramXmlSerializer.startDocument(str, localBoolean);
    writeChildren(paramXmlSerializer);
    paramXmlSerializer.endDocument();
  }
}

/* Location:
 * Qualified Name:     org.kxml2.kdom.Document
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */