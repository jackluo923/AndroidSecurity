package com.yanex.emoticons;

import android.app.Activity;
import android.os.Environment;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.widget.Toast;
import java.io.File;
import java.io.FileWriter;
import java.util.List;

final class r implements OnPreferenceClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ Preferences b;

    r(Preferences preferences, Activity activity) {
        this.b = preferences;
        this.a = activity;
    }

    public final boolean onPreferenceClick(Preference preference) {
        boolean z = false;
        try {
            Toast.makeText(this.a, this.b.getString(2131427386), 0).show();
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Emoticons/");
            file.mkdirs();
            FileWriter fileWriter = new FileWriter(new File(file, "data.txt"));
            b bVar = new b(this.a);
            int i = 1;
            while (i <= 5) {
                List a = j.a(bVar.a(new StringBuilder("useremotes").append(Integer.toString(i)).toString()));
                if (a.size() > 0) {
                    fileWriter.write(new StringBuilder("<page id=").append(Integer.toString(i)).append(">\n").toString());
                    boolean z2 = z;
                    int i2;
                    while (i2 < a.size()) {
                        fileWriter.write(((String) a.get(i2)) + "\n");
                        i2++;
                    }
                }
                i++;
            }
            bVar.a();
            fileWriter.close();
            Toast.makeText(this.a, this.b.getString(2131427388), 0).show();
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this.a, this.b.getString(2131427384), z).show();
        }
        return z;
    }
}