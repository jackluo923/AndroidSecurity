package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Serving$Container
  extends d
{
  public static final Container[] EMPTY_ARRAY = new Container[0];
  public String containerId = "";
  public Serving.Resource jsResource = null;
  public int state = 1;
  public String version = "";
  
  public static Container parseFrom(a parama)
  {
    return new Container().mergeFrom(parama);
  }
  
  public static Container parseFrom(byte[] paramArrayOfByte)
  {
    return (Container)h.mergeFrom(new Container(), paramArrayOfByte);
  }
  
  public final Container clear()
  {
    jsResource = null;
    containerId = "";
    state = 1;
    version = "";
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label49:
    label74:
    do
    {
      return true;
      if (!(paramObject instanceof Container)) {
        return false;
      }
      paramObject = (Container)paramObject;
      if (jsResource != null) {
        break label90;
      }
      if (jsResource != null) {
        break;
      }
      if (containerId != null) {
        break label107;
      }
      if (containerId != null) {
        break;
      }
      if (state != state) {
        break;
      }
      if (version != null) {
        break label124;
      }
      if (version != null) {
        break;
      }
      if (unknownFieldData != null) {
        break label141;
      }
    } while (unknownFieldData == null);
    label90:
    label107:
    label124:
    label141:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        do
        {
          do
          {
            return false;
          } while (!jsResource.equals(jsResource));
          break;
        } while (!containerId.equals(containerId));
        break label49;
      } while (!version.equals(version));
      break label74;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int i = 0;
    if (jsResource != null) {
      i = b.b(1, jsResource) + 0;
    }
    int j = i + b.b(3, containerId) + b.b(4, state);
    i = j;
    if (!version.equals("")) {
      i = j + b.b(5, version);
    }
    i += k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int i;
    int j;
    label21:
    int n;
    int k;
    if (jsResource == null)
    {
      i = 0;
      if (containerId != null) {
        break label82;
      }
      j = 0;
      n = state;
      if (version != null) {
        break label93;
      }
      k = 0;
      label36:
      if (unknownFieldData != null) {
        break label104;
      }
    }
    for (;;)
    {
      return (k + ((j + (i + 527) * 31) * 31 + n) * 31) * 31 + m;
      i = jsResource.hashCode();
      break;
      label82:
      j = containerId.hashCode();
      break label21;
      label93:
      k = version.hashCode();
      break label36;
      label104:
      m = unknownFieldData.hashCode();
    }
  }
  
  public final Container mergeFrom(a parama)
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
        jsResource = new Serving.Resource();
        parama.a(jsResource);
        break;
      case 26: 
        containerId = parama.e();
        break;
      case 32: 
        i = parama.c();
        if ((i == 1) || (i == 2)) {
          state = i;
        } else {
          state = 1;
        }
        break;
      case 42: 
        version = parama.e();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (jsResource != null) {
      paramb.a(1, jsResource);
    }
    paramb.a(3, containerId);
    paramb.a(4, state);
    if (!version.equals("")) {
      paramb.a(5, version);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.Container
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */