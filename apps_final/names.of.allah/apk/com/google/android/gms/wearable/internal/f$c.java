package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.DataApi.GetFdForAssetResult;
import java.io.IOException;
import java.io.InputStream;

public class f$c
  implements DataApi.GetFdForAssetResult
{
  private final ParcelFileDescriptor alG;
  private final Status yw;
  
  public f$c(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    yw = paramStatus;
    alG = paramParcelFileDescriptor;
  }
  
  public ParcelFileDescriptor getFd()
  {
    return alG;
  }
  
  public InputStream getInputStream()
  {
    return new ParcelFileDescriptor.AutoCloseInputStream(alG);
  }
  
  public Status getStatus()
  {
    return yw;
  }
  
  public void release()
  {
    try
    {
      alG.close();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */