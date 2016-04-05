package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.internal.OpenFileIntentSenderRequest;
import com.google.android.gms.drive.internal.aa;
import com.google.android.gms.drive.internal.r;
import com.google.android.gms.internal.hn;

public class OpenFileActivityBuilder
{
  public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
  private String HV;
  private String[] HW;
  private DriveId HX;
  
  public IntentSender build(GoogleApiClient paramGoogleApiClient)
  {
    hn.a(paramGoogleApiClient.isConnected(), "Client must be connected");
    if (HW == null) {
      HW = new String[0];
    }
    paramGoogleApiClient = ((r)paramGoogleApiClient.a(Drive.yE)).gk();
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.a(new OpenFileIntentSenderRequest(HV, HW, HX));
      return paramGoogleApiClient;
    }
    catch (RemoteException paramGoogleApiClient)
    {
      throw new RuntimeException("Unable to connect Drive Play Service", paramGoogleApiClient);
    }
  }
  
  public OpenFileActivityBuilder setActivityStartFolder(DriveId paramDriveId)
  {
    HX = ((DriveId)hn.f(paramDriveId));
    return this;
  }
  
  public OpenFileActivityBuilder setActivityTitle(String paramString)
  {
    HV = ((String)hn.f(paramString));
    return this;
  }
  
  public OpenFileActivityBuilder setMimeType(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "mimeTypes may not be null");
      HW = paramArrayOfString;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.OpenFileActivityBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */