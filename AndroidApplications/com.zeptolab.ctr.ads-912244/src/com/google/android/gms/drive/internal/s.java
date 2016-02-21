package com.google.android.gms.drive.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.DriveEvent.Listener;
import com.google.android.gms.internal.er;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class s extends com.google.android.gms.drive.internal.w.a {
    private final Listener DR;
    private final a DS;
    private final int Dm;

    private static class a extends Handler {
        private a(Looper looper) {
            super(looper);
        }

        public void a_(Listener listener, DriveEvent driveEvent) {
            sendMessage(obtainMessage(1, new Pair(listener, driveEvent)));
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case GoogleScorer.CLIENT_GAMES:
                    Pair pair = (Pair) message.obj;
                    ((Listener) pair.first).onEvent((DriveEvent) pair.second);
                default:
                    Log.wtf("EventCallback", "Don't know how to handle this event");
            }
        }
    }

    public s(Looper looper, int i, Listener listener) {
        this.Dm = i;
        this.DR = listener;
        this.DS = new a(null);
    }

    public void a(OnEventResponse onEventResponse) {
        er.v(this.Dm == onEventResponse.getEventType());
        switch (onEventResponse.getEventType()) {
            case GoogleScorer.CLIENT_GAMES:
                this.DS.a(this.DR, onEventResponse.fa());
            case GoogleScorer.CLIENT_PLUS:
                this.DS.a(this.DR, onEventResponse.fb());
            default:
                Log.w("EventCallback", "Unexpected event type:" + onEventResponse.getEventType());
        }
    }
}