package com.pocketools.currency;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class Graph extends Activity {
    public static final HashMap<String, String> consts;
    public static final String[] timeframeList;
    ArrayList<String> currencyArray;
    boolean firstCallLeft;
    boolean firstCallRight;
    private String mCurrencyLeft;
    private String mCurrencyRight;
    DBAdapter mDb;
    private View mGraphView;
    private ImageButton mImageButton;
    private ArrayAdapter mLeftAdapter;
    private ArrayAdapter mRightAdapter;
    private Spinner mSpinnerLeft;
    private int mSpinnerLeftPosition;
    private Spinner mSpinnerRight;
    private int mSpinnerRightPosition;
    private String mTimeframe;
    private TableRow mTimeframeRow;
    GoogleAnalyticsTracker mTracker;
    private String mUrl;

    private class DownloadImageTask extends AsyncTask {
        Context mContext;
        ProgressDialog mProgressDialog;

        public DownloadImageTask(Context context) {
            this.mContext = context;
            this.mProgressDialog = new ProgressDialog(context);
            this.mProgressDialog.setProgressStyle(0);
            this.mProgressDialog.setMessage("Generating Chart ... ");
            this.mProgressDialog.show();
        }

        public Object doInBackground(Object... urls) {
            return URLFetcher.getBitmap((String) urls[0]);
        }

        public void onPostExecute(Object result) {
            if (result != null) {
                Graph.this.mImageButton.setImageBitmap((Bitmap) result);
                this.mProgressDialog.dismiss();
            }
        }
    }

    static {
        consts = new HashMap();
        consts.put("1 day", "http://ichart.finance.yahoo.com/b?s=");
        consts.put("5 day", "http://ichart.finance.yahoo.com/w?s=");
        consts.put("3 month", "http://ichart.finance.yahoo.com/3m?");
        consts.put("1 year", "http://ichart.finance.yahoo.com/1y?");
        consts.put("2 year", "http://ichart.finance.yahoo.com/2y?");
        consts.put("5 year", "http://ichart.finance.yahoo.com/5y?");
        timeframeList = new String[]{"1d", "5d", "3m", "1y", "2y", "5y"};
    }

    public Graph() {
        this.mGraphView = null;
        this.mSpinnerLeftPosition = 0;
        this.mSpinnerRightPosition = 0;
        this.firstCallLeft = true;
        this.firstCallRight = true;
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case PocketCurrency.CHOOSE_TIMEFRAME:
                if (resultCode == 1006) {
                    this.mTimeframe = data.getExtras().getString("TIMEFRAME");
                    this.mUrl = new StringBuilder(String.valueOf((String) consts.get(this.mTimeframe))).append(this.mCurrencyLeft).append(this.mCurrencyRight).append("=x").toString();
                    NetworkInfo networkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
                    TextView textView = (TextView) findViewById(R.id.graph_timeframe_1d);
                    if (this.mTimeframe.compareTo("1 day") == 0) {
                        textView.setTextColor(-16776961);
                    } else {
                        textView.setTextColor(-16777216);
                    }
                    textView = findViewById(R.id.graph_timeframe_5d);
                    if (this.mTimeframe.compareTo("5 day") == 0) {
                        textView.setTextColor(-16776961);
                    } else {
                        textView.setTextColor(-16777216);
                    }
                    textView = findViewById(R.id.graph_timeframe_3m);
                    if (this.mTimeframe.compareTo("3 month") == 0) {
                        textView.setTextColor(-16776961);
                    } else {
                        textView.setTextColor(-16777216);
                    }
                    textView = findViewById(R.id.graph_timeframe_1y);
                    if (this.mTimeframe.compareTo("1 year") == 0) {
                        textView.setTextColor(-16776961);
                    } else {
                        textView.setTextColor(-16777216);
                    }
                    textView = findViewById(R.id.graph_timeframe_2y);
                    if (this.mTimeframe.compareTo("2 year") == 0) {
                        textView.setTextColor(-16776961);
                    } else {
                        textView.setTextColor(-16777216);
                    }
                    textView = findViewById(R.id.graph_timeframe_5y);
                    if (this.mTimeframe.compareTo("5 year") == 0) {
                        textView.setTextColor(-16776961);
                    } else {
                        textView.setTextColor(-16777216);
                    }
                    if (networkInfo != null) {
                        try {
                            new DownloadImageTask(this).execute(new Object[]{this.mUrl});
                        } catch (Exception e) {
                            Log.e("PocketCurrency", "Application Exited Abnormally !");
                        }
                    } else {
                        Toast.makeText(this, "Connection Error. Please check your connections and try again.", 0).show();
                        finish();
                    }
                }
            default:
                break;
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mTracker = GoogleAnalyticsTracker.getInstance();
        this.mTracker.start(PocketCurrency.ANALYTICS_UA_NUMBER, this);
        this.mTracker.trackPageView("/Graph");
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (this.mGraphView == null) {
            this.mGraphView = LayoutInflater.from(this).inflate(R.layout.graph, null);
        }
        setContentView(this.mGraphView);
        this.currencyArray = new ArrayList();
        this.currencyArray.add("EUR   -  Euro");
        this.currencyArray.add("GBP   -  United Kingdom Pounds");
        this.currencyArray.add("USD   -  United States Dollars");
        this.mDb = new DBAdapter(this);
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
        this.mTimeframe = getIntent().getExtras().getString("TIMEFRAME");
        this.mCurrencyLeft = getIntent().getExtras().getString("CURRENCY_LEFT");
        this.mCurrencyRight = getIntent().getExtras().getString("CURRENCY_RIGHT");
        String url = new StringBuilder(String.valueOf((String) consts.get(this.mTimeframe))).append(this.mCurrencyLeft).append(this.mCurrencyRight).append("=x").toString();
        this.mImageButton = (ImageButton) findViewById(R.id.graphButton);
        Iterator<String> iter = this.currencyArray.iterator();
        int count = 0;
        while (iter.hasNext()) {
            String longCurrency = (String) iter.next();
            String currency = longCurrency.substring(0, longCurrency.indexOf(" "));
            if (currency.compareTo(this.mCurrencyLeft) == 0) {
                this.mSpinnerLeftPosition = count;
            }
            if (currency.compareTo(this.mCurrencyRight) == 0) {
                this.mSpinnerRightPosition = count;
            }
            count++;
        }
        this.mSpinnerLeft = (Spinner) findViewById(R.id.graph_spinner_left);
        this.mLeftAdapter = new ArrayAdapter(this, 17367048, this.currencyArray);
        this.mLeftAdapter.setDropDownViewResource(17367049);
        this.mSpinnerLeft.setAdapter(this.mLeftAdapter);
        this.mSpinnerLeft.setSelection(this.mSpinnerLeftPosition);
        this.mSpinnerRight = (Spinner) findViewById(R.id.graph_spinner_right);
        this.mRightAdapter = new ArrayAdapter(this, 17367048, this.currencyArray);
        this.mRightAdapter.setDropDownViewResource(17367049);
        this.mSpinnerRight.setAdapter(this.mRightAdapter);
        this.mSpinnerRight.setSelection(this.mSpinnerRightPosition);
        this.mSpinnerLeft.setOnItemSelectedListener(new OnItemSelectedListener() {
            public void onItemSelected(AdapterView parent, View v, int position, long id) {
                String longCurrency = (String) Graph.this.mLeftAdapter.getItem(position);
                Graph.this.mCurrencyLeft = longCurrency.substring(0, longCurrency.indexOf(" "));
                if (Graph.this.firstCallLeft) {
                    Graph.this.firstCallLeft = false;
                } else {
                    try {
                        Graph.this.mUrl = new StringBuilder(String.valueOf((String) consts.get(Graph.this.mTimeframe))).append(Graph.this.mCurrencyLeft).append(Graph.this.mCurrencyRight).append("=x").toString();
                        new DownloadImageTask(v.getContext()).execute(new Object[]{Graph.this.mUrl});
                    } catch (Exception e) {
                        Log.e("PocketCurrency", "Application Exited Abnormally !");
                    }
                }
            }

            public void onNothingSelected(AdapterView arg0) {
            }
        });
        this.mSpinnerRight.setOnItemSelectedListener(new OnItemSelectedListener() {
            public void onItemSelected(AdapterView parent, View v, int position, long id) {
                String longCurrency = (String) Graph.this.mRightAdapter.getItem(position);
                Graph.this.mCurrencyRight = longCurrency.substring(0, longCurrency.indexOf(" "));
                if (Graph.this.firstCallRight) {
                    Graph.this.firstCallRight = false;
                } else {
                    try {
                        Graph.this.mUrl = new StringBuilder(String.valueOf((String) consts.get(Graph.this.mTimeframe))).append(Graph.this.mCurrencyLeft).append(Graph.this.mCurrencyRight).append("=x").toString();
                        new DownloadImageTask(v.getContext()).execute(new Object[]{Graph.this.mUrl});
                    } catch (Exception e) {
                        Log.e("PocketCurrency", "Application Exited Abnormally !");
                    }
                }
            }

            public void onNothingSelected(AdapterView arg0) {
            }
        });
        this.mImageButton.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Graph.this.startActivityForResult(new Intent(v.getContext(), GraphDuration.class), PocketCurrency.CHOOSE_TIMEFRAME);
            }
        });
        this.mTimeframeRow = (TableRow) findViewById(R.id.graph_timeframeRow);
        this.mTimeframeRow.setClickable(true);
        this.mTimeframeRow.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Graph.this.startActivityForResult(new Intent(v.getContext(), GraphDuration.class), PocketCurrency.CHOOSE_TIMEFRAME);
            }
        });
        TextView textView = (TextView) findViewById(R.id.graph_timeframe_1d);
        if (this.mTimeframe.compareTo("1 day") == 0) {
            textView.setTextColor(-16776961);
        } else {
            textView.setTextColor(-16777216);
        }
        textView = findViewById(R.id.graph_timeframe_5d);
        if (this.mTimeframe.compareTo("5 day") == 0) {
            textView.setTextColor(-16776961);
        } else {
            textView.setTextColor(-16777216);
        }
        textView = findViewById(R.id.graph_timeframe_3m);
        if (this.mTimeframe.compareTo("3 month") == 0) {
            textView.setTextColor(-16776961);
        } else {
            textView.setTextColor(-16777216);
        }
        textView = findViewById(R.id.graph_timeframe_1y);
        if (this.mTimeframe.compareTo("1 year") == 0) {
            textView.setTextColor(-16776961);
        } else {
            textView.setTextColor(-16777216);
        }
        textView = findViewById(R.id.graph_timeframe_2y);
        if (this.mTimeframe.compareTo("2 year") == 0) {
            textView.setTextColor(-16776961);
        } else {
            textView.setTextColor(-16777216);
        }
        textView = findViewById(R.id.graph_timeframe_5y);
        if (this.mTimeframe.compareTo("5 year") == 0) {
            textView.setTextColor(-16776961);
        } else {
            textView.setTextColor(-16777216);
        }
        if (((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo() != null) {
            try {
                new DownloadImageTask(this).execute(new Object[]{url});
            } catch (Exception e) {
                Log.e("PocketCurrency", "Application Exited Abnormally !");
            }
        } else {
            Toast.makeText(this, "Connection Error. Please check your connections and try again.", 0).show();
            finish();
        }
        this.mTracker.dispatch();
    }

    protected void onDestroy() {
        Log.d(getLocalClassName(), "onDestroy()");
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onDestroy();
        this.mTracker.stop();
    }

    protected void onPause() {
        Log.d(getLocalClassName(), "onPause()");
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