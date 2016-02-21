package com.google.android.gms.games.multiplayer.realtime;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;

public interface RealTimeSocket {
    void close();

    InputStream getInputStream();

    OutputStream getOutputStream();

    ParcelFileDescriptor getParcelFileDescriptor();

    boolean isClosed();
}