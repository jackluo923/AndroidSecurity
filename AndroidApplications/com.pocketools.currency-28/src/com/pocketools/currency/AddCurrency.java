package com.pocketools.currency;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import java.util.StringTokenizer;

public class AddCurrency extends Activity {
    private EditText mCompanyName;
    private String mCurrencySymbol;
    DBAdapter mDb;
    private TextView mUserMessage;

    private class SearchTickerTask extends AsyncTask {
        Context mContext;
        ProgressDialog mProgressDialog;
        public DBAdapter mThreadDB;

        public SearchTickerTask(Context context) {
            this.mContext = context;
            this.mProgressDialog = new ProgressDialog(context);
            this.mProgressDialog.setProgressStyle(0);
            this.mProgressDialog.setMessage("Searching for Currency ... ");
            this.mProgressDialog.show();
        }

        public Object doInBackground(Object... urls) {
            return URLFetcher.getString((String) urls[0]);
        }

        public void onCancelled() {
            this.mThreadDB.close();
            this.mThreadDB = null;
            super.onCancelled();
        }

        public void onPostExecute(Object result) {
            if (result != null) {
                try {
                    StringTokenizer tokenizer = new StringTokenizer((String) result, "\n");
                    while (tokenizer.hasMoreTokens()) {
                        try {
                            this.mThreadDB.addCurrency(AddCurrency.this.mCurrencySymbol, AddCurrency.this.mCurrencySymbol, Double.valueOf(Double.parseDouble(tokenizer.nextToken().trim())).doubleValue(), 1, Long.toString(System.currentTimeMillis()));
                            AddCurrency.this.mUserMessage.setText(new StringBuilder("\"").append(AddCurrency.this.mCurrencySymbol).append("\" successfully added").toString());
                        } catch (NumberFormatException e) {
                            Log.e(AddCurrency.this.getLocalClassName(), "NumberFormatException");
                            AddCurrency.this.mUserMessage.setText("Problem Loading Currency. Please try again");
                            this.mThreadDB.close();
                        }
                    }
                } catch (Exception e2) {
                    Log.e(AddCurrency.this.getLocalClassName(), "Exception");
                    AddCurrency.this.mUserMessage.setText("Problem Loading Currency. Please try again");
                    this.mThreadDB.close();
                }
            }
            this.mProgressDialog.dismiss();
            this.mThreadDB.close();
        }

        public void onPreExecute() {
            this.mThreadDB = new DBAdapter(this.mContext);
            this.mThreadDB.open();
            this.mThreadDB.getDatabase().setLockingEnabled(true);
            while (this.mThreadDB.getDatabase().isDbLockedByOtherThreads()) {
                try {
                    Log.d(AddCurrency.this.getLocalClassName(), "mThreadDB.getDatabase().isDbLockedByOtherThreads()");
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                }
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.add_currency);
        this.mDb = new DBAdapter(this);
        this.mDb.open();
        this.mCompanyName = (EditText) findViewById(R.id.add_stock_search);
        this.mUserMessage = (TextView) findViewById(R.id.user_message);
        this.mUserMessage.setText(PocketCurrency.AD_MOB_KEYWORD_HINT);
        ((Button) findViewById(R.id.add_stock_search_image)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                AddCurrency.this.mCurrencySymbol = AddCurrency.this.mCompanyName.getText().toString().toUpperCase();
                if (AddCurrency.this.mCurrencySymbol.length() > 0) {
                    AddCurrency addCurrency = AddCurrency.this;
                    v.getContext();
                    ((InputMethodManager) addCurrency.getSystemService("input_method")).hideSoftInputFromWindow(AddCurrency.this.mCompanyName.getWindowToken(), 0);
                    if (AddCurrency.this.mCurrencySymbol != null) {
                        boolean notInDB = true;
                        if (AddCurrency.this.mDb.getExchangeRate(AddCurrency.this.mCurrencySymbol).getCount() > 0) {
                            notInDB = false;
                        }
                        if (notInDB) {
                            Log.d(AddCurrency.this.getLocalClassName(), new StringBuilder("http://finance.yahoo.com/d/quotes.csv?s=EUR").append(AddCurrency.this.mCurrencySymbol).append("=X&f=l1").toString());
                            new SearchTickerTask(v.getContext()).execute(new Object[]{url});
                        } else {
                            AddCurrency.this.mUserMessage.setText("Currency is already added !");
                        }
                    }
                }
            }
        });
        ((TextView) findViewById(R.id.currency_symbol_lookup)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                AddCurrency.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://en.wikipedia.org/wiki/ISO_4217")));
            }
        });
    }

    protected void onDestroy() {
        Log.d(getLocalClassName(), "onDestroy()");
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            startActivity(new Intent(this, PocketCurrency.class));
            finish();
        }
        return true;
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