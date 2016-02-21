package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.Iterator;

public class hh {
    private final hl Lk;
    private ContentProviderClient Ll;
    private boolean Lm;
    private HashMap Ln;
    private final Context mContext;

    private static class a extends Handler {
        private final LocationListener Lo;

        public a(LocationListener locationListener) {
            this.Lo = locationListener;
        }

        public a(LocationListener locationListener, Looper looper) {
            super(looper);
            this.Lo = locationListener;
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case GoogleScorer.CLIENT_GAMES:
                    this.Lo.onLocationChanged(new Location((Location) message.obj));
                default:
                    Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
            }
        }
    }

    private static class b extends com.google.android.gms.location.a.a {
        private Handler Lp;

        b(LocationListener locationListener, Looper looper) {
            this.Lp = looper == null ? new a(locationListener) : new a(locationListener, looper);
        }

        public void onLocationChanged(Location location) {
            if (this.Lp == null) {
                Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
            } else {
                Message obtain = Message.obtain();
                obtain.what = 1;
                obtain.obj = location;
                this.Lp.sendMessage(obtain);
            }
        }

        public void release() {
            this.Lp = null;
        }
    }

    public hh(Context context, hl hlVar) {
        this.Ll = null;
        this.Lm = false;
        this.Ln = new HashMap();
        this.mContext = context;
        this.Lk = hlVar;
    }

    public Location getLastLocation() {
        this.Lk.bm();
        try {
            return ((hg) this.Lk.eb()).aF(this.mContext.getPackageName());
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void gl() {
        if (this.Lm) {
            setMockMode(false);
        }
    }

    public void removeAllListeners() {
        try {
            synchronized (this.Ln) {
                Iterator it = this.Ln.values().iterator();
                while (it.hasNext()) {
                    com.google.android.gms.location.a aVar = (b) it.next();
                    if (aVar != null) {
                        ((hg) this.Lk.eb()).a(aVar);
                    }
                }
                this.Ln.clear();
            }
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void removeLocationUpdates(PendingIntent pendingIntent) {
        this.Lk.bm();
        try {
            ((hg) this.Lk.eb()).a(pendingIntent);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void removeLocationUpdates(Object obj) {
        this.Lk.bm();
        er.b(obj, (Object)"Invalid null listener");
        synchronized (this.Ln) {
            try {
                com.google.android.gms.location.a aVar = (b) this.Ln.remove(obj);
                if (this.Ll != null && this.Ln.isEmpty()) {
                    this.Ll.release();
                    this.Ll = null;
                }
                if (aVar != null) {
                    aVar.release();
                    ((hg) this.Lk.eb()).a(aVar);
                }
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            } catch (Throwable th) {
            }
        }
    }

    public void requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        this.Lk.bm();
        try {
            ((hg) this.Lk.eb()).a(locationRequest, pendingIntent);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        this.Lk.bm();
        if (looper == null) {
            er.b(Looper.myLooper(), (Object)"Can't create handler inside thread that has not called Looper.prepare()");
        }
        synchronized (this.Ln) {
            try {
                com.google.android.gms.location.a bVar;
                b bVar2 = (b) this.Ln.get(locationListener);
                bVar = bVar2 == null ? new b(locationListener, looper) : bVar2;
                this.Ln.put(locationListener, bVar);
                ((hg) this.Lk.eb()).a(locationRequest, bVar, this.mContext.getPackageName());
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            } catch (Throwable th) {
            }
        }
    }

    public void setMockLocation(Location location) {
        this.Lk.bm();
        try {
            ((hg) this.Lk.eb()).setMockLocation(location);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void setMockMode(boolean z) {
        this.Lk.bm();
        try {
            ((hg) this.Lk.eb()).setMockMode(z);
            this.Lm = z;
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }
}