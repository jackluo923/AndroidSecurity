package com.google.analytics.containertag.proto;

import com.google.analytics.midtier.proto.containertag.TypeSystem.Value;
import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Serving$Supplemental
  extends d
{
  public static final Supplemental[] EMPTY_ARRAY = new Supplemental[0];
  public Serving.GaExperimentSupplemental experimentSupplemental = null;
  public String name = "";
  public TypeSystem.Value value = null;
  
  public static Supplemental parseFrom(a parama)
  {
    return new Supplemental().mergeFrom(parama);
  }
  
  public static Supplemental parseFrom(byte[] paramArrayOfByte)
  {
    return (Supplemental)h.mergeFrom(new Supplemental(), paramArrayOfByte);
  }
  
  public final Supplemental clear()
  {
    name = "";
    value = null;
    experimentSupplemental = null;
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label49:
    label63:
    do
    {
      return true;
      if (!(paramObject instanceof Supplemental)) {
        return false;
      }
      paramObject = (Supplemental)paramObject;
      if (name != null) {
        break label79;
      }
      if (name != null) {
        break;
      }
      if (value != null) {
        break label96;
      }
      if (value != null) {
        break;
      }
      if (experimentSupplemental != null) {
        break label113;
      }
      if (experimentSupplemental != null) {
        break;
      }
      if (unknownFieldData != null) {
        break label130;
      }
    } while (unknownFieldData == null);
    label79:
    label96:
    label113:
    label130:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        do
        {
          do
          {
            return false;
          } while (!name.equals(name));
          break;
        } while (!value.equals(value));
        break label49;
      } while (!experimentSupplemental.equals(experimentSupplemental));
      break label63;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int j = 0;
    if (!name.equals("")) {
      j = b.b(1, name) + 0;
    }
    int i = j;
    if (value != null) {
      i = j + b.b(2, value);
    }
    j = i;
    if (experimentSupplemental != null) {
      j = i + b.b(3, experimentSupplemental);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int i;
    int j;
    label21:
    int k;
    if (name == null)
    {
      i = 0;
      if (value != null) {
        break label70;
      }
      j = 0;
      if (experimentSupplemental != null) {
        break label81;
      }
      k = 0;
      label30:
      if (unknownFieldData != null) {
        break label92;
      }
    }
    for (;;)
    {
      return (k + (j + (i + 527) * 31) * 31) * 31 + m;
      i = name.hashCode();
      break;
      label70:
      j = value.hashCode();
      break label21;
      label81:
      k = experimentSupplemental.hashCode();
      break label30;
      label92:
      m = unknownFieldData.hashCode();
    }
  }
  
  public final Supplemental mergeFrom(a parama)
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
        name = parama.e();
        break;
      case 18: 
        value = new TypeSystem.Value();
        parama.a(value);
        break;
      case 26: 
        experimentSupplemental = new Serving.GaExperimentSupplemental();
        parama.a(experimentSupplemental);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (!name.equals("")) {
      paramb.a(1, name);
    }
    if (value != null) {
      paramb.a(2, value);
    }
    if (experimentSupplemental != null) {
      paramb.a(3, experimentSupplemental);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.Supplemental
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */