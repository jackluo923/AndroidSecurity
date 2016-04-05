package com.google.kagegamesgson;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class JsonElement
{
  private static final Escaper BASIC_ESCAPER;
  
  static
  {
    Escaper localEscaper = new com/google/kagegamesgson/Escaper;
    boolean bool = false;
    localEscaper.<init>(bool);
    BASIC_ESCAPER = localEscaper;
  }
  
  public BigDecimal getAsBigDecimal()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public BigInteger getAsBigInteger()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public boolean getAsBoolean()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  Boolean getAsBooleanWrapper()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public byte getAsByte()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public char getAsCharacter()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public double getAsDouble()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public float getAsFloat()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public int getAsInt()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public JsonArray getAsJsonArray()
  {
    boolean bool = isJsonArray();
    if (bool)
    {
      this = (JsonArray)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Array.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public JsonNull getAsJsonNull()
  {
    boolean bool = isJsonNull();
    if (bool)
    {
      this = (JsonNull)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Null.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public JsonObject getAsJsonObject()
  {
    boolean bool = isJsonObject();
    if (bool)
    {
      this = (JsonObject)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Object.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public JsonPrimitive getAsJsonPrimitive()
  {
    boolean bool = isJsonPrimitive();
    if (bool)
    {
      this = (JsonPrimitive)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Primitive.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public long getAsLong()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public Number getAsNumber()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  Object getAsObject()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public short getAsShort()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public String getAsString()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
  
  public boolean isJsonArray()
  {
    boolean bool = this instanceof JsonArray;
    return bool;
  }
  
  public boolean isJsonNull()
  {
    boolean bool = this instanceof JsonNull;
    return bool;
  }
  
  public boolean isJsonObject()
  {
    boolean bool = this instanceof JsonObject;
    return bool;
  }
  
  public boolean isJsonPrimitive()
  {
    boolean bool = this instanceof JsonPrimitive;
    return bool;
  }
  
  public String toString()
  {
    try
    {
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      Object localObject = BASIC_ESCAPER;
      toString(localStringBuilder, (Escaper)localObject);
      localObject = localStringBuilder.toString();
      return (String)localObject;
    }
    catch (IOException localIOException2)
    {
      IOException localIOException1 = localIOException2;
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      localRuntimeException.<init>(localIOException1);
      throw localRuntimeException;
    }
  }
  
  protected abstract void toString(Appendable paramAppendable, Escaper paramEscaper)
    throws IOException;
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonElement
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */