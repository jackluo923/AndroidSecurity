package com.google.android.gms.common.data;

import java.util.ArrayList;

public abstract class g<T>
  extends DataBuffer<T>
{
  private boolean ER = false;
  private ArrayList<Integer> ES;
  
  public g(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  private void eV()
  {
    for (;;)
    {
      int i;
      try
      {
        if (!ER)
        {
          int j = DD.getCount();
          ES = new ArrayList();
          if (j > 0)
          {
            ES.add(Integer.valueOf(0));
            String str2 = eU();
            i = DD.ae(0);
            Object localObject1 = DD.c(str2, 0, i);
            i = 1;
            if (i < j)
            {
              int k = DD.ae(i);
              String str1 = DD.c(str2, i, k);
              if (str1.equals(localObject1)) {
                break label146;
              }
              ES.add(Integer.valueOf(i));
              localObject1 = str1;
              break label146;
            }
          }
          ER = true;
        }
        else
        {
          return;
        }
      }
      finally {}
      label146:
      i += 1;
    }
  }
  
  int ah(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= ES.size())) {
      throw new IllegalArgumentException("Position " + paramInt + " is out of bounds for this buffer");
    }
    return ((Integer)ES.get(paramInt)).intValue();
  }
  
  protected int ai(int paramInt)
  {
    int j;
    if ((paramInt < 0) || (paramInt == ES.size()))
    {
      j = 0;
      return j;
    }
    if (paramInt == ES.size() - 1) {}
    for (int i = DD.getCount() - ((Integer)ES.get(paramInt)).intValue();; i = ((Integer)ES.get(paramInt + 1)).intValue() - ((Integer)ES.get(paramInt)).intValue())
    {
      j = i;
      if (i != 1) {
        break;
      }
      paramInt = ah(paramInt);
      int k = DD.ae(paramInt);
      String str = eW();
      j = i;
      if (str == null) {
        break;
      }
      j = i;
      if (DD.c(str, paramInt, k) != null) {
        break;
      }
      return 0;
    }
  }
  
  protected abstract T c(int paramInt1, int paramInt2);
  
  protected abstract String eU();
  
  protected String eW()
  {
    return null;
  }
  
  public final T get(int paramInt)
  {
    eV();
    return (T)c(ah(paramInt), ai(paramInt));
  }
  
  public int getCount()
  {
    eV();
    return ES.size();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */