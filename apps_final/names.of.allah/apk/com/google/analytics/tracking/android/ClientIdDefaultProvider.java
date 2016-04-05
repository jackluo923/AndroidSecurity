package com.google.analytics.tracking.android;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

class ClientIdDefaultProvider
  implements DefaultProvider
{
  private static ClientIdDefaultProvider sInstance;
  private static final Object sInstanceLock = new Object();
  private String mClientId;
  private boolean mClientIdLoaded = false;
  private final Object mClientIdLock = new Object();
  private final Context mContext;
  
  protected ClientIdDefaultProvider(Context paramContext)
  {
    mContext = paramContext;
    asyncInitializeClientId();
  }
  
  private void asyncInitializeClientId()
  {
    new ClientIdDefaultProvider.1(this, "client_id_fetcher").start();
  }
  
  private String blockingGetClientId()
  {
    if (!mClientIdLoaded) {}
    synchronized (mClientIdLock)
    {
      if (!mClientIdLoaded) {
        Log.v("Waiting for clientId to load");
      }
      try
      {
        do
        {
          mClientIdLock.wait();
        } while (!mClientIdLoaded);
        Log.v("Loaded clientId");
        return mClientId;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          Log.e("Exception while waiting for clientId: " + localInterruptedException);
        }
      }
    }
  }
  
  @VisibleForTesting
  static void dropInstance()
  {
    synchronized (sInstanceLock)
    {
      sInstance = null;
      return;
    }
  }
  
  public static ClientIdDefaultProvider getProvider()
  {
    synchronized (sInstanceLock)
    {
      ClientIdDefaultProvider localClientIdDefaultProvider = sInstance;
      return localClientIdDefaultProvider;
    }
  }
  
  public static void initializeProvider(Context paramContext)
  {
    synchronized (sInstanceLock)
    {
      if (sInstance == null) {
        sInstance = new ClientIdDefaultProvider(paramContext);
      }
      return;
    }
  }
  
  private boolean storeClientId(String paramString)
  {
    try
    {
      Log.v("Storing clientId.");
      FileOutputStream localFileOutputStream = mContext.openFileOutput("gaClientId", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      return true;
    }
    catch (FileNotFoundException paramString)
    {
      Log.e("Error creating clientId file.");
      return false;
    }
    catch (IOException paramString)
    {
      Log.e("Error writing to clientId file.");
    }
    return false;
  }
  
  protected String generateClientId()
  {
    String str2 = UUID.randomUUID().toString().toLowerCase();
    String str1 = str2;
    if (!storeClientId(str2)) {
      str1 = "0";
    }
    return str1;
  }
  
  public String getValue(String paramString)
  {
    if ("&cid".equals(paramString)) {
      return blockingGetClientId();
    }
    return null;
  }
  
  @VisibleForTesting
  String initializeClientId()
  {
    localObject4 = null;
    Object localObject3 = null;
    for (;;)
    {
      try
      {
        localFileInputStream = mContext.openFileInput("gaClientId");
        localObject1 = new byte[''];
        i = localFileInputStream.read((byte[])localObject1, 0, 128);
        if (localFileInputStream.available() <= 0) {
          continue;
        }
        Log.e("clientId file seems corrupted, deleting it.");
        localFileInputStream.close();
        mContext.deleteFile("gaClientId");
        localObject1 = localObject3;
      }
      catch (IOException localIOException1)
      {
        try
        {
          FileInputStream localFileInputStream;
          Object localObject1;
          int i;
          localFileInputStream.close();
        }
        catch (IOException localIOException2)
        {
          Object localObject2;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException3) {}
        localIOException1 = localIOException1;
        localObject2 = localObject4;
        Log.e("Error reading clientId file, deleting it.");
        mContext.deleteFile("gaClientId");
        continue;
        continue;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        FileNotFoundException localFileNotFoundException2 = localFileNotFoundException3;
        continue;
      }
      localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = generateClientId();
      }
      return (String)localObject3;
      if (i > 0) {
        continue;
      }
      Log.e("clientId file seems empty, deleting it.");
      localFileInputStream.close();
      mContext.deleteFile("gaClientId");
      localObject1 = localObject3;
    }
    localObject1 = new String((byte[])localObject1, 0, i);
  }
  
  public boolean providesField(String paramString)
  {
    return "&cid".equals(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.ClientIdDefaultProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */