package org.ksoap2.serialization;

import java.io.IOException;
import java.math.BigDecimal;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class MarshalFloat
  implements Marshal
{
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    String str1 = paramXmlPullParser.nextText();
    String str2 = "float";
    boolean bool1 = paramString2.equals(str2);
    Object localObject;
    if (bool1)
    {
      localObject = new java/lang/Float;
      ((Float)localObject).<init>(str1);
    }
    for (;;)
    {
      return localObject;
      String str3 = "double";
      boolean bool2 = paramString2.equals(str3);
      if (bool2)
      {
        localObject = new java/lang/Double;
        ((Double)localObject).<init>(str1);
      }
      else
      {
        String str4 = "decimal";
        boolean bool3 = paramString2.equals(str4);
        if (!bool3) {
          break;
        }
        localObject = new java/math/BigDecimal;
        ((BigDecimal)localObject).<init>(str1);
      }
    }
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str5 = "float, double, or decimal expected";
    localRuntimeException.<init>(str5);
    throw localRuntimeException;
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    String str1 = xsd;
    String str2 = "float";
    Class localClass = Float.class;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
    str1 = xsd;
    str2 = "double";
    localClass = Double.class;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
    str1 = xsd;
    str2 = "decimal";
    localClass = BigDecimal.class;
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
 * Qualified Name:     org.ksoap2.serialization.MarshalFloat
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */