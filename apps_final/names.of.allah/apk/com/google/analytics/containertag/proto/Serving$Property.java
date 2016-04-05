package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Serving$Property
  extends d
{
  public static final Property[] EMPTY_ARRAY = new Property[0];
  public int key = 0;
  public int value = 0;
  
  public static Property parseFrom(a parama)
  {
    return new Property().mergeFrom(parama);
  }
  
  public static Property parseFrom(byte[] paramArrayOfByte)
  {
    return (Property)h.mergeFrom(new Property(), paramArrayOfByte);
  }
  
  public final Property clear()
  {
    key = 0;
    value = 0;
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Property)) {
        return false;
      }
      paramObject = (Property)paramObject;
      if ((key != key) || (value != value)) {
        break;
      }
      if (unknownFieldData != null) {
        break label59;
      }
    } while (unknownFieldData == null);
    label59:
    while (!unknownFieldData.equals(unknownFieldData)) {
      return false;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int i = b.b(1, key) + 0 + b.b(2, value) + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int j = key;
    int k = value;
    if (unknownFieldData == null) {}
    for (int i = 0;; i = unknownFieldData.hashCode()) {
      return i + ((j + 527) * 31 + k) * 31;
    }
  }
  
  public final Property mergeFrom(a parama)
  {
    for (;;)
    {
      int i = parama.a();
      switch (i)
      {
      default: 
        if (unknownFieldData == null) {
          unknownFieldData = new ArrayList();
        }
        if (k.a(unknownFieldData, parama, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        key = parama.c();
        break;
      case 16: 
        value = parama.c();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    paramb.a(1, key);
    paramb.a(2, value);
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.Property
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */