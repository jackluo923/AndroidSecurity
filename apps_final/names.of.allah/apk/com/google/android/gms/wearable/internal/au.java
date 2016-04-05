package com.google.android.gms.wearable.internal;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.e;
import com.google.android.gms.internal.hj;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi.DataItemResult;
import com.google.android.gms.wearable.DataApi.DataListener;
import com.google.android.gms.wearable.DataApi.DeleteDataItemsResult;
import com.google.android.gms.wearable.DataApi.GetFdForAssetResult;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.MessageApi.MessageListener;
import com.google.android.gms.wearable.MessageApi.SendMessageResult;
import com.google.android.gms.wearable.NodeApi.GetConnectedNodesResult;
import com.google.android.gms.wearable.NodeApi.GetLocalNodeResult;
import com.google.android.gms.wearable.NodeApi.NodeListener;
import com.google.android.gms.wearable.PutDataRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public class au
  extends hc<ad>
{
  private final ExecutorService agR = Executors.newCachedThreadPool();
  private final HashMap<DataApi.DataListener, av> amb = new HashMap();
  private final HashMap<MessageApi.MessageListener, av> amc = new HashMap();
  private final HashMap<NodeApi.NodeListener, av> amd = new HashMap();
  
  public au(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
  }
  
  private FutureTask<Boolean> a(ParcelFileDescriptor paramParcelFileDescriptor, byte[] paramArrayOfByte)
  {
    return new FutureTask(new au.11(this, paramParcelFileDescriptor, paramArrayOfByte));
  }
  
  protected void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    if (Log.isLoggable("WearableClient", 2)) {
      Log.d("WearableClient", "onPostInitHandler: statusCode " + paramInt);
    }
    ad localad;
    Iterator localIterator;
    Map.Entry localEntry;
    if (paramInt == 0) {
      try
      {
        au.1 local1 = new au.1(this);
        if (Log.isLoggable("WearableClient", 2)) {
          Log.d("WearableClient", "onPostInitHandler: service " + paramIBinder);
        }
        localad = ad.a.by(paramIBinder);
        localIterator = amb.entrySet().iterator();
        while (localIterator.hasNext())
        {
          localEntry = (Map.Entry)localIterator.next();
          if (Log.isLoggable("WearableClient", 2)) {
            Log.d("WearableClient", "onPostInitHandler: adding Data listener " + localEntry.getValue());
          }
          localad.a(local1, new b((av)localEntry.getValue()));
          continue;
          Log.d("WearableClient", "WearableClientImpl.onPostInitHandler: done");
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.d("WearableClient", "WearableClientImpl.onPostInitHandler: error while adding listener", localRemoteException);
      }
    }
    for (;;)
    {
      super.a(paramInt, paramIBinder, paramBundle);
      return;
      localIterator = amc.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        if (Log.isLoggable("WearableClient", 2)) {
          Log.d("WearableClient", "onPostInitHandler: adding Message listener " + localEntry.getValue());
        }
        localad.a(localRemoteException, new b((av)localEntry.getValue()));
      }
      localIterator = amd.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        if (Log.isLoggable("WearableClient", 2)) {
          Log.d("WearableClient", "onPostInitHandler: adding Node listener " + localEntry.getValue());
        }
        localad.a(localRemoteException, new b((av)localEntry.getValue()));
      }
    }
  }
  
  public void a(a.d<DataApi.DataItemResult> paramd, Uri paramUri)
  {
    ((ad)fo()).a(new au.12(this, paramd), paramUri);
  }
  
  public void a(a.d<DataApi.GetFdForAssetResult> paramd, Asset paramAsset)
  {
    ((ad)fo()).a(new au.4(this, paramd), paramAsset);
  }
  
  public void a(a.d<Status> paramd, DataApi.DataListener paramDataListener)
  {
    synchronized (amb)
    {
      paramDataListener = (ac)amb.remove(paramDataListener);
      if (paramDataListener == null)
      {
        paramd.a(new Status(4002));
        return;
      }
    }
    a(paramd, paramDataListener);
  }
  
  public void a(a.d<Status> paramd, DataApi.DataListener paramDataListener, IntentFilter[] arg3)
  {
    av localav = av.a(paramDataListener, ???);
    synchronized (amb)
    {
      if (amb.get(paramDataListener) != null)
      {
        paramd.a(new Status(4001));
        return;
      }
      amb.put(paramDataListener, localav);
      ((ad)fo()).a(new au.7(this, paramDataListener, paramd), new b(localav));
      return;
    }
  }
  
  public void a(a.d<DataApi.GetFdForAssetResult> paramd, DataItemAsset paramDataItemAsset)
  {
    a(paramd, Asset.createFromRef(paramDataItemAsset.getId()));
  }
  
  public void a(a.d<Status> paramd, MessageApi.MessageListener paramMessageListener)
  {
    synchronized (amc)
    {
      paramMessageListener = (ac)amc.remove(paramMessageListener);
      if (paramMessageListener == null)
      {
        paramd.a(new Status(4002));
        return;
      }
      a(paramd, paramMessageListener);
    }
  }
  
  public void a(a.d<Status> paramd, MessageApi.MessageListener paramMessageListener, IntentFilter[] arg3)
  {
    av localav = av.a(paramMessageListener, ???);
    synchronized (amc)
    {
      if (amc.get(paramMessageListener) != null)
      {
        paramd.a(new Status(4001));
        return;
      }
      amc.put(paramMessageListener, localav);
      ((ad)fo()).a(new au.8(this, paramMessageListener, paramd), new b(localav));
      return;
    }
  }
  
  public void a(a.d<Status> paramd, NodeApi.NodeListener paramNodeListener)
  {
    av localav = av.a(paramNodeListener);
    synchronized (amd)
    {
      if (amd.get(paramNodeListener) != null)
      {
        paramd.a(new Status(4001));
        return;
      }
      amd.put(paramNodeListener, localav);
      ((ad)fo()).a(new au.9(this, paramNodeListener, paramd), new b(localav));
      return;
    }
  }
  
  public void a(a.d<DataApi.DataItemResult> paramd, PutDataRequest paramPutDataRequest)
  {
    Object localObject1 = paramPutDataRequest.getAssets().entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Asset)((Map.Entry)((Iterator)localObject1).next()).getValue();
      if ((((Asset)localObject2).getData() == null) && (((Asset)localObject2).getDigest() == null) && (((Asset)localObject2).getFd() == null) && (((Asset)localObject2).getUri() == null)) {
        throw new IllegalArgumentException("Put for " + paramPutDataRequest.getUri() + " contains invalid asset: " + localObject2);
      }
    }
    localObject1 = PutDataRequest.j(paramPutDataRequest.getUri());
    ((PutDataRequest)localObject1).setData(paramPutDataRequest.getData());
    Object localObject2 = new ArrayList();
    Iterator localIterator = paramPutDataRequest.getAssets().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject3 = (Map.Entry)localIterator.next();
      Asset localAsset = (Asset)((Map.Entry)localObject3).getValue();
      if (localAsset.getData() == null) {
        ((PutDataRequest)localObject1).putAsset((String)((Map.Entry)localObject3).getKey(), (Asset)((Map.Entry)localObject3).getValue());
      } else {
        try
        {
          ParcelFileDescriptor[] arrayOfParcelFileDescriptor = ParcelFileDescriptor.createPipe();
          if (Log.isLoggable("WearableClient", 3)) {
            Log.d("WearableClient", "processAssets: replacing data with FD in asset: " + localAsset + " read:" + arrayOfParcelFileDescriptor[0] + " write:" + arrayOfParcelFileDescriptor[1]);
          }
          ((PutDataRequest)localObject1).putAsset((String)((Map.Entry)localObject3).getKey(), Asset.createFromFd(arrayOfParcelFileDescriptor[0]));
          localObject3 = a(arrayOfParcelFileDescriptor[1], localAsset.getData());
          ((List)localObject2).add(localObject3);
          agR.submit((Runnable)localObject3);
        }
        catch (IOException paramd)
        {
          throw new IllegalStateException("Unable to create ParcelFileDescriptor for asset in request: " + paramPutDataRequest, paramd);
        }
      }
    }
    try
    {
      ((ad)fo()).a(new au.a(paramd, (List)localObject2), (PutDataRequest)localObject1);
      return;
    }
    catch (NullPointerException paramd)
    {
      throw new IllegalStateException("Unable to putDataItem: " + paramPutDataRequest, paramd);
    }
  }
  
  public void a(a.d<Status> paramd, ac paramac)
  {
    ((ad)fo()).a(new au.10(this, paramd), new ao(paramac));
  }
  
  public void a(a.d<MessageApi.SendMessageResult> paramd, String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    ((ad)fo()).a(new au.3(this, paramd), paramString1, paramString2, paramArrayOfByte);
  }
  
  protected void a(hj paramhj, hc.e parame)
  {
    paramhj.e(parame, 5077000, getContext().getPackageName());
  }
  
  public void b(a.d<DataItemBuffer> paramd, Uri paramUri)
  {
    ((ad)fo()).b(new au.14(this, paramd), paramUri);
  }
  
  public void b(a.d<Status> paramd, NodeApi.NodeListener paramNodeListener)
  {
    synchronized (amd)
    {
      paramNodeListener = (ac)amd.remove(paramNodeListener);
      if (paramNodeListener == null)
      {
        paramd.a(new Status(4002));
        return;
      }
      a(paramd, paramNodeListener);
    }
  }
  
  protected String bp()
  {
    return "com.google.android.gms.wearable.BIND";
  }
  
  protected String bq()
  {
    return "com.google.android.gms.wearable.internal.IWearableService";
  }
  
  protected ad bz(IBinder paramIBinder)
  {
    return ad.a.by(paramIBinder);
  }
  
  public void c(a.d<DataApi.DeleteDataItemsResult> paramd, Uri paramUri)
  {
    ((ad)fo()).c(new au.2(this, paramd), paramUri);
  }
  
  public void disconnect()
  {
    super.disconnect();
    amb.clear();
    amc.clear();
    amd.clear();
  }
  
  public void o(a.d<DataItemBuffer> paramd)
  {
    ((ad)fo()).d(new au.13(this, paramd));
  }
  
  public void p(a.d<NodeApi.GetLocalNodeResult> paramd)
  {
    ((ad)fo()).e(new au.5(this, paramd));
  }
  
  public void q(a.d<NodeApi.GetConnectedNodesResult> paramd)
  {
    ((ad)fo()).f(new au.6(this, paramd));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */