final class bj<FIRST, SECOND>
{
  final Object a;
  final Object b;
  
  bj(FIRST paramFIRST, SECOND paramSECOND)
  {
    a = paramFIRST;
    b = paramSECOND;
  }
  
  private static boolean a(Object paramObject1, Object paramObject2)
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
  
  public final boolean equals(Object paramObject)
  {
    boolean bool4 = false;
    boolean bool1 = paramObject instanceof bj;
    if (!bool1) {
      bool1 = bool4;
    }
    for (;;)
    {
      return bool1;
      paramObject = (bj)paramObject;
      Object localObject1 = a;
      Object localObject3 = a;
      boolean bool2 = a(localObject1, localObject3);
      if (bool2)
      {
        Object localObject2 = b;
        localObject3 = b;
        bool3 = a(localObject2, localObject3);
        if (bool3)
        {
          bool3 = true;
          continue;
        }
      }
      boolean bool3 = bool4;
    }
  }
  
  public final int hashCode()
  {
    int k = 0;
    Object localObject1 = a;
    int i;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = a;
      i = localObject1.hashCode();
      i *= 17;
      localObject2 = b;
      if (localObject2 == null) {
        break label62;
      }
      localObject2 = b;
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
  
  public final String toString()
  {
    String str = "{%s,%s}";
    int i = 2;
    Object[] arrayOfObject = new Object[i];
    int j = 0;
    Object localObject = a;
    arrayOfObject[j] = localObject;
    j = 1;
    localObject = b;
    arrayOfObject[j] = localObject;
    str = String.format(str, arrayOfObject);
    return str;
  }
}

/* Location:
 * Qualified Name:     bj
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */