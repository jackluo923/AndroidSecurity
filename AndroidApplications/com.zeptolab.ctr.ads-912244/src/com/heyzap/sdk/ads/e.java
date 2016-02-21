package com.heyzap.sdk.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.drive.DriveFile;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.house.model.AdModel;
import com.heyzap.internal.Utils;

final class e implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ Class b;
    final /* synthetic */ AdModel c;

    e(Activity activity, Class cls, AdModel adModel) {
        this.a = activity;
        this.b = cls;
        this.c = adModel;
    }

    @SuppressLint({"NewApi"})
    public void run() {
        Intent intent = new Intent(this.a, this.b);
        intent.setFlags(DriveFile.MODE_WRITE_ONLY);
        intent.putExtra(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY, this.c.getImpressionId());
        intent.putExtra(AbstractActivity.ACTIVITY_INTENT_CONTEXT_KEY, InterstitialAd.access$000());
        intent.putExtra(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY, 1);
        intent.putExtra(AbstractActivity.ACTIVITY_INTENT_ORIGINAL_ORIENTATION, this.a.getResources().getConfiguration().orientation);
        this.a.startActivity(intent);
        if (Utils.getSdkVersion() >= 5) {
            this.a.overridePendingTransition(17432578, 17432579);
        }
    }
}