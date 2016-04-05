package com.google.analytics.midtier.proto.containertag;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class TypeSystem$Value
  extends d
{
  public static final Value[] EMPTY_ARRAY = new Value[0];
  public boolean boolean_ = false;
  public boolean containsReferences = false;
  public int[] escaping = k.e;
  public String functionId = "";
  public long integer = 0L;
  public Value[] listItem = EMPTY_ARRAY;
  public String macroReference = "";
  public Value[] mapKey = EMPTY_ARRAY;
  public Value[] mapValue = EMPTY_ARRAY;
  public String string = "";
  public String tagReference = "";
  public Value[] templateToken = EMPTY_ARRAY;
  public int type = 1;
  
  public static Value parseFrom(a parama)
  {
    return new Value().mergeFrom(parama);
  }
  
  public static Value parseFrom(byte[] paramArrayOfByte)
  {
    return (Value)h.mergeFrom(new Value(), paramArrayOfByte);
  }
  
  public final Value clear()
  {
    type = 1;
    string = "";
    listItem = EMPTY_ARRAY;
    mapKey = EMPTY_ARRAY;
    mapValue = EMPTY_ARRAY;
    macroReference = "";
    functionId = "";
    integer = 0L;
    boolean_ = false;
    templateToken = EMPTY_ARRAY;
    tagReference = "";
    escaping = k.e;
    containsReferences = false;
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label102:
    label116:
    label167:
    do
    {
      return true;
      if (!(paramObject instanceof Value)) {
        return false;
      }
      paramObject = (Value)paramObject;
      if (type != type) {
        break;
      }
      if (string != null) {
        break label208;
      }
      if (string != null) {
        break;
      }
      if ((!Arrays.equals(listItem, listItem)) || (!Arrays.equals(mapKey, mapKey)) || (!Arrays.equals(mapValue, mapValue))) {
        break;
      }
      if (macroReference != null) {
        break label225;
      }
      if (macroReference != null) {
        break;
      }
      if (functionId != null) {
        break label242;
      }
      if (functionId != null) {
        break;
      }
      if ((integer != integer) || (boolean_ != boolean_) || (!Arrays.equals(templateToken, templateToken))) {
        break;
      }
      if (tagReference != null) {
        break label259;
      }
      if (tagReference != null) {
        break;
      }
      if ((!Arrays.equals(escaping, escaping)) || (containsReferences != containsReferences)) {
        break;
      }
      if (unknownFieldData != null) {
        break label276;
      }
    } while (unknownFieldData == null);
    label208:
    label225:
    label242:
    label259:
    label276:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return false;
            } while (!string.equals(string));
            break;
          } while (!macroReference.equals(macroReference));
          break label102;
        } while (!functionId.equals(functionId));
        break label116;
      } while (!tagReference.equals(tagReference));
      break label167;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int m = 0;
    int i = b.b(1, type) + 0;
    int j = i;
    if (!string.equals("")) {
      j = i + b.b(2, string);
    }
    i = j;
    Object localObject;
    int n;
    if (listItem != null)
    {
      localObject = listItem;
      n = localObject.length;
      k = 0;
      for (;;)
      {
        i = j;
        if (k >= n) {
          break;
        }
        i = b.b(3, localObject[k]);
        k += 1;
        j = i + j;
      }
    }
    j = i;
    if (mapKey != null)
    {
      localObject = mapKey;
      n = localObject.length;
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= n) {
          break;
        }
        j = b.b(4, localObject[k]);
        k += 1;
        i = j + i;
      }
    }
    i = j;
    if (mapValue != null)
    {
      localObject = mapValue;
      n = localObject.length;
      k = 0;
      for (;;)
      {
        i = j;
        if (k >= n) {
          break;
        }
        i = b.b(5, localObject[k]);
        k += 1;
        j = i + j;
      }
    }
    j = i;
    if (!macroReference.equals("")) {
      j = i + b.b(6, macroReference);
    }
    i = j;
    if (!functionId.equals("")) {
      i = j + b.b(7, functionId);
    }
    int k = i;
    if (integer != 0L) {
      k = i + b.b(8, integer);
    }
    j = k;
    boolean bool;
    if (containsReferences)
    {
      bool = containsReferences;
      j = k + (b.d(9) + 1);
    }
    i = j;
    if (escaping != null)
    {
      i = j;
      if (escaping.length > 0)
      {
        localObject = escaping;
        n = localObject.length;
        i = 0;
        k = 0;
        while (i < n)
        {
          k += b.b(localObject[i]);
          i += 1;
        }
        i = j + k + escaping.length * 1;
      }
    }
    j = i;
    if (templateToken != null)
    {
      localObject = templateToken;
      n = localObject.length;
      k = m;
      for (;;)
      {
        j = i;
        if (k >= n) {
          break;
        }
        j = b.b(11, localObject[k]);
        k += 1;
        i = j + i;
      }
    }
    i = j;
    if (boolean_)
    {
      bool = boolean_;
      i = j + (b.d(12) + 1);
    }
    j = i;
    if (!tagReference.equals("")) {
      j = i + b.b(13, tagReference);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int i1 = 1;
    int n = 0;
    int j = type;
    int i;
    label43:
    label55:
    label67:
    label76:
    label85:
    int m;
    if (string == null)
    {
      i = 0;
      i += (j + 527) * 31;
      if (listItem != null) {
        break label217;
      }
      j = i * 31;
      if (mapKey != null) {
        break label268;
      }
      j *= 31;
      if (mapValue != null) {
        break label321;
      }
      j *= 31;
      if (macroReference != null) {
        break label374;
      }
      i = 0;
      if (functionId != null) {
        break label385;
      }
      k = 0;
      int i2 = (int)(integer ^ integer >>> 32);
      if (!boolean_) {
        break label396;
      }
      m = 1;
      label110:
      i = m + ((k + (i + j * 31) * 31) * 31 + i2) * 31;
      if (templateToken != null) {
        break label402;
      }
      k = i * 31;
      label146:
      if (tagReference != null) {
        break label453;
      }
      i = 0;
      label155:
      i += k * 31;
      if (escaping != null) {
        break label464;
      }
      j = i * 31;
      if (!containsReferences) {
        break label496;
      }
      i = i1;
      label184:
      if (unknownFieldData != null) {
        break label501;
      }
    }
    label217:
    label268:
    label321:
    label374:
    label385:
    label396:
    label402:
    label453:
    label464:
    label496:
    label501:
    for (int k = n;; k = unknownFieldData.hashCode())
    {
      return (j * 31 + i) * 31 + k;
      i = string.hashCode();
      break;
      k = 0;
      j = i;
      if (k >= listItem.length) {
        break label43;
      }
      if (listItem[k] == null) {}
      for (j = 0;; j = listItem[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= mapKey.length) {
        break label55;
      }
      if (mapKey[k] == null) {}
      for (j = 0;; j = mapKey[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= mapValue.length) {
        break label67;
      }
      if (mapValue[k] == null) {}
      for (j = 0;; j = mapValue[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      i = macroReference.hashCode();
      break label76;
      k = functionId.hashCode();
      break label85;
      m = 2;
      break label110;
      j = 0;
      k = i;
      if (j >= templateToken.length) {
        break label146;
      }
      if (templateToken[j] == null) {}
      for (k = 0;; k = templateToken[j].hashCode())
      {
        i = k + i * 31;
        j += 1;
        break;
      }
      i = tagReference.hashCode();
      break label155;
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= escaping.length) {
          break;
        }
        i = i * 31 + escaping[k];
        k += 1;
      }
      i = 2;
      break label184;
    }
  }
  
  public final Value mergeFrom(a parama)
  {
    for (;;)
    {
      int i = parama.a();
      int j;
      Object localObject;
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
        i = parama.c();
        if ((i == 1) || (i == 2) || (i == 3) || (i == 4) || (i == 5) || (i == 6) || (i == 7) || (i == 8) || (i == 9)) {
          type = i;
        } else {
          type = 1;
        }
        break;
      case 18: 
        string = parama.e();
        break;
      case 26: 
        j = k.a(parama, 26);
        if (listItem == null) {}
        for (i = 0;; i = listItem.length)
        {
          localObject = new Value[j + i];
          if (listItem != null) {
            System.arraycopy(listItem, 0, localObject, 0, i);
          }
          listItem = ((Value[])localObject);
          while (i < listItem.length - 1)
          {
            listItem[i] = new Value();
            parama.a(listItem[i]);
            parama.a();
            i += 1;
          }
        }
        listItem[i] = new Value();
        parama.a(listItem[i]);
        break;
      case 34: 
        j = k.a(parama, 34);
        if (mapKey == null) {}
        for (i = 0;; i = mapKey.length)
        {
          localObject = new Value[j + i];
          if (mapKey != null) {
            System.arraycopy(mapKey, 0, localObject, 0, i);
          }
          mapKey = ((Value[])localObject);
          while (i < mapKey.length - 1)
          {
            mapKey[i] = new Value();
            parama.a(mapKey[i]);
            parama.a();
            i += 1;
          }
        }
        mapKey[i] = new Value();
        parama.a(mapKey[i]);
        break;
      case 42: 
        j = k.a(parama, 42);
        if (mapValue == null) {}
        for (i = 0;; i = mapValue.length)
        {
          localObject = new Value[j + i];
          if (mapValue != null) {
            System.arraycopy(mapValue, 0, localObject, 0, i);
          }
          mapValue = ((Value[])localObject);
          while (i < mapValue.length - 1)
          {
            mapValue[i] = new Value();
            parama.a(mapValue[i]);
            parama.a();
            i += 1;
          }
        }
        mapValue[i] = new Value();
        parama.a(mapValue[i]);
        break;
      case 50: 
        macroReference = parama.e();
        break;
      case 58: 
        functionId = parama.e();
        break;
      case 64: 
        integer = parama.b();
        break;
      case 72: 
        containsReferences = parama.d();
        break;
      case 80: 
        j = k.a(parama, 80);
        i = escaping.length;
        localObject = new int[j + i];
        System.arraycopy(escaping, 0, localObject, 0, i);
        escaping = ((int[])localObject);
        while (i < escaping.length - 1)
        {
          escaping[i] = parama.c();
          parama.a();
          i += 1;
        }
        escaping[i] = parama.c();
        break;
      case 90: 
        j = k.a(parama, 90);
        if (templateToken == null) {}
        for (i = 0;; i = templateToken.length)
        {
          localObject = new Value[j + i];
          if (templateToken != null) {
            System.arraycopy(templateToken, 0, localObject, 0, i);
          }
          templateToken = ((Value[])localObject);
          while (i < templateToken.length - 1)
          {
            templateToken[i] = new Value();
            parama.a(templateToken[i]);
            parama.a();
            i += 1;
          }
        }
        templateToken[i] = new Value();
        parama.a(templateToken[i]);
        break;
      case 96: 
        boolean_ = parama.d();
        break;
      case 106: 
        tagReference = parama.e();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    int j = 0;
    paramb.a(1, type);
    if (!string.equals("")) {
      paramb.a(2, string);
    }
    Object localObject;
    int k;
    int i;
    if (listItem != null)
    {
      localObject = listItem;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(3, localObject[i]);
        i += 1;
      }
    }
    if (mapKey != null)
    {
      localObject = mapKey;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(4, localObject[i]);
        i += 1;
      }
    }
    if (mapValue != null)
    {
      localObject = mapValue;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(5, localObject[i]);
        i += 1;
      }
    }
    if (!macroReference.equals("")) {
      paramb.a(6, macroReference);
    }
    if (!functionId.equals("")) {
      paramb.a(7, functionId);
    }
    if (integer != 0L) {
      paramb.a(8, integer);
    }
    if (containsReferences) {
      paramb.a(9, containsReferences);
    }
    if ((escaping != null) && (escaping.length > 0))
    {
      localObject = escaping;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(10, localObject[i]);
        i += 1;
      }
    }
    if (templateToken != null)
    {
      localObject = templateToken;
      k = localObject.length;
      i = j;
      while (i < k)
      {
        paramb.a(11, localObject[i]);
        i += 1;
      }
    }
    if (boolean_) {
      paramb.a(12, boolean_);
    }
    if (!tagReference.equals("")) {
      paramb.a(13, tagReference);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.midtier.proto.containertag.TypeSystem.Value
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */