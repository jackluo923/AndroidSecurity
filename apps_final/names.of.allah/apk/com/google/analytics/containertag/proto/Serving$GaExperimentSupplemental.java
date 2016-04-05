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

public final class Serving$GaExperimentSupplemental
  extends d
{
  public static final GaExperimentSupplemental[] EMPTY_ARRAY = new GaExperimentSupplemental[0];
  public Serving.GaExperimentRandom[] experimentRandom = Serving.GaExperimentRandom.EMPTY_ARRAY;
  public TypeSystem.Value[] valueToClear = TypeSystem.Value.EMPTY_ARRAY;
  public TypeSystem.Value[] valueToPush = TypeSystem.Value.EMPTY_ARRAY;
  
  public static GaExperimentSupplemental parseFrom(a parama)
  {
    return new GaExperimentSupplemental().mergeFrom(parama);
  }
  
  public static GaExperimentSupplemental parseFrom(byte[] paramArrayOfByte)
  {
    return (GaExperimentSupplemental)h.mergeFrom(new GaExperimentSupplemental(), paramArrayOfByte);
  }
  
  public final GaExperimentSupplemental clear()
  {
    valueToPush = TypeSystem.Value.EMPTY_ARRAY;
    valueToClear = TypeSystem.Value.EMPTY_ARRAY;
    experimentRandom = Serving.GaExperimentRandom.EMPTY_ARRAY;
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
      if (!(paramObject instanceof GaExperimentSupplemental)) {
        return false;
      }
      paramObject = (GaExperimentSupplemental)paramObject;
      if ((!Arrays.equals(valueToPush, valueToPush)) || (!Arrays.equals(valueToClear, valueToClear)) || (!Arrays.equals(experimentRandom, experimentRandom))) {
        break;
      }
      if (unknownFieldData != null) {
        break label79;
      }
    } while (unknownFieldData == null);
    label79:
    while (!unknownFieldData.equals(unknownFieldData)) {
      return false;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int m = 0;
    Object localObject;
    int n;
    if (valueToPush != null)
    {
      localObject = valueToPush;
      n = localObject.length;
      k = 0;
      for (j = 0;; j = i + j)
      {
        i = j;
        if (k >= n) {
          break;
        }
        i = b.b(1, localObject[k]);
        k += 1;
      }
    }
    int i = 0;
    int j = i;
    if (valueToClear != null)
    {
      localObject = valueToClear;
      n = localObject.length;
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= n) {
          break;
        }
        j = b.b(2, localObject[k]);
        k += 1;
        i = j + i;
      }
    }
    int k = j;
    if (experimentRandom != null)
    {
      localObject = experimentRandom;
      n = localObject.length;
      i = m;
      for (;;)
      {
        k = j;
        if (i >= n) {
          break;
        }
        j += b.b(3, localObject[i]);
        i += 1;
      }
    }
    i = k + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int j;
    label26:
    int k;
    if (valueToPush == null)
    {
      j = 527;
      if (valueToClear != null) {
        break label109;
      }
      j *= 31;
      if (experimentRandom != null) {
        break label162;
      }
      k = j * 31;
      label38:
      if (unknownFieldData != null) {
        break label217;
      }
    }
    label109:
    label162:
    label217:
    for (int i = m;; i = unknownFieldData.hashCode())
    {
      return k * 31 + i;
      i = 17;
      k = 0;
      j = i;
      if (k >= valueToPush.length) {
        break;
      }
      if (valueToPush[k] == null) {}
      for (j = 0;; j = valueToPush[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= valueToClear.length) {
        break label26;
      }
      if (valueToClear[k] == null) {}
      for (j = 0;; j = valueToClear[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = k;
      k = i;
      if (j >= experimentRandom.length) {
        break label38;
      }
      if (experimentRandom[j] == null) {}
      for (k = 0;; k = experimentRandom[j].hashCode())
      {
        i = k + i * 31;
        j += 1;
        break;
      }
    }
  }
  
  public final GaExperimentSupplemental mergeFrom(a parama)
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
      case 10: 
        j = k.a(parama, 10);
        if (valueToPush == null) {}
        for (i = 0;; i = valueToPush.length)
        {
          localObject = new TypeSystem.Value[j + i];
          if (valueToPush != null) {
            System.arraycopy(valueToPush, 0, localObject, 0, i);
          }
          valueToPush = ((TypeSystem.Value[])localObject);
          while (i < valueToPush.length - 1)
          {
            valueToPush[i] = new TypeSystem.Value();
            parama.a(valueToPush[i]);
            parama.a();
            i += 1;
          }
        }
        valueToPush[i] = new TypeSystem.Value();
        parama.a(valueToPush[i]);
        break;
      case 18: 
        j = k.a(parama, 18);
        if (valueToClear == null) {}
        for (i = 0;; i = valueToClear.length)
        {
          localObject = new TypeSystem.Value[j + i];
          if (valueToClear != null) {
            System.arraycopy(valueToClear, 0, localObject, 0, i);
          }
          valueToClear = ((TypeSystem.Value[])localObject);
          while (i < valueToClear.length - 1)
          {
            valueToClear[i] = new TypeSystem.Value();
            parama.a(valueToClear[i]);
            parama.a();
            i += 1;
          }
        }
        valueToClear[i] = new TypeSystem.Value();
        parama.a(valueToClear[i]);
        break;
      case 26: 
        j = k.a(parama, 26);
        if (experimentRandom == null) {}
        for (i = 0;; i = experimentRandom.length)
        {
          localObject = new Serving.GaExperimentRandom[j + i];
          if (experimentRandom != null) {
            System.arraycopy(experimentRandom, 0, localObject, 0, i);
          }
          experimentRandom = ((Serving.GaExperimentRandom[])localObject);
          while (i < experimentRandom.length - 1)
          {
            experimentRandom[i] = new Serving.GaExperimentRandom();
            parama.a(experimentRandom[i]);
            parama.a();
            i += 1;
          }
        }
        experimentRandom[i] = new Serving.GaExperimentRandom();
        parama.a(experimentRandom[i]);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    int j = 0;
    Object localObject;
    int k;
    int i;
    if (valueToPush != null)
    {
      localObject = valueToPush;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(1, localObject[i]);
        i += 1;
      }
    }
    if (valueToClear != null)
    {
      localObject = valueToClear;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(2, localObject[i]);
        i += 1;
      }
    }
    if (experimentRandom != null)
    {
      localObject = experimentRandom;
      k = localObject.length;
      i = j;
      while (i < k)
      {
        paramb.a(3, localObject[i]);
        i += 1;
      }
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.GaExperimentSupplemental
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */