package com.pocketools.currency;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.TableRow;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;

public class Info extends Activity {
    GoogleAnalyticsTracker mTracker;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mTracker = GoogleAnalyticsTracker.getInstance();
        this.mTracker.start(PocketCurrency.ANALYTICS_UA_NUMBER, this);
        this.mTracker.trackPageView("/Info");
        requestWindowFeature(1);
        setContentView(R.layout.info);
        ((ImageButton) findViewById(R.id.info_back_button)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Info.this.finish();
            }
        });
        ((TableRow) findViewById(R.id.info_more_info)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Info.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.pocketools.com/release-notes/")));
            }
        });
        ((TableRow) findViewById(R.id.info_follow_me)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Info.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://twitter.com/pocketools")));
            }
        });
        ((TableRow) findViewById(R.id.info_send_feedbck)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Intent emailIntent = new Intent("android.intent.action.SEND");
                emailIntent.putExtra("android.intent.extra.EMAIL", new String[]{"don@pocketools.com"});
                emailIntent.putExtra("android.intent.extra.TEXT", PocketCurrency.AD_MOB_KEYWORD_HINT);
                emailIntent.putExtra("android.intent.extra.SUBJECT", "Feedback on Currency Converter");
                emailIntent.setType("message/rfc822");
                Info.this.startActivity(Intent.createChooser(emailIntent, "Title:"));
            }
        });
        ((TableRow) findViewById(R.id.info_other_tools)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Info.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://market.android.com/search?q=pub:\"Pocketools.com\"")));
            }
        });
        this.mTracker.dispatch();
    }

    protected void onDestroy() {
        super.onDestroy();
        this.mTracker.stop();
    }
}