package org.ksoap2.serialization;

import java.io.IOException;
import java.util.Date;
import org.kobjects.isodate.IsoDate;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class MarshalDate
  implements Marshal
{
  public static Class DATE_CLASS;
  
  static
  {
    Object localObject = new java/util/Date;
    ((Date)localObject).<init>();
    localObject = localObject.getClass();
    DATE_CLASS = (Class)localObject;
  }
  
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    Object localObject = paramXmlPullParser.nextText();
    int i = 3;
    localObject = IsoDate.stringToDate((String)localObject, i);
    return localObject;
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    String str1 = xsd;
    String str2 = "dateTime";
    Class localClass = DATE_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
  }
  
  public void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException
  {
    paramObject = (Date)paramObject;
    int i = 3;
    String str = IsoDate.dateToString((Date)paramObject, i);
    paramXmlSerializer.text(str);
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.MarshalDate
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */