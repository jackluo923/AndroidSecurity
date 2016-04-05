package com.google.kagegamesgson;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class JsonArray
  extends JsonElement
  implements Iterable<JsonElement>
{
  private final List elements;
  
  public JsonArray()
  {
    ArrayList localArrayList = new java/util/ArrayList;
    localArrayList.<init>();
    elements = localArrayList;
  }
  
  public void add(JsonElement paramJsonElement)
  {
    if (paramJsonElement == null) {
      paramJsonElement = JsonNull.createJsonNull();
    }
    List localList = elements;
    localList.add(paramJsonElement);
  }
  
  public void addAll(JsonArray paramJsonArray)
  {
    List localList1 = elements;
    List localList2 = elements;
    localList1.addAll(localList2);
  }
  
  public JsonElement get(int paramInt)
  {
    List localList = elements;
    this = localList.get(paramInt);
    this = (JsonElement)this;
    return this;
  }
  
  public BigDecimal getAsBigDecimal()
  {
    List localList = elements;
    int i = localList.size();
    int j = 1;
    if (i == j)
    {
      localObject = elements;
      j = 0;
      this = ((List)localObject).get(j);
      this = (JsonElement)this;
      localObject = getAsBigDecimal();
      return (BigDecimal)localObject;
    }
    Object localObject = new java/lang/IllegalStateException;
    ((IllegalStateException)localObject).<init>();
    throw ((Throwable)localObject);
  }
  
  public BigInteger getAsBigInteger()
  {
    List localList = elements;
    int i = localList.size();
    int j = 1;
    if (i == j)
    {
      localObject = elements;
      j = 0;
      this = ((List)localObject).get(j);
      this = (JsonElement)this;
      localObject = getAsBigInteger();
      return (BigInteger)localObject;
    }
    Object localObject = new java/lang/IllegalStateException;
    ((IllegalStateException)localObject).<init>();
    throw ((Throwable)localObject);
  }
  
  public boolean getAsBoolean()
  {
    List localList1 = elements;
    int i = localList1.size();
    int j = 1;
    if (i == j)
    {
      List localList2 = elements;
      j = 0;
      this = localList2.get(j);
      this = (JsonElement)this;
      boolean bool = getAsBoolean();
      return bool;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public byte getAsByte()
  {
    List localList1 = elements;
    int i = localList1.size();
    int j = 1;
    if (i == j)
    {
      List localList2 = elements;
      j = 0;
      this = localList2.get(j);
      this = (JsonElement)this;
      byte b = getAsByte();
      return b;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public char getAsCharacter()
  {
    List localList1 = elements;
    int i = localList1.size();
    int j = 1;
    if (i == j)
    {
      List localList2 = elements;
      j = 0;
      this = localList2.get(j);
      this = (JsonElement)this;
      char c = getAsCharacter();
      return c;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public double getAsDouble()
  {
    List localList1 = elements;
    int i = localList1.size();
    int j = 1;
    if (i == j)
    {
      List localList2 = elements;
      j = 0;
      this = localList2.get(j);
      this = (JsonElement)this;
      double d = getAsDouble();
      return d;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public float getAsFloat()
  {
    List localList1 = elements;
    int i = localList1.size();
    int j = 1;
    if (i == j)
    {
      List localList2 = elements;
      j = 0;
      this = localList2.get(j);
      this = (JsonElement)this;
      float f = getAsFloat();
      return f;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public int getAsInt()
  {
    List localList1 = elements;
    int i = localList1.size();
    int k = 1;
    if (i == k)
    {
      List localList2 = elements;
      k = 0;
      this = localList2.get(k);
      this = (JsonElement)this;
      int j = getAsInt();
      return j;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public long getAsLong()
  {
    List localList1 = elements;
    int i = localList1.size();
    int j = 1;
    if (i == j)
    {
      List localList2 = elements;
      j = 0;
      this = localList2.get(j);
      this = (JsonElement)this;
      long l = getAsLong();
      return l;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public Number getAsNumber()
  {
    List localList = elements;
    int i = localList.size();
    int j = 1;
    if (i == j)
    {
      localObject = elements;
      j = 0;
      this = ((List)localObject).get(j);
      this = (JsonElement)this;
      localObject = getAsNumber();
      return (Number)localObject;
    }
    Object localObject = new java/lang/IllegalStateException;
    ((IllegalStateException)localObject).<init>();
    throw ((Throwable)localObject);
  }
  
  Object getAsObject()
  {
    List localList = elements;
    int i = localList.size();
    int j = 1;
    if (i == j)
    {
      localObject = elements;
      j = 0;
      this = ((List)localObject).get(j);
      this = (JsonElement)this;
      localObject = getAsObject();
      return localObject;
    }
    Object localObject = new java/lang/IllegalStateException;
    ((IllegalStateException)localObject).<init>();
    throw ((Throwable)localObject);
  }
  
  public short getAsShort()
  {
    List localList1 = elements;
    int i = localList1.size();
    int j = 1;
    if (i == j)
    {
      List localList2 = elements;
      j = 0;
      this = localList2.get(j);
      this = (JsonElement)this;
      short s = getAsShort();
      return s;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localIllegalStateException.<init>();
    throw localIllegalStateException;
  }
  
  public String getAsString()
  {
    List localList = elements;
    int i = localList.size();
    int j = 1;
    if (i == j)
    {
      localObject = elements;
      j = 0;
      this = ((List)localObject).get(j);
      this = (JsonElement)this;
      localObject = getAsString();
      return (String)localObject;
    }
    Object localObject = new java/lang/IllegalStateException;
    ((IllegalStateException)localObject).<init>();
    throw ((Throwable)localObject);
  }
  
  public Iterator<JsonElement> iterator()
  {
    Object localObject = elements;
    localObject = ((List)localObject).iterator();
    return (Iterator<JsonElement>)localObject;
  }
  
  void reverse()
  {
    List localList = elements;
    Collections.reverse(localList);
  }
  
  public int size()
  {
    List localList = elements;
    int i = localList.size();
    return i;
  }
  
  protected void toString(Appendable paramAppendable, Escaper paramEscaper)
    throws IOException
  {
    char c1 = '[';
    paramAppendable.append(c1);
    int i = 1;
    List localList = elements;
    Iterator localIterator = localList.iterator();
    boolean bool = localIterator.hasNext();
    if (bool)
    {
      Object localObject = localIterator.next();
      localObject = (JsonElement)localObject;
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        ((JsonElement)localObject).toString(paramAppendable, paramEscaper);
        break;
        c2 = ',';
        paramAppendable.append(c2);
      }
    }
    char c2 = ']';
    paramAppendable.append(c2);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonArray
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */