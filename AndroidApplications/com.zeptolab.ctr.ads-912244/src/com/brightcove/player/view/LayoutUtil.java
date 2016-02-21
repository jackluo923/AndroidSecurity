package com.brightcove.player.view;

import android.support.v4.widget.ExploreByTouchHelper;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public class LayoutUtil {
    public static String getSpecMode(int i) {
        switch (i) {
            case ExploreByTouchHelper.INVALID_ID:
                return "MeasureSpec.AT_MOST";
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "MeasureSpec.UNSPECIFIED";
            case 1073741824:
                return "MeasureSpec.EXACTLY";
            default:
                return null;
        }
    }
}