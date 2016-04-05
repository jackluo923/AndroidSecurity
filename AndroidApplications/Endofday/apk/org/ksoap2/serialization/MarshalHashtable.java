package org.ksoap2.serialization;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class MarshalHashtable
  implements Marshal
{
  public static final Class HASHTABLE_CLASS;
  public static final String NAME = "Map";
  public static final String NAMESPACE = "http://xml.apache.org/xml-soap";
  SoapSerializationEnvelope envelope;
  
  static
  {
    Object localObject = new java/util/Hashtable;
    ((Hashtable)localObject).<init>();
    localObject = localObject.getClass();
    HASHTABLE_CLASS = (Class)localObject;
  }
  
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    Hashtable localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    String str4 = paramXmlPullParser.getName();
    for (;;)
    {
      int i = paramXmlPullParser.nextTag();
      int m = 3;
      if (i == m) {
        break;
      }
      Object localObject2 = new org/ksoap2/serialization/MarshalHashtable$ItemSoapObject;
      ((MarshalHashtable.ItemSoapObject)localObject2).<init>(this, localHashtable);
      i = 2;
      localObject1 = null;
      String str1 = "item";
      paramXmlPullParser.require(i, (String)localObject1, str1);
      paramXmlPullParser.nextTag();
      SoapSerializationEnvelope localSoapSerializationEnvelope1 = envelope;
      int n = 0;
      String str2 = null;
      String str3 = null;
      PropertyInfo localPropertyInfo = PropertyInfo.OBJECT_TYPE;
      localObject1 = paramXmlPullParser;
      Object localObject3 = localSoapSerializationEnvelope1.read((XmlPullParser)localObject1, localObject2, n, str2, str3, localPropertyInfo);
      paramXmlPullParser.nextTag();
      if (localObject3 != null)
      {
        int j = 0;
        ((SoapObject)localObject2).setProperty(j, localObject3);
      }
      SoapSerializationEnvelope localSoapSerializationEnvelope2 = envelope;
      n = 1;
      str2 = null;
      str3 = null;
      localPropertyInfo = PropertyInfo.OBJECT_TYPE;
      localObject1 = paramXmlPullParser;
      Object localObject4 = localSoapSerializationEnvelope2.read((XmlPullParser)localObject1, localObject2, n, str2, str3, localPropertyInfo);
      paramXmlPullParser.nextTag();
      if (localObject4 != null)
      {
        k = 1;
        ((SoapObject)localObject2).setProperty(k, localObject4);
      }
      k = 3;
      localObject1 = null;
      localObject2 = "item";
      paramXmlPullParser.require(k, (String)localObject1, (String)localObject2);
    }
    int k = 3;
    Object localObject1 = null;
    paramXmlPullParser.require(k, (String)localObject1, str4);
    return localHashtable;
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    envelope = paramSoapSerializationEnvelope;
    String str1 = "http://xml.apache.org/xml-soap";
    String str2 = "Map";
    Class localClass = HASHTABLE_CLASS;
    paramSoapSerializationEnvelope.addMapping(str1, str2, localClass, this);
  }
  
  public void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException
  {
    Object localObject5 = null;
    Object localObject1 = paramObject;
    localObject1 = (Hashtable)localObject1;
    Object localObject2 = localObject1;
    SoapObject localSoapObject = new org/ksoap2/serialization/SoapObject;
    localSoapObject.<init>((String)localObject5, (String)localObject5);
    String str1 = "key";
    localSoapObject.addProperty(str1, localObject5);
    str1 = "value";
    localSoapObject.addProperty(str1, localObject5);
    Enumeration localEnumeration = ((Hashtable)localObject2).keys();
    for (;;)
    {
      boolean bool = localEnumeration.hasMoreElements();
      if (!bool) {
        break;
      }
      String str2 = "";
      localObject5 = "item";
      paramXmlSerializer.startTag(str2, (String)localObject5);
      Object localObject3 = localEnumeration.nextElement();
      int i = 0;
      localSoapObject.setProperty(i, localObject3);
      i = 1;
      localObject5 = ((Hashtable)localObject2).get(localObject3);
      localSoapObject.setProperty(i, localObject5);
      Object localObject4 = envelope;
      ((SoapSerializationEnvelope)localObject4).writeObjectBody(paramXmlSerializer, localSoapObject);
      localObject4 = "";
      localObject5 = "item";
      paramXmlSerializer.endTag((String)localObject4, (String)localObject5);
    }
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.MarshalHashtable
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */