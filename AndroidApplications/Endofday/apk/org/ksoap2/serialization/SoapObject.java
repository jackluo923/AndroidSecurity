package org.ksoap2.serialization;

import java.util.Hashtable;
import java.util.Vector;

public class SoapObject
  implements KvmSerializable
{
  protected Vector attributes;
  protected String name;
  protected String namespace;
  protected Vector properties;
  
  public SoapObject(String paramString1, String paramString2)
  {
    Vector localVector = new java/util/Vector;
    localVector.<init>();
    properties = localVector;
    localVector = new java/util/Vector;
    localVector.<init>();
    attributes = localVector;
    namespace = paramString1;
    name = paramString2;
  }
  
  public SoapObject addAttribute(String paramString, Object paramObject)
  {
    AttributeInfo localAttributeInfo = new org/ksoap2/serialization/AttributeInfo;
    localAttributeInfo.<init>();
    name = paramString;
    if (paramObject == null) {}
    for (Object localObject = PropertyInfo.OBJECT_CLASS;; localObject = paramObject.getClass())
    {
      type = localObject;
      value = paramObject;
      localObject = addAttribute(localAttributeInfo);
      return (SoapObject)localObject;
    }
  }
  
  public SoapObject addAttribute(AttributeInfo paramAttributeInfo)
  {
    Vector localVector = attributes;
    localVector.addElement(paramAttributeInfo);
    return this;
  }
  
  public SoapObject addProperty(String paramString, Object paramObject)
  {
    PropertyInfo localPropertyInfo = new org/ksoap2/serialization/PropertyInfo;
    localPropertyInfo.<init>();
    name = paramString;
    if (paramObject == null) {}
    for (Object localObject = PropertyInfo.OBJECT_CLASS;; localObject = paramObject.getClass())
    {
      type = localObject;
      value = paramObject;
      localObject = addProperty(localPropertyInfo);
      return (SoapObject)localObject;
    }
  }
  
  public SoapObject addProperty(PropertyInfo paramPropertyInfo)
  {
    Vector localVector = properties;
    localVector.addElement(paramPropertyInfo);
    return this;
  }
  
  public SoapObject addProperty(PropertyInfo paramPropertyInfo, Object paramObject)
  {
    paramPropertyInfo.setValue(paramObject);
    addProperty(paramPropertyInfo);
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    Exception localException3 = 0;
    Object localObject1 = paramObject;
    boolean bool1 = localObject1 instanceof SoapObject;
    boolean bool2 = bool1;
    if (!bool2) {
      bool2 = localException3;
    }
    for (;;)
    {
      return bool2;
      Object localObject2 = paramObject;
      localObject2 = (SoapObject)localObject2;
      Object localObject5 = localObject2;
      Vector localVector1 = properties;
      int k = localVector1.size();
      localVector1 = properties;
      int n = localVector1.size();
      if (k != n)
      {
        n = localException3;
      }
      else
      {
        Vector localVector2 = attributes;
        int j = localVector2.size();
        localVector2 = attributes;
        int i1 = localVector2.size();
        if (j != i1)
        {
          i1 = localException3;
        }
        else
        {
          int m = 0;
          if (m < k) {}
          try
          {
            Object localObject10 = properties;
            Object localObject8 = ((Vector)localObject10).elementAt(m);
            localObject8 = (PropertyInfo)localObject8;
            Object localObject9 = ((PropertyInfo)localObject8).getValue();
            localObject10 = ((PropertyInfo)localObject8).getName();
            Object localObject4 = ((SoapObject)localObject5).getProperty((String)localObject10);
            boolean bool3 = localObject9.equals(localObject4);
            if (!bool3)
            {
              bool3 = localException3;
              continue;
            }
            m += 1;
          }
          catch (Exception localException2)
          {
            int i;
            localException1 = localException2;
            localException2 = localException3;
          }
          i = 0;
          for (;;)
          {
            if (i < j)
            {
              Object localObject11 = properties;
              Object localObject6 = ((Vector)localObject11).elementAt(i);
              localObject6 = (AttributeInfo)localObject6;
              Object localObject7 = ((AttributeInfo)localObject6).getValue();
              localObject11 = ((AttributeInfo)localObject6).getName();
              Object localObject3 = ((SoapObject)localObject5).getProperty((String)localObject11);
              boolean bool4 = localObject7.equals(localObject3);
              if (!bool4)
              {
                bool4 = localException3;
                break;
              }
              i += 1;
              continue;
              Exception localException1;
              break;
            }
          }
          int i2 = 1;
        }
      }
    }
  }
  
  public Object getAttribute(int paramInt)
  {
    Object localObject = attributes;
    this = ((Vector)localObject).elementAt(paramInt);
    this = (AttributeInfo)this;
    localObject = getValue();
    return localObject;
  }
  
  public Object getAttribute(String paramString)
  {
    int i = 0;
    for (;;)
    {
      Vector localVector = attributes;
      int j = localVector.size();
      if (i >= j) {
        break;
      }
      Object localObject1 = attributes;
      localObject1 = ((Vector)localObject1).elementAt(i);
      localObject1 = (AttributeInfo)localObject1;
      localObject1 = ((AttributeInfo)localObject1).getName();
      boolean bool = paramString.equals(localObject1);
      if (bool)
      {
        localObject2 = getAttribute(i);
        return localObject2;
      }
      i += 1;
    }
    Object localObject2 = new java/lang/RuntimeException;
    Object localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    String str = "illegal property: ";
    localObject3 = ((StringBuilder)localObject3).append(str);
    localObject3 = ((StringBuilder)localObject3).append(paramString);
    localObject3 = ((StringBuilder)localObject3).toString();
    ((RuntimeException)localObject2).<init>((String)localObject3);
    throw ((Throwable)localObject2);
  }
  
  public int getAttributeCount()
  {
    Vector localVector = attributes;
    int i = localVector.size();
    return i;
  }
  
  public void getAttributeInfo(int paramInt, AttributeInfo paramAttributeInfo)
  {
    Object localObject2 = attributes;
    Object localObject1 = ((Vector)localObject2).elementAt(paramInt);
    localObject1 = (AttributeInfo)localObject1;
    localObject2 = name;
    name = ((String)localObject2);
    localObject2 = namespace;
    namespace = ((String)localObject2);
    int i = flags;
    flags = i;
    Object localObject3 = type;
    type = localObject3;
    localObject3 = elementType;
    elementType = ((PropertyInfo)localObject3);
    localObject3 = ((AttributeInfo)localObject1).getValue();
    value = localObject3;
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
  
  public Object getProperty(int paramInt)
  {
    Object localObject = properties;
    this = ((Vector)localObject).elementAt(paramInt);
    this = (PropertyInfo)this;
    localObject = getValue();
    return localObject;
  }
  
  public Object getProperty(String paramString)
  {
    int i = 0;
    for (;;)
    {
      Vector localVector = properties;
      int j = localVector.size();
      if (i >= j) {
        break;
      }
      Object localObject1 = properties;
      localObject1 = ((Vector)localObject1).elementAt(i);
      localObject1 = (PropertyInfo)localObject1;
      localObject1 = ((PropertyInfo)localObject1).getName();
      boolean bool = paramString.equals(localObject1);
      if (bool)
      {
        localObject2 = getProperty(i);
        return localObject2;
      }
      i += 1;
    }
    Object localObject2 = new java/lang/RuntimeException;
    Object localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    String str = "illegal property: ";
    localObject3 = ((StringBuilder)localObject3).append(str);
    localObject3 = ((StringBuilder)localObject3).append(paramString);
    localObject3 = ((StringBuilder)localObject3).toString();
    ((RuntimeException)localObject2).<init>((String)localObject3);
    throw ((Throwable)localObject2);
  }
  
  public int getPropertyCount()
  {
    Vector localVector = properties;
    int i = localVector.size();
    return i;
  }
  
  public void getPropertyInfo(int paramInt, Hashtable paramHashtable, PropertyInfo paramPropertyInfo)
  {
    getPropertyInfo(paramInt, paramPropertyInfo);
  }
  
  public void getPropertyInfo(int paramInt, PropertyInfo paramPropertyInfo)
  {
    Object localObject2 = properties;
    Object localObject1 = ((Vector)localObject2).elementAt(paramInt);
    localObject1 = (PropertyInfo)localObject1;
    localObject2 = name;
    name = ((String)localObject2);
    localObject2 = namespace;
    namespace = ((String)localObject2);
    int i = flags;
    flags = i;
    Object localObject3 = type;
    type = localObject3;
    localObject3 = elementType;
    elementType = ((PropertyInfo)localObject3);
  }
  
  public SoapObject newInstance()
  {
    SoapObject localSoapObject = new org/ksoap2/serialization/SoapObject;
    Object localObject3 = namespace;
    String str = name;
    localSoapObject.<init>((String)localObject3, str);
    int j = 0;
    Vector localVector1;
    for (;;)
    {
      localObject3 = properties;
      int k = ((Vector)localObject3).size();
      if (j >= k) {
        break;
      }
      localVector1 = properties;
      Object localObject2 = localVector1.elementAt(j);
      localObject2 = (PropertyInfo)localObject2;
      localSoapObject.addProperty((PropertyInfo)localObject2);
      j += 1;
    }
    int i = 0;
    for (;;)
    {
      localVector1 = attributes;
      int m = localVector1.size();
      if (i >= m) {
        break;
      }
      Vector localVector2 = attributes;
      Object localObject1 = localVector2.elementAt(i);
      localObject1 = (AttributeInfo)localObject1;
      localSoapObject.addAttribute((AttributeInfo)localObject1);
      i += 1;
    }
    return localSoapObject;
  }
  
  public void setProperty(int paramInt, Object paramObject)
  {
    Vector localVector = properties;
    this = localVector.elementAt(paramInt);
    this = (PropertyInfo)this;
    setValue(paramObject);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject3 = "";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject3);
    localObject3 = name;
    localObject1 = ((StringBuilder)localObject1).append((String)localObject3);
    localObject3 = "{";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject3);
    localObject1 = ((StringBuilder)localObject1).toString();
    localStringBuffer.<init>((String)localObject1);
    int i = 0;
    for (;;)
    {
      int j = getPropertyCount();
      if (i >= j) {
        break;
      }
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "";
      localObject3 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject2 = properties;
      localObject2 = ((Vector)localObject2).elementAt(i);
      localObject2 = (PropertyInfo)localObject2;
      localObject2 = ((PropertyInfo)localObject2).getName();
      localObject2 = ((StringBuilder)localObject3).append((String)localObject2);
      localObject3 = "=";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = getProperty(i);
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject3 = "; ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      localStringBuffer.append((String)localObject2);
      i += 1;
    }
    Object localObject2 = "}";
    localStringBuffer.append((String)localObject2);
    localObject2 = localStringBuffer.toString();
    return (String)localObject2;
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.SoapObject
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */