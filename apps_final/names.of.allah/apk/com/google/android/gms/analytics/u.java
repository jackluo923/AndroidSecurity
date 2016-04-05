package com.google.android.gms.analytics;

import java.util.SortedSet;
import java.util.TreeSet;

class u
{
  private static final u uS = new u();
  private SortedSet<u.a> uP = new TreeSet();
  private StringBuilder uQ = new StringBuilder();
  private boolean uR = false;
  
  public static u cP()
  {
    return uS;
  }
  
  public void a(u.a parama)
  {
    try
    {
      if (!uR)
      {
        uP.add(parama);
        uQ.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(parama.ordinal()));
      }
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public String cQ()
  {
    try
    {
      Object localObject1 = new StringBuilder();
      int j = 6;
      int i = 0;
      while (uP.size() > 0)
      {
        u.a locala = (u.a)uP.first();
        uP.remove(locala);
        int k = locala.ordinal();
        while (k >= j)
        {
          ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
          j += 6;
          i = 0;
        }
        i += (1 << locala.ordinal() % 6);
      }
      if ((i > 0) || (((StringBuilder)localObject1).length() == 0)) {
        ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
      }
      uP.clear();
      localObject1 = ((StringBuilder)localObject1).toString();
      return (String)localObject1;
    }
    finally {}
  }
  
  public String cR()
  {
    try
    {
      if (uQ.length() > 0) {
        uQ.insert(0, ".");
      }
      String str = uQ.toString();
      uQ = new StringBuilder();
      return str;
    }
    finally {}
  }
  
  public void u(boolean paramBoolean)
  {
    try
    {
      uR = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */