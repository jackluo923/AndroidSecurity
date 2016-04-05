package org.ksoap2;

import java.io.IOException;
import org.kxml2.kdom.Element;
import org.kxml2.kdom.Node;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class SoapEnvelope
{
  public static final String ENC = "http://schemas.xmlsoap.org/soap/encoding/";
  public static final String ENC2001 = "http://www.w3.org/2001/12/soap-encoding";
  public static final String ENV = "http://schemas.xmlsoap.org/soap/envelope/";
  public static final String ENV2001 = "http://www.w3.org/2001/12/soap-envelope";
  public static final int VER10 = 100;
  public static final int VER11 = 110;
  public static final int VER12 = 120;
  public static final String XSD = "http://www.w3.org/2001/XMLSchema";
  public static final String XSD1999 = "http://www.w3.org/1999/XMLSchema";
  public static final String XSI = "http://www.w3.org/2001/XMLSchema-instance";
  public static final String XSI1999 = "http://www.w3.org/1999/XMLSchema-instance";
  public Object bodyIn;
  public Object bodyOut;
  public String enc;
  public String encodingStyle;
  public String env;
  public Element[] headerIn;
  public Element[] headerOut;
  public int version;
  public String xsd;
  public String xsi;
  
  public SoapEnvelope(int paramInt)
  {
    version = paramInt;
    int i = 100;
    String str2;
    if (paramInt == i)
    {
      String str1 = "http://www.w3.org/1999/XMLSchema-instance";
      xsi = str1;
      str1 = "http://www.w3.org/1999/XMLSchema";
      xsd = str1;
      int j = 120;
      if (paramInt >= j) {
        break label78;
      }
      str2 = "http://schemas.xmlsoap.org/soap/encoding/";
      enc = str2;
      str2 = "http://schemas.xmlsoap.org/soap/envelope/";
    }
    for (env = str2;; env = str2)
    {
      return;
      str2 = "http://www.w3.org/2001/XMLSchema-instance";
      xsi = str2;
      str2 = "http://www.w3.org/2001/XMLSchema";
      xsd = str2;
      break;
      label78:
      str2 = "http://www.w3.org/2001/12/soap-encoding";
      enc = str2;
      str2 = "http://www.w3.org/2001/12/soap-envelope";
    }
  }
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    int k = 3;
    int j = 2;
    paramXmlPullParser.nextTag();
    String str1 = env;
    String str5 = "Envelope";
    paramXmlPullParser.require(j, str1, str5);
    str1 = env;
    str5 = "encodingStyle";
    str1 = paramXmlPullParser.getAttributeValue(str1, str5);
    encodingStyle = str1;
    paramXmlPullParser.nextTag();
    int i = paramXmlPullParser.getEventType();
    if (i == j)
    {
      String str2 = paramXmlPullParser.getNamespace();
      str5 = env;
      boolean bool1 = str2.equals(str5);
      if (bool1)
      {
        String str3 = paramXmlPullParser.getName();
        str5 = "Header";
        boolean bool2 = str3.equals(str5);
        if (bool2)
        {
          parseHeader(paramXmlPullParser);
          str4 = env;
          str5 = "Header";
          paramXmlPullParser.require(k, str4, str5);
          paramXmlPullParser.nextTag();
        }
      }
    }
    String str4 = env;
    str5 = "Body";
    paramXmlPullParser.require(j, str4, str5);
    str4 = env;
    str5 = "encodingStyle";
    str4 = paramXmlPullParser.getAttributeValue(str4, str5);
    encodingStyle = str4;
    parseBody(paramXmlPullParser);
    str4 = env;
    str5 = "Body";
    paramXmlPullParser.require(k, str4, str5);
    paramXmlPullParser.nextTag();
    str4 = env;
    str5 = "Envelope";
    paramXmlPullParser.require(k, str4, str5);
  }
  
  public void parseBody(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser.nextTag();
    int i = paramXmlPullParser.getEventType();
    int j = 2;
    if (i == j)
    {
      String str1 = paramXmlPullParser.getNamespace();
      String str3 = env;
      boolean bool1 = str1.equals(str3);
      if (bool1)
      {
        String str2 = paramXmlPullParser.getName();
        str3 = "Fault";
        boolean bool2 = str2.equals(str3);
        if (bool2)
        {
          SoapFault localSoapFault = new org/ksoap2/SoapFault;
          localSoapFault.<init>();
          localSoapFault.parse(paramXmlPullParser);
          bodyIn = localSoapFault;
          return;
        }
      }
    }
    Object localObject2 = bodyIn;
    boolean bool3 = localObject2 instanceof Node;
    Object localObject3;
    if (bool3)
    {
      localObject3 = bodyIn;
      localObject3 = (Node)localObject3;
    }
    for (Object localObject1 = localObject3;; localObject1 = localObject3)
    {
      ((Node)localObject1).parse(paramXmlPullParser);
      bodyIn = localObject1;
      break;
      localObject3 = new org/kxml2/kdom/Node;
      ((Node)localObject3).<init>();
    }
  }
  
  public void parseHeader(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser.nextTag();
    Node localNode = new org/kxml2/kdom/Node;
    localNode.<init>();
    localNode.parse(paramXmlPullParser);
    int i = 0;
    int k = 0;
    Element localElement;
    for (;;)
    {
      int m = localNode.getChildCount();
      if (k >= m) {
        break;
      }
      localElement = localNode.getElement(k);
      if (localElement != null) {
        i += 1;
      }
      k += 1;
    }
    Element[] arrayOfElement1 = new Element[i];
    headerIn = arrayOfElement1;
    i = 0;
    k = 0;
    for (;;)
    {
      int n = localNode.getChildCount();
      if (k >= n) {
        break;
      }
      localElement = localNode.getElement(k);
      if (localElement != null)
      {
        Element[] arrayOfElement2 = headerIn;
        int j = i + 1;
        arrayOfElement2[i] = localElement;
        i = j;
      }
      k += 1;
    }
  }
  
  public void setOutputSoapObject(Object paramObject)
  {
    bodyOut = paramObject;
  }
  
  public static boolean stringToBoolean(String paramString)
  {
    boolean bool4 = false;
    boolean bool1;
    if (paramString == null) {
      bool1 = bool4;
    }
    for (;;)
    {
      return bool1;
      String str1 = paramString.trim();
      paramString = str1.toLowerCase();
      str1 = "1";
      boolean bool2 = paramString.equals(str1);
      if (!bool2)
      {
        String str2 = "true";
        bool3 = paramString.equals(str2);
        if (!bool3) {}
      }
      else
      {
        bool3 = true;
        continue;
      }
      boolean bool3 = bool4;
    }
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    String str1 = "i";
    String str2 = xsi;
    paramXmlSerializer.setPrefix(str1, str2);
    str1 = "d";
    str2 = xsd;
    paramXmlSerializer.setPrefix(str1, str2);
    str1 = "c";
    str2 = enc;
    paramXmlSerializer.setPrefix(str1, str2);
    str1 = "v";
    str2 = env;
    paramXmlSerializer.setPrefix(str1, str2);
    str1 = env;
    str2 = "Envelope";
    paramXmlSerializer.startTag(str1, str2);
    str1 = env;
    str2 = "Header";
    paramXmlSerializer.startTag(str1, str2);
    writeHeader(paramXmlSerializer);
    str1 = env;
    str2 = "Header";
    paramXmlSerializer.endTag(str1, str2);
    str1 = env;
    str2 = "Body";
    paramXmlSerializer.startTag(str1, str2);
    writeBody(paramXmlSerializer);
    str1 = env;
    str2 = "Body";
    paramXmlSerializer.endTag(str1, str2);
    str1 = env;
    str2 = "Envelope";
    paramXmlSerializer.endTag(str1, str2);
  }
  
  public void writeBody(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    String str1 = encodingStyle;
    if (str1 != null)
    {
      str1 = env;
      String str2 = "encodingStyle";
      String str3 = encodingStyle;
      paramXmlSerializer.attribute(str1, str2, str3);
    }
    this = bodyOut;
    this = (Node)this;
    write(paramXmlSerializer);
  }
  
  public void writeHeader(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    Element[] arrayOfElement = headerOut;
    if (arrayOfElement != null)
    {
      int i = 0;
      for (;;)
      {
        arrayOfElement = headerOut;
        int j = arrayOfElement.length;
        if (i >= j) {
          break;
        }
        Object localObject = headerOut;
        localObject = localObject[i];
        ((Element)localObject).write(paramXmlSerializer);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.SoapEnvelope
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */