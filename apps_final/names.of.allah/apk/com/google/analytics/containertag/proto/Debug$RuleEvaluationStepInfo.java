package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Debug$RuleEvaluationStepInfo
  extends d
{
  public static final RuleEvaluationStepInfo[] EMPTY_ARRAY = new RuleEvaluationStepInfo[0];
  public Debug.ResolvedFunctionCall[] enabledFunctions = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
  public Debug.ResolvedRule[] rules = Debug.ResolvedRule.EMPTY_ARRAY;
  
  public static RuleEvaluationStepInfo parseFrom(a parama)
  {
    return new RuleEvaluationStepInfo().mergeFrom(parama);
  }
  
  public static RuleEvaluationStepInfo parseFrom(byte[] paramArrayOfByte)
  {
    return (RuleEvaluationStepInfo)h.mergeFrom(new RuleEvaluationStepInfo(), paramArrayOfByte);
  }
  
  public final RuleEvaluationStepInfo clear()
  {
    rules = Debug.ResolvedRule.EMPTY_ARRAY;
    enabledFunctions = Debug.ResolvedFunctionCall.EMPTY_ARRAY;
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
      if (!(paramObject instanceof RuleEvaluationStepInfo)) {
        return false;
      }
      paramObject = (RuleEvaluationStepInfo)paramObject;
      if ((!Arrays.equals(rules, rules)) || (!Arrays.equals(enabledFunctions, enabledFunctions))) {
        break;
      }
      if (unknownFieldData != null) {
        break label65;
      }
    } while (unknownFieldData == null);
    label65:
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
    int j;
    if (rules != null)
    {
      localObject = rules;
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
    int k = i;
    if (enabledFunctions != null)
    {
      localObject = enabledFunctions;
      n = localObject.length;
      j = m;
      for (;;)
      {
        k = i;
        if (j >= n) {
          break;
        }
        i += b.b(2, localObject[j]);
        j += 1;
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
    int k;
    if (rules == null)
    {
      j = 527;
      if (enabledFunctions != null) {
        break label97;
      }
      k = j * 31;
      label26:
      if (unknownFieldData != null) {
        break label152;
      }
    }
    label97:
    label152:
    for (int i = m;; i = unknownFieldData.hashCode())
    {
      return k * 31 + i;
      i = 17;
      k = 0;
      j = i;
      if (k >= rules.length) {
        break;
      }
      if (rules[k] == null) {}
      for (j = 0;; j = rules[k].hashCode())
      {
        i = j + i * 31;
        k += 1;
        break;
      }
      k = 0;
      i = j;
      j = k;
      k = i;
      if (j >= enabledFunctions.length) {
        break label26;
      }
      if (enabledFunctions[j] == null) {}
      for (k = 0;; k = enabledFunctions[j].hashCode())
      {
        i = k + i * 31;
        j += 1;
        break;
      }
    }
  }
  
  public final RuleEvaluationStepInfo mergeFrom(a parama)
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
        if (rules == null) {}
        for (i = 0;; i = rules.length)
        {
          localObject = new Debug.ResolvedRule[j + i];
          if (rules != null) {
            System.arraycopy(rules, 0, localObject, 0, i);
          }
          rules = ((Debug.ResolvedRule[])localObject);
          while (i < rules.length - 1)
          {
            rules[i] = new Debug.ResolvedRule();
            parama.a(rules[i]);
            parama.a();
            i += 1;
          }
        }
        rules[i] = new Debug.ResolvedRule();
        parama.a(rules[i]);
        break;
      case 18: 
        j = k.a(parama, 18);
        if (enabledFunctions == null) {}
        for (i = 0;; i = enabledFunctions.length)
        {
          localObject = new Debug.ResolvedFunctionCall[j + i];
          if (enabledFunctions != null) {
            System.arraycopy(enabledFunctions, 0, localObject, 0, i);
          }
          enabledFunctions = ((Debug.ResolvedFunctionCall[])localObject);
          while (i < enabledFunctions.length - 1)
          {
            enabledFunctions[i] = new Debug.ResolvedFunctionCall();
            parama.a(enabledFunctions[i]);
            parama.a();
            i += 1;
          }
        }
        enabledFunctions[i] = new Debug.ResolvedFunctionCall();
        parama.a(enabledFunctions[i]);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    int j = 0;
    Object localObject;
    int k;
    int i;
    if (rules != null)
    {
      localObject = rules;
      k = localObject.length;
      i = 0;
      while (i < k)
      {
        paramb.a(1, localObject[i]);
        i += 1;
      }
    }
    if (enabledFunctions != null)
    {
      localObject = enabledFunctions;
      k = localObject.length;
      i = j;
      while (i < k)
      {
        paramb.a(2, localObject[i]);
        i += 1;
      }
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.RuleEvaluationStepInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */