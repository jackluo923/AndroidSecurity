package com.pocketools.currency;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.drawable.AnimationDrawable;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import com.google.ads.AdActivity;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;

public class News extends ListActivity {
    private static final String ADMOB_PUBLISHER_ID = "a14b045c31c8875";
    private static final String APP_NAME = "Currency Converter";
    private static final String CHANNEL_ID = "4907668568";
    private static final String CLIENT_ID = "ca-mb-app-pub-1805290976571198";
    private static final String COMPANY_NAME = "DELADS";
    private static final String KEYWORDS = "forex+online";
    private static final int MENU_INFO = 1004;
    private static final int MENU_SETTINGS = 1005;
    private static final int MENU_UPGRADE = 1006;
    private AnimationDrawable mCompanyInfoAnimation;
    private boolean mCompanyInfoDisplayed;
    private ImageView mCompanyInfoLoading;
    private Context mContext;
    private ArrayList<String> mCurrencyArray;
    private String mCurrencyNews;
    private DBAdapter mDb;
    private View mHeaderView;
    private boolean mIsAdsFreeVersion;
    private ArrayAdapter<String> mLeftAdapter;
    private Spinner mLeftSpinner;
    private NetworkInfo mNetworkInfo;
    private ArrayList<NewsItem> mNewsItems;
    private int mSpinnerLeftPosition;
    private GoogleAnalyticsTracker mTracker;

    private class DownloadNewsTask extends AsyncTask {
        String mUrl;

        private DownloadNewsTask() {
            this.mUrl = PocketCurrency.AD_MOB_KEYWORD_HINT;
        }

        public Object doInBackground(Object... urls) {
            return URLFetcher.getString((String) urls[0]);
        }

        public void onPostExecute(Object result) {
            NewsItem item;
            String jsonResult = (String) result;
            News.this.mNewsItems = new ArrayList();
            News.this.mCompanyInfoDisplayed = true;
            if (jsonResult != null) {
                StringBuffer stringBuffer = stringBuffer;
                String trimmedResult = Utilities.searchForString("{clusters:", ",results_per_page", stringBuffer);
                String decodedResult = trimmedResult;
                if (trimmedResult != null) {
                    decodedResult = trimmedResult.replace("x26#39;", "'").replace("x26amp;", "&");
                }
                try {
                    JSONArray array = new JSONArray(decodedResult);
                    if (array.length() > 1) {
                        int i = 0;
                        while (i < array.length()) {
                            JSONObject element = array.getJSONObject(i);
                            if (element.getString("id").compareTo("-1") != 0) {
                                NewsItem article = new NewsItem();
                                JSONObject newsObject = element.getJSONArray("a").getJSONObject(0);
                                String title = newsObject.getString("t");
                                String str = title;
                                try {
                                    str = URLDecoder.decode(title, "UTF-8");
                                } catch (Exception e) {
                                }
                                String newsSource = newsObject.getString("s");
                                String url = newsObject.getString(AdActivity.URL_PARAM);
                                String summary = newsObject.getString("sp");
                                String publishDate = newsObject.getString("d");
                                article.setHeading(title);
                                article.setSource(newsSource);
                                article.setSummary(summary);
                                article.setFreshness(publishDate);
                                article.setURL(url);
                                News.this.mNewsItems.add(article);
                            }
                            i++;
                        }
                    } else {
                        News.this.mNewsItems = new ArrayList();
                        item = new NewsItem();
                        item.setSummary(new StringBuilder("No News Available for ").append(News.this.mCurrencyNews).toString());
                        News.this.mNewsItems.add(item);
                    }
                } catch (Exception e2) {
                    News.this.mNewsItems = new ArrayList();
                    item = new NewsItem();
                    item.setSummary(new StringBuilder("No News Available for ").append(News.this.mCurrencyNews).toString());
                    News.this.mNewsItems.add(item);
                }
            } else {
                News.this.mNewsItems = new ArrayList();
                item = new NewsItem();
                item.setSummary(new StringBuilder("No News Available for ").append(News.this.mCurrencyNews).toString());
                News.this.mNewsItems.add(item);
            }
            News.this.getListView().setAdapter(new MyNewsAdapter(News.this.mContext, 2130903056, News.this.mNewsItems));
            if (News.this.mCompanyInfoAnimation != null) {
                News.this.mCompanyInfoAnimation.stop();
            }
            ((TableRow) News.this.findViewById(R.id.company_info_animation)).setVisibility(8);
        }
    }

    public class ImageAdapterMarkets extends BaseAdapter {
        private Context mContext;
        int mGalleryItemBackground;
        private Integer[] mImageIds;

        public ImageAdapterMarkets(Context c) {
            this.mImageIds = new Integer[]{Integer.valueOf(R.drawable.news_on), Integer.valueOf(R.drawable.converter_off), Integer.valueOf(R.drawable.list_off)};
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

    private class MyNewsAdapter extends ArrayAdapter<NewsItem> {
        private ArrayList<NewsItem> mList;

        public MyNewsAdapter(Context context, int resourceId, ArrayList<NewsItem> arrayList) {
            super(context, resourceId, arrayList);
            this.mList = arrayList;
            News.this.mContext = context;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View view = ((LayoutInflater) News.this.getSystemService("layout_inflater")).inflate(R.layout.news_content, null);
            NewsItem article = (NewsItem) this.mList.get(position);
            ((TextView) view.findViewById(R.id.news_heading)).setText(article.getHeading());
            ((TextView) view.findViewById(R.id.news_source)).setText(article.getSource());
            ((TextView) view.findViewById(R.id.news_summary)).setText(article.getSummary());
            ((TextView) view.findViewById(R.id.news_freshness)).setText(article.getFreshness());
            return view;
        }
    }

    public News() {
        this.mCurrencyNews = PocketCurrency.AD_MOB_KEYWORD_HINT;
        this.mCompanyInfoDisplayed = false;
        this.mNetworkInfo = null;
        this.mSpinnerLeftPosition = 0;
        this.mLeftSpinner = null;
        this.mIsAdsFreeVersion = false;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mTracker = GoogleAnalyticsTracker.getInstance();
        this.mTracker.startNewSession(PocketCurrency.ANALYTICS_UA_NUMBER, this);
        this.mTracker.trackPageView("/News_2_4");
        this.mContext = this;
        requestWindowFeature(1);
        setContentView(2130903055);
        DBAdapter dBAdapter = dBAdapter;
        Context context = this;
        this.mDb = dBAdapter;
        this.mDb.open();
        this.mCurrencyArray = new ArrayList();
        this.mCurrencyArray.add("EUR   -  Euro");
        this.mCurrencyArray.add("GBP   -  United Kingdom Pounds");
        this.mCurrencyArray.add("USD   -  United States Dollars");
        Cursor allCurrencies = this.mDb.getCurrencies();
        startManagingCursor(allCurrencies);
        int j = 0;
        while (j < allCurrencies.getCount()) {
            allCurrencies.moveToPosition(j);
            this.mCurrencyArray.add(new StringBuilder(String.valueOf(allCurrencies.getString(allCurrencies.getColumnIndex(DBAdapter.KEY_CURRENCY)))).append("   -  ").append(allCurrencies.getString(allCurrencies.getColumnIndex(DBAdapter.KEY_CURRENCY_DESCRIPTION))).toString());
            j++;
        }
        Cursor defaults = this.mDb.getDefaultValues();
        startManagingCursor(defaults);
        boolean hasNewsCurrencyDefaultSet = false;
        String baseCurrency = PocketCurrency.AD_MOB_KEYWORD_HINT;
        int i = 0;
        while (i < defaults.getCount()) {
            defaults.moveToPosition(i);
            String default_type = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_TYPE));
            if (default_type.compareTo("default_news_currency") == 0) {
                if (defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE)).length() > 0) {
                    this.mCurrencyNews = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                    hasNewsCurrencyDefaultSet = true;
                }
            } else if (default_type.compareTo("default_base_currency") == 0) {
                if (defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE)).length() > 0) {
                    baseCurrency = defaults.getString(defaults.getColumnIndex(DBAdapter.KEY_DEFAULT_VALUE));
                }
            } else if (default_type.compareTo("ads_free_version") == 0) {
                this.mIsAdsFreeVersion = true;
            }
            i++;
        }
        if (!hasNewsCurrencyDefaultSet) {
            this.mDb.addDefaultNewsCurrency(baseCurrency);
            this.mCurrencyNews = baseCurrency;
        }
        j = 0;
        while (j < this.mCurrencyArray.size()) {
            String longCurrency = (String) this.mCurrencyArray.get(j);
            if (longCurrency.substring(0, longCurrency.indexOf(" ")).compareTo(this.mCurrencyNews) == 0) {
                this.mSpinnerLeftPosition = j;
            }
            j++;
        }
        this.mHeaderView = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.news_header, null);
        this.mLeftSpinner = (Spinner) this.mHeaderView.findViewById(R.id.currency_spinner_news);
        ArrayAdapter arrayAdapter = arrayAdapter;
        context = this;
        int i2 = 17367048;
        ArrayList arrayList = this.mCurrencyArray;
        this.mLeftAdapter = arrayAdapter;
        this.mLeftAdapter.setDropDownViewResource(17367049);
        this.mLeftSpinner.setAdapter(this.mLeftAdapter);
        this.mLeftSpinner.setSelection(this.mSpinnerLeftPosition, false);
        OnItemSelectedListener anonymousClass_1 = onItemSelectedListener;
        context = this;
        this.mLeftSpinner.setOnItemSelectedListener(onItemSelectedListener);
        Gallery g = (Gallery) findViewById(2131165269);
        ImageAdapterMarkets imageAdapterMarkets = imageAdapterMarkets;
        context = this;
        Context context2 = this.mContext;
        g.setAdapter(imageAdapterMarkets);
        g.setSelection(0);
        g.setSpacing(0);
        AnonymousClass_2 anonymousClass_2 = anonymousClass_2;
        context = this;
        g.setOnItemClickListener(anonymousClass_2);
        this.mNewsItems = new ArrayList();
        ListAdapter myNewsAdapter = listAdapter;
        context = this;
        context2 = this;
        int i3 = 2130903056;
        ArrayList arrayList2 = this.mNewsItems;
        ListView listView = getListView();
        listView.addHeaderView(this.mHeaderView);
        listView.setAdapter(listAdapter);
        if (!this.mIsAdsFreeVersion) {
            AdView adView = new AdView((Activity)this, AdSize.BANNER, ADMOB_PUBLISHER_ID);
            ((LinearLayout) findViewById(2131165273)).addView(adView);
            AdRequest request = new AdRequest();
            request.setLocation(((LocationManager) getSystemService("location")).getLastKnownLocation("network"));
            request.setKeywords(new HashSet(Arrays.asList(PocketCurrency.AD_KEYWORDS)));
            adView.loadAd(request);
        }
        this.mNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (this.mNetworkInfo != null) {
            String placeholder = "EUR";
            if (this.mCurrencyNews.compareToIgnoreCase("EUR") == 0) {
                placeholder = "GBP";
            }
            DownloadNewsTask downloadNewsTask = downloadNewsTask;
            context = this;
            DownloadNewsTask downloadNewsTask2 = null;
            Object[] objArr = new Object[1];
            objArr[0] = new StringBuilder("http://www.google.com/finance/company_news?q=").append(this.mCurrencyNews).append(placeholder).append("&output=json&num=20").toString();
            downloadNewsTask.execute(objArr);
        } else {
            Toast.makeText(this, "Connection Error. Please check your connections and try again.", 0).show();
        }
        this.mTracker.dispatch();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        boolean result = super.onCreateOptionsMenu(menu);
        menu.add(0, MENU_SETTINGS, 0, "Settings").setIcon(17301577);
        menu.add(0, MENU_INFO, 0, "Info").setIcon(17301568);
        return result;
    }

    protected void onDestroy() {
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onDestroy();
    }

    public void onListItemClick(ListView parent, View v, int position, long id) {
        NewsItem item = (NewsItem) this.mNewsItems.get(position - 1);
        if (item.getURL().length() > 1) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(item.getURL())));
        }
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case MENU_INFO:
                startActivity(new Intent(this, Info.class));
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
        super.onStart();
    }

    protected void onStop() {
        if (this.mDb.getDatabase().isOpen()) {
            this.mDb.close();
        }
        super.onStop();
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        if (!(!hasFocus || this.mNetworkInfo == null || this.mCompanyInfoDisplayed)) {
            this.mCompanyInfoLoading = (ImageView) findViewById(R.id.company_info_loading);
            this.mCompanyInfoLoading.setBackgroundResource(R.anim.spin_animation);
            this.mCompanyInfoAnimation = (AnimationDrawable) this.mCompanyInfoLoading.getBackground();
            this.mCompanyInfoAnimation.start();
        }
        super.onWindowFocusChanged(hasFocus);
    }
}