package com.google.android.gms.analytics;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

class h
  implements m
{
  private static h tE;
  private static final Object tn = new Object();
  private final Context mContext;
  private String tF;
  private boolean tG = false;
  private final Object tH = new Object();
  
  protected h(Context paramContext)
  {
    mContext = paramContext;
    cu();
  }
  
  private boolean K(String paramString)
  {
    try
    {
      aa.C("Storing clientId.");
      FileOutputStream localFileOutputStream = mContext.openFileOutput("gaClientId", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      return true;
    }
    catch (FileNotFoundException paramString)
    {
      aa.A("Error creating clientId file.");
      return false;
    }
    catch (IOException paramString)
    {
      aa.A("Error writing to clientId file.");
    }
    return false;
  }
  
  public static h cq()
  {
    synchronized (tn)
    {
      h localh = tE;
      return localh;
    }
  }
  
  private String cs()
  {
    if (!tG) {}
    synchronized (tH)
    {
      if (!tG) {
        aa.C("Waiting for clientId to load");
      }
      try
      {
        do
        {
          tH.wait();
        } while (!tG);
        aa.C("Loaded clientId");
        return tF;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          aa.A("Exception while waiting for clientId: " + localInterruptedException);
        }
      }
    }
  }
  
  private void cu()
  {
    new h.1(this, "client_id_fetcher").start();
  }
  
  public static void r(Context paramContext)
  {
    synchronized (tn)
    {
      if (tE == null) {
        tE = new h(paramContext);
      }
      return;
    }
  }
  
  public boolean J(String paramString)
  {
    return "&cid".equals(paramString);
  }
  
  String cr()
  {
    synchronized (tH)
    {
      tF = ct();
      String str = tF;
      return str;
    }
  }
  
  protected String ct()
  {
    String str2 = UUID.randomUUID().toString().toLowerCase();
    String str1 = str2;
    try
    {
      if (!K(str2)) {
        str1 = "0";
      }
      return str1;
    }
    catch (Exception localException) {}
    return null;
  }
  
  String cv()
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
        aa.A("clientId file seems corrupted, deleting it.");
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
          aa.C("Loaded client id from disk.");
        }
        catch (IOException localIOException2)
        {
          Object localObject2;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException3) {}
        localIOException1 = localIOException1;
        localObject2 = localObject4;
        aa.A("Error reading clientId file, deleting it.");
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
        localObject3 = ct();
      }
      return (String)localObject3;
      if (i > 0) {
        continue;
      }
      aa.A("clientId file seems empty, deleting it.");
      localFileInputStream.close();
      mContext.deleteFile("gaClientId");
      localObject1 = localObject3;
    }
    localObject1 = new String((byte[])localObject1, 0, i);
  }
  
  public String getValue(String paramString)
  {
    if ("&cid".equals(paramString)) {
      return cs();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */