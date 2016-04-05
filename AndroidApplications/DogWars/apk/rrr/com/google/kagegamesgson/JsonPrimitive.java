package com.google.kagegamesgson;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class JsonPrimitive
  extends JsonElement
{
  private static final BigInteger INTEGER_MAX;
  private static final BigInteger LONG_MAX;
  private static final Class[] PRIMITIVE_TYPES;
  private Object value;
  
  static
  {
    int i = 16;
    Class[] arrayOfClass = new Class[i];
    int j = 0;
    Class localClass = Integer.TYPE;
    arrayOfClass[j] = localClass;
    j = 1;
    localClass = Long.TYPE;
    arrayOfClass[j] = localClass;
    j = 2;
    localClass = Short.TYPE;
    arrayOfClass[j] = localClass;
    j = 3;
    localClass = Float.TYPE;
    arrayOfClass[j] = localClass;
    j = 4;
    localClass = Double.TYPE;
    arrayOfClass[j] = localClass;
    j = 5;
    localClass = Byte.TYPE;
    arrayOfClass[j] = localClass;
    j = 6;
    localClass = Boolean.TYPE;
    arrayOfClass[j] = localClass;
    j = 7;
    localClass = Character.TYPE;
    arrayOfClass[j] = localClass;
    j = 8;
    localClass = Integer.class;
    arrayOfClass[j] = localClass;
    j = 9;
    localClass = Long.class;
    arrayOfClass[j] = localClass;
    j = 10;
    localClass = Short.class;
    arrayOfClass[j] = localClass;
    j = 11;
    localClass = Float.class;
    arrayOfClass[j] = localClass;
    j = 12;
    localClass = Double.class;
    arrayOfClass[j] = localClass;
    j = 13;
    localClass = Byte.class;
    arrayOfClass[j] = localClass;
    j = 14;
    localClass = Boolean.class;
    arrayOfClass[j] = localClass;
    j = 15;
    localClass = Character.class;
    arrayOfClass[j] = localClass;
    PRIMITIVE_TYPES = arrayOfClass;
    long l1 = 2147483647L;
    BigInteger localBigInteger1 = BigInteger.valueOf(l1);
    INTEGER_MAX = localBigInteger1;
    long l2 = Long.MAX_VALUE;
    BigInteger localBigInteger2 = BigInteger.valueOf(l2);
    LONG_MAX = localBigInteger2;
  }
  
  public JsonPrimitive(Boolean paramBoolean)
  {
    setValue(paramBoolean);
  }
  
  public JsonPrimitive(Character paramCharacter)
  {
    setValue(paramCharacter);
  }
  
  public JsonPrimitive(Number paramNumber)
  {
    setValue(paramNumber);
  }
  
  JsonPrimitive(Object paramObject)
  {
    setValue(paramObject);
  }
  
  public JsonPrimitive(String paramString)
  {
    setValue(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool7 = true;
    boolean bool6 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = bool7;
    }
    for (;;)
    {
      return bool1;
      Object localObject5;
      if (paramObject != null)
      {
        localObject3 = getClass();
        localObject5 = paramObject.getClass();
        if (localObject3 == localObject5) {}
      }
      else
      {
        localObject3 = bool6;
        continue;
      }
      Object localObject1 = paramObject;
      localObject1 = (JsonPrimitive)localObject1;
      Object localObject2 = localObject1;
      Object localObject3 = value;
      if (localObject3 == null)
      {
        localObject3 = value;
        if (localObject3 == null) {
          localObject3 = bool7;
        } else {
          localObject3 = bool6;
        }
      }
      else
      {
        boolean bool2 = isIntegral(this);
        if (bool2)
        {
          bool2 = isIntegral((JsonPrimitive)localObject2);
          if (bool2)
          {
            Number localNumber1 = getAsNumber();
            long l1 = localNumber1.longValue();
            Number localNumber3 = ((JsonPrimitive)localObject2).getAsNumber();
            long l2 = localNumber3.longValue();
            bool3 = l1 < l2;
            if (!bool3)
            {
              bool3 = bool7;
              continue;
            }
            bool3 = bool6;
            continue;
          }
        }
        boolean bool3 = isFloatingPoint(this);
        if (bool3)
        {
          bool3 = isFloatingPoint((JsonPrimitive)localObject2);
          if (bool3)
          {
            Number localNumber2 = getAsNumber();
            double d1 = localNumber2.doubleValue();
            Number localNumber4 = ((JsonPrimitive)localObject2).getAsNumber();
            double d2 = localNumber4.doubleValue();
            boolean bool4 = d1 < d2;
            if (!bool4)
            {
              bool4 = bool7;
              continue;
            }
            bool4 = bool6;
            continue;
          }
        }
        Object localObject4 = value;
        localObject5 = value;
        boolean bool5 = localObject4.equals(localObject5);
      }
    }
  }
  
  public BigDecimal getAsBigDecimal()
  {
    Object localObject1 = value;
    boolean bool = localObject1 instanceof BigDecimal;
    Object localObject2;
    if (bool)
    {
      this = value;
      this = (BigDecimal)this;
      localObject2 = this;
    }
    for (;;)
    {
      return (BigDecimal)localObject2;
      localObject2 = new java/math/BigDecimal;
      Object localObject3 = value;
      localObject3 = localObject3.toString();
      ((BigDecimal)localObject2).<init>((String)localObject3);
    }
  }
  
  public BigInteger getAsBigInteger()
  {
    Object localObject1 = value;
    boolean bool = localObject1 instanceof BigInteger;
    Object localObject2;
    if (bool)
    {
      this = value;
      this = (BigInteger)this;
      localObject2 = this;
    }
    for (;;)
    {
      return (BigInteger)localObject2;
      localObject2 = new java/math/BigInteger;
      Object localObject3 = value;
      localObject3 = localObject3.toString();
      ((BigInteger)localObject2).<init>((String)localObject3);
    }
  }
  
  public boolean getAsBoolean()
  {
    boolean bool1 = isBoolean();
    Boolean localBoolean;
    if (bool1) {
      localBoolean = getAsBooleanWrapper();
    }
    String str;
    boolean bool3;
    for (boolean bool2 = localBoolean.booleanValue();; bool3 = Boolean.parseBoolean(str))
    {
      return bool2;
      str = getAsString();
    }
  }
  
  Boolean getAsBooleanWrapper()
  {
    this = value;
    this = (Boolean)this;
    return this;
  }
  
  public byte getAsByte()
  {
    boolean bool = isNumber();
    Number localNumber;
    if (bool) {
      localNumber = getAsNumber();
    }
    String str;
    int i;
    for (byte b = localNumber.byteValue();; i = Byte.parseByte(str))
    {
      return b;
      str = getAsString();
    }
  }
  
  public char getAsCharacter()
  {
    String str = getAsString();
    int i = 0;
    char c = str.charAt(i);
    return c;
  }
  
  public double getAsDouble()
  {
    boolean bool = isNumber();
    Number localNumber;
    if (bool) {
      localNumber = getAsNumber();
    }
    String str;
    double d2;
    for (double d1 = localNumber.doubleValue();; d2 = Double.parseDouble(str))
    {
      return d1;
      str = getAsString();
    }
  }
  
  public float getAsFloat()
  {
    boolean bool = isNumber();
    Number localNumber;
    if (bool) {
      localNumber = getAsNumber();
    }
    String str;
    float f2;
    for (float f1 = localNumber.floatValue();; f2 = Float.parseFloat(str))
    {
      return f1;
      str = getAsString();
    }
  }
  
  public int getAsInt()
  {
    boolean bool = isNumber();
    Number localNumber;
    if (bool) {
      localNumber = getAsNumber();
    }
    String str;
    int j;
    for (int i = localNumber.intValue();; j = Integer.parseInt(str))
    {
      return i;
      str = getAsString();
    }
  }
  
  public long getAsLong()
  {
    boolean bool = isNumber();
    Number localNumber;
    if (bool) {
      localNumber = getAsNumber();
    }
    String str;
    long l2;
    for (long l1 = localNumber.longValue();; l2 = Long.parseLong(str))
    {
      return l1;
      str = getAsString();
    }
  }
  
  public Number getAsNumber()
  {
    Object localObject1 = value;
    boolean bool = localObject1 instanceof String;
    if (bool)
    {
      this = value;
      this = (String)this;
    }
    for (Object localObject2 = stringToNumber(this);; localObject2 = this)
    {
      return (Number)localObject2;
      this = value;
      this = (Number)this;
    }
  }
  
  Object getAsObject()
  {
    Object localObject2 = value;
    boolean bool = localObject2 instanceof BigInteger;
    Object localObject1;
    Object localObject3;
    if (bool)
    {
      localObject1 = value;
      localObject1 = (BigInteger)localObject1;
      BigInteger localBigInteger = INTEGER_MAX;
      int i = ((BigInteger)localObject1).compareTo(localBigInteger);
      if (i < 0)
      {
        i = ((BigInteger)localObject1).intValue();
        localObject3 = Integer.valueOf(i);
      }
    }
    for (;;)
    {
      return localObject3;
      localObject3 = LONG_MAX;
      int j = ((BigInteger)localObject1).compareTo((BigInteger)localObject3);
      Object localObject4;
      if (j < 0)
      {
        long l = ((BigInteger)localObject1).longValue();
        localObject4 = Long.valueOf(l);
      }
      else
      {
        localObject4 = value;
      }
    }
  }
  
  public short getAsShort()
  {
    boolean bool = isNumber();
    Number localNumber;
    if (bool) {
      localNumber = getAsNumber();
    }
    String str;
    int i;
    for (short s = localNumber.shortValue();; i = Short.parseShort(str))
    {
      return s;
      str = getAsString();
    }
  }
  
  public String getAsString()
  {
    boolean bool1 = isNumber();
    Object localObject1;
    if (bool1)
    {
      localObject1 = getAsNumber();
      localObject1 = localObject1.toString();
    }
    for (;;)
    {
      return (String)localObject1;
      boolean bool2 = isBoolean();
      Object localObject2;
      if (bool2)
      {
        localObject2 = getAsBooleanWrapper();
        localObject2 = ((Boolean)localObject2).toString();
      }
      else
      {
        this = value;
        this = (String)this;
        localObject2 = this;
      }
    }
  }
  
  public int hashCode()
  {
    int n = 32;
    Object localObject1 = value;
    int i;
    if (localObject1 == null) {
      i = 31;
    }
    for (;;)
    {
      return i;
      boolean bool1 = isIntegral(this);
      long l1;
      if (bool1)
      {
        Number localNumber1 = getAsNumber();
        l1 = localNumber1.longValue();
        long l2 = l1 >>> n;
        l2 ^= l1;
        int j = (int)l2;
      }
      else
      {
        boolean bool2 = isFloatingPoint(this);
        if (bool2)
        {
          Number localNumber2 = getAsNumber();
          double d = localNumber2.doubleValue();
          l1 = Double.doubleToLongBits(d);
          long l3 = l1 >>> n;
          l3 ^= l1;
          int k = (int)l3;
        }
        else
        {
          Object localObject2 = value;
          int m = localObject2.hashCode();
        }
      }
    }
  }
  
  public boolean isBoolean()
  {
    Object localObject = value;
    boolean bool = localObject instanceof Boolean;
    return bool;
  }
  
  private static boolean isFloatingPoint(JsonPrimitive paramJsonPrimitive)
  {
    boolean bool2 = false;
    Object localObject2 = value;
    boolean bool1 = localObject2 instanceof Number;
    if (bool1)
    {
      Object localObject1 = value;
      localObject1 = (Number)localObject1;
      bool1 = localObject1 instanceof BigDecimal;
      if (!bool1)
      {
        bool1 = localObject1 instanceof Double;
        if (!bool1)
        {
          bool1 = localObject1 instanceof Float;
          if (!bool1) {
            break label58;
          }
        }
      }
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      label58:
      bool1 = bool2;
      continue;
      bool1 = bool2;
    }
  }
  
  private static boolean isIntegral(JsonPrimitive paramJsonPrimitive)
  {
    boolean bool2 = false;
    Object localObject2 = value;
    boolean bool1 = localObject2 instanceof Number;
    if (bool1)
    {
      Object localObject1 = value;
      localObject1 = (Number)localObject1;
      bool1 = localObject1 instanceof BigInteger;
      if (!bool1)
      {
        bool1 = localObject1 instanceof Long;
        if (!bool1)
        {
          bool1 = localObject1 instanceof Integer;
          if (!bool1)
          {
            bool1 = localObject1 instanceof Short;
            if (!bool1)
            {
              bool1 = localObject1 instanceof Byte;
              if (!bool1) {
                break label76;
              }
            }
          }
        }
      }
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      label76:
      bool1 = bool2;
      continue;
      bool1 = bool2;
    }
  }
  
  public boolean isNumber()
  {
    Object localObject = value;
    boolean bool = localObject instanceof Number;
    return bool;
  }
  
  private static boolean isPrimitiveOrString(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = paramObject instanceof String;
    if (bool1) {
      bool1 = bool2;
    }
    for (;;)
    {
      return bool1;
      Class localClass1 = paramObject.getClass();
      Class[] arrayOfClass = PRIMITIVE_TYPES;
      int j = arrayOfClass.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label75;
        }
        Class localClass2 = arrayOfClass[i];
        bool1 = localClass2.isAssignableFrom(localClass1);
        if (bool1)
        {
          bool1 = bool2;
          break;
        }
        i += 1;
      }
      label75:
      bool1 = false;
    }
  }
  
  public boolean isString()
  {
    Object localObject = value;
    boolean bool = localObject instanceof String;
    return bool;
  }
  
  void setValue(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Character;
    if (bool1)
    {
      paramObject = (Character)paramObject;
      char c = ((Character)paramObject).charValue();
      String str = String.valueOf(c);
      value = str;
      return;
    }
    boolean bool2 = paramObject instanceof Number;
    if (!bool2)
    {
      bool2 = isPrimitiveOrString(paramObject);
      if (!bool2) {
        break label63;
      }
    }
    label63:
    for (bool2 = true;; bool2 = false)
    {
      Preconditions.checkArgument(bool2);
      value = paramObject;
      break;
    }
  }
  
  static Number stringToNumber(String paramString)
  {
    for (;;)
    {
      try
      {
        l1 = Long.parseLong(paramString);
        long l2 = 2147483648L;
        boolean bool1 = l1 < l2;
        if (bool1) {
          continue;
        }
        long l3 = 2147483647L;
        boolean bool2 = l1 < l3;
        if (bool2) {
          continue;
        }
        int i = (int)l1;
        localObject = Integer.valueOf(i);
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        try
        {
          long l1;
          Object localObject;
          BigDecimal localBigDecimal = new java/math/BigDecimal;
          localBigDecimal.<init>(paramString);
        }
        catch (NumberFormatException localNumberFormatException3)
        {
          NumberFormatException localNumberFormatException1 = localNumberFormatException3;
          double d = Double.parseDouble(paramString);
          Double localDouble = Double.valueOf(d);
        }
        continue;
      }
      return (Number)localObject;
      localObject = Long.valueOf(l1);
    }
  }
  
  protected void toString(Appendable paramAppendable, Escaper paramEscaper)
    throws IOException
  {
    char c = '"';
    boolean bool = isString();
    Object localObject;
    if (bool)
    {
      paramAppendable.append(c);
      localObject = value;
      localObject = localObject.toString();
      localObject = paramEscaper.escapeJsonString((CharSequence)localObject);
      paramAppendable.append((CharSequence)localObject);
      paramAppendable.append(c);
    }
    for (;;)
    {
      return;
      localObject = value;
      localObject = localObject.toString();
      paramAppendable.append((CharSequence)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonPrimitive
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */