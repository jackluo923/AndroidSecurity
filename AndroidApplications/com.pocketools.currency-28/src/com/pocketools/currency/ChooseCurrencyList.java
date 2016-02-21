package com.pocketools.currency;

import android.app.Activity;
import android.database.Cursor;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

public class ChooseCurrencyList extends Activity {
    private HashMap<String, String> mCurrencyList;
    private DBAdapter mDb;
    private LinkedList<String> mSelection;

    class AnonymousClass_1 implements OnClickListener {
        private final /* synthetic */ CheckBox val$checkBox;

        AnonymousClass_1(CheckBox checkBox) {
            this.val$checkBox = checkBox;
        }

        public void onClick(View v) {
            String checkBoxId = (String) v.getTag();
            if (this.val$checkBox.isChecked()) {
                ChooseCurrencyList.this.mSelection.add(checkBoxId);
            } else {
                ChooseCurrencyList.this.mSelection.remove(checkBoxId);
            }
        }
    }

    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        requestWindowFeature(1);
        setContentView(R.layout.choose_currency_list);
        this.mDb = new DBAdapter(this);
        this.mDb.open();
        this.mCurrencyList = new HashMap();
        this.mDb = new DBAdapter(this);
        this.mDb.open();
        Cursor currencies = this.mDb.getCurrencies();
        startManagingCursor(currencies);
        StringBuffer currencylist = new StringBuffer();
        int i = 0;
        while (i < currencies.getCount()) {
            currencies.moveToPosition(i);
            currencylist.append(new StringBuilder("+EUR").append(currencies.getString(currencies.getColumnIndex(DBAdapter.KEY_CURRENCY))).append("=X").toString());
            this.mCurrencyList.put(currencies.getString(currencies.getColumnIndex(DBAdapter.KEY_CURRENCY)), currencies.getString(currencies.getColumnIndex(DBAdapter.KEY_CURRENCY_DESCRIPTION)));
            i++;
        }
        this.mSelection = new LinkedList();
        Cursor c = this.mDb.getCurrencies();
        startManagingCursor(c);
        TableLayout table = (TableLayout) findViewById(R.id.categoryQuickSetupList);
        i = 0;
        while (i < c.getCount()) {
            c.moveToPosition(i);
            String currencyName = c.getString(c.getColumnIndex(DBAdapter.KEY_CURRENCY));
            int isSelected = c.getInt(c.getColumnIndex(DBAdapter.KEY_CURRENCY_IS_SELECTED));
            TableRow row = new TableRow(this);
            row.setMinimumWidth(-1);
            row.setGravity(16);
            row.setBackgroundColor(-1);
            row.setPadding(15, 10, 0, 10);
            TextView view = new TextView(this);
            view.setText(currencyName);
            if (isSelected == 1) {
                view.setTextColor(Color.rgb(176, 196, 222));
            } else {
                view.setTextColor(Color.rgb(0, 0, 128));
            }
            view.setTextSize(24.0f);
            row.addView(view);
            view = new TextView(this);
            view.setText((CharSequence) this.mCurrencyList.get(currencyName));
            view.setTextColor(Color.rgb(176, 196, 222));
            view.setTextSize(16.0f);
            view.setGravity(R.styleable.com_admob_android_ads_AdView_keywords);
            view.setPadding(R.styleable.com_admob_android_ads_AdView_isGoneWithoutAd, 0, 0, 0);
            row.addView(view);
            CheckBox checkBox = new CheckBox(this);
            checkBox.setTag(currencyName);
            if (isSelected == 1) {
                checkBox.setChecked(true);
                checkBox.setEnabled(true);
                this.mSelection.add(currencyName);
            }
            checkBox.setOnClickListener(new AnonymousClass_1(checkBox));
            row.addView(checkBox);
            view = new TextView(this);
            view.setWidth(40);
            row.addView(view);
            table.addView(row);
            view = new TextView(this);
            view.setMaxHeight(1);
            view.setBackgroundColor(Color.rgb(192, 192, 192));
            table.addView(view);
            i++;
        }
        ((Button) findViewById(R.id.category_quick_ok)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ChooseCurrencyList.this.mDb.unselectAllCurrencies();
                Iterator<String> iter = ChooseCurrencyList.this.mSelection.iterator();
                while (iter.hasNext()) {
                    ChooseCurrencyList.this.mDb.updateExchangeRateSelected((String) iter.next(), 1);
                }
                Toast.makeText(v.getContext(), "Currencies Added", 0).show();
                ChooseCurrencyList.this.setResult(CurrencyList.RELOAD_CURRENCY_LIST_SUCCESS);
                ChooseCurrencyList.this.finish();
            }
        });
        ((Button) findViewById(R.id.category_quick_cancel)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ChooseCurrencyList.this.finish();
            }
        });
    }

    protected void onDestroy() {
        Log.d(getLocalClassName(), "onDestroy()");
        super.onDestroy();
    }

    protected void onPause() {
        Log.d(getLocalClassName(), "onPause()");
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onPause();
    }

    protected void onRestart() {
        Log.d(getLocalClassName(), "onRestart()");
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
        }
        super.onRestart();
    }

    protected void onResume() {
        Log.d(getLocalClassName(), "onResume()");
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
        }
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle outState) {
        Log.d(getLocalClassName(), "onSaveInstanceState()");
        super.onSaveInstanceState(outState);
    }

    protected void onStart() {
        Log.d(getLocalClassName(), "onStart()");
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
        }
        super.onStart();
    }

    protected void onStop() {
        Log.d(getLocalClassName(), "onStop()");
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onStop();
    }
}