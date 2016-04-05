package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.i;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.internal.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Container
{
  private final String aeq;
  private final DataLayer aer;
  private cs aes;
  private Map<String, Container.FunctionCallMacroCallback> aet = new HashMap();
  private Map<String, Container.FunctionCallTagCallback> aeu = new HashMap();
  private volatile long aev;
  private volatile String aew = "";
  private final Context mContext;
  
  Container(Context paramContext, DataLayer paramDataLayer, String paramString, long paramLong, c.j paramj)
  {
    mContext = paramContext;
    aer = paramDataLayer;
    aeq = paramString;
    aev = paramLong;
    a(fK);
    if (fJ != null) {
      a(fJ);
    }
  }
  
  Container(Context paramContext, DataLayer paramDataLayer, String paramString, long paramLong, cq.c paramc)
  {
    mContext = paramContext;
    aer = paramDataLayer;
    aeq = paramString;
    aev = paramLong;
    a(paramc);
  }
  
  private void a(c.f paramf)
  {
    if (paramf == null) {
      throw new NullPointerException();
    }
    try
    {
      cq.c localc = cq.b(paramf);
      a(localc);
      return;
    }
    catch (cq.g localg)
    {
      bh.A("Not loading resource: " + paramf + " because it is invalid: " + localg.toString());
    }
  }
  
  private void a(cq.c paramc)
  {
    aew = paramc.getVersion();
    ag localag = bI(aew);
    a(new cs(mContext, paramc, aer, new Container.a(this, null), new Container.b(this, null), localag));
  }
  
  private void a(cs paramcs)
  {
    try
    {
      aes = paramcs;
      return;
    }
    finally
    {
      paramcs = finally;
      throw paramcs;
    }
  }
  
  private void a(c.i[] paramArrayOfi)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfi.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramArrayOfi[i]);
      i += 1;
    }
    li().h(localArrayList);
  }
  
  private cs li()
  {
    try
    {
      cs localcs = aes;
      return localcs;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  Container.FunctionCallMacroCallback bF(String paramString)
  {
    synchronized (aet)
    {
      paramString = (Container.FunctionCallMacroCallback)aet.get(paramString);
      return paramString;
    }
  }
  
  Container.FunctionCallTagCallback bG(String paramString)
  {
    synchronized (aeu)
    {
      paramString = (Container.FunctionCallTagCallback)aeu.get(paramString);
      return paramString;
    }
  }
  
  void bH(String paramString)
  {
    li().bH(paramString);
  }
  
  ag bI(String paramString)
  {
    cd.lY().lZ().equals(cd.a.agA);
    return new bq();
  }
  
  public boolean getBoolean(String paramString)
  {
    cs localcs = li();
    if (localcs == null)
    {
      bh.A("getBoolean called for closed container.");
      return dh.mV().booleanValue();
    }
    try
    {
      boolean bool = dh.n((d.a)localcs.cj(paramString).getObject()).booleanValue();
      return bool;
    }
    catch (Exception paramString)
    {
      bh.A("Calling getBoolean() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return dh.mV().booleanValue();
  }
  
  public String getContainerId()
  {
    return aeq;
  }
  
  public double getDouble(String paramString)
  {
    cs localcs = li();
    if (localcs == null)
    {
      bh.A("getDouble called for closed container.");
      return dh.mU().doubleValue();
    }
    try
    {
      double d = dh.m((d.a)localcs.cj(paramString).getObject()).doubleValue();
      return d;
    }
    catch (Exception paramString)
    {
      bh.A("Calling getDouble() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return dh.mU().doubleValue();
  }
  
  public long getLastRefreshTime()
  {
    return aev;
  }
  
  public long getLong(String paramString)
  {
    cs localcs = li();
    if (localcs == null)
    {
      bh.A("getLong called for closed container.");
      return dh.mT().longValue();
    }
    try
    {
      long l = dh.l((d.a)localcs.cj(paramString).getObject()).longValue();
      return l;
    }
    catch (Exception paramString)
    {
      bh.A("Calling getLong() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return dh.mT().longValue();
  }
  
  public String getString(String paramString)
  {
    cs localcs = li();
    if (localcs == null)
    {
      bh.A("getString called for closed container.");
      return dh.mX();
    }
    try
    {
      paramString = dh.j((d.a)localcs.cj(paramString).getObject());
      return paramString;
    }
    catch (Exception paramString)
    {
      bh.A("Calling getString() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return dh.mX();
  }
  
  public boolean isDefault()
  {
    return getLastRefreshTime() == 0L;
  }
  
  String lh()
  {
    return aew;
  }
  
  public void registerFunctionCallMacroCallback(String paramString, Container.FunctionCallMacroCallback paramFunctionCallMacroCallback)
  {
    if (paramFunctionCallMacroCallback == null) {
      throw new NullPointerException("Macro handler must be non-null");
    }
    synchronized (aet)
    {
      aet.put(paramString, paramFunctionCallMacroCallback);
      return;
    }
  }
  
  public void registerFunctionCallTagCallback(String paramString, Container.FunctionCallTagCallback paramFunctionCallTagCallback)
  {
    if (paramFunctionCallTagCallback == null) {
      throw new NullPointerException("Tag callback must be non-null");
    }
    synchronized (aeu)
    {
      aeu.put(paramString, paramFunctionCallTagCallback);
      return;
    }
  }
  
  void release()
  {
    aes = null;
  }
  
  public void unregisterFunctionCallMacroCallback(String paramString)
  {
    synchronized (aet)
    {
      aet.remove(paramString);
      return;
    }
  }
  
  public void unregisterFunctionCallTagCallback(String paramString)
  {
    synchronized (aeu)
    {
      aeu.remove(paramString);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.Container
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */