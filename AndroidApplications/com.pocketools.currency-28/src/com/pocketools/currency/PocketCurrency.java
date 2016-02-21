package com.pocketools.currency;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.Gallery;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import com.pocketools.currency.billing.BillingService;
import com.pocketools.currency.billing.BillingService.RequestPurchase;
import com.pocketools.currency.billing.BillingService.RestoreTransactions;
import com.pocketools.currency.billing.Consts.PurchaseState;
import com.pocketools.currency.billing.Consts.ResponseCode;
import com.pocketools.currency.billing.PurchaseObserver;
import com.pocketools.currency.billing.ResponseHandler;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class PocketCurrency extends Activity {
    private static final String ADMOB_PUBLISHER_ID = "a14b045c31c8875";
    public static final String ADWHIRL_ID = "ae63b132e3394d66b354d9d72c839b5d";
    protected static final String[] AD_KEYWORDS;
    public static final String AD_MOB_KEYWORD_HINT = "";
    private static final int ALERT_DIALOG_USER_AGREEMENT = 1003;
    public static final String ANALYTICS_UA_NUMBER = "UA-12361531-2";
    private static final String APP_NAME = "Currency Converter";
    private static final String CHANNEL_ID = "6175362844";
    public static final int CHOOSE_TIMEFRAME = 1005;
    public static final int CHOOSE_TIMEFRAME_SUCCESS = 1006;
    private static final String CLIENT_ID = "ca-mb-app-pub-1805290976571198";
    private static final String COMPANY_NAME = "DELADS";
    public static final String CONVERTER_PAGE = "Converter Page";
    public static final String CURRENCY_LIST_PAGE = "Currency List Page";
    private static final int DIALOG_BILLING_NOT_SUPPORTED_ID = 2002;
    private static final int DIALOG_CANNOT_CONNECT_ID = 2001;
    private static final int DIALOG_GRAPH_TIMEFRAME = 1004;
    public static String GROUPON_CLIENT_ID = null;
    private static final int HELLO_ID = 1000;
    public static final String IN_APP_BILLING_ADS_FREE = "com_pocketools_currency_ads_free_006";
    public static final String IS_COMING_FROM_NAVIGATION = "Navigation";
    private static final String KEYWORDS = "forex online";
    private static final int MENU_ADD_CURRENCY = 1002;
    private static final int MENU_ADS = 1011;
    private static final int MENU_INFO = 1008;
    private static final int MENU_REFRESH = 1001;
    private static final int MENU_SETTINGS = 1009;
    private static final int MENU_UPGRADE = 1010;
    public static final String NEWS_PAGE = "News Page";
    ArrayList<String> currencyArray;
    boolean firstCallLeft;
    boolean firstCallRight;
    Activity mActivity;
    ImageButton mAd;
    public String mAdDestination;
    public String mAdIntentString;
    String mAdKeywords;
    String mAdMessage;
    private String mAdPreferences;
    String mAdTextBackgroundColor;
    String mAdTextColor;
    String mAdURL;
    AdView mAdView;
    double mBaseAmount;
    String mBaseCurrencyList;
    private BillingService mBillingService;
    private boolean mChartDisplayed;
    private Context mContext;
    String mCurrencyLeft;
    private CurrencyPurchaseObserver mCurrencyPurchaseObserver;
    String mCurrencyRight;
    String mCurrencyString;
    DBAdapter mDb;
    DownloadAd mDownloadAd;
    DownloadImageTask mDownloadImageTask;
    TableRow mGoogleAdRow;
    ImageButton mGraph;
    private AnimationDrawable mGraphAnimation;
    private ImageView mGraphLoading;
    String mGraphURL;
    private Handler mHandler;
    boolean mIsAdsFreeVersion;
    String mLastUpdate;
    ArrayAdapter<String> mLeftAdapter;
    EditText mLeftResult;
    Spinner mLeftSpinner;
    NetworkInfo mNetworkInfo;
    private NotificationManager mNotificationManager;
    private String mPayloadContents;
    View mPocketCurrencyView;
    String mRefreshDateText;
    EditText mResult;
    ArrayAdapter<String> mRightAdapter;
    EditText mRightResult;
    Spinner mRightSpinner;
    DownloadXRatesTask mSingleXratesTask;
    int mSpinnerLeftPosition;
    int mSpinnerRightPosition;
    private boolean mSwapDisplayed;
    ImageView mSwapImage;
    TableRow mTimeframeRow;
    GoogleAnalyticsTracker mTracker;
    double mXrate;
    String mXrateString;
    TextView mXrateUpdateMessage;
    DownloadXRatesTask mXratesTask;

    private class CurrencyPurchaseObserver extends PurchaseObserver {
        public CurrencyPurchaseObserver(Handler handler) {
            super(PocketCurrency.this, handler);
        }

        public void onBillingSupported(boolean supported) {
            Log.i(PocketCurrency.this.getLocalClassName(), new StringBuilder("supported: ").append(supported).toString());
        }

        public void onPurchaseStateChange(PurchaseState purchaseState, String itemId, int quantity, long purchaseTime, String developerPayload) {
            Log.i(PocketCurrency.this.getLocalClassName(), new StringBuilder("onPurchaseStateChange() itemId: ").append(itemId).append(" ").append(purchaseState).toString());
            if (developerPayload == null) {
                PocketCurrency.this.logProductActivity(itemId, purchaseState.toString());
            } else {
                PocketCurrency.this.logProductActivity(itemId, purchaseState + "\n\t" + developerPayload);
            }
            PurchaseState purchaseState2 = PurchaseState.PURCHASED;
        }

        public void onRequestPurchaseResponse(RequestPurchase request, ResponseCode responseCode) {
            Log.d(PocketCurrency.this.getLocalClassName(), new StringBuilder(String.valueOf(request.mProductId)).append(": ").append(responseCode).toString());
            if (responseCode == ResponseCode.RESULT_OK) {
                Log.i(PocketCurrency.this.getLocalClassName(), "purchase was successfully sent to server");
                PocketCurrency.this.logProductActivity(request.mProductId, "sending purchase request");
            } else if (responseCode == ResponseCode.RESULT_USER_CANCELED) {
                Log.i(PocketCurrency.this.getLocalClassName(), "user canceled purchase");
                PocketCurrency.this.logProductActivity(request.mProductId, "dismissed purchase dialog");
            } else {
                Log.i(PocketCurrency.this.getLocalClassName(), "purchase failed");
                PocketCurrency.this.logProductActivity(request.mProductId, new StringBuilder("request purchase returned ").append(responseCode).toString());
            }
        }

        public void onRestoreTransactionsResponse(RestoreTransactions request, ResponseCode responseCode) {
            if (responseCode == ResponseCode.RESULT_OK) {
                Log.d(PocketCurrency.this.getLocalClassName(), "completed RestoreTransactions request");
                PocketCurrency.this.getPreferences(0).edit().commit();
            } else {
                Log.d(PocketCurrency.this.getLocalClassName(), new StringBuilder("RestoreTransactions error: ").append(responseCode).toString());
            }
        }
    }

    private class DownloadAd extends AsyncTask {
        private DownloadAd() {
        }

        public Object doInBackground(Object... urls) {
            String responseString = URLFetcher.getString((String) urls[0]);
            if (responseString == null) {
                return null;
            }
            StringBuffer response = new StringBuffer(responseString);
            try {
                PocketCurrency.this.mAdIntentString = Utilities.searchForString("<intent>", "</intent>", response);
                PocketCurrency.this.mAdDestination = Utilities.searchForString("<adDestination>", "</adDestination>", response);
                String adURL = Utilities.searchForString("<adURL>", "</adURL>", response);
                PocketCurrency.this.mAdMessage = Utilities.searchForString("<message>", "</message>", response);
                PocketCurrency.this.mAdTextColor = Utilities.searchForString("<textColor>", "</textColor>", response);
                PocketCurrency.this.mAdTextBackgroundColor = Utilities.searchForString("<textBackgroundColor>", "</textBackgroundColor>", response);
                return URLFetcher.getBitmap(adURL);
            } catch (Exception e) {
                return null;
            }
        }

        public void onPostExecute(Object result) {
            if (result != null) {
                PocketCurrency.this.mAd.setImageBitmap((Bitmap) result);
            }
        }
    }

    private class DownloadImageTask extends AsyncTask {
        private DownloadImageTask() {
        }

        public Object doInBackground(Object... urls) {
            return URLFetcher.getBitmap((String) urls[0]);
        }

        public void onPostExecute(Object result) {
            if (result != null) {
                PocketCurrency.this.mGraph.setImageBitmap((Bitmap) result);
                PocketCurrency.this.setGraphTextViews();
            }
            PocketCurrency.this.mChartDisplayed = true;
            if (PocketCurrency.this.mGraphAnimation != null) {
                PocketCurrency.this.mGraphAnimation.stop();
            }
            ((TableRow) PocketCurrency.this.findViewById(R.id.graph_animation)).setVisibility(8);
            PocketCurrency.this.mTracker.dispatch();
        }
    }

    private class DownloadXRatesTask extends AsyncTask<String, Integer, String> {
        public DBAdapter mThreadDB;

        private DownloadXRatesTask() {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.String doInBackground(java.lang.String... r16_urls) {
            throw new UnsupportedOperationException("Method not decompiled: com.pocketools.currency.PocketCurrency.DownloadXRatesTask.doInBackground(java.lang.String[]):java.lang.String");
            /*
            r15 = this;
            r13 = 0;
            r13 = r16[r13];
            r6 = com.pocketools.currency.URLFetcher.getString(r13);
            if (r6 == 0) goto L_0x001b;
        L_0x0009:
            r7 = r6;
            r13 = com.pocketools.currency.PocketCurrency.this;
            r1 = r13.mRefreshDateText;
            r12 = new java.util.StringTokenizer;	 Catch:{ Exception -> 0x005b }
            r13 = "\n";
            r12.<init>(r7, r13);	 Catch:{ Exception -> 0x005b }
        L_0x0015:
            r13 = r12.hasMoreTokens();	 Catch:{ Exception -> 0x005b }
            if (r13 != 0) goto L_0x001c;
        L_0x001b:
            return r6;
        L_0x001c:
            r11 = r12.nextToken();	 Catch:{ Exception -> 0x005b }
            r0 = "";
            r3 = "0";
            r9 = new java.util.StringTokenizer;	 Catch:{ Exception -> 0x005b }
            r13 = ",";
            r9.<init>(r11, r13);	 Catch:{ Exception -> 0x005b }
            r8 = r9.nextToken();	 Catch:{ Exception -> 0x005b }
            r13 = 4;
            r14 = 7;
            r0 = r8.substring(r13, r14);	 Catch:{ Exception -> 0x005b }
            r3 = r9.nextToken();	 Catch:{ Exception -> 0x005b }
            r4 = java.lang.Double.parseDouble(r3);	 Catch:{ Exception -> 0x005b }
            r13 = java.lang.System.currentTimeMillis();	 Catch:{ SQLException -> 0x0059 }
            r10 = java.lang.Long.toString(r13);	 Catch:{ SQLException -> 0x0059 }
            r13 = r15.mThreadDB;	 Catch:{ SQLException -> 0x0059 }
            r13.updateExchangeRate(r0, r4, r10);	 Catch:{ SQLException -> 0x0059 }
            r13 = com.pocketools.currency.PocketCurrency.this;	 Catch:{ SQLException -> 0x0059 }
            r14 = com.pocketools.currency.PocketCurrency.this;	 Catch:{ SQLException -> 0x0059 }
            r14 = r14.getUpdateInterval(r10);	 Catch:{ SQLException -> 0x0059 }
            r13.mRefreshDateText = r14;	 Catch:{ SQLException -> 0x0059 }
            r13 = com.pocketools.currency.PocketCurrency.this;	 Catch:{ SQLException -> 0x0059 }
            r13.mLastUpdate = r10;	 Catch:{ SQLException -> 0x0059 }
            goto L_0x0015;
        L_0x0059:
            r2 = move-exception;
            goto L_0x001b;
        L_0x005b:
            r2 = move-exception;
            r6 = 0;
            goto L_0x001b;
            */
        }

        public void onCancelled() {
            this.mThreadDB.close();
            this.mThreadDB = null;
            super.onCancelled();
        }

        public void onPostExecute(String result) {
            if (PocketCurrency.this.mNotificationManager != null) {
                PocketCurrency.this.mNotificationManager.cancel(HELLO_ID);
            }
            PocketCurrency.this.mSwapImage.setBackgroundResource(R.drawable.refresh);
            PocketCurrency.this.mRightResult.setHint(AD_MOB_KEYWORD_HINT);
            PocketCurrency.this.mRightResult.setEnabled(true);
            PocketCurrency.this.mXrate = PocketCurrency.this.calculateExchange(PocketCurrency.this.mCurrencyLeft, PocketCurrency.this.mCurrencyRight, this.mThreadDB);
            DecimalFormat decimal2 = new DecimalFormat("#0.00");
            if (PocketCurrency.this.mLeftResult.getText().toString().length() > 0) {
                try {
                    PocketCurrency.this.mRightResult.setText(decimal2.format(Double.parseDouble(PocketCurrency.this.mLeftResult.getText().toString()) * PocketCurrency.this.mXrate));
                } catch (NumberFormatException e) {
                }
            }
            DecimalFormat decimal4 = new DecimalFormat("#0.0000");
            PocketCurrency.this.mXrateString = decimal4.format(PocketCurrency.this.mXrate);
            PocketCurrency.this.mXrateUpdateMessage.setText(new StringBuilder("Rate : ").append(PocketCurrency.this.mXrateString).append(PocketCurrency.this.mRefreshDateText).toString());
            this.mThreadDB.close();
        }

        public void onPreExecute() {
            this.mThreadDB = new DBAdapter(PocketCurrency.this.mContext);
            this.mThreadDB.open();
            this.mThreadDB.getDatabase().setLockingEnabled(true);
            while (this.mThreadDB.getDatabase().isDbLockedByOtherThreads()) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                }
            }
        }
    }

    public class ImageAdapterConverter extends BaseAdapter {
        private Context mContext;
        int mGalleryItemBackground;
        private Integer[] mImageIds;

        public ImageAdapterConverter(Context c) {
            this.mImageIds = new Integer[]{Integer.valueOf(R.drawable.news_off), Integer.valueOf(R.drawable.converter_on), Integer.valueOf(R.drawable.list_off)};
            this.mContext = c;
        }

        public int getCount() {
            return this.mImageIds.length;
        }

        public Object getItem(int position) {
            return Integer.valueOf(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            ImageView i = new ImageView(this.mContext);
            i.setImageResource(this.mImageIds[position].intValue());
            return i;
        }
    }

    static {
        AD_KEYWORDS = new String[]{"forex", "currency converter", "currency exchange", "online currency", KEYWORDS};
        GROUPON_CLIENT_ID = "1b275b4fea756d0e9cd2ebb4f2fba9a42df320d3";
    }

    public PocketCurrency() {
        this.mCurrencyLeft = "USD";
        this.mCurrencyRight = "EUR";
        this.mRefreshDateText = AD_MOB_KEYWORD_HINT;
        this.mPayloadContents = null;
        this.mAdURL = "http://www.pocketsmart.net/currency/ad.xml";
        this.mSpinnerLeftPosition = 0;
        this.mSpinnerRightPosition = 0;
        this.mPocketCurrencyView = null;
        this.mLeftSpinner = null;
        this.mRightSpinner = null;
        this.mXrateUpdateMessage = null;
        this.mXrate = 0.0d;
        this.mXrateString = AD_MOB_KEYWORD_HINT;
        this.mLeftResult = null;
        this.mRightResult = null;
        this.mChartDisplayed = false;
        this.mSwapDisplayed = true;
        this.mGraphURL = AD_MOB_KEYWORD_HINT;
        this.mTimeframeRow = null;
        this.firstCallLeft = false;
        this.firstCallRight = false;
        this.mActivity = this;
        this.mNetworkInfo = null;
        this.mGoogleAdRow = null;
        this.mAdKeywords = AD_MOB_KEYWORD_HINT;
        this.mBaseCurrencyList = AD_MOB_KEYWORD_HINT;
        this.mIsAdsFreeVersion = false;
        this.mAdPreferences = AD_MOB_KEYWORD_HINT;
    }

    private double calculateExchange(String leftCurrency, String rightCurrency, DBAdapter db) {
        if (!db.getDatabase().isOpen()) {
            db.open();
        }
        Cursor left = db.getExchangeRate(leftCurrency);
        startManagingCursor(left);
        left.moveToFirst();
        double leftXrate = left.getDouble(left.getColumnIndex(DBAdapter.KEY_CURRENCY_X_RATE));
        Cursor right = db.getExchangeRate(rightCurrency);
        startManagingCursor(right);
        right.moveToFirst();
        return right.getDouble(right.getColumnIndex(DBAdapter.KEY_CURRENCY_X_RATE)) / leftXrate;
    }

    private Dialog createDialog(int titleId, int messageId) {
        Builder builder = new Builder(this);
        builder.setTitle(titleId).setIcon(17301642).setMessage(messageId).setCancelable(false).setPositiveButton(17039370, null);
        return builder.create();
    }

    private String getUpdateInterval(String lastUpdate) {
        try {
            long intervalSecs = (System.currentTimeMillis() - Long.parseLong(lastUpdate)) / 1000;
            String interval = AD_MOB_KEYWORD_HINT;
            if (intervalSecs < 60) {
                interval = new StringBuilder(String.valueOf(intervalSecs)).append(" Seconds").toString();
            } else if (intervalSecs > 60 && intervalSecs < 3600) {
                interval = new StringBuilder(String.valueOf(intervalSecs / 60)).append(" Minutes").toString();
            }
            if (intervalSecs > 3600) {
                interval = new StringBuilder(String.valueOf(intervalSecs / 3600)).append(" Hours").toString();
            }
            return new StringBuilder(" ( ").append(interval).append(" ago )").toString();
        } catch (Exception e) {
            return lastUpdate;
        }
    }

    private boolean isOverdueRefresh() {
        boolean z = true;
        try {
            if ((System.currentTimeMillis() - Long.parseLong(this.mLastUpdate)) / 1000 > 900) {
                this.mSwapDisplayed = false;
                return z;
            } else {
                this.mSwapDisplayed = true;
                return false;
            }
        } catch (NumberFormatException e) {
            return z;
        }
    }

    private void logProductActivity(String product, String activity) {
        SpannableStringBuilder contents = new SpannableStringBuilder();
        contents.append(Html.fromHtml(new StringBuilder("<b>").append(product).append("</b>: ").toString()));
        contents.append(activity);
        prependLogEntry(contents);
    }

    private void prependLogEntry(CharSequence cs) {
        new SpannableStringBuilder(cs).append('\n');
    }

    private void setGraphTextViews() {
        this.mTimeframeRow.removeAllViews();
        TextView view = new TextView(this);
        view.setPadding(10, 0, 0, 0);
        view.setText("1d");
        view.setTextColor(-16776961);
        this.mTimeframeRow.addView(view);
        view = new TextView(this);
        view.setPadding(10, 0, 0, 0);
        view.setText("5d");
        view.setTextColor(-16776961);
        this.mTimeframeRow.addView(view);
        view = new TextView(this);
        view.setPadding(10, 0, 0, 0);
        view.setText("3m");
        view.setTextColor(-16777216);
        this.mTimeframeRow.addView(view);
        view = new TextView(this);
        view.setPadding(10, 0, 0, 0);
        view.setText("1y");
        view.setTextColor(-16776961);
        this.mTimeframeRow.addView(view);
        view = new TextView(this);
        view.setPadding(10, 0, 0, 0);
        view.setText("2y");
        view.setTextColor(-16776961);
        this.mTimeframeRow.addView(view);
        view = new TextView(this);
        view.setPadding(10, 0, 0, 0);
        view.setText("5y");
        view.setTextColor(-16776961);
        this.mTimeframeRow.addView(view);
    }

    private void startGraphAnimation() {
        this.mGraphLoading = (ImageView) findViewById(R.id.graph_loading);
        this.mGraphLoading.setBackgroundResource(R.anim.spin_animation);
        this.mGraphAnimation = (AnimationDrawable) this.mGraphLoading.getBackground();
        this.mGraphAnimation.start();
    }

    private void startRefreshNotification() {
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        Notification notification = new Notification(17301628, "X-Rate sync with Yahoo Finance", System.currentTimeMillis());
        notification.setLatestEventInfo(getApplicationContext(), APP_NAME, "Refreshing X-Rates from Yahoo Finance", PendingIntent.getActivity(this, 0, new Intent(this, PocketCurrency.class), 0));
        this.mNotificationManager.notify(HELLO_ID, notification);
    }

    private void startSwapAnimation() {
        this.mRightResult.setText(AD_MOB_KEYWORD_HINT);
        this.mRightResult.setHint("Loading..");
        this.mRightResult.setEnabled(false);
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case CHOOSE_TIMEFRAME:
                if (resultCode == 1006) {
                    String timeframe = data.getExtras().getString("TIMEFRAME");
                    Intent intent = new Intent(this, Graph.class);
                    intent.putExtra("TIMEFRAME", timeframe);
                    intent.putExtra("CURRENCY_LEFT", this.mCurrencyLeft);
                    intent.putExtra("CURRENCY_RIGHT", this.mCurrencyRight);
                    startActivity(intent);
                }
            default:
                break;
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        this.mTracker = GoogleAnalyticsTracker.getInstance();
        this.mTracker.startNewSession(ANALYTICS_UA_NUMBER, this);
        this.mTracker.trackPageView("/PocketCurrency_2_4");
        this.mTracker.dispatch();
        this.mContext = this;
        if (this.mPocketCurrencyView == null) {
            this.mPocketCurrencyView = LayoutInflater.from(this).inflate(R.layout.main, null);
        }
        setContentView(this.mPocketCurrencyView);
        this.firstCallLeft = true;
        this.firstCallRight = true;
        this.currencyArray = new ArrayList();
        this.currencyArray.add("EUR   -  Euro");
        this.currencyArray.add("GBP   -  United Kingdom Pounds");
        this.currencyArray.add("USD   -  United States Dollars");
        DBAdapter dBAdapter = dBAdapter;
        Context context = this;
        this.mDb = dBAdapter;
        this.mDb.open();
        boolean hasPageSet = false;
        boolean hasAdPreferencesSet = false;
        String defaultPage = AD_MOB_KEYWORD_HINT;
        this.mHandler = new Handler();
        CurrencyPurchaseObserver currencyPurchaseObserver = currencyPurchaseObserver;
        context = this;
        Handler handler = this.mHandler;
        this.mCurrencyPurchaseObserver = currencyPurchaseObserver;
        this.mBillingService = new BillingService();
        this.mBillingService.setContext(this);
        ResponseHandler.register(this.mCurrencyPurchaseObserver);
        Cursor defaults = this.mDb.getDefaultValues();
        startManagingCursor(defaults);
        int i = 0;
        while (i < defaults.getCount()) {
            defaults.moveToPosition(i);
            String default_type = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_TYPE));
            if (default_type.compareTo("user_agreement_accepted") == 0) {
                if (defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE)).compareTo("false") == 0) {
                    this.mBillingService.restoreTransactions();
                    showDialog(1003);
                }
            } else if (default_type.compareTo("default_base_currency") == 0) {
                if (defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE)).length() > 0) {
                    this.mCurrencyLeft = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                }
            } else if (default_type.compareTo("default_result_currency") == 0) {
                if (defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE)).length() > 0) {
                    this.mCurrencyRight = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                }
            } else if (default_type.compareTo("default_base_currency_list") == 0) {
                this.mBaseCurrencyList = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            } else if (default_type.compareTo("default_page") == 0) {
                defaultPage = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                hasPageSet = true;
            } else if (default_type.compareTo("ads_free_version") == 0) {
                this.mIsAdsFreeVersion = true;
            } else if (default_type.compareTo("ad_preferences") == 0) {
                this.mAdPreferences = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                hasAdPreferencesSet = true;
            }
            i++;
        }
        if (!hasPageSet) {
            defaultPage = CONVERTER_PAGE;
            this.mDb.addDefaultPage(CONVERTER_PAGE);
        }
        if (!hasAdPreferencesSet) {
            this.mDb.addAdPreferences(this.mAdPreferences);
        }
        if (!getIntent().getBooleanExtra(IS_COMING_FROM_NAVIGATION, false)) {
            Intent intent;
            Class cls;
            if (defaultPage.compareTo(NEWS_PAGE) == 0) {
                context = this;
                cls = News.class;
                startActivity(intent);
                finish();
            } else if (defaultPage.compareTo(CURRENCY_LIST_PAGE) == 0) {
                context = this;
                cls = CurrencyList.class;
                startActivity(intent);
                finish();
            }
        }
        this.mGoogleAdRow = (TableRow) findViewById(2131165266);
        this.mGoogleAdRow.setVisibility(R.styleable.com_admob_android_ads_AdView_refreshInterval);
        if (!this.mIsAdsFreeVersion) {
            DownloadAd downloadAd = downloadAd;
            context = this;
            DownloadAd downloadAd2 = null;
            this.mDownloadAd = downloadAd;
            DownloadAd downloadAd3 = this.mDownloadAd;
            Object[] objArr = new Object[1];
            objArr[0] = this.mAdURL;
            downloadAd3.execute(objArr);
            String urlExtension = AD_MOB_KEYWORD_HINT;
            Double latitudeDouble = Double.valueOf(0.0d);
            Double longitudeDouble = Double.valueOf(0.0d);
            AdView adView = adView;
            Activity activity = this;
            AdSize adSize = AdSize.BANNER;
            String str = ADMOB_PUBLISHER_ID;
            this.mAdView = adView;
            ((LinearLayout) findViewById(2131165267)).addView(this.mAdView);
            AdRequest request = new AdRequest();
            request.setLocation(((LocationManager) getSystemService("location")).getLastKnownLocation("network"));
            Set<String> hashSet = keywords;
            List list = Arrays.asList(AD_KEYWORDS);
            request.setKeywords(keywords);
            this.mAdView.loadAd(request);
            this.mGoogleAdRow.setVisibility(0);
        }
        Cursor allCurrencies = this.mDb.getCurrencies();
        startManagingCursor(allCurrencies);
        int j = 0;
        while (j < allCurrencies.getCount()) {
            allCurrencies.moveToPosition(j);
            this.currencyArray.add(new StringBuilder(String.valueOf(allCurrencies.getString(allCurrencies.getColumnIndex(DBAdapter.KEY_CURRENCY)))).append("   -  ").append(allCurrencies.getString(allCurrencies.getColumnIndex(DBAdapter.KEY_CURRENCY_DESCRIPTION))).toString());
            j++;
        }
        this.mXrateUpdateMessage = (TextView) findViewById(2131165268);
        this.mLeftResult = (EditText) findViewById(2131165257);
        this.mRightResult = (EditText) findViewById(2131165260);
        this.mGraph = (ImageButton) findViewById(2131165265);
        this.mAd = (ImageButton) findViewById(2131165261);
        this.mTimeframeRow = (TableRow) findViewById(2131165262);
        this.mTimeframeRow.setClickable(true);
        TextWatcher anonymousClass_1 = textWatcher;
        context = this;
        this.mLeftResult.addTextChangedListener(textWatcher);
        anonymousClass_1 = textWatcher;
        context = this;
        this.mRightResult.addTextChangedListener(textWatcher);
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
        this.mLeftSpinner = (Spinner) findViewById(2131165228);
        ArrayAdapter arrayAdapter = arrayAdapter;
        context = this;
        int i2 = 17367048;
        ArrayList arrayList = this.currencyArray;
        this.mLeftAdapter = arrayAdapter;
        this.mLeftAdapter.setDropDownViewResource(17367049);
        this.mLeftSpinner.setAdapter(this.mLeftAdapter);
        this.mLeftSpinner.setSelection(this.mSpinnerLeftPosition);
        OnItemSelectedListener anonymousClass_3 = onItemSelectedListener;
        context = this;
        this.mLeftSpinner.setOnItemSelectedListener(onItemSelectedListener);
        this.mRightSpinner = (Spinner) findViewById(2131165259);
        arrayAdapter = arrayAdapter;
        context = this;
        i2 = 17367048;
        arrayList = this.currencyArray;
        this.mRightAdapter = arrayAdapter;
        this.mRightAdapter.setDropDownViewResource(17367049);
        this.mRightSpinner.setAdapter(this.mRightAdapter);
        this.mRightSpinner.setSelection(this.mSpinnerRightPosition);
        anonymousClass_3 = onItemSelectedListener;
        context = this;
        this.mRightSpinner.setOnItemSelectedListener(onItemSelectedListener);
        OnClickListener anonymousClass_5 = onClickListener;
        context = this;
        this.mGraph.setOnClickListener(onClickListener);
        anonymousClass_5 = onClickListener;
        context = this;
        this.mAd.setOnClickListener(onClickListener);
        this.mSwapImage = (ImageView) findViewById(2131165258);
        this.mSwapImage.setBackgroundResource(R.drawable.refresh);
        this.mSwapImage.setClickable(true);
        anonymousClass_5 = onClickListener;
        context = this;
        this.mSwapImage.setOnClickListener(onClickListener);
        anonymousClass_5 = onClickListener;
        context = this;
        this.mTimeframeRow.setOnClickListener(onClickListener);
        Gallery g = (Gallery) findViewById(2131165256);
        ImageAdapterConverter imageAdapterConverter = imageAdapterConverter;
        context = this;
        Context context2 = this.mContext;
        g.setAdapter(imageAdapterConverter);
        g.setSelection(1);
        g.setSpacing(0);
        AnonymousClass_9 anonymousClass_9 = anonymousClass_9;
        context = this;
        g.setOnItemClickListener(anonymousClass_9);
        Cursor rateDate = this.mDb.getExchangeRateDate(this.mCurrencyLeft);
        startManagingCursor(rateDate);
        rateDate.moveToFirst();
        try {
            this.mLastUpdate = rateDate.getString(rateDate.getColumnIndex(DBAdapter.KEY_CURRENCY_SINGLE_X_RATE_DATE));
            this.mRefreshDateText = getUpdateInterval(this.mLastUpdate);
        } catch (NumberFormatException e) {
        }
        Cursor selectedCurrencies = this.mDb.getSelectedCurrencies();
        startManagingCursor(selectedCurrencies);
        StringBuffer currencylist = new StringBuffer();
        currencylist.append(new StringBuilder("+EUR").append(this.mCurrencyLeft).append("=X").toString());
        currencylist.append(new StringBuilder("+EUR").append(this.mCurrencyRight).append("=X").toString());
        i = 0;
        while (i < selectedCurrencies.getCount()) {
            selectedCurrencies.moveToPosition(i);
            currencylist.append(new StringBuilder("+EUR").append(selectedCurrencies.getString(selectedCurrencies.getColumnIndex(DBAdapter.KEY_CURRENCY))).append("=X").toString());
            i++;
        }
        currencylist.append(new StringBuilder("+EUR").append(this.mBaseCurrencyList).append("=X").toString());
        this.mCurrencyString = new StringBuilder("http://finance.yahoo.com/d/quotes.csv?s=").append(currencylist.toString()).append("&f=sl1d1t1").toString();
    }

    protected Dialog onCreateDialog(int id) {
        switch (id) {
            case ALERT_DIALOG_USER_AGREEMENT:
                return new Builder(this).setTitle(R.string.end_user_agreement_title).setMessage(R.string.end_user_agreement_text).setNeutralButton("EULA", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                        PocketCurrency.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.pocketools.com/eula")));
                        PocketCurrency.this.finish();
                    }
                }).setPositiveButton("Accept", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                        DBAdapter db = new DBAdapter(PocketCurrency.this.mContext);
                        db.open();
                        db.setUserAgreement("true");
                        db.close();
                    }
                }).setNegativeButton("Reject", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                        PocketCurrency.this.finish();
                    }
                }).create();
            case DIALOG_CANNOT_CONNECT_ID:
                return createDialog(R.string.cannot_connect_title, R.string.cannot_connect_message);
            case DIALOG_BILLING_NOT_SUPPORTED_ID:
                return createDialog(R.string.billing_not_supported_title, R.string.billing_not_supported_message);
            default:
                return null;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        boolean result = super.onCreateOptionsMenu(menu);
        menu.add(0, MENU_UPGRADE, 0, "Ads Free Version").setIcon(17301573);
        menu.add(0, MENU_REFRESH, 0, "Refresh Rates").setIcon(17301581);
        menu.add(0, MENU_ADD_CURRENCY, 0, "Add Currency").setIcon(17301555);
        menu.add(0, MENU_SETTINGS, 0, "Settings").setIcon(17301577);
        menu.add(0, MENU_INFO, 0, "Info").setIcon(17301568);
        return result;
    }

    protected void onDestroy() {
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        this.mBillingService.unbind();
        super.onDestroy();
        this.mTracker.stopSession();
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case MENU_REFRESH:
                if (((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo() != null) {
                    this.mXrateUpdateMessage.setText("Updating X-Rates ...");
                    this.mSwapDisplayed = false;
                    startRefreshNotification();
                    this.mXratesTask = new DownloadXRatesTask(null);
                    this.mXratesTask.execute(new String[]{this.mCurrencyString});
                    this.mDb.updateRateDate(Long.toString(System.currentTimeMillis()));
                    return true;
                } else {
                    this.mXrateUpdateMessage.setText(new StringBuilder("Rate : ").append(this.mXrate).append(this.mRefreshDateText).toString());
                    Toast.makeText(this, "Connection Error. Please check your connections and try again.", 0).show();
                    return true;
                }
            case MENU_ADD_CURRENCY:
                startActivity(new Intent(this, AddCurrency.class));
                return true;
            case MENU_INFO:
                startActivity(new Intent(this, Info.class));
                return true;
            case MENU_SETTINGS:
                startActivity(new Intent(this, Settings.class));
                return true;
            case MENU_UPGRADE:
                if (this.mBillingService.requestPurchase(IN_APP_BILLING_ADS_FREE, null)) {
                    return true;
                }
                showDialog(DIALOG_BILLING_NOT_SUPPORTED_ID);
                return true;
            default:
                return false;
        }
    }

    protected void onPause() {
        if (this.mNotificationManager != null) {
            this.mNotificationManager.cancel(HELLO_ID);
        }
        if (this.mXratesTask != null && this.mXratesTask.getStatus() == Status.RUNNING) {
            this.mXratesTask.cancel(true);
        }
        if (this.mSingleXratesTask != null && this.mSingleXratesTask.getStatus() == Status.RUNNING) {
            this.mSingleXratesTask.cancel(true);
        }
        if (this.mDownloadImageTask != null && this.mDownloadImageTask.getStatus() == Status.RUNNING) {
            this.mDownloadImageTask.cancel(true);
        }
        if (this.mDownloadAd != null && this.mDownloadAd.getStatus() == Status.RUNNING) {
            this.mDownloadAd.cancel(true);
        }
        this.mXrateUpdateMessage.setText(new StringBuilder("Rate : ").append(this.mXrateString).append(this.mRefreshDateText).toString());
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
        Cursor defaults = this.mDb.getDefaultValues();
        startManagingCursor(defaults);
        int i = 0;
        while (i < defaults.getCount()) {
            defaults.moveToPosition(i);
            String default_type = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_TYPE));
            if (default_type.compareTo("refresh_date") == 0) {
                this.mLastUpdate = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            }
            if (default_type.compareTo("ads_free_version") == 0) {
                this.mGoogleAdRow.setVisibility(R.styleable.com_admob_android_ads_AdView_refreshInterval);
                this.mGoogleAdRow.setVisibility(8);
                this.mAd.setImageBitmap(null);
                this.mAd.setVisibility(8);
                this.mIsAdsFreeVersion = true;
                Log.d(APP_NAME, "Ads Free Version !");
            }
            i++;
        }
        this.mRefreshDateText = getUpdateInterval(this.mLastUpdate);
        this.mXrateUpdateMessage.setText(new StringBuilder("Rate : ").append(this.mXrateString).append(this.mRefreshDateText).toString());
        this.mSwapDisplayed = true;
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }

    protected void onStart() {
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
        }
        this.mNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (this.mNetworkInfo != null) {
            try {
                if (isOverdueRefresh()) {
                    this.mSwapDisplayed = false;
                    this.mXrateUpdateMessage.setText("Updating X-Rates ...");
                    this.mXratesTask = new DownloadXRatesTask(null);
                    this.mXratesTask.execute(new String[]{this.mCurrencyString});
                    this.mDb.updateRateDate(Long.toString(System.currentTimeMillis()));
                    startRefreshNotification();
                } else {
                    this.mXrateUpdateMessage.setText(new StringBuilder("Rate : ").append(this.mXrateString).append(this.mRefreshDateText).toString());
                }
                String graphURL = new StringBuilder("http://ichart.finance.yahoo.com/3m?").append(this.mCurrencyLeft).append(this.mCurrencyRight).append("=x").toString();
                this.mDownloadImageTask = new DownloadImageTask(null);
                this.mDownloadImageTask.execute(new Object[]{graphURL});
            } catch (Exception e) {
            }
        }
        ResponseHandler.register(this.mCurrencyPurchaseObserver);
        super.onStart();
    }

    protected void onStop() {
        if (this.mNotificationManager != null) {
            this.mNotificationManager.cancel(HELLO_ID);
        }
        if (this.mXratesTask != null && this.mXratesTask.getStatus() == Status.RUNNING) {
            this.mXratesTask.cancel(true);
        }
        if (this.mSingleXratesTask != null && this.mSingleXratesTask.getStatus() == Status.RUNNING) {
            this.mSingleXratesTask.cancel(true);
        }
        this.mXrateUpdateMessage.setText(new StringBuilder("Rate : ").append(this.mXrateString).append(this.mRefreshDateText).toString());
        if (this.mDownloadImageTask != null && this.mDownloadImageTask.getStatus() == Status.RUNNING) {
            this.mDownloadImageTask.cancel(true);
        }
        if (this.mDownloadAd != null && this.mDownloadAd.getStatus() == Status.RUNNING) {
            this.mDownloadAd.cancel(true);
        }
        if (!this.mDb.getDatabase().isOpen()) {
            this.mDb.open();
            this.mDb.setDefaultBaseCurrency(this.mCurrencyLeft);
            this.mDb.setDefaultResultCurrency(this.mCurrencyRight);
            this.mDb.close();
        }
        ResponseHandler.unregister(this.mCurrencyPurchaseObserver);
        super.onStop();
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        if (hasFocus) {
            if (!(this.mNetworkInfo == null || this.mChartDisplayed)) {
                startGraphAnimation();
            }
            if (this.mNetworkInfo != null && !this.mSwapDisplayed) {
                startSwapAnimation();
            }
        }
    }
}