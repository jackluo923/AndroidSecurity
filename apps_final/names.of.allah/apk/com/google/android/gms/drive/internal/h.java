package com.google.android.gms.drive.internal;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.internal.hn;

public class h
{
  private String HV;
  private DriveId HX;
  protected MetadataChangeSet Ix;
  private Integer Iy;
  private final int Iz;
  
  public h(int paramInt)
  {
    Iz = paramInt;
  }
  
  public void a(DriveId paramDriveId)
  {
    HX = ((DriveId)hn.f(paramDriveId));
  }
  
  public void a(MetadataChangeSet paramMetadataChangeSet)
  {
    Ix = ((MetadataChangeSet)hn.f(paramMetadataChangeSet));
  }
  
  public void aM(String paramString)
  {
    HV = ((String)hn.f(paramString));
  }
  
  public void aS(int paramInt)
  {
    Iy = Integer.valueOf(paramInt);
  }
  
  public IntentSender build(GoogleApiClient paramGoogleApiClient)
  {
    hn.b(Ix, "Must provide initial metadata to CreateFileActivityBuilder.");
    hn.a(paramGoogleApiClient.isConnected(), "Client must be connected");
    paramGoogleApiClient = ((r)paramGoogleApiClient.a(Drive.yE)).gk();
    if (Iy == null) {}
    for (int i = -1;; i = Iy.intValue()) {
      try
      {
        paramGoogleApiClient = paramGoogleApiClient.a(new CreateFileIntentSenderRequest(Ix.gh(), i, HV, HX, Iz));
        return paramGoogleApiClient;
      }
      catch (RemoteException paramGoogleApiClient)
      {
        throw new RuntimeException("Unable to connect Drive Play Service", paramGoogleApiClient);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */