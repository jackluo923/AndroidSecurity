package com.google.android.gms.plus;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class PlusOneDummyView extends FrameLayout {
    public static final String TAG = "PlusOneDummyView";

    private static interface d {
        Drawable getDrawable(int i);

        boolean isValid();
    }

    private static class a implements d {
        private Context mContext;

        private a(Context context) {
            this.mContext = context;
        }

        public Drawable getDrawable(int i) {
            return this.mContext.getResources().getDrawable(17301508);
        }

        public boolean isValid() {
            return true;
        }
    }

    private static class b implements d {
        private Context mContext;

        private b(Context context) {
            this.mContext = context;
        }

        public Drawable getDrawable(int i) {
            try {
                String str;
                Resources resources = this.mContext.createPackageContext(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, GoogleScorer.CLIENT_APPSTATE).getResources();
                String str2 = GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE;
                switch (i) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        str = "ic_plusone_small";
                        break;
                    case GoogleScorer.CLIENT_GAMES:
                        str = "ic_plusone_medium";
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        str = "ic_plusone_tall";
                        break;
                    default:
                        str = "ic_plusone_standard";
                        break;
                }
                return resources.getDrawable(resources.getIdentifier(str, "drawable", str2));
            } catch (NameNotFoundException e) {
                return null;
            }
        }

        public boolean isValid() {
            try {
                this.mContext.createPackageContext(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, GoogleScorer.CLIENT_APPSTATE).getResources();
                return true;
            } catch (NameNotFoundException e) {
                return false;
            }
        }
    }

    private static class c implements d {
        private Context mContext;

        private c(Context context) {
            this.mContext = context;
        }

        public Drawable getDrawable(int i) {
            String str;
            switch (i) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    str = "ic_plusone_small_off_client";
                    break;
                case GoogleScorer.CLIENT_GAMES:
                    str = "ic_plusone_medium_off_client";
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = "ic_plusone_tall_off_client";
                    break;
                default:
                    str = "ic_plusone_standard_off_client";
                    break;
            }
            return this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier(str, "drawable", this.mContext.getPackageName()));
        }

        public boolean isValid() {
            return this.mContext.getResources().getIdentifier("ic_plusone_small_off_client", "drawable", this.mContext.getPackageName()) != 0 && this.mContext.getResources().getIdentifier("ic_plusone_medium_off_client", "drawable", this.mContext.getPackageName()) != 0 && this.mContext.getResources().getIdentifier("ic_plusone_tall_off_client", "drawable", this.mContext.getPackageName()) != 0 && this.mContext.getResources().getIdentifier("ic_plusone_standard_off_client", "drawable", this.mContext.getPackageName()) != 0;
        }
    }

    public PlusOneDummyView(Context context, int i) {
        super(context);
        View button = new Button(context);
        button.setEnabled(false);
        button.setBackgroundDrawable(hk().getDrawable(i));
        Point bA = bA(i);
        addView(button, new LayoutParams(bA.x, bA.y, 17));
    }

    private Point bA(int i) {
        int i2 = MMException.DISPLAY_AD_NOT_PERMITTED;
        int i3 = MMException.DISPLAY_AD_NOT_READY;
        Point point = new Point();
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                i3 = MMException.REQUEST_NOT_FILLED;
                break;
            case GoogleScorer.CLIENT_GAMES:
                i2 = ApiEventType.API_MRAID_PLAY_AUDIO;
                break;
            case GoogleScorer.CLIENT_PLUS:
                i2 = ApiEventType.API_MRAID_CLOSE_VIDEO;
                break;
            default:
                i2 = 38;
                i3 = 24;
                break;
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float applyDimension = TypedValue.applyDimension(1, (float) i2, displayMetrics);
        float applyDimension2 = TypedValue.applyDimension(1, (float) i3, displayMetrics);
        point.x = (int) (((double) applyDimension) + 0.5d);
        point.y = (int) (((double) applyDimension2) + 0.5d);
        return point;
    }

    private d hk() {
        d bVar = new b(null);
        if (!bVar.isValid()) {
            bVar = new c(null);
        }
        return bVar.isValid() ? bVar : new a(null);
    }
}