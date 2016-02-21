package com.millennialmedia.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Vibrator;
import com.brightcove.player.media.ErrorFields;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.androidsdk.impl.ConfigException;
import java.util.Map;
import java.util.concurrent.Callable;

class BridgeMMNotification extends MMJSObject implements OnClickListener {
    private String a;
    private String d;
    private int e;

    class AnonymousClass_1 implements Callable {
        final /* synthetic */ Map a;

        AnonymousClass_1(Map map) {
            this.a = map;
        }

        public MMJSResponse call() {
            MMWebView mMWebView = (MMWebView) BridgeMMNotification.this.c.get();
            if (mMWebView != null) {
                Context j = mMWebView.j();
                Map map = this.a;
                if (j != null) {
                    if (!j.isFinishing()) {
                        AlertDialog create = new Builder(j).create();
                        if (map.containsKey(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE)) {
                            create.setTitle((CharSequence) map.get(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE));
                        }
                        if (map.containsKey(ErrorFields.MESSAGE)) {
                            create.setMessage((CharSequence) map.get(ErrorFields.MESSAGE));
                        }
                        if (map.containsKey("cancelButton")) {
                            create.setButton(ConfigException.MISSING_ACTIVITY_DECLARATION, (CharSequence) map.get("cancelButton"), BridgeMMNotification.this);
                        }
                        if (map.containsKey("buttons")) {
                            String[] split = ((String) map.get("buttons")).split(",");
                            if (split.length > 0) {
                                create.setButton(ConfigException.MISSING_CONFIG_CHANGES, split[0], BridgeMMNotification.this);
                            }
                            if (split.length > 1) {
                                create.setButton(-1, split[1], BridgeMMNotification.this);
                            }
                        }
                        create.show();
                    }
                    MMJSResponse mMJSResponse = new MMJSResponse();
                    mMJSResponse.c = 1;
                    mMJSResponse.d = Integer.valueOf(BridgeMMNotification.this.e);
                    return mMJSResponse;
                }
            }
            return null;
        }
    }

    BridgeMMNotification() {
        this.a = "alert";
        this.d = "vibrate";
    }

    MMJSResponse a(String str, Map map) {
        if (this.a.equals(str)) {
            return alert(map);
        }
        return this.d.equals(str) ? vibrate(map) : null;
    }

    public synchronized MMJSResponse alert(Map map) {
        return a(new AnonymousClass_1(map));
    }

    public synchronized void onClick(DialogInterface dialogInterface, int i) {
        if (i == -2) {
            this.e = 0;
        }
        if (i == -3) {
            this.e = 1;
        }
        if (i == -1) {
            this.e = 2;
        }
        dialogInterface.cancel();
        notify();
    }

    public MMJSResponse vibrate(Map map) {
        Context context = (Context) this.b.get();
        long parseFloat = map.containsKey(Fields.DURATION) ? (long) (((double) Float.parseFloat((String) map.get(Fields.DURATION))) * 1000.0d) : 0;
        if (context == null || parseFloat <= 0) {
            return null;
        }
        if (context.getPackageManager().checkPermission("android.permission.VIBRATE", context.getPackageName()) != 0) {
            return MMJSResponse.b("The required permissions to vibrate are not set.");
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(parseFloat);
        return MMJSResponse.a("Vibrating for " + parseFloat);
    }
}