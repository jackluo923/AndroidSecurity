package org.acra;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.andymstone.core.o;
import java.io.IOException;
import org.acra.b.c;
import org.acra.e.k;

public class e extends Activity implements OnClickListener, OnDismissListener {
    String a;
    AlertDialog b;
    private SharedPreferences c;
    private EditText d;
    private EditText e;

    private View a(Bundle bundle) {
        CharSequence string;
        View linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        linearLayout.setLayoutParams(new LayoutParams(-1, -2));
        linearLayout.setFocusable(true);
        linearLayout.setFocusableInTouchMode(true);
        View scrollView = new ScrollView(this);
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, -1, 1.0f));
        View linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        scrollView.addView(linearLayout2);
        scrollView = new TextView(this);
        int w = ACRA.getConfig().w();
        if (w != 0) {
            scrollView.setText(getText(w));
        }
        linearLayout2.addView(scrollView);
        int s = ACRA.getConfig().s();
        if (s != 0) {
            View textView = new TextView(this);
            textView.setText(getText(s));
            textView.setPadding(textView.getPaddingLeft(), 10, textView.getPaddingRight(), textView.getPaddingBottom());
            linearLayout2.addView(textView, new LinearLayout.LayoutParams(-1, -2));
            this.d = new EditText(this);
            this.d.setLines(o.MyAlertDialog_myAlertDialogButtonDrawable);
            if (bundle != null) {
                string = bundle.getString("comment");
                if (string != null) {
                    this.d.setText(string);
                }
            }
            linearLayout2.addView(this.d);
        }
        s = ACRA.getConfig().t();
        if (s != 0) {
            textView = new TextView(this);
            textView.setText(getText(s));
            textView.setPadding(textView.getPaddingLeft(), 10, textView.getPaddingRight(), textView.getPaddingBottom());
            linearLayout2.addView(textView);
            this.e = new EditText(this);
            this.e.setSingleLine();
            this.e.setInputType(33);
            this.c = getSharedPreferences(ACRA.getConfig().E(), ACRA.getConfig().D());
            string = null;
            if (bundle != null) {
                string = bundle.getString("email");
            }
            if (string != null) {
                this.e.setText(string);
            } else {
                this.e.setText(this.c.getString(ACRA.PREF_USER_EMAIL_ADDRESS, ""));
            }
            linearLayout2.addView(this.e);
        }
        return linearLayout;
    }

    private void b() {
        ACRA.getErrorReporter().b(false);
    }

    private void c() {
        Object obj;
        Object toString = this.d != null ? this.d.getText().toString() : "";
        if (this.c == null || this.e == null) {
            obj = "";
        } else {
            obj = this.e.getText().toString();
            Editor edit = this.c.edit();
            edit.putString(ACRA.PREF_USER_EMAIL_ADDRESS, obj);
            edit.commit();
        }
        i iVar = new i(getApplicationContext());
        try {
            Log.d(ACRA.LOG_TAG, new StringBuilder("Add user comment to ").append(this.a).toString());
            c a = iVar.a(this.a);
            a.put(ReportField.USER_COMMENT, toString);
            a.put(ReportField.USER_EMAIL, obj);
            iVar.a(a, this.a);
        } catch (IOException e) {
            Log.w(ACRA.LOG_TAG, "User comment not added: ", e);
        }
        Log.v(ACRA.LOG_TAG, "About to start SenderWorker from CrashReportDialog");
        ACRA.getErrorReporter().a(false, true);
        int v = ACRA.getConfig().v();
        if (v != 0) {
            k.a(getApplicationContext(), v, 1);
        }
    }

    protected void a() {
        ((NotificationManager) getSystemService("notification")).cancel(666);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            c();
        } else {
            b();
        }
        finish();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().getBooleanExtra("FORCE_CANCEL", false)) {
            ACRA.log.a(ACRA.LOG_TAG, "Forced reports deletion.");
            b();
            finish();
        } else {
            this.a = getIntent().getStringExtra("REPORT_FILE_NAME");
            Log.d(ACRA.LOG_TAG, new StringBuilder("Opening CrashReportDialog for ").append(this.a).toString());
            if (this.a == null) {
                finish();
            }
            Builder builder = new Builder(this);
            int x = ACRA.getConfig().x();
            if (x != 0) {
                builder.setTitle(x);
            }
            x = ACRA.getConfig().u();
            if (x != 0) {
                builder.setIcon(x);
            }
            builder.setView(a(bundle));
            builder.setPositiveButton(17039370, this);
            builder.setNegativeButton(17039360, this);
            a();
            this.b = builder.create();
            this.b.setCanceledOnTouchOutside(false);
            this.b.setOnDismissListener(this);
            this.b.show();
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        finish();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!(this.d == null || this.d.getText() == null)) {
            bundle.putString("comment", this.d.getText().toString());
        }
        if (this.e != null && this.e.getText() != null) {
            bundle.putString("email", this.e.getText().toString());
        }
    }
}