package com.google.analytics.containertag.proto;

import com.google.analytics.midtier.proto.containertag.TypeSystem.Value;
import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Debug$ResolvedFunctionCall
  extends d
{
  public static final ResolvedFunctionCall[] EMPTY_ARRAY = new ResolvedFunctionCall[0];
  public String associatedRuleName = "";
  public Debug.ResolvedProperty[] properties = Debug.ResolvedProperty.EMPTY_ARRAY;
  public TypeSystem.Value result = null;
  
  public static ResolvedFunctionCall parseFrom(a parama)
  {
    return new ResolvedFunctionCall().mergeFrom(parama);
  }
  
  public static ResolvedFunctionCall parseFrom(byte[] paramArrayOfByte)
  {
    return (ResolvedFunctionCall)h.mergeFrom(new ResolvedFunctionCall(), paramArrayOfByte);
  }
  
  public final ResolvedFunctionCall clear()
  {
    properties = Debug.ResolvedProperty.EMPTY_ARRAY;
    result = null;
    associatedRuleName = "";
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label63:
    do
    {
      return true;
      if (!(paramObject instanceof ResolvedFunctionCall)) {
        return false;
      }
      paramObject = (ResolvedFunctionCall)paramObject;
      if (!Arrays.equals(properties, properties)) {
        break;
      }
      if (result != null) {
        break label79;
      }
      if (result != null) {
        break;
      }
      if (associatedRuleName != null) {
        break label96;
      }
      if (associatedRuleName != null) {
        break;
      }
      if (unknownFieldData != null) {
        break label113;
      }
    } while (unknownFieldData == null);
    label79:
    label96:
    label113:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        do
        {
          return false;
        } while (!result.equals(result));
        break;
      } while (!associatedRuleName.equals(associatedRuleName));
      break label63;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int j = 0;
    int i = 0;
    if (properties != null)
    {
      Debug.ResolvedProperty[] arrayOfResolvedProperty = properties;
      int m = arrayOfResolvedProperty.length;
      int k = 0;
      for (;;)
      {
        j = i;
        if (k >= m) {
          break;
        }
        j = b.b(1, arrayOfResolvedProperty[k]);
        k += 1;
        i = j + i;
      }
    }
    i = j;
    if (result != null) {
      i = j + b.b(2, result);
    }
    j = i;
    if (!associatedRuleName.equals("")) {
      j = i + b.b(3, associatedRuleName);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int j;
    int i;
    label23:
    int k;
    if (properties == null)
    {
      j = 527;
      if (result != null) {
        break label111;
      }
      i = 0;
      if (associatedRuleName != null) {
        break label122;
      }
      k = 0;
      label32:
      if (unknownFieldData != null) {
        break label133;
      }
    }
    for (;;)
    {
      return (k + (i + j * 31) * 31) * 31 + m;
      i = 17;
      k = 0;
      j = i;
      if (k >= properties.length) {
        break;
      }
      if (properties[k] == null) {}
      for (j = 0;; j = properties[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      label111:
      i = result.hashCode();
      break label23;
      label122:
      k = associatedRuleName.hashCode();
      break label32;
      label133:
      m = unknownFieldData.hashCode();
    }
  }
  
  public final ResolvedFunctionCall mergeFrom(a parama)
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
        int j = k.a(parama, 10);
        if (properties == null) {}
        for (i = 0;; i = properties.length)
        {
          Debug.ResolvedProperty[] arrayOfResolvedProperty = new Debug.ResolvedProperty[j + i];
          if (properties != null) {
            System.arraycopy(properties, 0, arrayOfResolvedProperty, 0, i);
          }
          properties = arrayOfResolvedProperty;
          while (i < properties.length - 1)
          {
            properties[i] = new Debug.ResolvedProperty();
            parama.a(properties[i]);
            parama.a();
            i += 1;
          }
        }
        properties[i] = new Debug.ResolvedProperty();
        parama.a(properties[i]);
        break;
      case 18: 
        result = new TypeSystem.Value();
        parama.a(result);
        break;
      case 26: 
        associatedRuleName = parama.e();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (properties != null)
    {
      Debug.ResolvedProperty[] arrayOfResolvedProperty = properties;
      int j = arrayOfResolvedProperty.length;
      int i = 0;
      while (i < j)
      {
        paramb.a(1, arrayOfResolvedProperty[i]);
        i += 1;
      }
    }
    if (result != null) {
      paramb.a(2, result);
    }
    if (!associatedRuleName.equals("")) {
      paramb.a(3, associatedRuleName);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.ResolvedFunctionCall
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */