package com.google.analytics.containertag.proto;

import com.google.analytics.midtier.proto.containertag.TypeSystem.Value;
import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Debug$ResolvedProperty
  extends d
{
  public static final ResolvedProperty[] EMPTY_ARRAY = new ResolvedProperty[0];
  public String key = "";
  public TypeSystem.Value value = null;
  
  public static ResolvedProperty parseFrom(a parama)
  {
    return new ResolvedProperty().mergeFrom(parama);
  }
  
  public static ResolvedProperty parseFrom(byte[] paramArrayOfByte)
  {
    return (ResolvedProperty)h.mergeFrom(new ResolvedProperty(), paramArrayOfByte);
  }
  
  public final ResolvedProperty clear()
  {
    key = "";
    value = null;
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label49:
    do
    {
      return true;
      if (!(paramObject instanceof ResolvedProperty)) {
        return false;
      }
      paramObject = (ResolvedProperty)paramObject;
      if (key != null) {
        break label65;
      }
      if (key != null) {
        break;
      }
      if (value != null) {
        break label82;
      }
      if (value != null) {
        break;
      }
      if (unknownFieldData != null) {
        break label99;
      }
    } while (unknownFieldData == null);
    label65:
    label82:
    label99:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        do
        {
          return false;
        } while (!key.equals(key));
        break;
      } while (!value.equals(value));
      break label49;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int i = 0;
    if (!key.equals("")) {
      i = b.b(1, key) + 0;
    }
    int j = i;
    if (value != null) {
      j = i + b.b(2, value);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int k = 0;
    int i;
    int j;
    if (key == null)
    {
      i = 0;
      if (value != null) {
        break label54;
      }
      j = 0;
      label20:
      if (unknownFieldData != null) {
        break label65;
      }
    }
    for (;;)
    {
      return (j + (i + 527) * 31) * 31 + k;
      i = key.hashCode();
      break;
      label54:
      j = value.hashCode();
      break label20;
      label65:
      k = unknownFieldData.hashCode();
    }
  }
  
  public final ResolvedProperty mergeFrom(a parama)
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
      case 10: 
        key = parama.e();
        break;
      case 18: 
        value = new TypeSystem.Value();
        parama.a(value);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (!key.equals("")) {
      paramb.a(1, key);
    }
    if (value != null) {
      paramb.a(2, value);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.ResolvedProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */