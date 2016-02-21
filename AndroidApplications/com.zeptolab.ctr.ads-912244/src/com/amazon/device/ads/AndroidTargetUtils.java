package com.amazon.device.ads;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

class AndroidTargetUtils {

    @TargetApi(5)
    private static class EclairTargetUtils {
        private EclairTargetUtils() {
        }

        protected static BitmapDrawable a(Resources resources, String str) {
            return new BitmapDrawable(resources, str);
        }
    }

    @TargetApi(8)
    private static class FroyoTargetUtils {
        private FroyoTargetUtils() {
        }

        protected static int a(Display display) {
            return display.getRotation();
        }

        protected static String a(Context context) {
            return context.getPackageCodePath();
        }
    }

    @TargetApi(9)
    private static class GingerbreadTargetUtils {
        private GingerbreadTargetUtils() {
        }

        protected static void a(Editor editor) {
            editor.apply();
        }
    }

    @TargetApi(11)
    private static class HoneycombTargetUtils {
        private HoneycombTargetUtils() {
        }

        protected static void a(Activity activity) {
            ActionBar actionBar = activity.getActionBar();
            if (actionBar != null) {
                actionBar.hide();
            }
            activity.getWindow().getDecorView().setSystemUiVisibility(GoogleScorer.CLIENT_APPSTATE);
        }

        protected static final void a(AsyncTask asyncTask, Object... objArr) {
            asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, objArr);
        }

        protected static void a(WebView webView) {
            webView.onPause();
        }

        protected static void b(WebView webView) {
            webView.onResume();
        }

        public static final void disableHardwareAcceleration(View view) {
            view.setLayerType(1, null);
        }

        public static boolean isInstanceOfSQLiteDatabaseLockedException(SQLiteException sQLiteException) {
            return sQLiteException instanceof SQLiteDatabaseLockedException;
        }
    }

    @TargetApi(16)
    private static class JellyBeanTargetUtils {
        private JellyBeanTargetUtils() {
        }

        protected static void a(ImageButton imageButton, int i) {
            imageButton.setImageAlpha(i);
        }

        public static void setBackgroundForLinerLayout(View view, Drawable drawable) {
            view.setBackground(drawable);
        }
    }

    private AndroidTargetUtils() {
    }

    public static final void disableHardwareAcceleration(View view) {
        HoneycombTargetUtils.disableHardwareAcceleration(view);
    }

    public static void editorApply(Editor editor) {
        GingerbreadTargetUtils.a(editor);
    }

    public static void executeAsyncTask(AsyncTask asyncTask, Object... objArr) {
        if (VERSION.SDK_INT >= 11) {
            HoneycombTargetUtils.a(asyncTask, objArr);
        } else {
            asyncTask.execute(objArr);
        }
    }

    public static BitmapDrawable getNewBitmapDrawable(Resources resources, String str) {
        return isAtLeastAndroidAPI(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR) ? EclairTargetUtils.a(resources, str) : new BitmapDrawable(str);
    }

    public static int getOrientation(Display display) {
        return isAtLeastAndroidAPI(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED) ? FroyoTargetUtils.a(display) : display.getOrientation();
    }

    public static String getPackageCodePath(Context context) {
        return FroyoTargetUtils.a(context);
    }

    public static void hideActionAndStatusBars(Activity activity) {
        HoneycombTargetUtils.a(activity);
    }

    public static boolean isAtLeastAndroidAPI(int i) {
        return VERSION.SDK_INT >= i;
    }

    public static boolean isInstanceOfSQLiteDatabaseLockedException(SQLiteException sQLiteException) {
        return HoneycombTargetUtils.isInstanceOfSQLiteDatabaseLockedException(sQLiteException);
    }

    public static void setBackgroundDrawable(View view, Drawable drawable) {
        if (isAtLeastAndroidAPI(MMException.REQUEST_NOT_PERMITTED)) {
            JellyBeanTargetUtils.setBackgroundForLinerLayout(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void setImageButtonAlpha(ImageButton imageButton, int i) {
        if (isAtLeastAndroidAPI(MMException.REQUEST_NOT_PERMITTED)) {
            JellyBeanTargetUtils.a(imageButton, i);
        } else {
            imageButton.setAlpha(i);
        }
    }

    public static void webViewOnPause(WebView webView) {
        HoneycombTargetUtils.a(webView);
    }

    public static void webViewOnResume(WebView webView) {
        HoneycombTargetUtils.b(webView);
    }
}