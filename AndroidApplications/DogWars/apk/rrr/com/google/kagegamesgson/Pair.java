package com.google.kagegamesgson;

final class Pair<FIRST, SECOND>
{
  final Object first;
  final Object second;
  
  Pair(FIRST paramFIRST, SECOND paramSECOND)
  {
    first = paramFIRST;
    second = paramSECOND;
  }
  
  private static boolean equal(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 != paramObject2)
    {
      if (paramObject1 == null) {
        break label24;
      }
      bool = paramObject1.equals(paramObject2);
      if (!bool) {
        break label24;
      }
    }
    label24:
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool4 = false;
    boolean bool1 = paramObject instanceof Pair;
    if (!bool1) {
      bool1 = bool4;
    }
    for (;;)
    {
      return bool1;
      Object localObject1 = paramObject;
      localObject1 = (Pair)localObject1;
      Object localObject2 = localObject1;
      Object localObject3 = first;
      Object localObject5 = first;
      boolean bool2 = equal(localObject3, localObject5);
      if (bool2)
      {
        Object localObject4 = second;
        localObject5 = second;
        bool3 = equal(localObject4, localObject5);
        if (bool3)
        {
          bool3 = true;
          continue;
        }
      }
      boolean bool3 = bool4;
    }
  }
  
  public int hashCode()
  {
    int k = 0;
    Object localObject1 = first;
    int i;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = first;
      i = localObject1.hashCode();
      i *= 17;
      localObject2 = second;
      if (localObject2 == null) {
        break label62;
      }
      localObject2 = second;
    }
    label62:
    for (int j = localObject2.hashCode();; j = k)
    {
      j *= 17;
      i += j;
      return i;
      i = k;
      break;
    }
  }
  
  public String toString()
  {
    String str = "{%s,%s}";
    int i = 2;
    Object[] arrayOfObject = new Object[i];
    int j = 0;
    Object localObject = first;
    arrayOfObject[j] = localObject;
    j = 1;
    localObject = second;
    arrayOfObject[j] = localObject;
    str = String.format(str, arrayOfObject);
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Pair
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */