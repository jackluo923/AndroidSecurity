package com.zeptolab.ctr.ads;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import com.IQzone.postitial.b;
import com.IQzone.postitial.b.g;
import com.zeptolab.ctr.CtrApp;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.L;

public class AdMarvelPostitial {
    private static final String TAG = "AdMarvelPostitial";
    private static CtrApp m_activity;
    private static boolean m_isDisabled;

    static class AdMarvelOnAppDoneListener implements g {
        AdMarvelOnAppDoneListener() {
        }

        public void onAppDone() {
            L.d(TAG, "Destroying app");
            if (m_activity != null) {
                m_activity.tryFinish();
            }
        }
    }

    private static class PauseTask extends AsyncTask {
        private PauseTask() {
        }

        protected Void doInBackground(b... bVarArr) {
            bVarArr[0].b().b(m_activity);
            return null;
        }
    }

    private static class ResumeTask extends AsyncTask {
        private ResumeTask() {
        }

        protected Void doInBackground(b... bVarArr) {
            bVarArr[0].b().a(m_activity);
            return null;
        }
    }

    static {
        m_activity = null;
        m_isDisabled = false;
    }

    public static void checkDisabled() {
        if (CtrPreferences.getInstance().getBooleanForKey("IAP_BANNERS")) {
            disable();
        }
    }

    public static void disable() {
        L.d(TAG, "disabling ads");
        m_isDisabled = true;
    }

    public static boolean isDisabled() {
        return m_isDisabled;
    }

    public static void onCreate(Context context) {
        if (m_isDisabled) {
            L.d(TAG, "onCreate: ads disabled");
        } else {
            try {
                b.a(context).a(new AdMarvelOnAppDoneListener());
                L.d(TAG, "initialized");
            } catch (Exception e) {
                L.e(TAG, "initialization failed: " + e.getMessage());
                m_isDisabled = true;
            }
        }
    }

    public static void onPause(Activity activity) {
        if (m_isDisabled) {
            L.d(TAG, "onPause: ads disabled");
        } else {
            if (m_activity == null) {
                m_activity = activity instanceof CtrApp ? (CtrApp) activity : null;
            }
            if (b.a(m_activity) != null) {
                new PauseTask().execute(new b[]{bVar});
                L.d(TAG, "paused");
            } else {
                L.w(TAG, "resumed before initialized");
            }
        }
    }

    public static void onResume(Activity activity) {
        if (m_isDisabled) {
            L.d(TAG, "onResume: ads disabled");
        } else {
            if (m_activity == null) {
                m_activity = activity instanceof CtrApp ? (CtrApp) activity : null;
            }
            if (b.a(m_activity) != null) {
                new ResumeTask().execute(new b[]{bVar});
                L.d(TAG, "resumed");
            } else {
                L.w(TAG, "paused before initialized");
            }
        }
    }
}