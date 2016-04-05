package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Serving$FunctionCall
  extends d
{
  public static final FunctionCall[] EMPTY_ARRAY = new FunctionCall[0];
  public int function = 0;
  public boolean liveOnly = false;
  public int name = 0;
  public int[] property = k.e;
  public boolean serverSide = false;
  
  public static FunctionCall parseFrom(a parama)
  {
    return new FunctionCall().mergeFrom(parama);
  }
  
  public static FunctionCall parseFrom(byte[] paramArrayOfByte)
  {
    return (FunctionCall)h.mergeFrom(new FunctionCall(), paramArrayOfByte);
  }
  
  public final FunctionCall clear()
  {
    property = k.e;
    function = 0;
    name = 0;
    liveOnly = false;
    serverSide = false;
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
      if (!(paramObject instanceof FunctionCall)) {
        return false;
      }
      paramObject = (FunctionCall)paramObject;
      if ((!Arrays.equals(property, property)) || (function != function) || (name != name) || (liveOnly != liveOnly) || (serverSide != serverSide)) {
        break;
      }
      if (unknownFieldData != null) {
        break label95;
      }
    } while (unknownFieldData == null);
    label95:
    while (!unknownFieldData.equals(unknownFieldData)) {
      return false;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int k = 0;
    boolean bool;
    if (serverSide) {
      bool = serverSide;
    }
    for (int i = b.d(1) + 1 + 0;; i = 0)
    {
      int m = i + b.b(2, function);
      i = m;
      if (property != null)
      {
        i = m;
        if (property.length > 0)
        {
          int[] arrayOfInt = property;
          int n = arrayOfInt.length;
          j = 0;
          i = k;
          while (i < n)
          {
            j += b.b(arrayOfInt[i]);
            i += 1;
          }
          i = m + j + property.length * 1;
        }
      }
      int j = i;
      if (name != 0) {
        j = i + b.b(4, name);
      }
      i = j;
      if (liveOnly)
      {
        bool = liveOnly;
        i = j + (b.d(6) + 1);
      }
      i += k.a(unknownFieldData);
      cachedSize = i;
      return i;
    }
  }
  
  public final int hashCode()
  {
    int n = 1;
    int m = 0;
    int j;
    int i1;
    int i2;
    int i;
    label38:
    int k;
    if (property == null)
    {
      j = 527;
      i1 = function;
      i2 = name;
      if (!liveOnly) {
        break label120;
      }
      i = 1;
      if (!serverSide) {
        break label125;
      }
      k = n;
      label48:
      if (unknownFieldData != null) {
        break label130;
      }
    }
    for (;;)
    {
      return ((i + ((j * 31 + i1) * 31 + i2) * 31) * 31 + k) * 31 + m;
      i = 17;
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= property.length) {
          break;
        }
        i = i * 31 + property[k];
        k += 1;
      }
      label120:
      i = 2;
      break label38;
      label125:
      k = 2;
      break label48;
      label130:
      m = unknownFieldData.hashCode();
    }
  }
  
  public final FunctionCall mergeFrom(a parama)
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
        serverSide = parama.d();
        break;
      case 16: 
        function = parama.c();
        break;
      case 24: 
        int j = k.a(parama, 24);
        i = property.length;
        int[] arrayOfInt = new int[j + i];
        System.arraycopy(property, 0, arrayOfInt, 0, i);
        property = arrayOfInt;
        while (i < property.length - 1)
        {
          property[i] = parama.c();
          parama.a();
          i += 1;
        }
        property[i] = parama.c();
        break;
      case 32: 
        name = parama.c();
        break;
      case 48: 
        liveOnly = parama.d();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (serverSide) {
      paramb.a(1, serverSide);
    }
    paramb.a(2, function);
    if (property != null)
    {
      int[] arrayOfInt = property;
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        paramb.a(3, arrayOfInt[i]);
        i += 1;
      }
    }
    if (name != 0) {
      paramb.a(4, name);
    }
    if (liveOnly) {
      paramb.a(6, liveOnly);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.FunctionCall
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */