package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

class cz {

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Editor Xr;

        AnonymousClass_1(Editor editor) {
            this.Xr = editor;
        }

        public void run() {
            this.Xr.commit();
        }
    }

    static void a(Context context, String str, String str2, String str3) {
        Editor edit = context.getSharedPreferences(str, 0).edit();
        edit.putString(str2, str3);
        a(edit);
    }

    static void a(Editor editor) {
        if (VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            new Thread(new AnonymousClass_1(editor)).start();
        }
    }
}