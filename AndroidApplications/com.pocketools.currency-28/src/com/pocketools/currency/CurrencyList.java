package com.pocketools.currency;

import android.app.Activity;
import android.app.ListActivity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CursorAdapter;
import android.widget.Gallery;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class CurrencyList extends ListActivity {
    private static final String ADMOB_PUBLISHER_ID = "a14b045c31c8875";
    private static final String APP_NAME = "Currency Converter";
    private static final String CHANNEL_ID = "4325823571";
    public static final int CHOOSE_TIMEFRAME = 1005;
    private static final String CLIENT_ID = "ca-mb-app-pub-1805290976571198";
    private static final String COMPANY_NAME = "DELADS";
    private static final int HELLO_ID = 1000;
    private static final String KEYWORDS = "forex+online";
    private static final int MENU_EDIT_BASE_CURRENCY = 1006;
    private static final int MENU_EDIT_CURRENCY_LIST = 1002;
    private static final int MENU_REFRESH = 1001;
    private static final int MENU_SETTINGS = 1007;
    public static final int RELOAD_CURRENCY_LIST = 1003;
    public static final int RELOAD_CURRENCY_LIST_SUCCESS = 1004;
    String mCompareCurrency;
    ArrayList<String> mCurrencyList;
    String mCurrencyString;
    private DBAdapter mDb;
    String mDefaultAmount;
    String mDefaultCurrency;
    double mDefaultCurrencyVersusEuro;
    View mFooterView;
    TextView mHeadingView;
    Intent mIntent;
    boolean mIsAdsFreeVersion;
    String mLastUpdate;
    private NotificationManager mNotificationManager;
    String mRefreshDateText;
    GoogleAnalyticsTracker mTracker;
    TextView mXrateUpdateMessage;
    DownloadXRatesTask mXratesTask;

    private class DownloadXRatesTask extends AsyncTask<String, Integer, String> {
        private DownloadXRatesTask() {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.String doInBackground(java.lang.String... r15_urls) {
            throw new UnsupportedOperationException("Method not decompiled: com.pocketools.currency.CurrencyList.DownloadXRatesTask.doInBackground(java.lang.String[]):java.lang.String");
            /*
            r14 = this;
            r11 = 0;
            r11 = r15[r11];
            r5 = com.pocketools.currency.URLFetcher.getString(r11);
            if (r5 == 0) goto L_0x0047;
        L_0x0009:
            r11 = com.pocketools.currency.CurrencyList.this;
            r11 = r11.mDb;
            r11 = r11.getDatabase();
            r11 = r11.isOpen();
            if (r11 != 0) goto L_0x0022;
        L_0x0019:
            r11 = com.pocketools.currency.CurrencyList.this;
            r11 = r11.mDb;
            r11.open();
        L_0x0022:
            r6 = r5;
            r10 = new java.util.StringTokenizer;	 Catch:{ Exception -> 0x007b }
            r11 = "\n";
            r10.<init>(r6, r11);	 Catch:{ Exception -> 0x007b }
        L_0x002a:
            r11 = r10.hasMoreTokens();	 Catch:{ Exception -> 0x007b }
            if (r11 != 0) goto L_0x0048;
        L_0x0030:
            r11 = com.pocketools.currency.CurrencyList.this;	 Catch:{ Exception -> 0x007b }
            r11 = r11.mDb;	 Catch:{ Exception -> 0x007b }
            r12 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x007b }
            r12 = java.lang.Long.toString(r12);	 Catch:{ Exception -> 0x007b }
            r11.updateRateDate(r12);	 Catch:{ Exception -> 0x007b }
            r11 = com.pocketools.currency.CurrencyList.this;	 Catch:{ Exception -> 0x007b }
            r12 = "Last update ( 0 Seconds ago ) ";
            r11.mRefreshDateText = r12;	 Catch:{ Exception -> 0x007b }
        L_0x0047:
            return r5;
        L_0x0048:
            r9 = r10.nextToken();	 Catch:{ Exception -> 0x007b }
            r0 = "";
            r2 = "0";
            r8 = new java.util.StringTokenizer;	 Catch:{ Exception -> 0x007b }
            r11 = ",";
            r8.<init>(r9, r11);	 Catch:{ Exception -> 0x007b }
            r7 = r8.nextToken();	 Catch:{ Exception -> 0x007b }
            r11 = 4;
            r12 = 7;
            r0 = r7.substring(r11, r12);	 Catch:{ Exception -> 0x007b }
            r2 = r8.nextToken();	 Catch:{ Exception -> 0x007b }
            r3 = java.lang.Double.parseDouble(r2);	 Catch:{ Exception -> 0x007b }
            r11 = com.pocketools.currency.CurrencyList.this;	 Catch:{ Exception -> 0x007b }
            r11 = r11.mDb;	 Catch:{ Exception -> 0x007b }
            r12 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x007b }
            r12 = java.lang.Long.toString(r12);	 Catch:{ Exception -> 0x007b }
            r11.updateExchangeRate(r0, r3, r12);	 Catch:{ Exception -> 0x007b }
            goto L_0x002a;
        L_0x007b:
            r1 = move-exception;
            r5 = 0;
            goto L_0x0047;
            */
        }

        public void onPostExecute(String result) {
            CurrencyList.this.mNotificationManager.cancel(HELLO_ID);
            CurrencyList.this.mXrateUpdateMessage.setText(new StringBuilder("X-Rates on ").append(CurrencyList.this.mRefreshDateText).toString());
            if (!CurrencyList.this.mDb.getDatabase().isOpen()) {
                CurrencyList.this.mDb.open();
            }
            Cursor defaultCurrency = CurrencyList.this.mDb.getExchangeRate(CurrencyList.this.mDefaultCurrency);
            CurrencyList.this.startManagingCursor(defaultCurrency);
            defaultCurrency.moveToPosition(0);
            CurrencyList.this.mDefaultCurrencyVersusEuro = defaultCurrency.getDouble(defaultCurrency.getColumnIndex(DBAdapter.KEY_CURRENCY_X_RATE));
            Cursor c = CurrencyList.this.mDb.getSelectedCurrencies();
            CurrencyList.this.startManagingCursor(c);
            CurrencyList.this.getListView().setAdapter(new MyCurrencyAdapter(CurrencyList.this.getBaseContext(), c));
        }
    }

    public class ImageAdapter extends BaseAdapter {
        private Context mContext;
        int mGalleryItemBackground;
        private Integer[] mImageIds;

        public ImageAdapter(Context c) {
            this.mImageIds = new Integer[]{Integer.valueOf(R.drawable.news_off), Integer.valueOf(R.drawable.converter_off), Integer.valueOf(R.drawable.list_on)};
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

    private class MyCurrencyAdapter extends CursorAdapter {
        private final LayoutInflater mInflater;

        public MyCurrencyAdapter(Context context, Cursor cursor) {
            super(context, cursor, true);
            this.mInflater = LayoutInflater.from(context);
        }

        public void bindView(View view, Context context, Cursor cursor) {
            CurrencyList.this.mCompareCurrency = cursor.getString(cursor.getColumnIndex(DBAdapter.KEY_CURRENCY));
            double currencyRate = cursor.getDouble(cursor.getColumnIndex(DBAdapter.KEY_CURRENCY_X_RATE)) / CurrencyList.this.mDefaultCurrencyVersusEuro;
            double currencyResult = currencyRate * Double.parseDouble(CurrencyList.this.mDefaultAmount);
            DecimalFormat decimal = new DecimalFormat("#0.0000");
            String currencyRateString = decimal.format(currencyResult);
            String inverseRateString = decimal.format(1.0d / currencyRate);
            ((TextView) view.findViewById(R.id.currencyName)).setText(CurrencyList.this.mCompareCurrency);
            view.findViewById(R.id.currencyRate).setText(currencyRateString);
            view.findViewById(R.id.currency_inverse).setText(new StringBuilder("1 ").append(CurrencyList.this.mCompareCurrency).append(" = ").append(inverseRateString).append(" ").append(CurrencyList.this.mDefaultCurrency).toString());
        }

        public View newView(Context context, Cursor cursor, ViewGroup parent) {
            return this.mInflater.inflate(R.layout.list_content, parent, false);
        }
    }

    public CurrencyList() {
        this.mRefreshDateText = PocketCurrency.AD_MOB_KEYWORD_HINT;
        this.mIsAdsFreeVersion = false;
    }

    private String getUpdateInterval(String lastUpdate) {
        long intervalSecs = (System.currentTimeMillis() - Long.parseLong(lastUpdate)) / 1000;
        String interval = PocketCurrency.AD_MOB_KEYWORD_HINT;
        if (intervalSecs < 60) {
            interval = new StringBuilder(String.valueOf(intervalSecs)).append(" Seconds").toString();
        } else if (intervalSecs > 60 && intervalSecs < 3600) {
            interval = new StringBuilder(String.valueOf(intervalSecs / 60)).append(" Minutes").toString();
        }
        if (intervalSecs > 3600) {
            interval = new StringBuilder(String.valueOf(intervalSecs / 3600)).append(" Hours").toString();
        }
        return new StringBuilder(" ( ").append(interval).append(" ago )").toString();
    }

    private boolean isOverdueRefresh() {
        boolean z = true;
        try {
            long lastUpdateLong = Long.parseLong(this.mLastUpdate);
            return (System.currentTimeMillis() - lastUpdateLong) / 1000 > 900 ? z : false;
        } catch (NumberFormatException e) {
            return z;
        }
    }

    private void refreshRates() {
        if (((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo() != null) {
            this.mXrateUpdateMessage.setText("Updating Rates ...");
            Cursor defaults = this.mDb.getDefaultValues();
            startManagingCursor(defaults);
            int i = 0;
            while (i < defaults.getCount()) {
                defaults.moveToPosition(i);
                if (defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_TYPE)).compareTo("default_base_currency_list") == 0) {
                    this.mDefaultCurrency = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                }
                i++;
            }
            Cursor currencies = this.mDb.getSelectedCurrencies();
            startManagingCursor(currencies);
            StringBuffer currencylist = new StringBuffer();
            i = 0;
            while (i < currencies.getCount()) {
                currencies.moveToPosition(i);
                currencylist.append(new StringBuilder("+EUR").append(currencies.getString(currencies.getColumnIndex(DBAdapter.KEY_CURRENCY))).append("=X").toString());
                i++;
            }
            currencylist.append(new StringBuilder("+EUR").append(this.mDefaultCurrency).append("=X").toString());
            this.mCurrencyString = new StringBuilder("http://finance.yahoo.com/d/quotes.csv?s=").append(currencylist.toString()).append("&f=sl1d1t1").toString();
            startRefreshNotification();
            this.mXratesTask = new DownloadXRatesTask(null);
            this.mXratesTask.execute(new String[]{this.mCurrencyString});
            this.mDb.updateRateDate(Long.toString(System.currentTimeMillis()));
        } else {
            this.mXrateUpdateMessage.setText(new StringBuilder("X-Rates on ").append(this.mRefreshDateText).toString());
            Toast.makeText(this, "Connection Error. Please check your connections and try again.", 0).show();
        }
    }

    private void setCurrencyList() {
        Cursor c = this.mDb.getSelectedCurrencies();
        startManagingCursor(c);
        getListView().setAdapter(new MyCurrencyAdapter(this, c));
    }

    private void startRefreshNotification() {
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        Notification notification = new Notification(17301628, "X-Rate sync with Yahoo Finance", System.currentTimeMillis());
        notification.setLatestEventInfo(getApplicationContext(), APP_NAME, "Refreshing X-Rates", PendingIntent.getActivity(this, 0, new Intent(this, PocketCurrency.class), 0));
        this.mNotificationManager.notify(HELLO_ID, notification);
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case RELOAD_CURRENCY_LIST:
                if (resultCode == 1004) {
                    if (!this.mDb.getDatabase().isOpen()) {
                        this.mDb.open();
                    }
                    refreshRates();
                }
            default:
                break;
        }
    }

    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        this.mTracker = GoogleAnalyticsTracker.getInstance();
        this.mTracker.startNewSession(PocketCurrency.ANALYTICS_UA_NUMBER, this);
        this.mTracker.trackPageView("/CurrencyList_2_4");
        requestWindowFeature(1);
        setContentView(2130903044);
        DBAdapter dBAdapter = dBAdapter;
        Context context = this;
        this.mDb = dBAdapter;
        this.mDb.open();
        Cursor defaults = this.mDb.getDefaultValues();
        startManagingCursor(defaults);
        int i = 0;
        while (i < defaults.getCount()) {
            defaults.moveToPosition(i);
            String default_type = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_TYPE));
            if (default_type.compareTo("default_base_currency_list") == 0) {
                this.mDefaultCurrency = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            } else if (default_type.compareTo("default_base_currency_amount") == 0) {
                this.mDefaultAmount = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            } else if (default_type.compareTo("refresh_date") == 0) {
                this.mLastUpdate = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                this.mRefreshDateText = new StringBuilder("Last update ").append(getUpdateInterval(this.mLastUpdate)).toString();
            } else if (default_type.compareTo("ads_free_version") == 0) {
                this.mIsAdsFreeVersion = true;
            }
            i++;
        }
        Cursor c = this.mDb.getExchangeRate(this.mDefaultCurrency);
        startManagingCursor(c);
        c.moveToPosition(0);
        this.mDefaultCurrencyVersusEuro = c.getDouble(c.getColumnIndex(DBAdapter.KEY_CURRENCY_X_RATE));
        Cursor currencies = this.mDb.getSelectedCurrencies();
        startManagingCursor(currencies);
        ListAdapter listAdapter = new MyCurrencyAdapter(this, currencies);
        ListView listView = getListView();
        listView.addHeaderView(LayoutInflater.from(this).inflate(R.layout.list_header, null));
        listView.setAdapter(listAdapter);
        this.mHeadingView = (TextView) findViewById(2131165254);
        this.mHeadingView.setText(new StringBuilder(String.valueOf(this.mDefaultAmount)).append(" ").append(this.mDefaultCurrency).append(" = ").toString());
        OnClickListener anonymousClass_1 = onClickListener;
        context = this;
        this.mHeadingView.setOnClickListener(onClickListener);
        this.mXrateUpdateMessage = (TextView) findViewById(2131165210);
        this.mXrateUpdateMessage.setText(new StringBuilder("X-Rates on ").append(this.mRefreshDateText).toString());
        AnonymousClass_2 anonymousClass_2 = anonymousClass_2;
        context = this;
        ((ImageButton) findViewById(2131165255)).setOnClickListener(anonymousClass_2);
        Gallery g = (Gallery) findViewById(2131165208);
        ImageAdapter imageAdapter = imageAdapter;
        context = this;
        Context context2 = this;
        g.setAdapter(imageAdapter);
        g.setSelection(2);
        g.setSpacing(0);
        AnonymousClass_3 anonymousClass_3 = anonymousClass_3;
        context = this;
        g.setOnItemClickListener(anonymousClass_3);
        if (!this.mIsAdsFreeVersion) {
            AdView adView = new AdView((Activity)this, AdSize.BANNER, ADMOB_PUBLISHER_ID);
            ((LinearLayout) findViewById(2131165209)).addView(adView);
            AdRequest request = new AdRequest();
            request.setLocation(((LocationManager) getSystemService("location")).getLastKnownLocation("network"));
            request.setKeywords(new HashSet(Arrays.asList(PocketCurrency.AD_KEYWORDS)));
            adView.loadAd(request);
        }
        this.mTracker.dispatch();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        boolean result = super.onCreateOptionsMenu(menu);
        menu.add(0, MENU_REFRESH, 0, "Refresh Rates").setIcon(17301581);
        menu.add(0, MENU_EDIT_CURRENCY_LIST, 0, "Edit List").setIcon(17301566);
        menu.add(0, MENU_SETTINGS, 0, "Settings").setIcon(17301577);
        menu.add(0, MENU_EDIT_BASE_CURRENCY, 0, "Set Base Currency").setIcon(17301585);
        return result;
    }

    protected void onDestroy() {
        super.onDestroy();
        this.mTracker.stop();
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case MENU_REFRESH:
                refreshRates();
                return true;
            case MENU_EDIT_CURRENCY_LIST:
                startActivityForResult(new Intent(this, ChooseCurrencyList.class), RELOAD_CURRENCY_LIST);
                return true;
            case MENU_EDIT_BASE_CURRENCY:
                startActivityForResult(new Intent(this, EditBaseCurrency.class), RELOAD_CURRENCY_LIST);
                return true;
            case MENU_SETTINGS:
                startActivity(new Intent(this, Settings.class));
                return true;
            default:
                return false;
        }
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
        Cursor defaults = this.mDb.getDefaultValues();
        startManagingCursor(defaults);
        int i = 0;
        while (i < defaults.getCount()) {
            defaults.moveToPosition(i);
            String default_type = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_TYPE));
            if (default_type.compareTo("default_base_currency_list") == 0) {
                this.mDefaultCurrency = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            } else if (default_type.compareTo("default_base_currency_amount") == 0) {
                this.mDefaultAmount = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            } else if (default_type.compareTo("refresh_date") == 0) {
                this.mLastUpdate = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
            }
            i++;
        }
        this.mHeadingView.setText(new StringBuilder(String.valueOf(this.mDefaultAmount)).append(" ").append(this.mDefaultCurrency).append(" = ").toString());
        Cursor c = this.mDb.getExchangeRate(this.mDefaultCurrency);
        startManagingCursor(c);
        c.moveToPosition(0);
        this.mDefaultCurrencyVersusEuro = c.getDouble(c.getColumnIndex(DBAdapter.KEY_CURRENCY_X_RATE));
        if (isOverdueRefresh()) {
            refreshRates();
        }
        setCurrencyList();
        super.onStart();
    }

    protected void onStop() {
        if (this.mNotificationManager != null) {
            this.mNotificationManager.cancel(HELLO_ID);
        }
        if (this.mXratesTask != null && this.mXratesTask.getStatus() == Status.RUNNING) {
            this.mXratesTask.cancel(true);
        }
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onStop();
    }
}