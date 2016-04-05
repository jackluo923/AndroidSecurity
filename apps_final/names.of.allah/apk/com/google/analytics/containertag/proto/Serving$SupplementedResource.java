package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Serving$SupplementedResource
  extends d
{
  public static final SupplementedResource[] EMPTY_ARRAY = new SupplementedResource[0];
  public String fingerprint = "";
  public Serving.Resource resource = null;
  public Serving.Supplemental[] supplemental = Serving.Supplemental.EMPTY_ARRAY;
  
  public static SupplementedResource parseFrom(a parama)
  {
    return new SupplementedResource().mergeFrom(parama);
  }
  
  public static SupplementedResource parseFrom(byte[] paramArrayOfByte)
  {
    return (SupplementedResource)h.mergeFrom(new SupplementedResource(), paramArrayOfByte);
  }
  
  public final SupplementedResource clear()
  {
    supplemental = Serving.Supplemental.EMPTY_ARRAY;
    resource = null;
    fingerprint = "";
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
      if (!(paramObject instanceof SupplementedResource)) {
        return false;
      }
      paramObject = (SupplementedResource)paramObject;
      if (!Arrays.equals(supplemental, supplemental)) {
        break;
      }
      if (resource != null) {
        break label79;
      }
      if (resource != null) {
        break;
      }
      if (fingerprint != null) {
        break label96;
      }
      if (fingerprint != null) {
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
        } while (!resource.equals(resource));
        break;
      } while (!fingerprint.equals(fingerprint));
      break label63;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int j = 0;
    int i = 0;
    if (supplemental != null)
    {
      Serving.Supplemental[] arrayOfSupplemental = supplemental;
      int m = arrayOfSupplemental.length;
      int k = 0;
      for (;;)
      {
        j = i;
        if (k >= m) {
          break;
        }
        j = b.b(1, arrayOfSupplemental[k]);
        k += 1;
        i = j + i;
      }
    }
    i = j;
    if (resource != null) {
      i = j + b.b(2, resource);
    }
    j = i;
    if (!fingerprint.equals("")) {
      j = i + b.b(3, fingerprint);
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
    if (supplemental == null)
    {
      j = 527;
      if (resource != null) {
        break label111;
      }
      i = 0;
      if (fingerprint != null) {
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
      if (k >= supplemental.length) {
        break;
      }
      if (supplemental[k] == null) {}
      for (j = 0;; j = supplemental[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      label111:
      i = resource.hashCode();
      break label23;
      label122:
      k = fingerprint.hashCode();
      break label32;
      label133:
      m = unknownFieldData.hashCode();
    }
  }
  
  public final SupplementedResource mergeFrom(a parama)
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
        if (supplemental == null) {}
        for (i = 0;; i = supplemental.length)
        {
          Serving.Supplemental[] arrayOfSupplemental = new Serving.Supplemental[j + i];
          if (supplemental != null) {
            System.arraycopy(supplemental, 0, arrayOfSupplemental, 0, i);
          }
          supplemental = arrayOfSupplemental;
          while (i < supplemental.length - 1)
          {
            supplemental[i] = new Serving.Supplemental();
            parama.a(supplemental[i]);
            parama.a();
            i += 1;
          }
        }
        supplemental[i] = new Serving.Supplemental();
        parama.a(supplemental[i]);
        break;
      case 18: 
        resource = new Serving.Resource();
        parama.a(resource);
        break;
      case 26: 
        fingerprint = parama.e();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (supplemental != null)
    {
      Serving.Supplemental[] arrayOfSupplemental = supplemental;
      int j = arrayOfSupplemental.length;
      int i = 0;
      while (i < j)
      {
        paramb.a(1, arrayOfSupplemental[i]);
        i += 1;
      }
    }
    if (resource != null) {
      paramb.a(2, resource);
    }
    if (!fingerprint.equals("")) {
      paramb.a(3, fingerprint);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.SupplementedResource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */