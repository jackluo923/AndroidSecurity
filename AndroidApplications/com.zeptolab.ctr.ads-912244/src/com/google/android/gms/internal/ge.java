package com.google.android.gms.internal;

import android.net.LocalSocket;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import java.io.InputStream;
import java.io.OutputStream;

final class ge implements RealTimeSocket {
    private ParcelFileDescriptor AC;
    private final String GZ;
    private final LocalSocket HG;

    ge(LocalSocket localSocket, String str) {
        this.HG = localSocket;
        this.GZ = str;
    }

    public void close() {
        this.HG.close();
    }

    public InputStream getInputStream() {
        return this.HG.getInputStream();
    }

    public OutputStream getOutputStream() {
        return this.HG.getOutputStream();
    }

    public ParcelFileDescriptor getParcelFileDescriptor() {
        if (this.AC == null && !isClosed()) {
            Parcel obtain = Parcel.obtain();
            obtain.writeFileDescriptor(this.HG.getFileDescriptor());
            obtain.setDataPosition(0);
            this.AC = obtain.readFileDescriptor();
        }
        return this.AC;
    }

    public boolean isClosed() {
        return !this.HG.isConnected() && !this.HG.isBound();
    }
}