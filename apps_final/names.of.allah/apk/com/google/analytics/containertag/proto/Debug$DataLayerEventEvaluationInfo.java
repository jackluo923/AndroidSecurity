package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Debug$DataLayerEventEvaluationInfo
  extends d
{
  public static final DataLayerEventEvaluationInfo[] EMPTY_ARRAY = new DataLayerEventEvaluationInfo[0];
  public Debug.ResolvedFunctionCall[] results = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public Debug.RuleEvaluationStepInfo rulesEvaluation = null;
  
  public static DataLayerEventEvaluationInfo parseFrom(a parama)
  {
    return new DataLayerEventEvaluationInfo().mergeFrom(parama);
  }
  
  public static DataLayerEventEvaluationInfo parseFrom(byte[] paramArrayOfByte)
  {
    return (DataLayerEventEvaluationInfo)h.mergeFrom(new DataLayerEventEvaluationInfo(), paramArrayOfByte);
  }
  
  public final DataLayerEventEvaluationInfo clear()
  {
    rulesEvaluation = null;
    results = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
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
      if (!(paramObject instanceof DataLayerEventEvaluationInfo)) {
        return false;
      }
      paramObject = (DataLayerEventEvaluationInfo)paramObject;
      if (rulesEvaluation != null) {
        break label65;
      }
      if (rulesEvaluation != null) {
        break;
      }
      if (!Arrays.equals(results, results)) {
        break;
      }
      if (unknownFieldData != null) {
        break label82;
      }
    } while (unknownFieldData == null);
    label65:
    label82:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        return false;
      } while (!rulesEvaluation.equals(rulesEvaluation));
      break;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int j = 0;
    if (rulesEvaluation != null) {}
    for (int i = b.b(1, rulesEvaluation) + 0;; i = 0)
    {
      int k = i;
      if (results != null)
      {
        Debug.ResolvedFunctionCall[] arrayOfResolvedFunctionCall = results;
        int m = arrayOfResolvedFunctionCall.length;
        for (;;)
        {
          k = i;
          if (j >= m) {
            break;
          }
          i += b.b(2, arrayOfResolvedFunctionCall[j]);
          j += 1;
        }
      }
      i = k + k.a(unknownFieldData);
      cachedSize = i;
      return i;
    }
  }
  
  public final int hashCode()
  {
    int m = 0;
    int k;
    if (rulesEvaluation == null)
    {
      i = 0;
      i += 527;
      if (results != null) {
        break label58;
      }
      k = i * 31;
      label30:
      if (unknownFieldData != null) {
        break label109;
      }
    }
    label58:
    label109:
    for (int i = m;; i = unknownFieldData.hashCode())
    {
      return k * 31 + i;
      i = rulesEvaluation.hashCode();
      break;
      int j = 0;
      k = i;
      if (j >= results.length) {
        break label30;
      }
      if (results[j] == null) {}
      for (k = 0;; k = results[j].hashCode())
      {
        i = k + i * 31;
        j += 1;
        break;
      }
    }
  }
  
  public final DataLayerEventEvaluationInfo mergeFrom(a parama)
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
        rulesEvaluation = new Debug.RuleEvaluationStepInfo();
        parama.a(rulesEvaluation);
        break;
      case 18: 
        int j = k.a(parama, 18);
        if (results == null) {}
        for (i = 0;; i = results.length)
        {
          Debug.ResolvedFunctionCall[] arrayOfResolvedFunctionCall = new Debug.ResolvedFunctionCall[j + i];
          if (results != null) {
            System.arraycopy(results, 0, arrayOfResolvedFunctionCall, 0, i);
          }
          results = arrayOfResolvedFunctionCall;
          while (i < results.length - 1)
          {
            results[i] = new Debug.ResolvedFunctionCall();
            parama.a(results[i]);
            parama.a();
            i += 1;
          }
        }
        results[i] = new Debug.ResolvedFunctionCall();
        parama.a(results[i]);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (rulesEvaluation != null) {
      paramb.a(1, rulesEvaluation);
    }
    if (results != null)
    {
      Debug.ResolvedFunctionCall[] arrayOfResolvedFunctionCall = results;
      int j = arrayOfResolvedFunctionCall.length;
      int i = 0;
      while (i < j)
      {
        paramb.a(2, arrayOfResolvedFunctionCall[i]);
        i += 1;
      }
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.DataLayerEventEvaluationInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */