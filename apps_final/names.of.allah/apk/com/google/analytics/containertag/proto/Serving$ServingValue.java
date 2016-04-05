package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.e;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Serving$ServingValue
  extends d
{
  public static final ServingValue[] EMPTY_ARRAY = new ServingValue[0];
  public static final e<ServingValue> ext = e.a(101, new Serving.ServingValue.1());
  public int[] listItem = k.e;
  public int macroNameReference = 0;
  public int macroReference = 0;
  public int[] mapKey = k.e;
  public int[] mapValue = k.e;
  public int tagReference = 0;
  public int[] templateToken = k.e;
  
  public static ServingValue parseFrom(a parama)
  {
    return new ServingValue().mergeFrom(parama);
  }
  
  public static ServingValue parseFrom(byte[] paramArrayOfByte)
  {
    return (ServingValue)h.mergeFrom(new ServingValue(), paramArrayOfByte);
  }
  
  public final ServingValue clear()
  {
    listItem = k.e;
    mapKey = k.e;
    mapValue = k.e;
    macroReference = 0;
    templateToken = k.e;
    macroNameReference = 0;
    tagReference = 0;
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
      if (!(paramObject instanceof ServingValue)) {
        return false;
      }
      paramObject = (ServingValue)paramObject;
      if ((!Arrays.equals(listItem, listItem)) || (!Arrays.equals(mapKey, mapKey)) || (!Arrays.equals(mapValue, mapValue)) || (macroReference != macroReference) || (!Arrays.equals(templateToken, templateToken)) || (macroNameReference != macroNameReference) || (tagReference != tagReference)) {
        break;
      }
      if (unknownFieldData != null) {
        break label126;
      }
    } while (unknownFieldData == null);
    label126:
    while (!unknownFieldData.equals(unknownFieldData)) {
      return false;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int m = 0;
    int[] arrayOfInt;
    int k;
    int i;
    if ((listItem != null) && (listItem.length > 0))
    {
      arrayOfInt = listItem;
      k = arrayOfInt.length;
      i = 0;
      j = 0;
      while (i < k)
      {
        j += b.b(arrayOfInt[i]);
        i += 1;
      }
    }
    for (int j = j + 0 + listItem.length * 1;; j = 0)
    {
      i = j;
      int n;
      if (mapKey != null)
      {
        i = j;
        if (mapKey.length > 0)
        {
          arrayOfInt = mapKey;
          n = arrayOfInt.length;
          i = 0;
          k = 0;
          while (i < n)
          {
            k += b.b(arrayOfInt[i]);
            i += 1;
          }
          i = j + k + mapKey.length * 1;
        }
      }
      j = i;
      if (mapValue != null)
      {
        j = i;
        if (mapValue.length > 0)
        {
          arrayOfInt = mapValue;
          n = arrayOfInt.length;
          j = 0;
          k = 0;
          while (j < n)
          {
            k += b.b(arrayOfInt[j]);
            j += 1;
          }
          j = i + k + mapValue.length * 1;
        }
      }
      i = j;
      if (macroReference != 0) {
        i = j + b.b(4, macroReference);
      }
      j = i;
      if (templateToken != null)
      {
        j = i;
        if (templateToken.length > 0)
        {
          arrayOfInt = templateToken;
          n = arrayOfInt.length;
          k = 0;
          j = m;
          while (j < n)
          {
            k += b.b(arrayOfInt[j]);
            j += 1;
          }
          j = i + k + templateToken.length * 1;
        }
      }
      i = j;
      if (macroNameReference != 0) {
        i = j + b.b(6, macroNameReference);
      }
      j = i;
      if (tagReference != 0) {
        j = i + b.b(7, tagReference);
      }
      i = j + k.a(unknownFieldData);
      cachedSize = i;
      return i;
    }
  }
  
  public final int hashCode()
  {
    int m = 0;
    int k;
    int j;
    int n;
    if (listItem == null)
    {
      i = 527;
      if (mapKey != null) {
        break label134;
      }
      i *= 31;
      if (mapValue != null) {
        break label168;
      }
      k = i * 31;
      i = k * 31 + macroReference;
      if (templateToken != null) {
        break label200;
      }
      j = i * 31;
      k = macroNameReference;
      n = tagReference;
      if (unknownFieldData != null) {
        break label232;
      }
    }
    label134:
    label168:
    label200:
    label232:
    for (int i = m;; i = unknownFieldData.hashCode())
    {
      return ((j * 31 + k) * 31 + n) * 31 + i;
      j = 17;
      k = 0;
      for (;;)
      {
        i = j;
        if (k >= listItem.length) {
          break;
        }
        j = j * 31 + listItem[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= mapKey.length) {
          break;
        }
        j = j * 31 + mapKey[k];
        k += 1;
      }
      j = 0;
      for (;;)
      {
        k = i;
        if (j >= mapValue.length) {
          break;
        }
        i = i * 31 + mapValue[j];
        j += 1;
      }
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= templateToken.length) {
          break;
        }
        i = i * 31 + templateToken[k];
        k += 1;
      }
    }
  }
  
  public final ServingValue mergeFrom(a parama)
  {
    for (;;)
    {
      int i = parama.a();
      int j;
      int[] arrayOfInt;
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
        j = k.a(parama, 8);
        i = listItem.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(listItem, 0, arrayOfInt, 0, i);
        listItem = arrayOfInt;
        while (i < listItem.length - 1)
        {
          listItem[i] = parama.c();
          parama.a();
          i += 1;
        }
        listItem[i] = parama.c();
        break;
      case 16: 
        j = k.a(parama, 16);
        i = mapKey.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(mapKey, 0, arrayOfInt, 0, i);
        mapKey = arrayOfInt;
        while (i < mapKey.length - 1)
        {
          mapKey[i] = parama.c();
          parama.a();
          i += 1;
        }
        mapKey[i] = parama.c();
        break;
      case 24: 
        j = k.a(parama, 24);
        i = mapValue.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(mapValue, 0, arrayOfInt, 0, i);
        mapValue = arrayOfInt;
        while (i < mapValue.length - 1)
        {
          mapValue[i] = parama.c();
          parama.a();
          i += 1;
        }
        mapValue[i] = parama.c();
        break;
      case 32: 
        macroReference = parama.c();
        break;
      case 40: 
        j = k.a(parama, 40);
        i = templateToken.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(templateToken, 0, arrayOfInt, 0, i);
        templateToken = arrayOfInt;
        while (i < templateToken.length - 1)
        {
          templateToken[i] = parama.c();
          parama.a();
          i += 1;
        }
        templateToken[i] = parama.c();
        break;
      case 48: 
        macroNameReference = parama.c();
        break;
      case 56: 
        tagReference = parama.c();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    int j = 0;
    int[] arrayOfInt;
    int k;
    int i;
    if (listItem != null)
    {
      arrayOfInt = listItem;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(1, arrayOfInt[i]);
        i += 1;
      }
    }
    if (mapKey != null)
    {
      arrayOfInt = mapKey;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(2, arrayOfInt[i]);
        i += 1;
      }
    }
    if (mapValue != null)
    {
      arrayOfInt = mapValue;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(3, arrayOfInt[i]);
        i += 1;
      }
    }
    if (macroReference != 0) {
      paramb.a(4, macroReference);
    }
    if (templateToken != null)
    {
      arrayOfInt = templateToken;
      k = arrayOfInt.length;
      i = j;
      while (i < k)
      {
        paramb.a(5, arrayOfInt[i]);
        i += 1;
      }
    }
    if (macroNameReference != 0) {
      paramb.a(6, macroNameReference);
    }
    if (tagReference != 0) {
      paramb.a(7, tagReference);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.ServingValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */