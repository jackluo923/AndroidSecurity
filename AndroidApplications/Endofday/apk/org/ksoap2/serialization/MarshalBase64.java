package org.ksoap2.serialization;

import java.io.IOException;
import org.kobjects.base64.Base64;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class MarshalBase64
  implements Marshal
{
  public static Class BYTE_ARRAY_CLASS;
  
  static
  {
    int i = 0;
    Object localObject = new byte[i];
    localObject = localObject.getClass();
    BYTE_ARRAY_CLASS = (Class)localObject;
  }
  
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    Object localObject = paramXmlPullParser.nextText();
    localObject = Base64.decode((String)localObject);
    return localObject;
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    String str1 = xsd;
    String str2 = "base64Binary";
    Class localClass = BYTE_ARRAY_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
    str1 = "http://schemas.xmlsoap.org/soap/encoding/";
    str2 = "base64";
    localClass = BYTE_ARRAY_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
  }
  
  public void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException
  {
    paramObject = (byte[])paramObject;
    paramObject = (byte[])paramObject;
    String str = Base64.encode((byte[])paramObject);
    paramXmlSerializer.text(str);
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.MarshalBase64
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */