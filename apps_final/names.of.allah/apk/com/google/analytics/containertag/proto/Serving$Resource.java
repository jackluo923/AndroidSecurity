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

public final class Serving$Resource
  extends d
{
  public static final Resource[] EMPTY_ARRAY = new Resource[0];
  private static final String TEMPLATE_VERSION_SET_DEFAULT = "0";
  public String[] key = k.j;
  public Serving.CacheOption liveJsCacheOption = null;
  public Serving.FunctionCall[] macro = Serving.FunctionCall.EMPTY_ARRAY;
  public String malwareScanAuthCode = "";
  public boolean oBSOLETEEnableAutoEventTracking = false;
  public Serving.FunctionCall[] predicate = Serving.FunctionCall.EMPTY_ARRAY;
  public String previewAuthCode = "";
  public Serving.Property[] property = Serving.Property.EMPTY_ARRAY;
  public float reportingSampleRate = 0.0F;
  public int resourceFormatVersion = 0;
  public Serving.Rule[] rule = Serving.Rule.EMPTY_ARRAY;
  public String[] supplemental = k.j;
  public Serving.FunctionCall[] tag = Serving.FunctionCall.EMPTY_ARRAY;
  public String templateVersionSet = "0";
  public String[] usageContext = k.j;
  public TypeSystem.Value[] value = TypeSystem.Value.EMPTY_ARRAY;
  public String version = "";
  
  public static Resource parseFrom(a parama)
  {
    return new Resource().mergeFrom(parama);
  }
  
  public static Resource parseFrom(byte[] paramArrayOfByte)
  {
    return (Resource)h.mergeFrom(new Resource(), paramArrayOfByte);
  }
  
  public final Resource clear()
  {
    supplemental = k.j;
    key = k.j;
    value = TypeSystem.Value.EMPTY_ARRAY;
    property = Serving.Property.EMPTY_ARRAY;
    macro = Serving.FunctionCall.EMPTY_ARRAY;
    tag = Serving.FunctionCall.EMPTY_ARRAY;
    predicate = Serving.FunctionCall.EMPTY_ARRAY;
    rule = Serving.Rule.EMPTY_ARRAY;
    previewAuthCode = "";
    malwareScanAuthCode = "";
    templateVersionSet = "0";
    version = "";
    liveJsCacheOption = null;
    reportingSampleRate = 0.0F;
    oBSOLETEEnableAutoEventTracking = false;
    usageContext = k.j;
    resourceFormatVersion = 0;
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label161:
    label175:
    label189:
    label203:
    do
    {
      return true;
      if (!(paramObject instanceof Resource)) {
        return false;
      }
      paramObject = (Resource)paramObject;
      if ((!Arrays.equals(supplemental, supplemental)) || (!Arrays.equals(key, key)) || (!Arrays.equals(value, value)) || (!Arrays.equals(property, property)) || (!Arrays.equals(macro, macro)) || (!Arrays.equals(tag, tag)) || (!Arrays.equals(predicate, predicate)) || (!Arrays.equals(rule, rule))) {
        break;
      }
      if (previewAuthCode != null) {
        break label267;
      }
      if (previewAuthCode != null) {
        break;
      }
      if (malwareScanAuthCode != null) {
        break label284;
      }
      if (malwareScanAuthCode != null) {
        break;
      }
      if (templateVersionSet != null) {
        break label301;
      }
      if (templateVersionSet != null) {
        break;
      }
      if (version != null) {
        break label318;
      }
      if (version != null) {
        break;
      }
      if (liveJsCacheOption != null) {
        break label335;
      }
      if (liveJsCacheOption != null) {
        break;
      }
      if ((reportingSampleRate != reportingSampleRate) || (oBSOLETEEnableAutoEventTracking != oBSOLETEEnableAutoEventTracking) || (!Arrays.equals(usageContext, usageContext)) || (resourceFormatVersion != resourceFormatVersion)) {
        break;
      }
      if (unknownFieldData != null) {
        break label352;
      }
    } while (unknownFieldData == null);
    label267:
    label284:
    label301:
    label318:
    label335:
    label352:
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
              } while (!previewAuthCode.equals(previewAuthCode));
              break;
            } while (!malwareScanAuthCode.equals(malwareScanAuthCode));
            break label161;
          } while (!templateVersionSet.equals(templateVersionSet));
          break label175;
        } while (!version.equals(version));
        break label189;
      } while (!liveJsCacheOption.equals(liveJsCacheOption));
      break label203;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int m = 0;
    Object localObject;
    int k;
    int i;
    if ((key != null) && (key.length > 0))
    {
      localObject = key;
      k = localObject.length;
      i = 0;
      j = 0;
      while (i < k)
      {
        j += b.b(localObject[i]);
        i += 1;
      }
    }
    for (int j = j + 0 + key.length * 1;; j = 0)
    {
      i = j;
      int n;
      if (value != null)
      {
        localObject = value;
        n = localObject.length;
        k = 0;
        for (;;)
        {
          i = j;
          if (k >= n) {
            break;
          }
          i = b.b(2, localObject[k]);
          k += 1;
          j = i + j;
        }
      }
      j = i;
      if (property != null)
      {
        localObject = property;
        n = localObject.length;
        k = 0;
        for (;;)
        {
          j = i;
          if (k >= n) {
            break;
          }
          j = b.b(3, localObject[k]);
          k += 1;
          i = j + i;
        }
      }
      i = j;
      if (macro != null)
      {
        localObject = macro;
        n = localObject.length;
        k = 0;
        for (;;)
        {
          i = j;
          if (k >= n) {
            break;
          }
          i = b.b(4, localObject[k]);
          k += 1;
          j = i + j;
        }
      }
      j = i;
      if (tag != null)
      {
        localObject = tag;
        n = localObject.length;
        k = 0;
        for (;;)
        {
          j = i;
          if (k >= n) {
            break;
          }
          j = b.b(5, localObject[k]);
          k += 1;
          i = j + i;
        }
      }
      i = j;
      if (predicate != null)
      {
        localObject = predicate;
        n = localObject.length;
        k = 0;
        for (;;)
        {
          i = j;
          if (k >= n) {
            break;
          }
          i = b.b(6, localObject[k]);
          k += 1;
          j = i + j;
        }
      }
      j = i;
      if (rule != null)
      {
        localObject = rule;
        n = localObject.length;
        k = 0;
        for (;;)
        {
          j = i;
          if (k >= n) {
            break;
          }
          j = b.b(7, localObject[k]);
          k += 1;
          i = j + i;
        }
      }
      i = j;
      if (!previewAuthCode.equals("")) {
        i = j + b.b(9, previewAuthCode);
      }
      j = i;
      if (!malwareScanAuthCode.equals("")) {
        j = i + b.b(10, malwareScanAuthCode);
      }
      i = j;
      if (!templateVersionSet.equals("0")) {
        i = j + b.b(12, templateVersionSet);
      }
      j = i;
      if (!version.equals("")) {
        j = i + b.b(13, version);
      }
      k = j;
      if (liveJsCacheOption != null) {
        k = j + b.b(14, liveJsCacheOption);
      }
      i = k;
      if (reportingSampleRate != 0.0F)
      {
        float f = reportingSampleRate;
        i = k + (b.d(15) + 4);
      }
      j = i;
      if (usageContext != null)
      {
        j = i;
        if (usageContext.length > 0)
        {
          localObject = usageContext;
          n = localObject.length;
          j = 0;
          k = 0;
          while (j < n)
          {
            k += b.b(localObject[j]);
            j += 1;
          }
          j = i + k + usageContext.length * 2;
        }
      }
      k = j;
      if (resourceFormatVersion != 0) {
        k = j + b.b(17, resourceFormatVersion);
      }
      i = k;
      if (oBSOLETEEnableAutoEventTracking)
      {
        boolean bool = oBSOLETEEnableAutoEventTracking;
        i = k + (b.d(18) + 1);
      }
      j = i;
      if (supplemental != null)
      {
        j = i;
        if (supplemental.length > 0)
        {
          localObject = supplemental;
          n = localObject.length;
          k = 0;
          j = m;
          while (j < n)
          {
            k += b.b(localObject[j]);
            j += 1;
          }
          j = i + k + supplemental.length * 2;
        }
      }
      i = j + k.a(unknownFieldData);
      cachedSize = i;
      return i;
    }
  }
  
  public final int hashCode()
  {
    int i3 = 0;
    int j;
    label26:
    label38:
    label50:
    label62:
    label74:
    label86:
    label98:
    label107:
    int k;
    label116:
    int m;
    label126:
    int n;
    label136:
    int i1;
    label146:
    int i2;
    if (supplemental == null)
    {
      j = 527;
      if (key != null) {
        break label300;
      }
      j *= 31;
      if (value != null) {
        break label353;
      }
      j *= 31;
      if (property != null) {
        break label406;
      }
      j *= 31;
      if (macro != null) {
        break label459;
      }
      j *= 31;
      if (tag != null) {
        break label512;
      }
      j *= 31;
      if (predicate != null) {
        break label565;
      }
      j *= 31;
      if (rule != null) {
        break label618;
      }
      j *= 31;
      if (previewAuthCode != null) {
        break label671;
      }
      i = 0;
      if (malwareScanAuthCode != null) {
        break label682;
      }
      k = 0;
      if (templateVersionSet != null) {
        break label693;
      }
      m = 0;
      if (version != null) {
        break label705;
      }
      n = 0;
      if (liveJsCacheOption != null) {
        break label717;
      }
      i1 = 0;
      int i4 = Float.floatToIntBits(reportingSampleRate);
      if (!oBSOLETEEnableAutoEventTracking) {
        break label729;
      }
      i2 = 1;
      label165:
      i = i2 + ((i1 + (n + (m + (k + (i + j * 31) * 31) * 31) * 31) * 31) * 31 + i4) * 31;
      if (usageContext != null) {
        break label735;
      }
      k = i * 31;
      label219:
      j = resourceFormatVersion;
      if (unknownFieldData != null) {
        break label786;
      }
    }
    label300:
    label353:
    label406:
    label459:
    label512:
    label565:
    label618:
    label671:
    label682:
    label693:
    label705:
    label717:
    label729:
    label735:
    label786:
    for (int i = i3;; i = unknownFieldData.hashCode())
    {
      return (k * 31 + j) * 31 + i;
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
      k = 0;
      i = j;
      j = i;
      if (k >= key.length) {
        break label26;
      }
      if (key[k] == null) {}
      for (j = 0;; j = key[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= value.length) {
        break label38;
      }
      if (value[k] == null) {}
      for (j = 0;; j = value[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= property.length) {
        break label50;
      }
      if (property[k] == null) {}
      for (j = 0;; j = property[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= macro.length) {
        break label62;
      }
      if (macro[k] == null) {}
      for (j = 0;; j = macro[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= tag.length) {
        break label74;
      }
      if (tag[k] == null) {}
      for (j = 0;; j = tag[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= predicate.length) {
        break label86;
      }
      if (predicate[k] == null) {}
      for (j = 0;; j = predicate[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= rule.length) {
        break label98;
      }
      if (rule[k] == null) {}
      for (j = 0;; j = rule[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      i = previewAuthCode.hashCode();
      break label107;
      k = malwareScanAuthCode.hashCode();
      break label116;
      m = templateVersionSet.hashCode();
      break label126;
      n = version.hashCode();
      break label136;
      i1 = liveJsCacheOption.hashCode();
      break label146;
      i2 = 2;
      break label165;
      j = 0;
      k = i;
      if (j >= usageContext.length) {
        break label219;
      }
      if (usageContext[j] == null) {}
      for (k = 0;; k = usageContext[j].hashCode())
      {
        i = k + i * 31;
        j += 1;
        break;
      }
    }
  }
  
  public final Resource mergeFrom(a parama)
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
        i = key.length;
        localObject = new String[j + i];
        System.arraycopy(key, 0, localObject, 0, i);
        key = ((String[])localObject);
        while (i < key.length - 1)
        {
          key[i] = parama.e();
          parama.a();
          i += 1;
        }
        key[i] = parama.e();
        break;
      case 18: 
        j = k.a(parama, 18);
        if (value == null) {}
        for (i = 0;; i = value.length)
        {
          localObject = new TypeSystem.Value[j + i];
          if (value != null) {
            System.arraycopy(value, 0, localObject, 0, i);
          }
          value = ((TypeSystem.Value[])localObject);
          while (i < value.length - 1)
          {
            value[i] = new TypeSystem.Value();
            parama.a(value[i]);
            parama.a();
            i += 1;
          }
        }
        value[i] = new TypeSystem.Value();
        parama.a(value[i]);
        break;
      case 26: 
        j = k.a(parama, 26);
        if (property == null) {}
        for (i = 0;; i = property.length)
        {
          localObject = new Serving.Property[j + i];
          if (property != null) {
            System.arraycopy(property, 0, localObject, 0, i);
          }
          property = ((Serving.Property[])localObject);
          while (i < property.length - 1)
          {
            property[i] = new Serving.Property();
            parama.a(property[i]);
            parama.a();
            i += 1;
          }
        }
        property[i] = new Serving.Property();
        parama.a(property[i]);
        break;
      case 34: 
        j = k.a(parama, 34);
        if (macro == null) {}
        for (i = 0;; i = macro.length)
        {
          localObject = new Serving.FunctionCall[j + i];
          if (macro != null) {
            System.arraycopy(macro, 0, localObject, 0, i);
          }
          macro = ((Serving.FunctionCall[])localObject);
          while (i < macro.length - 1)
          {
            macro[i] = new Serving.FunctionCall();
            parama.a(macro[i]);
            parama.a();
            i += 1;
          }
        }
        macro[i] = new Serving.FunctionCall();
        parama.a(macro[i]);
        break;
      case 42: 
        j = k.a(parama, 42);
        if (tag == null) {}
        for (i = 0;; i = tag.length)
        {
          localObject = new Serving.FunctionCall[j + i];
          if (tag != null) {
            System.arraycopy(tag, 0, localObject, 0, i);
          }
          tag = ((Serving.FunctionCall[])localObject);
          while (i < tag.length - 1)
          {
            tag[i] = new Serving.FunctionCall();
            parama.a(tag[i]);
            parama.a();
            i += 1;
          }
        }
        tag[i] = new Serving.FunctionCall();
        parama.a(tag[i]);
        break;
      case 50: 
        j = k.a(parama, 50);
        if (predicate == null) {}
        for (i = 0;; i = predicate.length)
        {
          localObject = new Serving.FunctionCall[j + i];
          if (predicate != null) {
            System.arraycopy(predicate, 0, localObject, 0, i);
          }
          predicate = ((Serving.FunctionCall[])localObject);
          while (i < predicate.length - 1)
          {
            predicate[i] = new Serving.FunctionCall();
            parama.a(predicate[i]);
            parama.a();
            i += 1;
          }
        }
        predicate[i] = new Serving.FunctionCall();
        parama.a(predicate[i]);
        break;
      case 58: 
        j = k.a(parama, 58);
        if (rule == null) {}
        for (i = 0;; i = rule.length)
        {
          localObject = new Serving.Rule[j + i];
          if (rule != null) {
            System.arraycopy(rule, 0, localObject, 0, i);
          }
          rule = ((Serving.Rule[])localObject);
          while (i < rule.length - 1)
          {
            rule[i] = new Serving.Rule();
            parama.a(rule[i]);
            parama.a();
            i += 1;
          }
        }
        rule[i] = new Serving.Rule();
        parama.a(rule[i]);
        break;
      case 74: 
        previewAuthCode = parama.e();
        break;
      case 82: 
        malwareScanAuthCode = parama.e();
        break;
      case 98: 
        templateVersionSet = parama.e();
        break;
      case 106: 
        version = parama.e();
        break;
      case 114: 
        liveJsCacheOption = new Serving.CacheOption();
        parama.a(liveJsCacheOption);
        break;
      case 125: 
        reportingSampleRate = Float.intBitsToFloat(parama.g());
        break;
      case 130: 
        j = k.a(parama, 130);
        i = usageContext.length;
        localObject = new String[j + i];
        System.arraycopy(usageContext, 0, localObject, 0, i);
        usageContext = ((String[])localObject);
        while (i < usageContext.length - 1)
        {
          usageContext[i] = parama.e();
          parama.a();
          i += 1;
        }
        usageContext[i] = parama.e();
        break;
      case 136: 
        resourceFormatVersion = parama.c();
        break;
      case 144: 
        oBSOLETEEnableAutoEventTracking = parama.d();
        break;
      case 154: 
        j = k.a(parama, 154);
        i = supplemental.length;
        localObject = new String[j + i];
        System.arraycopy(supplemental, 0, localObject, 0, i);
        supplemental = ((String[])localObject);
        while (i < supplemental.length - 1)
        {
          supplemental[i] = parama.e();
          parama.a();
          i += 1;
        }
        supplemental[i] = parama.e();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    int j = 0;
    Object localObject;
    int k;
    int i;
    if (key != null)
    {
      localObject = key;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(1, localObject[i]);
        i += 1;
      }
    }
    if (value != null)
    {
      localObject = value;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(2, localObject[i]);
        i += 1;
      }
    }
    if (property != null)
    {
      localObject = property;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(3, localObject[i]);
        i += 1;
      }
    }
    if (macro != null)
    {
      localObject = macro;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(4, localObject[i]);
        i += 1;
      }
    }
    if (tag != null)
    {
      localObject = tag;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(5, localObject[i]);
        i += 1;
      }
    }
    if (predicate != null)
    {
      localObject = predicate;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(6, localObject[i]);
        i += 1;
      }
    }
    if (rule != null)
    {
      localObject = rule;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(7, localObject[i]);
        i += 1;
      }
    }
    if (!previewAuthCode.equals("")) {
      paramb.a(9, previewAuthCode);
    }
    if (!malwareScanAuthCode.equals("")) {
      paramb.a(10, malwareScanAuthCode);
    }
    if (!templateVersionSet.equals("0")) {
      paramb.a(12, templateVersionSet);
    }
    if (!version.equals("")) {
      paramb.a(13, version);
    }
    if (liveJsCacheOption != null) {
      paramb.a(14, liveJsCacheOption);
    }
    if (reportingSampleRate != 0.0F)
    {
      float f = reportingSampleRate;
      paramb.c(15, 5);
      paramb.a(f);
    }
    if (usageContext != null)
    {
      localObject = usageContext;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(16, localObject[i]);
        i += 1;
      }
    }
    if (resourceFormatVersion != 0) {
      paramb.a(17, resourceFormatVersion);
    }
    if (oBSOLETEEnableAutoEventTracking) {
      paramb.a(18, oBSOLETEEnableAutoEventTracking);
    }
    if (supplemental != null)
    {
      localObject = supplemental;
      k = localObject.length;
      i = j;
      while (i < k)
      {
        paramb.a(19, localObject[i]);
        i += 1;
      }
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.Resource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */