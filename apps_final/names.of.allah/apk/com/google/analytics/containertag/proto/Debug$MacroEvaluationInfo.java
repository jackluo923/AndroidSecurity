package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.e;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.List;

public final class Debug$MacroEvaluationInfo
  extends d
{
  public static final MacroEvaluationInfo[] EMPTY_ARRAY = new MacroEvaluationInfo[0];
  public static final e<MacroEvaluationInfo> macro = e.a(47497405, new Debug.MacroEvaluationInfo.1());
  public Debug.ResolvedFunctionCall result = null;
  public Debug.RuleEvaluationStepInfo rulesEvaluation = null;
  
  public static MacroEvaluationInfo parseFrom(a parama)
  {
    return new MacroEvaluationInfo().mergeFrom(parama);
  }
  
  public static MacroEvaluationInfo parseFrom(byte[] paramArrayOfByte)
  {
    return (MacroEvaluationInfo)h.mergeFrom(new MacroEvaluationInfo(), paramArrayOfByte);
  }
  
  public final MacroEvaluationInfo clear()
  {
    rulesEvaluation = null;
    result = null;
    unknownFieldData = null;
    cachedSize = -1;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label49:
    do
    {
      return true;
      if (!(paramObject instanceof MacroEvaluationInfo)) {
        return false;
      }
      paramObject = (MacroEvaluationInfo)paramObject;
      if (rulesEvaluation != null) {
        break label65;
      }
      if (rulesEvaluation != null) {
        break;
      }
      if (result != null) {
        break label82;
      }
      if (result != null) {
        break;
      }
      if (unknownFieldData != null) {
        break label99;
      }
    } while (unknownFieldData == null);
    label65:
    label82:
    label99:
    while (!unknownFieldData.equals(unknownFieldData))
    {
      do
      {
        do
        {
          return false;
        } while (!rulesEvaluation.equals(rulesEvaluation));
        break;
      } while (!result.equals(result));
      break label49;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int i = 0;
    if (rulesEvaluation != null) {
      i = b.b(1, rulesEvaluation) + 0;
    }
    int j = i;
    if (result != null) {
      j = i + b.b(3, result);
    }
    i = j + k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public final int hashCode()
  {
    int k = 0;
    int i;
    int j;
    if (rulesEvaluation == null)
    {
      i = 0;
      if (result != null) {
        break label54;
      }
      j = 0;
      label20:
      if (unknownFieldData != null) {
        break label65;
      }
    }
    for (;;)
    {
      return (j + (i + 527) * 31) * 31 + k;
      i = rulesEvaluation.hashCode();
      break;
      label54:
      j = result.hashCode();
      break label20;
      label65:
      k = unknownFieldData.hashCode();
    }
  }
  
  public final MacroEvaluationInfo mergeFrom(a parama)
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
      case 26: 
        result = new Debug.ResolvedFunctionCall();
        parama.a(result);
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    if (rulesEvaluation != null) {
      paramb.a(1, rulesEvaluation);
    }
    if (result != null) {
      paramb.a(3, result);
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Debug.MacroEvaluationInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */