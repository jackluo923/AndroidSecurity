package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Debug$DebugEvents
  extends d
{
  public static final DebugEvents[] EMPTY_ARRAY = new DebugEvents[0];
  public Debug.EventInfo[] event = Debug.EventInfo.EMPTY_ARRAY;
  
  public static DebugEvents parseFrom(a parama)
  {
    return new DebugEvents().mergeFrom(parama);
  }
  
  public static DebugEvents parseFrom(byte[] paramArrayOfByte)
  {
    return (DebugEvents)h.mergeFrom(new DebugEvents(), paramArrayOfByte);
  }
  
  public final DebugEvents clear()
  {
    event = Debug.EventInfo.EMPTY_ARRAY;
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
      if (!(paramObject instanceof DebugEvents)) {
        return false;
      }
      paramObject = (DebugEvents)paramObject;
      if (!Arrays.equals(event, event)) {
        break;
      }
      if (unknownFieldData != null) {
        break label51;
      }
    } while (unknownFieldData == null);
    label51:
    while (!unknownFieldData.equals(unknownFieldData)) {
      return false;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int k = 0;
    int i = 0;
    if (event != null)
    {
      Debug.EventInfo[] arrayOfEventInfo = event;
      int m = arrayOfEventInfo.length;
      int j = 0;
      for (;;)
      {
        k = i;
        if (j >= m) {
          break;
        }
        k = b.b(1, arrayOfEventInfo[j]);
        j += 1;
        i = k + i;
      }
    }
    i = k + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int k;
    if (event == null)
    {
      k = 527;
      if (unknownFieldData != null) {
        break label85;
      }
    }
    label85:
    for (int i = m;; i = unknownFieldData.hashCode())
    {
      return k * 31 + i;
      i = 17;
      int j = 0;
      k = i;
      if (j >= event.length) {
        break;
      }
      if (event[j] == null) {}
      for (k = 0;; k = event[j].hashCode())
      {
        i = k + i * 31;
        j += 1;
        break;
      }
    }
  }
  
  public final DebugEvents mergeFrom(a parama)
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
        if (event == null) {}
        for (i = 0;; i = event.length)
        {
          Debug.EventInfo[] arrayOfEventInfo = new Debug.EventInfo[j + i];
          if (event != null) {
            System.arraycopy(event, 0, arrayOfEventInfo, 0, i);
          }
          event = arrayOfEventInfo;
          while (i < event.length - 1)
          {
            event[i] = new Debug.EventInfo();
            parama.a(event[i]);
            parama.a();
            i += 1;
          }
        }
        event[i] = new Debug.EventInfo();
        parama.a(event[i]);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (event != null)
    {
      Debug.EventInfo[] arrayOfEventInfo = event;
      int j = arrayOfEventInfo.length;
      int i = 0;
      while (i < j)
      {
        paramb.a(1, arrayOfEventInfo[i]);
        i += 1;
      }
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.DebugEvents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */