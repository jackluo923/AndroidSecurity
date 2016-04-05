package com.millennialmedia.google.gson;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class JsonArray
  extends JsonElement
  implements Iterable<JsonElement>
{
  private final List<JsonElement> elements = new ArrayList();
  
  public final void add(JsonElement paramJsonElement)
  {
    Object localObject = paramJsonElement;
    if (paramJsonElement == null) {
      localObject = JsonNull.INSTANCE;
    }
    elements.add(localObject);
  }
  
  public final void addAll(JsonArray paramJsonArray)
  {
    elements.addAll(elements);
  }
  
  final JsonArray deepCopy()
  {
    JsonArray localJsonArray = new JsonArray();
    Iterator localIterator = elements.iterator();
    while (localIterator.hasNext()) {
      localJsonArray.add(((JsonElement)localIterator.next()).deepCopy());
    }
    return localJsonArray;
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof JsonArray)) && (elements.equals(elements)));
  }
  
  public final JsonElement get(int paramInt)
  {
    return (JsonElement)elements.get(paramInt);
  }
  
  public final BigDecimal getAsBigDecimal()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsBigDecimal();
    }
    throw new IllegalStateException();
  }
  
  public final BigInteger getAsBigInteger()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsBigInteger();
    }
    throw new IllegalStateException();
  }
  
  public final boolean getAsBoolean()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsBoolean();
    }
    throw new IllegalStateException();
  }
  
  public final byte getAsByte()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsByte();
    }
    throw new IllegalStateException();
  }
  
  public final char getAsCharacter()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsCharacter();
    }
    throw new IllegalStateException();
  }
  
  public final double getAsDouble()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsDouble();
    }
    throw new IllegalStateException();
  }
  
  public final float getAsFloat()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsFloat();
    }
    throw new IllegalStateException();
  }
  
  public final int getAsInt()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsInt();
    }
    throw new IllegalStateException();
  }
  
  public final long getAsLong()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsLong();
    }
    throw new IllegalStateException();
  }
  
  public final Number getAsNumber()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsNumber();
    }
    throw new IllegalStateException();
  }
  
  public final short getAsShort()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsShort();
    }
    throw new IllegalStateException();
  }
  
  public final String getAsString()
  {
    if (elements.size() == 1) {
      return ((JsonElement)elements.get(0)).getAsString();
    }
    throw new IllegalStateException();
  }
  
  public final int hashCode()
  {
    return elements.hashCode();
  }
  
  public final Iterator<JsonElement> iterator()
  {
    return elements.iterator();
  }
  
  public final int size()
  {
    return elements.size();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.JsonArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */