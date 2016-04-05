package com.google.analytics.containertag.proto;

import com.google.b.a.a.a;
import com.google.b.a.a.b;
import com.google.b.a.a.d;
import com.google.b.a.a.h;
import com.google.b.a.a.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Serving$Rule
  extends d
{
  public static final Rule[] EMPTY_ARRAY = new Rule[0];
  public int[] addMacro = k.e;
  public int[] addMacroRuleName = k.e;
  public int[] addTag = k.e;
  public int[] addTagRuleName = k.e;
  public int[] negativePredicate = k.e;
  public int[] positivePredicate = k.e;
  public int[] removeMacro = k.e;
  public int[] removeMacroRuleName = k.e;
  public int[] removeTag = k.e;
  public int[] removeTagRuleName = k.e;
  
  public static Rule parseFrom(a parama)
  {
    return new Rule().mergeFrom(parama);
  }
  
  public static Rule parseFrom(byte[] paramArrayOfByte)
  {
    return (Rule)h.mergeFrom(new Rule(), paramArrayOfByte);
  }
  
  public final Rule clear()
  {
    positivePredicate = k.e;
    negativePredicate = k.e;
    addTag = k.e;
    removeTag = k.e;
    addTagRuleName = k.e;
    removeTagRuleName = k.e;
    addMacro = k.e;
    removeMacro = k.e;
    addMacroRuleName = k.e;
    removeMacroRuleName = k.e;
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
      if (!(paramObject instanceof Rule)) {
        return false;
      }
      paramObject = (Rule)paramObject;
      if ((!Arrays.equals(positivePredicate, positivePredicate)) || (!Arrays.equals(negativePredicate, negativePredicate)) || (!Arrays.equals(addTag, addTag)) || (!Arrays.equals(removeTag, removeTag)) || (!Arrays.equals(addTagRuleName, addTagRuleName)) || (!Arrays.equals(removeTagRuleName, removeTagRuleName)) || (!Arrays.equals(addMacro, addMacro)) || (!Arrays.equals(removeMacro, removeMacro)) || (!Arrays.equals(addMacroRuleName, addMacroRuleName)) || (!Arrays.equals(removeMacroRuleName, removeMacroRuleName))) {
        break;
      }
      if (unknownFieldData != null) {
        break label177;
      }
    } while (unknownFieldData == null);
    label177:
    while (!unknownFieldData.equals(unknownFieldData)) {
      return false;
    }
    return true;
  }
  
  public final int getSerializedSize()
  {
    int m = 0;
    int[] arrayOfInt;
    int k;
    int i;
    if ((positivePredicate != null) && (positivePredicate.length > 0))
    {
      arrayOfInt = positivePredicate;
      k = arrayOfInt.length;
      i = 0;
      j = 0;
      while (i < k)
      {
        j += b.b(arrayOfInt[i]);
        i += 1;
      }
    }
    for (int j = j + 0 + positivePredicate.length * 1;; j = 0)
    {
      i = j;
      int n;
      if (negativePredicate != null)
      {
        i = j;
        if (negativePredicate.length > 0)
        {
          arrayOfInt = negativePredicate;
          n = arrayOfInt.length;
          i = 0;
          k = 0;
          while (i < n)
          {
            k += b.b(arrayOfInt[i]);
            i += 1;
          }
          i = j + k + negativePredicate.length * 1;
        }
      }
      j = i;
      if (addTag != null)
      {
        j = i;
        if (addTag.length > 0)
        {
          arrayOfInt = addTag;
          n = arrayOfInt.length;
          j = 0;
          k = 0;
          while (j < n)
          {
            k += b.b(arrayOfInt[j]);
            j += 1;
          }
          j = i + k + addTag.length * 1;
        }
      }
      i = j;
      if (removeTag != null)
      {
        i = j;
        if (removeTag.length > 0)
        {
          arrayOfInt = removeTag;
          n = arrayOfInt.length;
          i = 0;
          k = 0;
          while (i < n)
          {
            k += b.b(arrayOfInt[i]);
            i += 1;
          }
          i = j + k + removeTag.length * 1;
        }
      }
      j = i;
      if (addTagRuleName != null)
      {
        j = i;
        if (addTagRuleName.length > 0)
        {
          arrayOfInt = addTagRuleName;
          n = arrayOfInt.length;
          j = 0;
          k = 0;
          while (j < n)
          {
            k += b.b(arrayOfInt[j]);
            j += 1;
          }
          j = i + k + addTagRuleName.length * 1;
        }
      }
      i = j;
      if (removeTagRuleName != null)
      {
        i = j;
        if (removeTagRuleName.length > 0)
        {
          arrayOfInt = removeTagRuleName;
          n = arrayOfInt.length;
          i = 0;
          k = 0;
          while (i < n)
          {
            k += b.b(arrayOfInt[i]);
            i += 1;
          }
          i = j + k + removeTagRuleName.length * 1;
        }
      }
      j = i;
      if (addMacro != null)
      {
        j = i;
        if (addMacro.length > 0)
        {
          arrayOfInt = addMacro;
          n = arrayOfInt.length;
          j = 0;
          k = 0;
          while (j < n)
          {
            k += b.b(arrayOfInt[j]);
            j += 1;
          }
          j = i + k + addMacro.length * 1;
        }
      }
      i = j;
      if (removeMacro != null)
      {
        i = j;
        if (removeMacro.length > 0)
        {
          arrayOfInt = removeMacro;
          n = arrayOfInt.length;
          i = 0;
          k = 0;
          while (i < n)
          {
            k += b.b(arrayOfInt[i]);
            i += 1;
          }
          i = j + k + removeMacro.length * 1;
        }
      }
      j = i;
      if (addMacroRuleName != null)
      {
        j = i;
        if (addMacroRuleName.length > 0)
        {
          arrayOfInt = addMacroRuleName;
          n = arrayOfInt.length;
          j = 0;
          k = 0;
          while (j < n)
          {
            k += b.b(arrayOfInt[j]);
            j += 1;
          }
          j = i + k + addMacroRuleName.length * 1;
        }
      }
      i = j;
      if (removeMacroRuleName != null)
      {
        i = j;
        if (removeMacroRuleName.length > 0)
        {
          arrayOfInt = removeMacroRuleName;
          n = arrayOfInt.length;
          k = 0;
          i = m;
          while (i < n)
          {
            k += b.b(arrayOfInt[i]);
            i += 1;
          }
          i = j + k + removeMacroRuleName.length * 1;
        }
      }
      i += k.a(unknownFieldData);
      cachedSize = i;
      return i;
    }
  }
  
  public final int hashCode()
  {
    int m = 0;
    int j;
    if (positivePredicate == null)
    {
      i = 527;
      if (negativePredicate != null) {
        break label174;
      }
      i *= 31;
      if (addTag != null) {
        break label208;
      }
      i *= 31;
      if (removeTag != null) {
        break label242;
      }
      i *= 31;
      if (addTagRuleName != null) {
        break label276;
      }
      i *= 31;
      if (removeTagRuleName != null) {
        break label310;
      }
      i *= 31;
      if (addMacro != null) {
        break label344;
      }
      i *= 31;
      if (removeMacro != null) {
        break label378;
      }
      i *= 31;
      if (addMacroRuleName != null) {
        break label412;
      }
      i *= 31;
      if (removeMacroRuleName != null) {
        break label446;
      }
      j = i * 31;
      if (unknownFieldData != null) {
        break label478;
      }
    }
    label174:
    label208:
    label242:
    label276:
    label310:
    label344:
    label378:
    label412:
    label446:
    label478:
    for (int i = m;; i = unknownFieldData.hashCode())
    {
      return j * 31 + i;
      j = 17;
      int k = 0;
      for (;;)
      {
        i = j;
        if (k >= positivePredicate.length) {
          break;
        }
        j = j * 31 + positivePredicate[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= negativePredicate.length) {
          break;
        }
        j = j * 31 + negativePredicate[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= addTag.length) {
          break;
        }
        j = j * 31 + addTag[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= removeTag.length) {
          break;
        }
        j = j * 31 + removeTag[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= addTagRuleName.length) {
          break;
        }
        j = j * 31 + addTagRuleName[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= removeTagRuleName.length) {
          break;
        }
        j = j * 31 + removeTagRuleName[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= addMacro.length) {
          break;
        }
        j = j * 31 + addMacro[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= removeMacro.length) {
          break;
        }
        j = j * 31 + removeMacro[k];
        k += 1;
      }
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= addMacroRuleName.length) {
          break;
        }
        j = j * 31 + addMacroRuleName[k];
        k += 1;
      }
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= removeMacroRuleName.length) {
          break;
        }
        i = i * 31 + removeMacroRuleName[k];
        k += 1;
      }
    }
  }
  
  public final Rule mergeFrom(a parama)
  {
    for (;;)
    {
      int i = parama.a();
      int j;
      int[] arrayOfInt;
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
        j = k.a(parama, 8);
        i = positivePredicate.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(positivePredicate, 0, arrayOfInt, 0, i);
        positivePredicate = arrayOfInt;
        while (i < positivePredicate.length - 1)
        {
          positivePredicate[i] = parama.c();
          parama.a();
          i += 1;
        }
        positivePredicate[i] = parama.c();
        break;
      case 16: 
        j = k.a(parama, 16);
        i = negativePredicate.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(negativePredicate, 0, arrayOfInt, 0, i);
        negativePredicate = arrayOfInt;
        while (i < negativePredicate.length - 1)
        {
          negativePredicate[i] = parama.c();
          parama.a();
          i += 1;
        }
        negativePredicate[i] = parama.c();
        break;
      case 24: 
        j = k.a(parama, 24);
        i = addTag.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(addTag, 0, arrayOfInt, 0, i);
        addTag = arrayOfInt;
        while (i < addTag.length - 1)
        {
          addTag[i] = parama.c();
          parama.a();
          i += 1;
        }
        addTag[i] = parama.c();
        break;
      case 32: 
        j = k.a(parama, 32);
        i = removeTag.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(removeTag, 0, arrayOfInt, 0, i);
        removeTag = arrayOfInt;
        while (i < removeTag.length - 1)
        {
          removeTag[i] = parama.c();
          parama.a();
          i += 1;
        }
        removeTag[i] = parama.c();
        break;
      case 40: 
        j = k.a(parama, 40);
        i = addTagRuleName.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(addTagRuleName, 0, arrayOfInt, 0, i);
        addTagRuleName = arrayOfInt;
        while (i < addTagRuleName.length - 1)
        {
          addTagRuleName[i] = parama.c();
          parama.a();
          i += 1;
        }
        addTagRuleName[i] = parama.c();
        break;
      case 48: 
        j = k.a(parama, 48);
        i = removeTagRuleName.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(removeTagRuleName, 0, arrayOfInt, 0, i);
        removeTagRuleName = arrayOfInt;
        while (i < removeTagRuleName.length - 1)
        {
          removeTagRuleName[i] = parama.c();
          parama.a();
          i += 1;
        }
        removeTagRuleName[i] = parama.c();
        break;
      case 56: 
        j = k.a(parama, 56);
        i = addMacro.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(addMacro, 0, arrayOfInt, 0, i);
        addMacro = arrayOfInt;
        while (i < addMacro.length - 1)
        {
          addMacro[i] = parama.c();
          parama.a();
          i += 1;
        }
        addMacro[i] = parama.c();
        break;
      case 64: 
        j = k.a(parama, 64);
        i = removeMacro.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(removeMacro, 0, arrayOfInt, 0, i);
        removeMacro = arrayOfInt;
        while (i < removeMacro.length - 1)
        {
          removeMacro[i] = parama.c();
          parama.a();
          i += 1;
        }
        removeMacro[i] = parama.c();
        break;
      case 72: 
        j = k.a(parama, 72);
        i = addMacroRuleName.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(addMacroRuleName, 0, arrayOfInt, 0, i);
        addMacroRuleName = arrayOfInt;
        while (i < addMacroRuleName.length - 1)
        {
          addMacroRuleName[i] = parama.c();
          parama.a();
          i += 1;
        }
        addMacroRuleName[i] = parama.c();
        break;
      case 80: 
        j = k.a(parama, 80);
        i = removeMacroRuleName.length;
        arrayOfInt = new int[j + i];
        System.arraycopy(removeMacroRuleName, 0, arrayOfInt, 0, i);
        removeMacroRuleName = arrayOfInt;
        while (i < removeMacroRuleName.length - 1)
        {
          removeMacroRuleName[i] = parama.c();
          parama.a();
          i += 1;
        }
        removeMacroRuleName[i] = parama.c();
      }
    }
  }
  
  public final void writeTo(b paramb)
  {
    int j = 0;
    int[] arrayOfInt;
    int k;
    int i;
    if (positivePredicate != null)
    {
      arrayOfInt = positivePredicate;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(1, arrayOfInt[i]);
        i += 1;
      }
    }
    if (negativePredicate != null)
    {
      arrayOfInt = negativePredicate;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(2, arrayOfInt[i]);
        i += 1;
      }
    }
    if (addTag != null)
    {
      arrayOfInt = addTag;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(3, arrayOfInt[i]);
        i += 1;
      }
    }
    if (removeTag != null)
    {
      arrayOfInt = removeTag;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(4, arrayOfInt[i]);
        i += 1;
      }
    }
    if (addTagRuleName != null)
    {
      arrayOfInt = addTagRuleName;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(5, arrayOfInt[i]);
        i += 1;
      }
    }
    if (removeTagRuleName != null)
    {
      arrayOfInt = removeTagRuleName;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(6, arrayOfInt[i]);
        i += 1;
      }
    }
    if (addMacro != null)
    {
      arrayOfInt = addMacro;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(7, arrayOfInt[i]);
        i += 1;
      }
    }
    if (removeMacro != null)
    {
      arrayOfInt = removeMacro;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(8, arrayOfInt[i]);
        i += 1;
      }
    }
    if (addMacroRuleName != null)
    {
      arrayOfInt = addMacroRuleName;
      k = arrayOfInt.length;
      i = 0;
      while (i < k)
      {
        paramb.a(9, arrayOfInt[i]);
        i += 1;
      }
    }
    if (removeMacroRuleName != null)
    {
      arrayOfInt = removeMacroRuleName;
      k = arrayOfInt.length;
      i = j;
      while (i < k)
      {
        paramb.a(10, arrayOfInt[i]);
        i += 1;
      }
    }
    k.a(unknownFieldData, paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.containertag.proto.Serving.Rule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */