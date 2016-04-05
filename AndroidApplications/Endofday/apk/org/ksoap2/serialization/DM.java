package org.ksoap2.serialization;

import java.io.IOException;
import org.ksoap2.SoapEnvelope;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

class DM
  implements Marshal
{
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    String str = paramXmlPullParser.nextText();
    int i = 0;
    i = paramString2.charAt(i);
    Object localObject;
    switch (i)
    {
    default: 
      localObject = new java/lang/RuntimeException;
      ((RuntimeException)localObject).<init>();
      throw ((Throwable)localObject);
    case 115: 
      localObject = str;
    }
    for (;;)
    {
      return localObject;
      localObject = new java/lang/Integer;
      int j = Integer.parseInt(str);
      ((Integer)localObject).<init>(j);
      continue;
      localObject = new java/lang/Long;
      long l = Long.parseLong(str);
      ((Long)localObject).<init>(l);
      continue;
      localObject = new java/lang/Boolean;
      boolean bool = SoapEnvelope.stringToBoolean(str);
      ((Boolean)localObject).<init>(bool);
    }
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    String str1 = xsd;
    String str2 = "int";
    Class localClass = PropertyInfo.INTEGER_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
    str1 = xsd;
    str2 = "long";
    localClass = PropertyInfo.LONG_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
    str1 = xsd;
    str2 = "string";
    localClass = PropertyInfo.STRING_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
    str1 = xsd;
    str2 = "boolean";
    localClass = PropertyInfo.BOOLEAN_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
  }
  
  public void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException
  {
    String str = paramObject.toString();
    paramXmlSerializer.text(str);
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.DM
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */