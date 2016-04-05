package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Serving$CacheOption
  extends d
{
  public static final CacheOption[] EMPTY_ARRAY = new CacheOption[0];
  public int expirationSeconds = 0;
  public int gcacheExpirationSeconds = 0;
  public int level = 1;
  
  public static CacheOption parseFrom(a parama)
  {
    return new CacheOption().mergeFrom(parama);
  }
  
  public static CacheOption parseFrom(byte[] paramArrayOfByte)
  {
    return (CacheOption)h.mergeFrom(new CacheOption(), paramArrayOfByte);
  }
  
  public final CacheOption clear()
  {
    level = 1;
    expirationSeconds = 0;
    gcacheExpirationSeconds = 0;
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
      if (!(paramObject instanceof CacheOption)) {
        return false;
      }
      paramObject = (CacheOption)paramObject;
      if ((level != level) || (expirationSeconds != expirationSeconds) || (gcacheExpirationSeconds != gcacheExpirationSeconds)) {
        break;
      }
      if (unknownFieldData != null) {
        break label70;
      }
    } while (unknownFieldData == null);
    label70:
    while (!unknownFieldData.equals(unknownFieldData)) {
      return false;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int j = 0;
    if (level != 1) {
      j = b.b(1, level) + 0;
    }
    int i = j;
    if (expirationSeconds != 0) {
      i = j + b.b(2, expirationSeconds);
    }
    j = i;
    if (gcacheExpirationSeconds != 0) {
      j = i + b.b(3, gcacheExpirationSeconds);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int j = level;
    int k = expirationSeconds;
    int m = gcacheExpirationSeconds;
    if (unknownFieldData == null) {}
    for (int i = 0;; i = unknownFieldData.hashCode()) {
      return i + (((j + 527) * 31 + k) * 31 + m) * 31;
    }
  }
  
  public final CacheOption mergeFrom(a parama)
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
        i = parama.c();
        if ((i == 1) || (i == 2) || (i == 3)) {
          level = i;
        } else {
          level = 1;
        }
        break;
      case 16: 
        expirationSeconds = parama.c();
        break;
      case 24: 
        gcacheExpirationSeconds = parama.c();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (level != 1) {
      paramb.a(1, level);
    }
    if (expirationSeconds != 0) {
      paramb.a(2, expirationSeconds);
    }
    if (gcacheExpirationSeconds != 0) {
      paramb.a(3, gcacheExpirationSeconds);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.CacheOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */