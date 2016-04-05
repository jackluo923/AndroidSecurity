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

public final class Debug$ResolvedRule
  extends d
{
  public static final ResolvedRule[] EMPTY_ARRAY = new ResolvedRule[0];
  public Debug.ResolvedFunctionCall[] addMacros = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public Debug.ResolvedFunctionCall[] addTags = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public Debug.ResolvedFunctionCall[] negativePredicates = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public Debug.ResolvedFunctionCall[] positivePredicates = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public Debug.ResolvedFunctionCall[] removeMacros = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public Debug.ResolvedFunctionCall[] removeTags = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public TypeSystem.Value result = null;
  
  public static ResolvedRule parseFrom(a parama)
  {
    return new ResolvedRule().mergeFrom(parama);
  }
  
  public static ResolvedRule parseFrom(byte[] paramArrayOfByte)
  {
    return (ResolvedRule)h.mergeFrom(new ResolvedRule(), paramArrayOfByte);
  }
  
  public final ResolvedRule clear()
  {
    positivePredicates = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
    negativePredicates = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
    addTags = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
    removeTags = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
    addMacros = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
    removeMacros = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
    result = null;
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
      if (!(paramObject instanceof ResolvedRule)) {
        return false;
      }
      paramObject = (ResolvedRule)paramObject;
      if ((!Arrays.equals(positivePredicates, positivePredicates)) || (!Arrays.equals(negativePredicates, negativePredicates)) || (!Arrays.equals(addTags, addTags)) || (!Arrays.equals(removeTags, removeTags)) || (!Arrays.equals(addMacros, addMacros)) || (!Arrays.equals(removeMacros, removeMacros))) {
        break;
      }
      if (result != null) {
        break label135;
      }
      if (result != null) {
        break;
      }
      if (unknownFieldData != null) {
        break label152;
      }
    } while (unknownFieldData == null);
    label135:
    label152:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        return false;
      } while (!result.equals(result));
      break;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int m = 0;
    Debug.ResolvedFunctionCall[] arrayOfResolvedFunctionCall;
    int n;
    int k;
    if (positivePredicates != null)
    {
      arrayOfResolvedFunctionCall = positivePredicates;
      n = arrayOfResolvedFunctionCall.length;
      k = 0;
      for (i = 0;; i = j + i)
      {
        j = i;
        if (k >= n) {
          break;
        }
        j = b.b(1, arrayOfResolvedFunctionCall[k]);
        k += 1;
      }
    }
    int j = 0;
    int i = j;
    if (negativePredicates != null)
    {
      arrayOfResolvedFunctionCall = negativePredicates;
      n = arrayOfResolvedFunctionCall.length;
      k = 0;
      for (;;)
      {
        i = j;
        if (k >= n) {
          break;
        }
        i = b.b(2, arrayOfResolvedFunctionCall[k]);
        k += 1;
        j = i + j;
      }
    }
    j = i;
    if (addTags != null)
    {
      arrayOfResolvedFunctionCall = addTags;
      n = arrayOfResolvedFunctionCall.length;
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= n) {
          break;
        }
        j = b.b(3, arrayOfResolvedFunctionCall[k]);
        k += 1;
        i = j + i;
      }
    }
    i = j;
    if (removeTags != null)
    {
      arrayOfResolvedFunctionCall = removeTags;
      n = arrayOfResolvedFunctionCall.length;
      k = 0;
      for (;;)
      {
        i = j;
        if (k >= n) {
          break;
        }
        i = b.b(4, arrayOfResolvedFunctionCall[k]);
        k += 1;
        j = i + j;
      }
    }
    j = i;
    if (addMacros != null)
    {
      arrayOfResolvedFunctionCall = addMacros;
      n = arrayOfResolvedFunctionCall.length;
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= n) {
          break;
        }
        j = b.b(5, arrayOfResolvedFunctionCall[k]);
        k += 1;
        i = j + i;
      }
    }
    i = j;
    if (removeMacros != null)
    {
      arrayOfResolvedFunctionCall = removeMacros;
      n = arrayOfResolvedFunctionCall.length;
      k = m;
      for (;;)
      {
        i = j;
        if (k >= n) {
          break;
        }
        j += b.b(6, arrayOfResolvedFunctionCall[k]);
        k += 1;
      }
    }
    j = i;
    if (result != null) {
      j = i + b.b(7, result);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int j;
    label26:
    label38:
    label50:
    label62:
    label74:
    int i;
    if (positivePredicates == null)
    {
      j = 527;
      if (negativePredicates != null) {
        break label159;
      }
      j *= 31;
      if (addTags != null) {
        break label212;
      }
      j *= 31;
      if (removeTags != null) {
        break label265;
      }
      j *= 31;
      if (addMacros != null) {
        break label318;
      }
      j *= 31;
      if (removeMacros != null) {
        break label371;
      }
      j *= 31;
      if (result != null) {
        break label424;
      }
      i = 0;
      label83:
      if (unknownFieldData != null) {
        break label435;
      }
    }
    label159:
    label212:
    label265:
    label318:
    label371:
    label424:
    label435:
    for (int k = m;; k = unknownFieldData.hashCode())
    {
      return (i + j * 31) * 31 + k;
      i = 17;
      k = 0;
      j = i;
      if (k >= positivePredicates.length) {
        break;
      }
      if (positivePredicates[k] == null) {}
      for (j = 0;; j = positivePredicates[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= negativePredicates.length) {
        break label26;
      }
      if (negativePredicates[k] == null) {}
      for (j = 0;; j = negativePredicates[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= addTags.length) {
        break label38;
      }
      if (addTags[k] == null) {}
      for (j = 0;; j = addTags[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= removeTags.length) {
        break label50;
      }
      if (removeTags[k] == null) {}
      for (j = 0;; j = removeTags[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= addMacros.length) {
        break label62;
      }
      if (addMacros[k] == null) {}
      for (j = 0;; j = addMacros[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = i;
      if (k >= removeMacros.length) {
        break label74;
      }
      if (removeMacros[k] == null) {}
      for (j = 0;; j = removeMacros[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      i = result.hashCode();
      break label83;
    }
  }
  
  public final ResolvedRule mergeFrom(a parama)
  {
    for (;;)
    {
      int i = parama.a();
      int j;
      Debug.ResolvedFunctionCall[] arrayOfResolvedFunctionCall;
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
        if (positivePredicates == null) {}
        for (i = 0;; i = positivePredicates.length)
        {
          arrayOfResolvedFunctionCall = new Debug.ResolvedFunctionCall[j + i];
          if (positivePredicates != null) {
            System.arraycopy(positivePredicates, 0, arrayOfResolvedFunctionCall, 0, i);
          }
          positivePredicates = arrayOfResolvedFunctionCall;
          while (i < positivePredicates.length - 1)
          {
            positivePredicates[i] = new Debug.ResolvedFunctionCall();
            parama.a(positivePredicates[i]);
            parama.a();
            i += 1;
          }
        }
        positivePredicates[i] = new Debug.ResolvedFunctionCall();
        parama.a(positivePredicates[i]);
        break;
      case 18: 
        j = k.a(parama, 18);
        if (negativePredicates == null) {}
        for (i = 0;; i = negativePredicates.length)
        {
          arrayOfResolvedFunctionCall = new Debug.ResolvedFunctionCall[j + i];
          if (negativePredicates != null) {
            System.arraycopy(negativePredicates, 0, arrayOfResolvedFunctionCall, 0, i);
          }
          negativePredicates = arrayOfResolvedFunctionCall;
          while (i < negativePredicates.length - 1)
          {
            negativePredicates[i] = new Debug.ResolvedFunctionCall();
            parama.a(negativePredicates[i]);
            parama.a();
            i += 1;
          }
        }
        negativePredicates[i] = new Debug.ResolvedFunctionCall();
        parama.a(negativePredicates[i]);
        break;
      case 26: 
        j = k.a(parama, 26);
        if (addTags == null) {}
        for (i = 0;; i = addTags.length)
        {
          arrayOfResolvedFunctionCall = new Debug.ResolvedFunctionCall[j + i];
          if (addTags != null) {
            System.arraycopy(addTags, 0, arrayOfResolvedFunctionCall, 0, i);
          }
          addTags = arrayOfResolvedFunctionCall;
          while (i < addTags.length - 1)
          {
            addTags[i] = new Debug.ResolvedFunctionCall();
            parama.a(addTags[i]);
            parama.a();
            i += 1;
          }
        }
        addTags[i] = new Debug.ResolvedFunctionCall();
        parama.a(addTags[i]);
        break;
      case 34: 
        j = k.a(parama, 34);
        if (removeTags == null) {}
        for (i = 0;; i = removeTags.length)
        {
          arrayOfResolvedFunctionCall = new Debug.ResolvedFunctionCall[j + i];
          if (removeTags != null) {
            System.arraycopy(removeTags, 0, arrayOfResolvedFunctionCall, 0, i);
          }
          removeTags = arrayOfResolvedFunctionCall;
          while (i < removeTags.length - 1)
          {
            removeTags[i] = new Debug.ResolvedFunctionCall();
            parama.a(removeTags[i]);
            parama.a();
            i += 1;
          }
        }
        removeTags[i] = new Debug.ResolvedFunctionCall();
        parama.a(removeTags[i]);
        break;
      case 42: 
        j = k.a(parama, 42);
        if (addMacros == null) {}
        for (i = 0;; i = addMacros.length)
        {
          arrayOfResolvedFunctionCall = new Debug.ResolvedFunctionCall[j + i];
          if (addMacros != null) {
            System.arraycopy(addMacros, 0, arrayOfResolvedFunctionCall, 0, i);
          }
          addMacros = arrayOfResolvedFunctionCall;
          while (i < addMacros.length - 1)
          {
            addMacros[i] = new Debug.ResolvedFunctionCall();
            parama.a(addMacros[i]);
            parama.a();
            i += 1;
          }
        }
        addMacros[i] = new Debug.ResolvedFunctionCall();
        parama.a(addMacros[i]);
        break;
      case 50: 
        j = k.a(parama, 50);
        if (removeMacros == null) {}
        for (i = 0;; i = removeMacros.length)
        {
          arrayOfResolvedFunctionCall = new Debug.ResolvedFunctionCall[j + i];
          if (removeMacros != null) {
            System.arraycopy(removeMacros, 0, arrayOfResolvedFunctionCall, 0, i);
          }
          removeMacros = arrayOfResolvedFunctionCall;
          while (i < removeMacros.length - 1)
          {
            removeMacros[i] = new Debug.ResolvedFunctionCall();
            parama.a(removeMacros[i]);
            parama.a();
            i += 1;
          }
        }
        removeMacros[i] = new Debug.ResolvedFunctionCall();
        parama.a(removeMacros[i]);
        break;
      case 58: 
        result = new TypeSystem.Value();
        parama.a(result);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    int j = 0;
    Debug.ResolvedFunctionCall[] arrayOfResolvedFunctionCall;
    int k;
    int i;
    if (positivePredicates != null)
    {
      arrayOfResolvedFunctionCall = positivePredicates;
      k = arrayOfResolvedFunctionCall.length;
      i = 0;
      while (i < k)
      {
        paramb.a(1, arrayOfResolvedFunctionCall[i]);
        i += 1;
      }
    }
    if (negativePredicates != null)
    {
      arrayOfResolvedFunctionCall = negativePredicates;
      k = arrayOfResolvedFunctionCall.length;
      i = 0;
      while (i < k)
      {
        paramb.a(2, arrayOfResolvedFunctionCall[i]);
        i += 1;
      }
    }
    if (addTags != null)
    {
      arrayOfResolvedFunctionCall = addTags;
      k = arrayOfResolvedFunctionCall.length;
      i = 0;
      while (i < k)
      {
        paramb.a(3, arrayOfResolvedFunctionCall[i]);
        i += 1;
      }
    }
    if (removeTags != null)
    {
      arrayOfResolvedFunctionCall = removeTags;
      k = arrayOfResolvedFunctionCall.length;
      i = 0;
      while (i < k)
      {
        paramb.a(4, arrayOfResolvedFunctionCall[i]);
        i += 1;
      }
    }
    if (addMacros != null)
    {
      arrayOfResolvedFunctionCall = addMacros;
      k = arrayOfResolvedFunctionCall.length;
      i = 0;
      while (i < k)
      {
        paramb.a(5, arrayOfResolvedFunctionCall[i]);
        i += 1;
      }
    }
    if (removeMacros != null)
    {
      arrayOfResolvedFunctionCall = removeMacros;
      k = arrayOfResolvedFunctionCall.length;
      i = j;
      while (i < k)
      {
        paramb.a(6, arrayOfResolvedFunctionCall[i]);
        i += 1;
      }
    }
    if (result != null) {
      paramb.a(7, result);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.ResolvedRule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */