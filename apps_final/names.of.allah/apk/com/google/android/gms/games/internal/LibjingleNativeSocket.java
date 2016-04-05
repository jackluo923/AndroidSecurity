package com.google.android.gms.games.internal;

import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class LibjingleNativeSocket
  implements RealTimeSocket
{
  private static final String TAG = LibjingleNativeSocket.class.getSimpleName();
  private final ParcelFileDescriptor Fg;
  private final InputStream OT;
  private final OutputStream OU;
  
  LibjingleNativeSocket(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    Fg = paramParcelFileDescriptor;
    OT = new ParcelFileDescriptor.AutoCloseInputStream(paramParcelFileDescriptor);
    OU = new ParcelFileDescriptor.AutoCloseOutputStream(paramParcelFileDescriptor);
  }
  
  public final void close()
  {
    Fg.close();
  }
  
  public final InputStream getInputStream()
  {
    return OT;
  }
  
  public final OutputStream getOutputStream()
  {
    return OU;
  }
  
  public final ParcelFileDescriptor getParcelFileDescriptor()
  {
    return Fg;
  }
  
  public final boolean isClosed()
  {
    try
    {
      OT.available();
      return false;
    }
    catch (IOException localIOException) {}
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.LibjingleNativeSocket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */