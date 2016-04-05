package org.ksoap2.serialization;

import java.util.Vector;

public class PropertyInfo
{
  public static final Class BOOLEAN_CLASS;
  public static final Class INTEGER_CLASS;
  public static final Class LONG_CLASS;
  public static final int MULTI_REF = 2;
  public static final Class OBJECT_CLASS;
  public static final PropertyInfo OBJECT_TYPE;
  public static final int REF_ONLY = 4;
  public static final Class STRING_CLASS;
  public static final int TRANSIENT = 1;
  public static final Class VECTOR_CLASS;
  public PropertyInfo elementType;
  public int flags;
  public boolean multiRef;
  public String name;
  public String namespace;
  public Object type;
  protected Object value;
  
  static
  {
    Object localObject = new java/lang/Object;
    localObject.<init>();
    localObject = localObject.getClass();
    OBJECT_CLASS = (Class)localObject;
    localObject = "";
    localObject = localObject.getClass();
    STRING_CLASS = (Class)localObject;
    localObject = new java/lang/Integer;
    int i = 0;
    ((Integer)localObject).<init>(i);
    localObject = localObject.getClass();
    INTEGER_CLASS = (Class)localObject;
    localObject = new java/lang/Long;
    long l = 0L;
    ((Long)localObject).<init>(l);
    localObject = localObject.getClass();
    LONG_CLASS = (Class)localObject;
    localObject = new java/lang/Boolean;
    boolean bool = true;
    ((Boolean)localObject).<init>(bool);
    localObject = localObject.getClass();
    BOOLEAN_CLASS = (Class)localObject;
    localObject = new java/util/Vector;
    ((Vector)localObject).<init>();
    localObject = localObject.getClass();
    VECTOR_CLASS = (Class)localObject;
    localObject = new org/ksoap2/serialization/PropertyInfo;
    ((PropertyInfo)localObject).<init>();
    OBJECT_TYPE = (PropertyInfo)localObject;
  }
  
  public PropertyInfo()
  {
    Class localClass = OBJECT_CLASS;
    type = localClass;
  }
  
  public void clear()
  {
    String str = null;
    Class localClass = OBJECT_CLASS;
    type = localClass;
    int i = 0;
    flags = i;
    name = str;
    namespace = str;
  }
  
  public PropertyInfo getElementType()
  {
    PropertyInfo localPropertyInfo = elementType;
    return localPropertyInfo;
  }
  
  public int getFlags()
  {
    int i = flags;
    return i;
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
  
  public Object getType()
  {
    Object localObject = type;
    return localObject;
  }
  
  public Object getValue()
  {
    Object localObject = value;
    return localObject;
  }
  
  public boolean isMultiRef()
  {
    boolean bool = multiRef;
    return bool;
  }
  
  public void setElementType(PropertyInfo paramPropertyInfo)
  {
    elementType = paramPropertyInfo;
  }
  
  public void setFlags(int paramInt)
  {
    flags = paramInt;
  }
  
  public void setMultiRef(boolean paramBoolean)
  {
    multiRef = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setNamespace(String paramString)
  {
    namespace = paramString;
  }
  
  public void setType(Object paramObject)
  {
    type = paramObject;
  }
  
  public void setValue(Object paramObject)
  {
    value = paramObject;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    Object localObject = name;
    localStringBuffer.append((String)localObject);
    localObject = " : ";
    localStringBuffer.append((String)localObject);
    localObject = value;
    if (localObject != null)
    {
      localObject = value;
      localStringBuffer.append(localObject);
    }
    for (;;)
    {
      localObject = localStringBuffer.toString();
      return (String)localObject;
      localObject = "(not set)";
      localStringBuffer.append((String)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.PropertyInfo
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */