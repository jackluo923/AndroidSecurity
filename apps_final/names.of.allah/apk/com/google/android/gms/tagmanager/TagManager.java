package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.google.android.gms.common.api.PendingResult;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TagManager
{
  private static TagManager aid;
  private final DataLayer aer;
  private final r agL;
  private final TagManager.a aib;
  private final ConcurrentMap<n, Boolean> aic;
  private final Context mContext;
  
  TagManager(Context paramContext, TagManager.a parama, DataLayer paramDataLayer)
  {
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    mContext = paramContext.getApplicationContext();
    aib = parama;
    aic = new ConcurrentHashMap();
    aer = paramDataLayer;
    aer.a(new TagManager.1(this));
    aer.a(new d(mContext));
    agL = new r();
  }
  
  private void cl(String paramString)
  {
    Iterator localIterator = aic.keySet().iterator();
    while (localIterator.hasNext()) {
      ((n)localIterator.next()).bH(paramString);
    }
  }
  
  public static TagManager getInstance(Context paramContext)
  {
    try
    {
      if (aid != null) {
        break label65;
      }
      if (paramContext == null)
      {
        bh.A("TagManager.getInstance requires non-null context.");
        throw new NullPointerException();
      }
    }
    finally {}
    aid = new TagManager(paramContext, new TagManager.2(), new DataLayer(new v(paramContext)));
    label65:
    paramContext = aid;
    return paramContext;
  }
  
  void a(n paramn)
  {
    aic.put(paramn, Boolean.valueOf(true));
  }
  
  boolean b(n paramn)
  {
    return aic.remove(paramn) != null;
  }
  
  public DataLayer getDataLayer()
  {
    return aer;
  }
  
  boolean h(Uri paramUri)
  {
    for (;;)
    {
      boolean bool;
      Object localObject2;
      try
      {
        localObject1 = cd.lY();
        if (!((cd)localObject1).h(paramUri)) {
          break label216;
        }
        paramUri = ((cd)localObject1).getContainerId();
        int i = TagManager.3.aif[localObject1.lZ().ordinal()];
        switch (i)
        {
        default: 
          bool = true;
          return bool;
        }
      }
      finally {}
      Object localObject1 = aic.keySet().iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (n)((Iterator)localObject1).next();
        if (((n)localObject2).getContainerId().equals(paramUri))
        {
          ((n)localObject2).bJ(null);
          ((n)localObject2).refresh();
        }
      }
      else
      {
        continue;
        localObject2 = aic.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          n localn = (n)((Iterator)localObject2).next();
          if (localn.getContainerId().equals(paramUri))
          {
            localn.bJ(((cd)localObject1).ma());
            localn.refresh();
          }
          else if (localn.lj() != null)
          {
            localn.bJ(null);
            localn.refresh();
          }
        }
        continue;
        label216:
        bool = false;
      }
    }
  }
  
  public PendingResult<ContainerHolder> loadContainerDefaultOnly(String paramString, int paramInt)
  {
    paramString = aib.a(mContext, this, null, paramString, paramInt, agL);
    paramString.lm();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerDefaultOnly(String paramString, int paramInt, Handler paramHandler)
  {
    paramString = aib.a(mContext, this, paramHandler.getLooper(), paramString, paramInt, agL);
    paramString.lm();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferFresh(String paramString, int paramInt)
  {
    paramString = aib.a(mContext, this, null, paramString, paramInt, agL);
    paramString.lo();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferFresh(String paramString, int paramInt, Handler paramHandler)
  {
    paramString = aib.a(mContext, this, paramHandler.getLooper(), paramString, paramInt, agL);
    paramString.lo();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String paramString, int paramInt)
  {
    paramString = aib.a(mContext, this, null, paramString, paramInt, agL);
    paramString.ln();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String paramString, int paramInt, Handler paramHandler)
  {
    paramString = aib.a(mContext, this, paramHandler.getLooper(), paramString, paramInt, agL);
    paramString.ln();
    return paramString;
  }
  
  public void setVerboseLoggingEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 2;; i = 5)
    {
      bh.setLogLevel(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.TagManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */