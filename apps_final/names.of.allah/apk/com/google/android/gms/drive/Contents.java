package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class Contents
  implements SafeParcelable
{
  public static final Parcelable.Creator<Contents> CREATOR = new a();
  final ParcelFileDescriptor Fg;
  private boolean HA = false;
  private boolean HB = false;
  final int Hv;
  final DriveId Hw;
  String Hx;
  boolean Hy;
  private boolean Hz = false;
  private boolean mClosed = false;
  final int qX;
  final int xJ;
  
  Contents(int paramInt1, ParcelFileDescriptor paramParcelFileDescriptor, int paramInt2, int paramInt3, DriveId paramDriveId, String paramString, boolean paramBoolean)
  {
    xJ = paramInt1;
    Fg = paramParcelFileDescriptor;
    qX = paramInt2;
    Hv = paramInt3;
    Hw = paramDriveId;
    Hx = paramString;
    Hy = paramBoolean;
  }
  
  public void close()
  {
    mClosed = true;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public DriveId getDriveId()
  {
    return Hw;
  }
  
  public InputStream getInputStream()
  {
    if (mClosed) {
      throw new IllegalStateException("Contents have been closed, cannot access the input stream.");
    }
    if (Hv != 268435456) {
      throw new IllegalStateException("getInputStream() can only be used with contents opened with MODE_READ_ONLY.");
    }
    if (Hz) {
      throw new IllegalStateException("getInputStream() can only be called once per Contents instance.");
    }
    Hz = true;
    return new FileInputStream(Fg.getFileDescriptor());
  }
  
  public int getMode()
  {
    return Hv;
  }
  
  public OutputStream getOutputStream()
  {
    if (mClosed) {
      throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
    }
    if (Hv != 536870912) {
      throw new IllegalStateException("getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY.");
    }
    if (HA) {
      throw new IllegalStateException("getOutputStream() can only be called once per Contents instance.");
    }
    HA = true;
    return new FileOutputStream(Fg.getFileDescriptor());
  }
  
  public ParcelFileDescriptor getParcelFileDescriptor()
  {
    if (mClosed) {
      throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
    }
    return Fg;
  }
  
  public int getRequestId()
  {
    return qX;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.Contents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */