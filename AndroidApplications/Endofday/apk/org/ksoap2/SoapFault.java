package org.ksoap2;

import java.io.IOException;
import org.kxml2.kdom.Node;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class SoapFault
  extends IOException
{
  public Node detail;
  public String faultactor;
  public String faultcode;
  public String faultstring;
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    int k = 2;
    String str2 = "http://schemas.xmlsoap.org/soap/envelope/";
    Object localObject3 = "Fault";
    paramXmlPullParser.require(k, str2, (String)localObject3);
    String str1;
    for (;;)
    {
      int i = paramXmlPullParser.nextTag();
      if (i != k) {
        return;
      }
      str1 = paramXmlPullParser.getName();
      String str3 = "detail";
      boolean bool1 = str1.equals(str3);
      if (!bool1) {
        break;
      }
      localObject1 = new org/kxml2/kdom/Node;
      ((Node)localObject1).<init>();
      detail = ((Node)localObject1);
      localObject1 = detail;
      ((Node)localObject1).parse(paramXmlPullParser);
    }
    Object localObject1 = "faultcode";
    boolean bool2 = str1.equals(localObject1);
    if (bool2)
    {
      String str4 = paramXmlPullParser.nextText();
      faultcode = str4;
    }
    for (;;)
    {
      int j = 3;
      localObject3 = null;
      paramXmlPullParser.require(j, (String)localObject3, str1);
      break;
      String str5 = "faultstring";
      boolean bool3 = str1.equals(str5);
      String str6;
      if (bool3)
      {
        str6 = paramXmlPullParser.nextText();
        faultstring = str6;
      }
      else
      {
        str6 = "faultactor";
        boolean bool4 = str1.equals(str6);
        if (!bool4) {
          break label180;
        }
        localObject2 = paramXmlPullParser.nextText();
        faultactor = ((String)localObject2);
      }
    }
    label180:
    Object localObject2 = new java/lang/RuntimeException;
    localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    String str7 = "unexpected tag:";
    localObject3 = ((StringBuilder)localObject3).append(str7);
    localObject3 = ((StringBuilder)localObject3).append(str1);
    localObject3 = ((StringBuilder)localObject3).toString();
    ((RuntimeException)localObject2).<init>((String)localObject3);
    throw ((Throwable)localObject2);
  }
  
  public String toString()
  {
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject2 = "SoapFault - faultcode: '";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = faultcode;
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = "' faultstring: '";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = faultstring;
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = "' faultactor: '";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = faultactor;
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = "' detail: ";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = detail;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    return (String)localObject1;
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    String str2 = null;
    Object localObject = "http://schemas.xmlsoap.org/soap/envelope/";
    String str1 = "Fault";
    paramXmlSerializer.startTag((String)localObject, str1);
    localObject = "faultcode";
    paramXmlSerializer.startTag(str2, (String)localObject);
    localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    str1 = "";
    localObject = ((StringBuilder)localObject).append(str1);
    str1 = faultcode;
    localObject = ((StringBuilder)localObject).append(str1);
    localObject = ((StringBuilder)localObject).toString();
    paramXmlSerializer.text((String)localObject);
    localObject = "faultcode";
    paramXmlSerializer.endTag(str2, (String)localObject);
    localObject = "faultstring";
    paramXmlSerializer.startTag(str2, (String)localObject);
    localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    str1 = "";
    localObject = ((StringBuilder)localObject).append(str1);
    str1 = faultstring;
    localObject = ((StringBuilder)localObject).append(str1);
    localObject = ((StringBuilder)localObject).toString();
    paramXmlSerializer.text((String)localObject);
    localObject = "faultstring";
    paramXmlSerializer.endTag(str2, (String)localObject);
    localObject = "detail";
    paramXmlSerializer.startTag(str2, (String)localObject);
    localObject = detail;
    if (localObject != null)
    {
      localObject = detail;
      ((Node)localObject).write(paramXmlSerializer);
    }
    localObject = "detail";
    paramXmlSerializer.endTag(str2, (String)localObject);
    localObject = "http://schemas.xmlsoap.org/soap/envelope/";
    str1 = "Fault";
    paramXmlSerializer.endTag((String)localObject, str1);
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.SoapFault
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */