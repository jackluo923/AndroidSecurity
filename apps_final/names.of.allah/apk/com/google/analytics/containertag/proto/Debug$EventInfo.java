package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Debug$EventInfo
  extends d
{
  public static final EventInfo[] EMPTY_ARRAY = new EventInfo[0];
  public String containerId = "";
  public String containerVersion = "";
  public Debug.DataLayerEventEvaluationInfo dataLayerEventResult = null;
  public int eventType = 1;
  public String key = "";
  public Debug.MacroEvaluationInfo macroResult = null;
  
  public static EventInfo parseFrom(a parama)
  {
    return new EventInfo().mergeFrom(parama);
  }
  
  public static EventInfo parseFrom(byte[] paramArrayOfByte)
  {
    return (EventInfo)h.mergeFrom(new EventInfo(), paramArrayOfByte);
  }
  
  public final EventInfo clear()
  {
    eventType = 1;
    containerVersion = "";
    containerId = "";
    key = "";
    macroResult = null;
    dataLayerEventResult = null;
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label60:
    label74:
    label88:
    label102:
    do
    {
      return true;
      if (!(paramObject instanceof EventInfo)) {
        return false;
      }
      paramObject = (EventInfo)paramObject;
      if (eventType != eventType) {
        break;
      }
      if (containerVersion != null) {
        break label118;
      }
      if (containerVersion != null) {
        break;
      }
      if (containerId != null) {
        break label135;
      }
      if (containerId != null) {
        break;
      }
      if (key != null) {
        break label152;
      }
      if (key != null) {
        break;
      }
      if (macroResult != null) {
        break label169;
      }
      if (macroResult != null) {
        break;
      }
      if (dataLayerEventResult != null) {
        break label186;
      }
      if (dataLayerEventResult != null) {
        break;
      }
      if (unknownFieldData != null) {
        break label203;
      }
    } while (unknownFieldData == null);
    label118:
    label135:
    label152:
    label169:
    label186:
    label203:
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
              do
              {
                return false;
              } while (!containerVersion.equals(containerVersion));
              break;
            } while (!containerId.equals(containerId));
            break label60;
          } while (!key.equals(key));
          break label74;
        } while (!macroResult.equals(macroResult));
        break label88;
      } while (!dataLayerEventResult.equals(dataLayerEventResult));
      break label102;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int j = 0;
    if (eventType != 1) {
      j = b.b(1, eventType) + 0;
    }
    int i = j;
    if (!containerVersion.equals("")) {
      i = j + b.b(2, containerVersion);
    }
    j = i;
    if (!containerId.equals("")) {
      j = i + b.b(3, containerId);
    }
    i = j;
    if (!key.equals("")) {
      i = j + b.b(4, key);
    }
    j = i;
    if (macroResult != null) {
      j = i + b.b(6, macroResult);
    }
    i = j;
    if (dataLayerEventResult != null) {
      i = j + b.b(7, dataLayerEventResult);
    }
    i += k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int i1 = 0;
    int i2 = eventType;
    int i;
    int j;
    label27:
    int k;
    label36:
    int m;
    label46:
    int n;
    if (containerVersion == null)
    {
      i = 0;
      if (containerId != null) {
        break label114;
      }
      j = 0;
      if (key != null) {
        break label125;
      }
      k = 0;
      if (macroResult != null) {
        break label136;
      }
      m = 0;
      if (dataLayerEventResult != null) {
        break label148;
      }
      n = 0;
      label56:
      if (unknownFieldData != null) {
        break label160;
      }
    }
    for (;;)
    {
      return (n + (m + (k + (j + (i + (i2 + 527) * 31) * 31) * 31) * 31) * 31) * 31 + i1;
      i = containerVersion.hashCode();
      break;
      label114:
      j = containerId.hashCode();
      break label27;
      label125:
      k = key.hashCode();
      break label36;
      label136:
      m = macroResult.hashCode();
      break label46;
      label148:
      n = dataLayerEventResult.hashCode();
      break label56;
      label160:
      i1 = unknownFieldData.hashCode();
    }
  }
  
  public final EventInfo mergeFrom(a parama)
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
        if ((i == 1) || (i == 2)) {
          eventType = i;
        } else {
          eventType = 1;
        }
        break;
      case 18: 
        containerVersion = parama.e();
        break;
      case 26: 
        containerId = parama.e();
        break;
      case 34: 
        key = parama.e();
        break;
      case 50: 
        macroResult = new Debug.MacroEvaluationInfo();
        parama.a(macroResult);
        break;
      case 58: 
        dataLayerEventResult = new Debug.DataLayerEventEvaluationInfo();
        parama.a(dataLayerEventResult);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (eventType != 1) {
      paramb.a(1, eventType);
    }
    if (!containerVersion.equals("")) {
      paramb.a(2, containerVersion);
    }
    if (!containerId.equals("")) {
      paramb.a(3, containerId);
    }
    if (!key.equals("")) {
      paramb.a(4, key);
    }
    if (macroResult != null) {
      paramb.a(6, macroResult);
    }
    if (dataLayerEventResult != null) {
      paramb.a(7, dataLayerEventResult);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.EventInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */