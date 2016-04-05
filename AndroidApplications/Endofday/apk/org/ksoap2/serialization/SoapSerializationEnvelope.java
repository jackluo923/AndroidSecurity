package org.ksoap2.serialization;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.SoapFault;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class SoapSerializationEnvelope
  extends SoapEnvelope
{
  private static final String ANY_TYPE_LABEL = "anyType";
  private static final String ARRAY_MAPPING_NAME = "Array";
  private static final String ARRAY_TYPE_LABEL = "arrayType";
  static final Marshal DEFAULT_MARSHAL;
  private static final String HREF_LABEL = "href";
  private static final String ID_LABEL = "id";
  private static final String ITEM_LABEL = "item";
  private static final String NIL_LABEL = "nil";
  private static final String NULL_LABEL = "null";
  protected static final int QNAME_MARSHAL = 3;
  protected static final int QNAME_NAMESPACE = 0;
  protected static final int QNAME_TYPE = 1;
  private static final String ROOT_LABEL = "root";
  private static final String TYPE_LABEL = "type";
  protected boolean addAdornments;
  protected Hashtable classToQName;
  public boolean dotNet;
  Hashtable idMap;
  public boolean implicitTypes;
  Vector multiRef;
  public Hashtable properties;
  protected Hashtable qNameToClass;
  
  static
  {
    DM localDM = new org/ksoap2/serialization/DM;
    localDM.<init>();
    DEFAULT_MARSHAL = localDM;
  }
  
  public SoapSerializationEnvelope(int paramInt)
  {
    super(paramInt);
    Hashtable localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    properties = localHashtable;
    localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    idMap = localHashtable;
    localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    qNameToClass = localHashtable;
    localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    classToQName = localHashtable;
    boolean bool = true;
    addAdornments = bool;
    Object localObject = enc;
    String str = "Array";
    Class localClass = PropertyInfo.VECTOR_CLASS;
    addMapping((String)localObject, str, localClass);
    localObject = DEFAULT_MARSHAL;
    ((Marshal)localObject).register(this);
  }
  
  public void addMapping(String paramString1, String paramString2, Class paramClass)
  {
    Marshal localMarshal = null;
    addMapping(paramString1, paramString2, paramClass, localMarshal);
  }
  
  public void addMapping(String paramString1, String paramString2, Class paramClass, Marshal paramMarshal)
  {
    String str = null;
    Hashtable localHashtable = qNameToClass;
    Object localObject1 = new org/ksoap2/serialization/SoapPrimitive;
    ((SoapPrimitive)localObject1).<init>(paramString1, paramString2, str);
    if (paramMarshal == null) {}
    Object localObject2;
    for (Class localClass = paramClass;; localObject2 = paramMarshal)
    {
      localHashtable.put(localObject1, localClass);
      localHashtable = classToQName;
      localObject1 = paramClass.getName();
      int i = 4;
      localObject2 = new Object[i];
      int j = 0;
      localObject2[j] = paramString1;
      j = 1;
      localObject2[j] = paramString2;
      j = 2;
      localObject2[j] = str;
      j = 3;
      localObject2[j] = paramMarshal;
      localHashtable.put(localObject1, localObject2);
      return;
    }
  }
  
  public void addTemplate(SoapObject paramSoapObject)
  {
    Hashtable localHashtable = qNameToClass;
    SoapPrimitive localSoapPrimitive = new org/ksoap2/serialization/SoapPrimitive;
    String str1 = namespace;
    String str2 = name;
    String str3 = null;
    localSoapPrimitive.<init>(str1, str2, str3);
    localHashtable.put(localSoapPrimitive, paramSoapObject);
  }
  
  private int getIndex(String paramString, int paramInt1, int paramInt2)
  {
    int i;
    if (paramString == null) {
      i = paramInt2;
    }
    for (;;)
    {
      return i;
      i = paramString.length();
      i -= paramInt1;
      int k = 3;
      if (i < k)
      {
        i = paramInt2;
      }
      else
      {
        i = paramInt1 + 1;
        k = paramString.length();
        int m = 1;
        k -= m;
        String str = paramString.substring(i, k);
        int j = Integer.parseInt(str);
      }
    }
  }
  
  public Object[] getInfo(Object paramObject1, Object paramObject2)
  {
    int i2 = 3;
    int i1 = 2;
    int n = 1;
    int m = 0;
    Object localObject7 = null;
    boolean bool1;
    Object localObject1;
    Object[] arrayOfObject1;
    Object localObject6;
    if (paramObject1 == null)
    {
      bool1 = paramObject2 instanceof SoapObject;
      if (!bool1)
      {
        bool1 = paramObject2 instanceof SoapPrimitive;
        if (!bool1) {}
      }
      else
      {
        paramObject1 = paramObject2;
      }
    }
    else
    {
      bool1 = paramObject1 instanceof SoapObject;
      if (!bool1) {
        break label128;
      }
      localObject1 = paramObject1;
      localObject1 = (SoapObject)localObject1;
      Object localObject2 = localObject1;
      int i = 4;
      arrayOfObject1 = new Object[i];
      localObject6 = ((SoapObject)localObject2).getNamespace();
      arrayOfObject1[m] = localObject6;
      localObject6 = ((SoapObject)localObject2).getName();
      arrayOfObject1[n] = localObject6;
      arrayOfObject1[i1] = localObject7;
      arrayOfObject1[i2] = localObject7;
    }
    for (;;)
    {
      return arrayOfObject1;
      paramObject1 = paramObject2.getClass();
      break;
      label128:
      boolean bool2 = paramObject1 instanceof SoapPrimitive;
      if (bool2)
      {
        localObject1 = paramObject1;
        localObject1 = (SoapPrimitive)localObject1;
        Object localObject3 = localObject1;
        int j = 4;
        Object[] arrayOfObject2 = new Object[j];
        localObject6 = ((SoapPrimitive)localObject3).getNamespace();
        arrayOfObject2[m] = localObject6;
        localObject6 = ((SoapPrimitive)localObject3).getName();
        arrayOfObject2[n] = localObject6;
        arrayOfObject2[i1] = localObject7;
        localObject6 = DEFAULT_MARSHAL;
        arrayOfObject2[i2] = localObject6;
      }
      else
      {
        boolean bool3 = paramObject1 instanceof Class;
        if (bool3)
        {
          Object localObject5 = PropertyInfo.OBJECT_CLASS;
          if (paramObject1 != localObject5)
          {
            localObject5 = classToQName;
            paramObject1 = (Class)paramObject1;
            localObject6 = ((Class)paramObject1).getName();
            localObject5 = ((Hashtable)localObject5).get(localObject6);
            localObject5 = (Object[])localObject5;
            localObject1 = localObject5;
            localObject1 = (Object[])localObject1;
            Object localObject4 = localObject1;
            if (localObject4 != null)
            {
              localObject5 = localObject4;
              continue;
            }
          }
        }
        int k = 4;
        Object[] arrayOfObject3 = new Object[k];
        localObject6 = xsd;
        arrayOfObject3[m] = localObject6;
        localObject6 = "anyType";
        arrayOfObject3[n] = localObject6;
        arrayOfObject3[i1] = localObject7;
        arrayOfObject3[i2] = localObject7;
      }
    }
  }
  
  public Object getResponse()
    throws SoapFault
  {
    Object localObject2 = bodyIn;
    boolean bool = localObject2 instanceof SoapFault;
    if (bool)
    {
      this = bodyIn;
      this = (SoapFault)this;
      throw this;
    }
    Object localObject1 = bodyIn;
    localObject1 = (KvmSerializable)localObject1;
    int i = ((KvmSerializable)localObject1).getPropertyCount();
    if (i == 0) {}
    int j;
    Object localObject4;
    for (Object localObject3 = null;; localObject4 = ((KvmSerializable)localObject1).getProperty(j))
    {
      return localObject3;
      j = 0;
    }
  }
  
  public Object getResult()
  {
    Object localObject1 = bodyIn;
    localObject1 = (KvmSerializable)localObject1;
    int i = ((KvmSerializable)localObject1).getPropertyCount();
    if (i == 0) {}
    int j;
    Object localObject3;
    for (Object localObject2 = null;; localObject3 = ((KvmSerializable)localObject1).getProperty(j))
    {
      return localObject2;
      j = 0;
    }
  }
  
  public boolean isAddAdornments()
  {
    boolean bool = addAdornments;
    return bool;
  }
  
  public void parseBody(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    Object localObject4 = null;
    int m = 2;
    bodyIn = localObject4;
    paramXmlPullParser.nextTag();
    int i = paramXmlPullParser.getEventType();
    Object localObject3;
    if (i == m)
    {
      String str1 = paramXmlPullParser.getNamespace();
      localObject3 = env;
      boolean bool1 = str1.equals(localObject3);
      if (bool1)
      {
        String str2 = paramXmlPullParser.getName();
        localObject3 = "Fault";
        boolean bool2 = str2.equals(localObject3);
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
    for (;;)
    {
      int j = paramXmlPullParser.getEventType();
      if (j != m) {
        break;
      }
      Object localObject1 = enc;
      localObject3 = "root";
      String str5 = paramXmlPullParser.getAttributeValue((String)localObject1, (String)localObject3);
      int k = -1;
      String str3 = paramXmlPullParser.getNamespace();
      String str4 = paramXmlPullParser.getName();
      PropertyInfo localPropertyInfo = PropertyInfo.OBJECT_TYPE;
      localObject1 = this;
      localObject3 = paramXmlPullParser;
      Object localObject5 = ((SoapSerializationEnvelope)localObject1).read((XmlPullParser)localObject3, localObject4, k, str3, str4, localPropertyInfo);
      localObject1 = "1";
      boolean bool3 = ((String)localObject1).equals(str5);
      if (!bool3)
      {
        Object localObject2 = bodyIn;
        if (localObject2 != null) {}
      }
      else
      {
        bodyIn = localObject5;
      }
      paramXmlPullParser.nextTag();
    }
  }
  
  public Object read(XmlPullParser paramXmlPullParser, Object paramObject, int paramInt, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    String str2 = paramXmlPullParser.getName();
    RuntimeException localRuntimeException1 = null;
    String str8 = "href";
    Object localObject1 = paramXmlPullParser;
    Object localObject12 = localRuntimeException1;
    Object localObject14 = str8;
    String str3 = ((XmlPullParser)localObject1).getAttributeValue((String)localObject12, (String)localObject14);
    Object localObject17;
    Object localObject15;
    String str1;
    if (str3 != null)
    {
      if (paramObject == null)
      {
        localRuntimeException1 = new java/lang/RuntimeException;
        str8 = "href at root level?!?";
        localRuntimeException1.<init>(str8);
        throw localRuntimeException1;
      }
      int n = 1;
      localObject1 = str3;
      localObject12 = n;
      str3 = ((String)localObject1).substring(localObject12);
      localObject1 = this;
      localObject1 = idMap;
      Object localObject19 = localObject1;
      localObject1 = localObject19;
      localObject12 = str3;
      localObject17 = ((Hashtable)localObject1).get(localObject12);
      if (localObject17 != null)
      {
        localObject1 = localObject17;
        Object localObject2 = localObject1 instanceof FwdRef;
        localObject19 = localObject2;
        if (localObject19 == 0) {}
      }
      else
      {
        localObject15 = new org/ksoap2/serialization/FwdRef;
        ((FwdRef)localObject15).<init>();
        localObject17 = (FwdRef)localObject17;
        next = ((FwdRef)localObject17);
        Object localObject3 = paramObject;
        localObject12 = localObject15;
        obj = localObject3;
        int i = paramInt;
        localObject12 = localObject15;
        index = i;
        localObject4 = this;
        localObject4 = idMap;
        localObject19 = localObject4;
        localObject4 = localObject19;
        localObject12 = str3;
        localObject14 = localObject15;
        ((Hashtable)localObject4).put(localObject12, localObject14);
        localObject17 = null;
      }
      paramXmlPullParser.nextTag();
      int i1 = 3;
      str8 = null;
      localObject4 = paramXmlPullParser;
      localObject12 = i1;
      localObject14 = str8;
      str1 = str2;
      ((XmlPullParser)localObject4).require(localObject12, (String)localObject14, str1);
      localObject20 = localObject17;
      int i6 = 3;
      Object localObject23 = null;
      localObject4 = paramXmlPullParser;
      localObject12 = i6;
      localObject14 = localObject23;
      str1 = str2;
      ((XmlPullParser)localObject4).require(localObject12, (String)localObject14, str1);
      return localObject20;
    }
    Object localObject4 = this;
    localObject4 = xsi;
    Object localObject20 = localObject4;
    String str9 = "nil";
    localObject4 = paramXmlPullParser;
    localObject12 = localObject20;
    localObject14 = str9;
    String str5 = ((XmlPullParser)localObject4).getAttributeValue((String)localObject12, (String)localObject14);
    localObject20 = null;
    str9 = "id";
    localObject4 = paramXmlPullParser;
    localObject12 = localObject20;
    localObject14 = str9;
    String str4 = ((XmlPullParser)localObject4).getAttributeValue((String)localObject12, (String)localObject14);
    if (str5 == null)
    {
      localObject4 = this;
      localObject4 = xsi;
      localObject20 = localObject4;
      str9 = "null";
      localObject4 = paramXmlPullParser;
      localObject12 = localObject20;
      localObject14 = str9;
      str5 = ((XmlPullParser)localObject4).getAttributeValue((String)localObject12, (String)localObject14);
    }
    Object localObject21;
    Object localObject16;
    if (str5 != null)
    {
      boolean bool = SoapEnvelope.stringToBoolean(str5);
      if (bool)
      {
        localObject17 = null;
        paramXmlPullParser.nextTag();
        int i2 = 3;
        str9 = null;
        localObject4 = paramXmlPullParser;
        localObject12 = i2;
        localObject14 = str9;
        str1 = str2;
        ((XmlPullParser)localObject4).require(localObject12, (String)localObject14, str1);
        if (str4 != null)
        {
          localObject4 = this;
          localObject4 = idMap;
          localObject21 = localObject4;
          localObject4 = localObject21;
          localObject12 = str4;
          localObject16 = ((Hashtable)localObject4).get(localObject12);
          localObject4 = localObject16;
          Object localObject5 = localObject4 instanceof FwdRef;
          localObject21 = localObject5;
          if (localObject21 == 0) {
            break label1172;
          }
          localObject6 = localObject16;
          localObject6 = (FwdRef)localObject6;
          localObject15 = localObject6;
          do
          {
            localObject6 = localObject15;
            localObject6 = obj;
            localObject21 = localObject6;
            localObject6 = localObject21;
            localObject7 = localObject6 instanceof KvmSerializable;
            localObject21 = localObject7;
            if (localObject21 == 0) {
              break;
            }
            localObject8 = localObject15;
            localObject8 = obj;
            paramObject = localObject8;
            paramObject = (KvmSerializable)paramObject;
            localObject8 = localObject15;
            localObject9 = index;
            localObject21 = localObject9;
            localObject10 = paramObject;
            k = localObject21;
            localObject14 = localObject17;
            ((KvmSerializable)localObject10).setProperty(k, localObject14);
            localObject15 = next;
          } while (localObject15 != null);
        }
      }
    }
    label817:
    label1172:
    while (localObject16 == null) {
      for (;;)
      {
        Object localObject6;
        Object localObject7;
        Object localObject8;
        Object localObject9;
        int k;
        Object localObject10 = this;
        localObject10 = idMap;
        localObject21 = localObject10;
        localObject10 = localObject21;
        Object localObject13 = str4;
        localObject14 = localObject17;
        ((Hashtable)localObject10).put(localObject13, localObject14);
        localObject21 = localObject17;
        break;
        localObject10 = this;
        localObject10 = xsi;
        localObject21 = localObject10;
        str9 = "type";
        localObject10 = paramXmlPullParser;
        localObject13 = localObject21;
        localObject14 = str9;
        String str6 = ((XmlPullParser)localObject10).getAttributeValue((String)localObject13, (String)localObject14);
        int m;
        Object localObject18;
        if (str6 != null)
        {
          int i3 = 58;
          m = str6.indexOf(i3);
          i3 = m + 1;
          paramString2 = str6.substring(i3);
          i3 = -1;
          localObject10 = m;
          localObject13 = i3;
          if (localObject10 == localObject13)
          {
            String str7 = "";
            localObject18 = str7;
            localObject10 = paramXmlPullParser;
            localObject13 = localObject18;
            paramString1 = ((XmlPullParser)localObject10).getNamespace((String)localObject13);
          }
        }
        for (;;)
        {
          if (str6 == null)
          {
            i4 = 1;
            localObject10 = i4;
            localObject13 = this;
            implicitTypes = localObject10;
          }
          localObject10 = this;
          localObject13 = paramXmlPullParser;
          localObject14 = paramString1;
          str1 = paramString2;
          PropertyInfo localPropertyInfo = paramPropertyInfo;
          localObject17 = ((SoapSerializationEnvelope)localObject10).readInstance((XmlPullParser)localObject13, (String)localObject14, str1, localPropertyInfo);
          if (localObject17 != null) {
            break;
          }
          localObject10 = this;
          localObject13 = paramXmlPullParser;
          localObject14 = paramString1;
          str1 = paramString2;
          localObject17 = ((SoapSerializationEnvelope)localObject10).readUnknown((XmlPullParser)localObject13, (String)localObject14, str1);
          break;
          int i4 = 0;
          localObject10 = str6;
          localObject13 = i4;
          localObject14 = m;
          Object localObject22 = ((String)localObject10).substring(localObject13, localObject14);
          localObject18 = localObject22;
          break label817;
          if ((paramString2 == null) && (paramString1 == null))
          {
            localObject10 = this;
            localObject10 = enc;
            localObject22 = localObject10;
            str9 = "arrayType";
            localObject10 = paramXmlPullParser;
            localObject13 = localObject22;
            localObject14 = str9;
            localObject22 = ((XmlPullParser)localObject10).getAttributeValue((String)localObject13, (String)localObject14);
            if (localObject22 != null)
            {
              localObject10 = this;
              localObject10 = enc;
              paramString1 = (String)localObject10;
              paramString2 = "Array";
            }
            else
            {
              localObject10 = paramPropertyInfo;
              localObject10 = type;
              localObject22 = localObject10;
              str9 = null;
              localObject10 = this;
              localObject13 = localObject22;
              localObject14 = str9;
              Object[] arrayOfObject = ((SoapSerializationEnvelope)localObject10).getInfo(localObject13, localObject14);
              i5 = 0;
              paramString1 = arrayOfObject[i5];
              paramString1 = (String)paramString1;
              i5 = 1;
              paramString2 = arrayOfObject[i5];
              paramString2 = (String)paramString2;
            }
          }
        }
        localObject10 = localObject15;
        localObject10 = obj;
        paramObject = localObject10;
        paramObject = (Vector)paramObject;
        localObject10 = localObject15;
        int j = index;
        int i5 = j;
        Object localObject11 = paramObject;
        localObject13 = localObject17;
        localObject14 = i5;
        ((Vector)localObject11).setElementAt(localObject13, localObject14);
      }
    }
    RuntimeException localRuntimeException2 = new java/lang/RuntimeException;
    str9 = "double ID";
    localRuntimeException2.<init>(str9);
    throw localRuntimeException2;
  }
  
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    Object localObject9 = null;
    Object localObject3 = qNameToClass;
    Object localObject8 = new org/ksoap2/serialization/SoapPrimitive;
    ((SoapPrimitive)localObject8).<init>(paramString1, paramString2, (String)localObject9);
    Object localObject2 = ((Hashtable)localObject3).get(localObject8);
    if (localObject2 == null) {}
    Object localObject4;
    for (localObject3 = localObject9;; localObject4 = ((Marshal)localObject2).readInstance(paramXmlPullParser, paramString1, paramString2, paramPropertyInfo))
    {
      return localObject3;
      boolean bool1 = localObject2 instanceof Marshal;
      if (!bool1) {
        break;
      }
      localObject2 = (Marshal)localObject2;
    }
    boolean bool2 = localObject2 instanceof SoapObject;
    label107:
    Object localObject1;
    Object localObject5;
    if (bool2)
    {
      localObject2 = (SoapObject)localObject2;
      localObject2 = ((SoapObject)localObject2).newInstance();
      bool2 = localObject2 instanceof SoapObject;
      if (!bool2) {
        break label219;
      }
      localObject1 = localObject2;
      localObject1 = (SoapObject)localObject1;
      localObject5 = localObject1;
      readSerializable(paramXmlPullParser, (SoapObject)localObject5);
    }
    for (;;)
    {
      localObject5 = localObject2;
      break;
      localObject5 = SoapObject.class;
      if (localObject2 == localObject5)
      {
        localObject2 = new org/ksoap2/serialization/SoapObject;
        ((SoapObject)localObject2).<init>(paramString1, paramString2);
        break label107;
      }
      try
      {
        localObject2 = (Class)localObject2;
        localObject2 = ((Class)localObject2).newInstance();
      }
      catch (Exception localException2)
      {
        Exception localException1 = localException2;
        RuntimeException localRuntimeException = new java/lang/RuntimeException;
        localObject8 = localException1.toString();
        localRuntimeException.<init>((String)localObject8);
        throw localRuntimeException;
      }
      label219:
      boolean bool3 = localObject2 instanceof KvmSerializable;
      if (bool3)
      {
        localObject1 = localObject2;
        localObject1 = (KvmSerializable)localObject1;
        Object localObject6 = localObject1;
        readSerializable(paramXmlPullParser, (KvmSerializable)localObject6);
      }
      else
      {
        boolean bool4 = localObject2 instanceof Vector;
        if (!bool4) {
          break label302;
        }
        localObject1 = localObject2;
        localObject1 = (Vector)localObject1;
        localObject7 = localObject1;
        localObject8 = elementType;
        readVector(paramXmlPullParser, (Vector)localObject7, (PropertyInfo)localObject8);
      }
    }
    label302:
    Object localObject7 = new java/lang/RuntimeException;
    localObject8 = new java/lang/StringBuilder;
    ((StringBuilder)localObject8).<init>();
    localObject9 = "no deserializer for ";
    localObject8 = ((StringBuilder)localObject8).append((String)localObject9);
    localObject9 = localObject2.getClass();
    localObject8 = ((StringBuilder)localObject8).append(localObject9);
    localObject8 = ((StringBuilder)localObject8).toString();
    ((RuntimeException)localObject7).<init>((String)localObject8);
    throw ((Throwable)localObject7);
  }
  
  protected void readSerializable(XmlPullParser paramXmlPullParser, KvmSerializable paramKvmSerializable)
    throws IOException, XmlPullParserException
  {
    int i1 = -1;
    int i5 = paramKvmSerializable.getPropertyCount();
    PropertyInfo localPropertyInfo1 = new org/ksoap2/serialization/PropertyInfo;
    localPropertyInfo1.<init>();
    for (;;)
    {
      int k = paramXmlPullParser.nextTag();
      int n = 3;
      if (k == n) {
        break;
      }
      String str6 = paramXmlPullParser.getName();
      int i3 = i5;
      SoapSerializationEnvelope localSoapSerializationEnvelope1 = this;
      int i = implicitTypes;
      k = i;
      if (k != 0)
      {
        KvmSerializable localKvmSerializable1 = paramKvmSerializable;
        int j = localKvmSerializable1 instanceof SoapObject;
        k = j;
        if (k != 0) {}
      }
      else
      {
        boolean bool3;
        do
        {
          boolean bool2;
          do
          {
            int i4 = i3;
            i3 = i4 + -1;
            if (i4 == 0)
            {
              localObject5 = new java/lang/RuntimeException;
              localObject7 = new java/lang/StringBuilder;
              ((StringBuilder)localObject7).<init>();
              localObject8 = "Unknown Property: ";
              localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
              localObject1 = localObject7;
              localObject2 = str6;
              localObject7 = ((StringBuilder)localObject1).append((String)localObject2);
              localObject7 = ((StringBuilder)localObject7).toString();
              ((RuntimeException)localObject5).<init>((String)localObject7);
              throw ((Throwable)localObject5);
            }
            i1 += 1;
            localObject1 = i1;
            localObject2 = i5;
            if (localObject1 >= localObject2) {
              i1 = 0;
            }
            localObject1 = this;
            localObject1 = properties;
            Object localObject5 = localObject1;
            localObject1 = paramKvmSerializable;
            localObject2 = i1;
            localObject3 = localObject5;
            localObject4 = localPropertyInfo1;
            ((KvmSerializable)localObject1).getPropertyInfo(localObject2, (Hashtable)localObject3, (PropertyInfo)localObject4);
            localObject5 = namespace;
            if (localObject5 == null)
            {
              localObject5 = name;
              localObject1 = str6;
              localObject2 = localObject5;
              boolean bool1 = ((String)localObject1).equals(localObject2);
              if (bool1) {
                break;
              }
            }
            String str1 = name;
            if ((str1 == null) && (i1 == 0)) {
              break;
            }
            str1 = name;
            localObject1 = str6;
            localObject2 = str1;
            bool2 = ((String)localObject1).equals(localObject2);
          } while (!bool2);
          String str2 = paramXmlPullParser.getNamespace();
          localObject7 = namespace;
          bool3 = str2.equals(localObject7);
        } while (!bool3);
        String str3 = null;
        String str4 = null;
        localObject6 = this;
        localObject7 = paramXmlPullParser;
        localObject8 = paramKvmSerializable;
        localObject6 = ((SoapSerializationEnvelope)localObject6).read((XmlPullParser)localObject7, localObject8, i1, str3, str4, localPropertyInfo1);
        localObject1 = paramKvmSerializable;
        localObject2 = i1;
        localObject3 = localObject6;
        ((KvmSerializable)localObject1).setProperty(localObject2, localObject3);
        continue;
      }
      localObject1 = paramKvmSerializable;
      localObject1 = (SoapObject)localObject1;
      Object localObject6 = localObject1;
      localObject8 = paramXmlPullParser.getName();
      int i2 = paramKvmSerializable.getPropertyCount();
      localObject1 = paramKvmSerializable;
      localObject1 = (SoapObject)localObject1;
      localObject7 = localObject1;
      String str5 = ((SoapObject)localObject7).getNamespace();
      PropertyInfo localPropertyInfo2 = PropertyInfo.OBJECT_TYPE;
      SoapSerializationEnvelope localSoapSerializationEnvelope2 = this;
      XmlPullParser localXmlPullParser = paramXmlPullParser;
      KvmSerializable localKvmSerializable2 = paramKvmSerializable;
      localObject7 = localSoapSerializationEnvelope2.read(localXmlPullParser, localKvmSerializable2, i2, str5, str6, localPropertyInfo2);
      ((SoapObject)localObject6).addProperty((String)localObject8, localObject7);
    }
    int m = 3;
    Object localObject7 = null;
    Object localObject8 = null;
    Object localObject1 = paramXmlPullParser;
    Object localObject2 = m;
    Object localObject3 = localObject7;
    Object localObject4 = localObject8;
    ((XmlPullParser)localObject1).require(localObject2, (String)localObject3, (String)localObject4);
  }
  
  protected void readSerializable(XmlPullParser paramXmlPullParser, SoapObject paramSoapObject)
    throws IOException, XmlPullParserException
  {
    int i = 0;
    for (;;)
    {
      int j = paramXmlPullParser.getAttributeCount();
      if (i >= j) {
        break;
      }
      String str1 = paramXmlPullParser.getAttributeName(i);
      String str2 = paramXmlPullParser.getAttributeValue(i);
      paramSoapObject.addAttribute(str1, str2);
      i += 1;
    }
    readSerializable(paramXmlPullParser, paramSoapObject);
  }
  
  protected Object readUnknown(XmlPullParser paramXmlPullParser, String paramString1, String paramString2)
    throws IOException, XmlPullParserException
  {
    String str5 = paramXmlPullParser.getName();
    String str6 = paramXmlPullParser.getNamespace();
    paramXmlPullParser.next();
    Object localObject2 = null;
    String str7 = null;
    int i = paramXmlPullParser.getEventType();
    int m = 4;
    if (i == m)
    {
      str7 = paramXmlPullParser.getText();
      localObject2 = new org/ksoap2/serialization/SoapPrimitive;
      ((SoapPrimitive)localObject2).<init>(paramString1, paramString2, str7);
      paramXmlPullParser.next();
    }
    int k;
    int n;
    for (;;)
    {
      i = paramXmlPullParser.getEventType();
      m = 2;
      if (i != m) {
        break label299;
      }
      if (str7 == null) {
        break;
      }
      String str1 = str7.trim();
      int j = str1.length();
      if (j == 0) {
        break;
      }
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      String str2 = "Malformed input: Mixed content";
      localRuntimeException.<init>(str2);
      throw localRuntimeException;
      k = paramXmlPullParser.getEventType();
      n = 3;
      if (k == n)
      {
        localObject2 = new org/ksoap2/serialization/SoapObject;
        ((SoapObject)localObject2).<init>(paramString1, paramString2);
      }
    }
    SoapObject localSoapObject = new org/ksoap2/serialization/SoapObject;
    localSoapObject.<init>(paramString1, paramString2);
    for (;;)
    {
      k = paramXmlPullParser.getEventType();
      n = 3;
      if (k == n) {
        break;
      }
      localObject2 = paramXmlPullParser.getName();
      int i2 = localSoapObject.getPropertyCount();
      String str3 = null;
      String str4 = null;
      PropertyInfo localPropertyInfo = PropertyInfo.OBJECT_TYPE;
      localObject1 = this;
      XmlPullParser localXmlPullParser = paramXmlPullParser;
      localObject1 = ((SoapSerializationEnvelope)localObject1).read(localXmlPullParser, localSoapObject, i2, str3, str4, localPropertyInfo);
      localSoapObject.addProperty((String)localObject2, localObject1);
      paramXmlPullParser.nextTag();
    }
    localObject2 = localSoapObject;
    label299:
    for (Object localObject1 = localObject2;; localObject1 = localObject2)
    {
      int i1 = 3;
      paramXmlPullParser.require(i1, str6, str5);
      return localObject1;
    }
  }
  
  protected void readVector(XmlPullParser paramXmlPullParser, Vector paramVector, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    String str8 = null;
    String str9 = null;
    int i9 = paramVector.size();
    int i8 = 1;
    String str1 = enc;
    String str6 = "arrayType";
    String str11 = paramXmlPullParser.getAttributeValue(str1, str6);
    int i6;
    int i7;
    String str3;
    if (str11 != null)
    {
      int i = 58;
      i6 = str11.indexOf(i);
      String str2 = "[";
      i7 = str11.indexOf(str2, i6);
      int j = i6 + 1;
      str9 = str11.substring(j, i7);
      j = -1;
      if (i6 != j) {
        break label340;
      }
      str3 = "";
    }
    label340:
    String str5;
    for (String str10 = str3;; str10 = str5)
    {
      str8 = paramXmlPullParser.getNamespace(str10);
      int k = -1;
      i9 = getIndex(str11, i7, k);
      k = -1;
      if (i9 != k)
      {
        paramVector.setSize(i9);
        i8 = 0;
      }
      if (paramPropertyInfo == null) {
        paramPropertyInfo = PropertyInfo.OBJECT_TYPE;
      }
      paramXmlPullParser.nextTag();
      String str4 = enc;
      str6 = "offset";
      str4 = paramXmlPullParser.getAttributeValue(str4, str6);
      int i2 = 0;
      int i4 = 0;
      int i5 = getIndex(str4, i2, i4);
      for (;;)
      {
        int m = paramXmlPullParser.getEventType();
        i2 = 3;
        if (m == i2) {
          break;
        }
        Object localObject = enc;
        String str7 = "position";
        localObject = paramXmlPullParser.getAttributeValue((String)localObject, str7);
        int i3 = 0;
        i5 = getIndex((String)localObject, i3, i5);
        if ((i8 != 0) && (i5 >= i9))
        {
          i9 = i5 + 1;
          paramVector.setSize(i9);
        }
        localObject = this;
        localXmlPullParser = paramXmlPullParser;
        localVector = paramVector;
        PropertyInfo localPropertyInfo = paramPropertyInfo;
        localObject = ((SoapSerializationEnvelope)localObject).read(localXmlPullParser, localVector, i5, str8, str9, localPropertyInfo);
        paramVector.setElementAt(localObject, i5);
        i5 += 1;
        paramXmlPullParser.nextTag();
      }
      int n = 0;
      str5 = str11.substring(n, i6);
    }
    int i1 = 3;
    XmlPullParser localXmlPullParser = null;
    Vector localVector = null;
    paramXmlPullParser.require(i1, localXmlPullParser, localVector);
  }
  
  public void setAddAdornments(boolean paramBoolean)
  {
    addAdornments = paramBoolean;
  }
  
  public void writeBody(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    int j = 2;
    int m = 1;
    int k = 0;
    Object localObject6 = null;
    Object localObject1 = new java/util/Vector;
    ((Vector)localObject1).<init>();
    multiRef = ((Vector)localObject1);
    localObject1 = multiRef;
    Object localObject4 = bodyOut;
    ((Vector)localObject1).addElement(localObject4);
    localObject1 = bodyOut;
    Object[] arrayOfObject = getInfo(localObject6, localObject1);
    boolean bool1 = dotNet;
    label151:
    String str3;
    Object localObject5;
    if (bool1)
    {
      String str1 = "";
      localObject4 = str1;
      str1 = arrayOfObject[m];
      str1 = (String)str1;
      paramXmlSerializer.startTag((String)localObject4, str1);
      boolean bool2 = dotNet;
      if (bool2)
      {
        localObject4 = "xmlns";
        String str2 = arrayOfObject[k];
        str2 = (String)str2;
        paramXmlSerializer.attribute((String)localObject6, (String)localObject4, str2);
      }
      boolean bool3 = addAdornments;
      if (bool3)
      {
        localObject4 = "id";
        localObject2 = arrayOfObject[j];
        if (localObject2 != null) {
          break label260;
        }
        localObject2 = "o0";
        paramXmlSerializer.attribute((String)localObject6, (String)localObject4, (String)localObject2);
        localObject2 = enc;
        localObject4 = "root";
        str3 = "1";
        paramXmlSerializer.attribute((String)localObject2, (String)localObject4, str3);
      }
      Object localObject2 = bodyOut;
      int i = 3;
      localObject5 = arrayOfObject[i];
      writeElement(paramXmlSerializer, localObject2, (PropertyInfo)localObject6, localObject5);
      boolean bool4 = dotNet;
      if (!bool4) {
        break label273;
      }
    }
    for (Object localObject3 = "";; localObject3 = this)
    {
      this = arrayOfObject[m];
      this = (String)this;
      paramXmlSerializer.endTag((String)localObject3, this);
      return;
      localObject3 = arrayOfObject[k];
      localObject3 = (String)localObject3;
      localObject5 = localObject3;
      break;
      label260:
      localObject3 = arrayOfObject[str3];
      localObject3 = (String)localObject3;
      break label151;
      label273:
      this = arrayOfObject[k];
      this = (String)this;
    }
  }
  
  private void writeElement(XmlSerializer paramXmlSerializer, Object paramObject1, PropertyInfo paramPropertyInfo, Object paramObject2)
    throws IOException
  {
    if (paramObject2 != null)
    {
      paramObject2 = (Marshal)paramObject2;
      ((Marshal)paramObject2).writeInstance(paramXmlSerializer, paramObject1);
    }
    for (;;)
    {
      return;
      boolean bool = paramObject1 instanceof SoapObject;
      if (bool)
      {
        paramObject1 = (SoapObject)paramObject1;
        writeObjectBody(paramXmlSerializer, (SoapObject)paramObject1);
      }
      else
      {
        bool = paramObject1 instanceof KvmSerializable;
        if (bool)
        {
          paramObject1 = (KvmSerializable)paramObject1;
          writeObjectBody(paramXmlSerializer, (KvmSerializable)paramObject1);
        }
        else
        {
          bool = paramObject1 instanceof Vector;
          if (!bool) {
            break;
          }
          paramObject1 = (Vector)paramObject1;
          localObject1 = elementType;
          writeVectorBody(paramXmlSerializer, (Vector)paramObject1, (PropertyInfo)localObject1);
        }
      }
    }
    Object localObject1 = new java/lang/RuntimeException;
    Object localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    String str = "Cannot serialize: ";
    localObject2 = ((StringBuilder)localObject2).append(str);
    localObject2 = ((StringBuilder)localObject2).append(paramObject1);
    localObject2 = ((StringBuilder)localObject2).toString();
    ((RuntimeException)localObject1).<init>((String)localObject2);
    throw ((Throwable)localObject1);
  }
  
  public void writeObjectBody(XmlSerializer paramXmlSerializer, KvmSerializable paramKvmSerializable)
    throws IOException
  {
    PropertyInfo localPropertyInfo = new org/ksoap2/serialization/PropertyInfo;
    localPropertyInfo.<init>();
    int i = paramKvmSerializable.getPropertyCount();
    int j = 0;
    while (j < i)
    {
      Hashtable localHashtable = properties;
      paramKvmSerializable.getPropertyInfo(j, localHashtable, localPropertyInfo);
      int k = flags;
      k &= 0x1;
      if (k == 0)
      {
        Object localObject = namespace;
        String str = name;
        paramXmlSerializer.startTag((String)localObject, str);
        localObject = paramKvmSerializable.getProperty(j);
        writeProperty(paramXmlSerializer, localObject, localPropertyInfo);
        localObject = namespace;
        str = name;
        paramXmlSerializer.endTag((String)localObject, str);
      }
      j += 1;
    }
  }
  
  public void writeObjectBody(XmlSerializer paramXmlSerializer, SoapObject paramSoapObject)
    throws IOException
  {
    SoapObject localSoapObject = paramSoapObject;
    int i = 0;
    for (;;)
    {
      int j = localSoapObject.getAttributeCount();
      if (i >= j) {
        break;
      }
      AttributeInfo localAttributeInfo = new org/ksoap2/serialization/AttributeInfo;
      localAttributeInfo.<init>();
      localSoapObject.getAttributeInfo(i, localAttributeInfo);
      String str1 = localAttributeInfo.getNamespace();
      String str2 = localAttributeInfo.getName();
      Object localObject = localAttributeInfo.getValue();
      localObject = localObject.toString();
      paramXmlSerializer.attribute(str1, str2, (String)localObject);
      i += 1;
    }
    writeObjectBody(paramXmlSerializer, paramSoapObject);
  }
  
  protected void writeProperty(XmlSerializer paramXmlSerializer, Object paramObject, PropertyInfo paramPropertyInfo)
    throws IOException
  {
    Object localObject5 = null;
    boolean bool3 = true;
    int i2 = 2;
    Object localObject3;
    Object localObject4;
    if (paramObject == null)
    {
      String str2 = xsi;
      int n = version;
      int i1 = 120;
      if (n >= i1)
      {
        localObject3 = "nil";
        localObject4 = "true";
        paramXmlSerializer.attribute(str2, (String)localObject3, (String)localObject4);
      }
    }
    for (;;)
    {
      return;
      localObject3 = "null";
      break;
      Object[] arrayOfObject = getInfo(localObject5, paramObject);
      boolean bool1 = multiRef;
      Vector localVector;
      if (!bool1)
      {
        localVector = arrayOfObject[i2];
        if (localVector == null) {}
      }
      else
      {
        localVector = multiRef;
        int i = localVector.indexOf(paramObject);
        int j = -1;
        if (i == j)
        {
          localObject1 = multiRef;
          i = ((Vector)localObject1).size();
          localObject1 = multiRef;
          ((Vector)localObject1).addElement(paramObject);
        }
        Object localObject1 = "href";
        localObject3 = arrayOfObject[i2];
        if (localObject3 == null)
        {
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          localObject4 = "#o";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
          localObject3 = ((StringBuilder)localObject3).append(i);
        }
        for (localObject3 = ((StringBuilder)localObject3).toString();; localObject3 = ((StringBuilder)localObject3).toString())
        {
          paramXmlSerializer.attribute((String)localObject5, (String)localObject1, (String)localObject3);
          break;
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          localObject4 = "#";
          localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
          localObject4 = arrayOfObject[i2];
          localObject3 = ((StringBuilder)localObject3).append(localObject4);
        }
      }
      boolean bool2 = implicitTypes;
      if (bool2)
      {
        Class localClass = paramObject.getClass();
        localObject3 = type;
        if (localClass == localObject3) {}
      }
      else
      {
        int k = 0;
        String str3 = arrayOfObject[k];
        str3 = (String)str3;
        String str1 = paramXmlSerializer.getPrefix(str3, bool3);
        str3 = xsi;
        localObject3 = "type";
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        localObject4 = ((StringBuilder)localObject4).append(str1);
        String str4 = ":";
        localObject4 = ((StringBuilder)localObject4).append(str4);
        str4 = arrayOfObject[bool3];
        localObject4 = ((StringBuilder)localObject4).append(str4);
        localObject4 = ((StringBuilder)localObject4).toString();
        paramXmlSerializer.attribute(str3, (String)localObject3, (String)localObject4);
      }
      int m = 3;
      Object localObject2 = arrayOfObject[m];
      writeElement(paramXmlSerializer, paramObject, paramPropertyInfo, localObject2);
    }
  }
  
  protected void writeVectorBody(XmlSerializer paramXmlSerializer, Vector paramVector, PropertyInfo paramPropertyInfo)
    throws IOException
  {
    boolean bool = false;
    Object localObject5 = null;
    if (paramPropertyInfo == null) {
      paramPropertyInfo = PropertyInfo.OBJECT_TYPE;
    }
    int i = paramVector.size();
    Object localObject1 = type;
    Object[] arrayOfObject = getInfo(localObject1, localObject5);
    String str = enc;
    Object localObject2 = "arrayType";
    Object localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    localObject1 = arrayOfObject[bool];
    localObject1 = (String)localObject1;
    localObject1 = paramXmlSerializer.getPrefix((String)localObject1, bool);
    localObject1 = ((StringBuilder)localObject3).append((String)localObject1);
    localObject3 = ":";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject3);
    int m = 1;
    Object localObject4 = arrayOfObject[m];
    localObject1 = ((StringBuilder)localObject1).append(localObject4);
    localObject4 = "[";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject4);
    localObject1 = ((StringBuilder)localObject1).append(i);
    localObject4 = "]";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject4);
    localObject1 = ((StringBuilder)localObject1).toString();
    paramXmlSerializer.attribute(str, (String)localObject2, (String)localObject1);
    int k = 0;
    int j = 0;
    if (j < i)
    {
      localObject1 = paramVector.elementAt(j);
      if (localObject1 == null) {
        k = 1;
      }
      for (;;)
      {
        j += 1;
        break;
        localObject1 = "item";
        paramXmlSerializer.startTag((String)localObject5, (String)localObject1);
        if (k != 0)
        {
          localObject1 = enc;
          str = "position";
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          localObject4 = "[";
          localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
          localObject2 = ((StringBuilder)localObject2).append(j);
          localObject4 = "]";
          localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
          localObject2 = ((StringBuilder)localObject2).toString();
          paramXmlSerializer.attribute((String)localObject1, str, (String)localObject2);
          k = 0;
        }
        localObject1 = paramVector.elementAt(j);
        writeProperty(paramXmlSerializer, localObject1, paramPropertyInfo);
        localObject1 = "item";
        paramXmlSerializer.endTag((String)localObject5, (String)localObject1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.SoapSerializationEnvelope
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */