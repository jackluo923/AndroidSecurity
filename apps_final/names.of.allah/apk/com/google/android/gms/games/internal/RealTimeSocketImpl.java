package com.google.android.gms.games.internal;

import android.net.LocalSocket;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import java.io.InputStream;
import java.io.OutputStream;

final class RealTimeSocketImpl
  implements RealTimeSocket
{
  private ParcelFileDescriptor Fg;
  private final String On;
  private final LocalSocket Pa;
  
  RealTimeSocketImpl(LocalSocket paramLocalSocket, String paramString)
  {
    Pa = paramLocalSocket;
    On = paramString;
  }
  
  public final void close()
  {
    Pa.close();
  }
  
  public final InputStream getInputStream()
  {
    return Pa.getInputStream();
  }
  
  public final OutputStream getOutputStream()
  {
    return Pa.getOutputStream();
  }
  
  public final ParcelFileDescriptor getParcelFileDescriptor()
  {
    if ((Fg == null) && (!isClosed()))
    {
      Parcel localParcel = Parcel.obtain();
      localParcel.writeFileDescriptor(Pa.getFileDescriptor());
      localParcel.setDataPosition(0);
      Fg = localParcel.readFileDescriptor();
    }
    return Fg;
  }
  
  public final boolean isClosed()
  {
    return (!Pa.isConnected()) && (!Pa.isBound());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.RealTimeSocketImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */