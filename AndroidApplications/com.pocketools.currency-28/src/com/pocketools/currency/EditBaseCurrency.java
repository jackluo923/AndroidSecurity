package com.pocketools.currency;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextWatcher;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import java.util.ArrayList;
import java.util.Iterator;

public class EditBaseCurrency extends Activity {
    ArrayList<String> currencyArray;
    ArrayAdapter<String> mArrayAdapter;
    DBAdapter mDb;
    String mDefaultAmount;
    String mDefaultCurrency;
    String mDefaultCurrencyNew;
    EditText mEditTextAmount;
    Intent mIntent;
    GoogleAnalyticsTracker mTracker;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mTracker = GoogleAnalyticsTracker.getInstance();
        this.mTracker.startNewSession(PocketCurrency.ANALYTICS_UA_NUMBER, this);
        this.mTracker.trackPageView("/EditBaseCurrency");
        requestWindowFeature(1);
        setContentView(2130903048);
        this.mIntent = getIntent();
        this.currencyArray = new ArrayList();
        DBAdapter dBAdapter = dBAdapter;
        Context context = this;
        this.mDb = dBAdapter;
        this.mDb.open();
        Cursor currencies = this.mDb.getCurrencies();
        startManagingCursor(currencies);
        StringBuffer currencylist = new StringBuffer();
        int i = 0;
        while (i < currencies.getCount()) {
            currencies.moveToPosition(i);
            currencylist.append(new StringBuilder("+EUR").append(currencies.getString(currencies.getColumnIndex(DBAdapter.KEY_CURRENCY))).append("=X").toString());
            this.currencyArray.add(new StringBuilder(String.valueOf(currencies.getString(currencies.getColumnIndex(DBAdapter.KEY_CURRENCY)))).append("   -  ").append(currencies.getString(currencies.getColumnIndex(DBAdapter.KEY_CURRENCY_DESCRIPTION))).toString());
            i++;
        }
        String temp = currencylist.toString();
        Cursor defaults = this.mDb.getDefaultValues();
        startManagingCursor(defaults);
        String defaultCurrency = "USD";
        i = 0;
        while (i < defaults.getCount()) {
            defaults.moveToPosition(i);
            String default_type = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_TYPE));
            if (default_type.compareTo("default_base_currency_list") == 0) {
                defaultCurrency = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            }
            if (default_type.compareTo("default_base_currency_amount") == 0) {
                this.mDefaultAmount = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            }
            i++;
        }
        int spinnerPosition = 0;
        Iterator<String> iter = this.currencyArray.iterator();
        int count = 0;
        while (iter.hasNext()) {
            String longCurrency = (String) iter.next();
            if (longCurrency.substring(0, longCurrency.indexOf(" ")).compareTo(defaultCurrency) == 0) {
                spinnerPosition = count;
            }
            count++;
        }
        Spinner spinner = (Spinner) findViewById(2131165228);
        ArrayAdapter arrayAdapter = arrayAdapter;
        context = this;
        int i2 = 17367048;
        ArrayList arrayList = this.currencyArray;
        this.mArrayAdapter = arrayAdapter;
        this.mArrayAdapter.setDropDownViewResource(17367049);
        spinner.setAdapter(this.mArrayAdapter);
        spinner.setSelection(spinnerPosition);
        AnonymousClass_1 anonymousClass_1 = anonymousClass_1;
        context = this;
        spinner.setOnItemSelectedListener(anonymousClass_1);
        this.mEditTextAmount = (EditText) findViewById(2131165229);
        this.mEditTextAmount.setText(this.mDefaultAmount);
        TextWatcher anonymousClass_2 = textWatcher;
        context = this;
        this.mEditTextAmount.addTextChangedListener(textWatcher);
        AnonymousClass_3 anonymousClass_3 = anonymousClass_3;
        context = this;
        ((Button) findViewById(2131165230)).setOnClickListener(anonymousClass_3);
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