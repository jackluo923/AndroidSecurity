package com.pocketools.currency;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;

public class Settings extends Activity {
    ArrayAdapter<String> mArrayAdapter;
    DBAdapter mDb;
    String mDefaultPage;
    GoogleAnalyticsTracker mTracker;
    private String[] pageArray;

    public Settings() {
        this.pageArray = new String[]{PocketCurrency.CONVERTER_PAGE, PocketCurrency.NEWS_PAGE, PocketCurrency.CURRENCY_LIST_PAGE};
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mTracker = GoogleAnalyticsTracker.getInstance();
        this.mTracker.start(PocketCurrency.ANALYTICS_UA_NUMBER, this);
        this.mTracker.trackPageView("/Settings");
        requestWindowFeature(1);
        setContentView(R.layout.settings);
        this.mDb = new DBAdapter(this);
        this.mDb.open();
        Spinner spinner = (Spinner) findViewById(R.id.default_page_spinner);
        this.mArrayAdapter = new ArrayAdapter(this, 17367048, this.pageArray);
        this.mArrayAdapter.setDropDownViewResource(17367049);
        spinner.setAdapter(this.mArrayAdapter);
        spinner.setOnItemSelectedListener(new OnItemSelectedListener() {
            public void onItemSelected(AdapterView parent, View v, int position, long id) {
                Settings.this.mDefaultPage = (String) Settings.this.mArrayAdapter.getItem(position);
            }

            public void onNothingSelected(AdapterView arg0) {
            }
        });
        ((Button) findViewById(R.id.set_default_page_button)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Settings.this.mDb.updateDefaultPage(Settings.this.mDefaultPage);
                Settings.this.mDb.close();
                Settings.this.finish();
            }
        });
        this.mTracker.dispatch();
    }

    protected void onDestroy() {
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onDestroy();
        this.mTracker.stop();
    }

    protected void onPause() {
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onPause();
    }

    protected void onRestart() {
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
        }
        super.onRestart();
    }

    protected void onResume() {
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
        }
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }

    protected void onStart() {
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
        }
        super.onStart();
    }

    protected void onStop() {
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onStop();
    }
}