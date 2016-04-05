package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Serving$GaExperimentRandom
  extends d
{
  public static final GaExperimentRandom[] EMPTY_ARRAY = new GaExperimentRandom[0];
  public String key = "";
  public long lifetimeInMilliseconds = 0L;
  public long maxRandom = 2147483647L;
  public long minRandom = 0L;
  public boolean retainOriginalValue = false;
  
  public static GaExperimentRandom parseFrom(a parama)
  {
    return new GaExperimentRandom().mergeFrom(parama);
  }
  
  public static GaExperimentRandom parseFrom(byte[] paramArrayOfByte)
  {
    return (GaExperimentRandom)h.mergeFrom(new GaExperimentRandom(), paramArrayOfByte);
  }
  
  public final GaExperimentRandom clear()
  {
    key = "";
    minRandom = 0L;
    maxRandom = 2147483647L;
    retainOriginalValue = false;
    lifetimeInMilliseconds = 0L;
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
      if (!(paramObject instanceof GaExperimentRandom)) {
        return false;
      }
      paramObject = (GaExperimentRandom)paramObject;
      if (key != null) {
        break label98;
      }
      if (key != null) {
        break;
      }
      if ((minRandom != minRandom) || (maxRandom != maxRandom) || (retainOriginalValue != retainOriginalValue) || (lifetimeInMilliseconds != lifetimeInMilliseconds)) {
        break;
      }
      if (unknownFieldData != null) {
        break label115;
      }
    } while (unknownFieldData == null);
    label98:
    label115:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        return false;
      } while (!key.equals(key));
      break;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int j = 0;
    if (!key.equals("")) {
      j = b.b(1, key) + 0;
    }
    int i = j;
    if (minRandom != 0L) {
      i = j + b.b(2, minRandom);
    }
    j = i;
    if (maxRandom != 2147483647L) {
      j = i + b.b(3, maxRandom);
    }
    i = j;
    if (retainOriginalValue)
    {
      boolean bool = retainOriginalValue;
      i = j + (b.d(4) + 1);
    }
    j = i;
    if (lifetimeInMilliseconds != 0L) {
      j = i + b.b(5, lifetimeInMilliseconds);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int k = 0;
    int i;
    int m;
    int n;
    int j;
    label50:
    int i1;
    if (key == null)
    {
      i = 0;
      m = (int)(minRandom ^ minRandom >>> 32);
      n = (int)(maxRandom ^ maxRandom >>> 32);
      if (!retainOriginalValue) {
        break label117;
      }
      j = 1;
      i1 = (int)(lifetimeInMilliseconds ^ lifetimeInMilliseconds >>> 32);
      if (unknownFieldData != null) {
        break label122;
      }
    }
    for (;;)
    {
      return ((j + (((i + 527) * 31 + m) * 31 + n) * 31) * 31 + i1) * 31 + k;
      i = key.hashCode();
      break;
      label117:
      j = 2;
      break label50;
      label122:
      k = unknownFieldData.hashCode();
    }
  }
  
  public final GaExperimentRandom mergeFrom(a parama)
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
      case 16: 
        minRandom = parama.b();
        break;
      case 24: 
        maxRandom = parama.b();
        break;
      case 32: 
        retainOriginalValue = parama.d();
        break;
      case 40: 
        lifetimeInMilliseconds = parama.b();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (!key.equals("")) {
      paramb.a(1, key);
    }
    if (minRandom != 0L) {
      paramb.a(2, minRandom);
    }
    if (maxRandom != 2147483647L) {
      paramb.a(3, maxRandom);
    }
    if (retainOriginalValue) {
      paramb.a(4, retainOriginalValue);
    }
    if (lifetimeInMilliseconds != 0L) {
      paramb.a(5, lifetimeInMilliseconds);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.GaExperimentRandom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */