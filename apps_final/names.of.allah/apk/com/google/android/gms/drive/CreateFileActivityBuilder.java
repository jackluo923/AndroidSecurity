package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.internal.h;
import com.google.android.gms.internal.hn;
import java.io.IOException;

public class CreateFileActivityBuilder
{
  public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
  private final h HC = new h(0);
  private Contents HD;
  
  public IntentSender build(GoogleApiClient paramGoogleApiClient)
  {
    hn.b(HD, "Must provide initial contents to CreateFileActivityBuilder.");
    try
    {
      HD.getParcelFileDescriptor().close();
      HD.close();
      return HC.build(paramGoogleApiClient);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public CreateFileActivityBuilder setActivityStartFolder(DriveId paramDriveId)
  {
    HC.a(paramDriveId);
    return this;
  }
  
  public CreateFileActivityBuilder setActivityTitle(String paramString)
  {
    HC.aM(paramString);
    return this;
  }
  
  public CreateFileActivityBuilder setInitialContents(Contents paramContents)
  {
    HD = ((Contents)hn.f(paramContents));
    HC.aS(HD.getRequestId());
    return this;
  }
  
  public CreateFileActivityBuilder setInitialMetadata(MetadataChangeSet paramMetadataChangeSet)
  {
    HC.a(paramMetadataChangeSet);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.CreateFileActivityBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */