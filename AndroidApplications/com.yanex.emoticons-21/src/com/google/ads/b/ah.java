package com.google.ads.b;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.gesture.Gesture;
import android.gesture.GestureOverlayView;
import android.gesture.GestureOverlayView.OnGesturePerformedListener;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import com.google.ads.util.g;
import java.util.ArrayList;
import java.util.Iterator;

public final class ah implements OnGesturePerformedListener {
    private final GestureStore a;
    private Activity b;
    private w c;

    public ah(Activity activity, w wVar, GestureStore gestureStore) {
        this.b = activity;
        this.c = wVar;
        this.a = gestureStore;
    }

    public final void onGesturePerformed(GestureOverlayView gestureOverlayView, Gesture gesture) {
        ArrayList recognize = this.a.recognize(gesture);
        Iterator it = recognize.iterator();
        while (it.hasNext()) {
            Prediction prediction = (Prediction) it.next();
            g.a(new StringBuilder("Gesture: '").append(prediction.name).append("' = ").append(prediction.score).toString());
        }
        if (recognize.size() == 0) {
            g.a("Gesture: No remotely reasonable predictions");
        } else if (((Prediction) recognize.get(0)).score > 2.0d && "debug".equals(((Prediction) recognize.get(0)).name) && this.c != null) {
            Object b;
            b = this.c.b() == null ? "[No diagnostics available]" : this.c.b();
            new Builder(this.b).setMessage(b).setTitle("Ad Information").setPositiveButton("Share", new ak(this, b)).setNeutralButton("Report", new aj(this)).setNegativeButton("Close", new ai(this)).create().show();
        }
    }
}