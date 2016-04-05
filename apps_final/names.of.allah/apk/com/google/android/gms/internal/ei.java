package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ei
{
  private static final ei rM;
  public static final String rN;
  private final Object lq = new Object();
  public final String rO = ep.bO();
  private final ej rP = new ej(rO);
  private BigInteger rQ = BigInteger.ONE;
  private final HashSet<eh> rR = new HashSet();
  private final HashMap<String, el> rS = new HashMap();
  private boolean rT = false;
  
  static
  {
    ei localei = new ei();
    rM = localei;
    rN = rO;
  }
  
  public static Bundle a(Context paramContext, ek paramek, String paramString)
  {
    return rM.b(paramContext, paramek, paramString);
  }
  
  public static void b(HashSet<eh> paramHashSet)
  {
    rM.c(paramHashSet);
  }
  
  public static ei bC()
  {
    return rM;
  }
  
  public static String bD()
  {
    return rM.bE();
  }
  
  public static ej bF()
  {
    return rM.bG();
  }
  
  public static boolean bH()
  {
    return rM.bI();
  }
  
  public void a(eh parameh)
  {
    synchronized (lq)
    {
      rR.add(parameh);
      return;
    }
  }
  
  public void a(String paramString, el paramel)
  {
    synchronized (lq)
    {
      rS.put(paramString, paramel);
      return;
    }
  }
  
  public Bundle b(Context paramContext, ek paramek, String paramString)
  {
    Bundle localBundle;
    synchronized (lq)
    {
      localBundle = new Bundle();
      localBundle.putBundle("app", rP.b(paramContext, paramString));
      paramContext = new Bundle();
      paramString = rS.keySet().iterator();
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        paramContext.putBundle(str, ((el)rS.get(str)).toBundle());
      }
    }
    localBundle.putBundle("slots", paramContext);
    paramContext = new ArrayList();
    paramString = rR.iterator();
    while (paramString.hasNext()) {
      paramContext.add(((eh)paramString.next()).toBundle());
    }
    localBundle.putParcelableArrayList("ads", paramContext);
    paramek.a(rR);
    rR.clear();
    return localBundle;
  }
  
  public String bE()
  {
    synchronized (lq)
    {
      String str = rQ.toString();
      rQ = rQ.add(BigInteger.ONE);
      return str;
    }
  }
  
  public ej bG()
  {
    synchronized (lq)
    {
      ej localej = rP;
      return localej;
    }
  }
  
  public boolean bI()
  {
    synchronized (lq)
    {
      boolean bool = rT;
      rT = true;
      return bool;
    }
  }
  
  public void c(HashSet<eh> paramHashSet)
  {
    synchronized (lq)
    {
      rR.addAll(paramHashSet);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */