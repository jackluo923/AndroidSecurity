package com.adsdk.sdk;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

class Util$1
  extends AsyncTask<Void, Void, Void>
{
  Util$1(Context paramContext) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    try
    {
      Util.access$0(AdvertisingIdClient.getAdvertisingIdInfo(val$context).getId());
      return null;
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
    catch (GooglePlayServicesNotAvailableException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
    catch (IllegalStateException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
    catch (GooglePlayServicesRepairableException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
    catch (Exception paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.Util.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */