package com.yanex.emoticons;

import android.app.Activity;
import android.os.Environment;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

final class s implements OnPreferenceClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ Preferences b;

    s(Preferences preferences, Activity activity) {
        this.b = preferences;
        this.a = activity;
    }

    public final boolean onPreferenceClick(Preference preference) {
        boolean z = false;
        try {
            Toast.makeText(this.a, this.b.getString(2131427387), 0).show();
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Emoticons/");
            if (file.exists()) {
                File file2 = new File(file, "data.txt");
                if (file2.exists()) {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(file2));
                    b bVar = new b(this.a);
                    String[] strArr = new String[5];
                    int i = 1;
                    boolean z2 = z;
                    int i2;
                    while (i2 < 5) {
                        strArr[i2] = new String();
                        i2++;
                    }
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        } else if (readLine.matches("<page id=[12345]>")) {
                            i = readLine.charAt(9) - 48;
                        } else {
                            int i3 = i - 1;
                            strArr[i3] = strArr[i3] + readLine + "\u0016" + Integer.toString(EditorActivity.a()) + "\u0015";
                        }
                    }
                    boolean z3 = z;
                    while (i < 5) {
                        bVar.a(new StringBuilder("useremotes").append(Integer.toString(i + 1)).toString(), strArr[i]);
                        i++;
                    }
                    bVar.a();
                    MainActivity.a().b();
                    Toast.makeText(this.a, this.b.getString(2131427389), 0).show();
                    return z;
                } else {
                    throw new IOException();
                }
            } else {
                throw new IOException();
            }
        } catch (Exception e) {
            Toast.makeText(this.a, this.b.getString(2131427385), z).show();
        }
    }
}