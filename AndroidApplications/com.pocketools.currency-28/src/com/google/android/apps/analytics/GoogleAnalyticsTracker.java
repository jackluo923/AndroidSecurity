package com.google.android.apps.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.util.Log;
import com.google.android.apps.analytics.Dispatcher.Callbacks;
import com.google.android.apps.analytics.Transaction.Builder;
import com.pocketools.currency.PocketCurrency;
import com.pocketools.currency.R;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class GoogleAnalyticsTracker {
    public static final String LOG_TAG = "GoogleAnalyticsTracker";
    public static final String PRODUCT = "GoogleAnalytics";
    public static final String VERSION = "1.4.2";
    public static final String WIRE_VERSION = "4.8.1ma";
    private static GoogleAnalyticsTracker instance;
    private String accountId;
    private AdHitIdGenerator adHitIdGenerator;
    private boolean anonymizeIp;
    private ConnectivityManager connectivityManager;
    private CustomVariableBuffer customVariableBuffer;
    private boolean debug;
    private int dispatchPeriod;
    private Runnable dispatchRunner;
    private Dispatcher dispatcher;
    private boolean dispatcherIsBusy;
    private boolean dryRun;
    private Handler handler;
    private HitStore hitStore;
    private Map<String, Map<String, Item>> itemMap;
    private Context parent;
    private boolean powerSaveMode;
    private int sampleRate;
    private Map<String, Transaction> transactionMap;
    private boolean useServerTime;
    private String userAgentProduct;
    private String userAgentVersion;

    final class DispatcherCallbacks implements Callbacks {
        DispatcherCallbacks() {
        }

        public void dispatchFinished() {
            GoogleAnalyticsTracker.this.handler.post(new Runnable() {
                public void run() {
                    DispatcherCallbacks.this.this$0.dispatchFinished();
                }
            });
        }

        public void hitDispatched(long j) {
            GoogleAnalyticsTracker.this.hitStore.deleteHit(j);
        }
    }

    static {
        instance = new GoogleAnalyticsTracker();
    }

    private GoogleAnalyticsTracker() {
        this.debug = false;
        this.dryRun = false;
        this.anonymizeIp = false;
        this.useServerTime = false;
        this.sampleRate = 100;
        this.userAgentProduct = PRODUCT;
        this.userAgentVersion = VERSION;
        this.transactionMap = new HashMap();
        this.itemMap = new HashMap();
        this.dispatchRunner = new Runnable() {
            public void run() {
                GoogleAnalyticsTracker.this.dispatch();
            }
        };
    }

    private void cancelPendingDispatches() {
        if (this.handler != null) {
            this.handler.removeCallbacks(this.dispatchRunner);
        }
    }

    private void createEvent(String str, String str2, String str3, String str4, int i) {
        Event event = new Event(str, str2, str3, str4, i, this.parent.getResources().getDisplayMetrics().widthPixels, this.parent.getResources().getDisplayMetrics().heightPixels);
        event.setCustomVariableBuffer(this.customVariableBuffer);
        event.setAdHitId(this.adHitIdGenerator.getAdHitId());
        event.setUseServerTime(this.useServerTime);
        this.customVariableBuffer = new CustomVariableBuffer();
        this.hitStore.putEvent(event);
        resetPowerSaveMode();
    }

    public static GoogleAnalyticsTracker getInstance() {
        return instance;
    }

    private void maybeScheduleNextDispatch() {
        if (this.dispatchPeriod >= 0 && this.handler.postDelayed(this.dispatchRunner, (long) (this.dispatchPeriod * 1000)) && this.debug) {
            Log.v(LOG_TAG, "Scheduled next dispatch");
        }
    }

    private void resetPowerSaveMode() {
        if (this.powerSaveMode) {
            this.powerSaveMode = false;
            maybeScheduleNextDispatch();
        }
    }

    public void addItem(Item item) {
        if (((Transaction) this.transactionMap.get(item.getOrderId())) == null) {
            Log.i(LOG_TAG, "No transaction with orderId " + item.getOrderId() + " found, creating one");
            this.transactionMap.put(item.getOrderId(), new Builder(item.getOrderId(), 0.0d).build());
        }
        Map map = (Map) this.itemMap.get(item.getOrderId());
        if (map == null) {
            map = new HashMap();
            this.itemMap.put(item.getOrderId(), map);
        }
        map.put(item.getItemSKU(), item);
    }

    public void addTransaction(Transaction transaction) {
        this.transactionMap.put(transaction.getOrderId(), transaction);
    }

    public void clearTransactions() {
        this.transactionMap.clear();
        this.itemMap.clear();
    }

    public boolean dispatch() {
        if (this.debug) {
            Log.v(LOG_TAG, "Called dispatch");
        }
        if (this.dispatcherIsBusy) {
            if (this.debug) {
                Log.v(LOG_TAG, "...but dispatcher was busy");
            }
            maybeScheduleNextDispatch();
            return false;
        } else {
            NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                if (this.debug) {
                    Log.v(LOG_TAG, "...but there was no network available");
                }
                maybeScheduleNextDispatch();
                return false;
            } else if (this.hitStore.getNumStoredHits() != 0) {
                Hit[] peekHits = this.hitStore.peekHits();
                this.dispatcher.dispatchHits(peekHits);
                this.dispatcherIsBusy = true;
                maybeScheduleNextDispatch();
                if (this.debug) {
                    Log.v(LOG_TAG, "Sending " + peekHits.length + " hits to dispatcher");
                }
                return true;
            } else {
                this.powerSaveMode = true;
                if (!this.debug) {
                    return false;
                }
                Log.v(LOG_TAG, "...but there was nothing to dispatch");
                return false;
            }
        }
    }

    void dispatchFinished() {
        this.dispatcherIsBusy = false;
    }

    public boolean getAnonymizeIp() {
        return this.anonymizeIp;
    }

    public boolean getDebug() {
        return this.debug;
    }

    Dispatcher getDispatcher() {
        return this.dispatcher;
    }

    HitStore getHitStore() {
        return this.hitStore;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    String getSessionIdForAds() {
        return this.hitStore == null ? null : this.hitStore.getSessionId();
    }

    public String getVisitorCustomVar(int i) {
        if (i >= 1 && i <= 5) {
            return this.hitStore.getVisitorCustomVar(i);
        }
        throw new IllegalArgumentException(CustomVariable.INDEX_ERROR_MSG);
    }

    String getVisitorIdForAds() {
        return this.hitStore == null ? null : this.hitStore.getVisitorId();
    }

    public boolean isDryRun() {
        return this.dryRun;
    }

    void returnToInitialState() {
        instance = new GoogleAnalyticsTracker();
    }

    void setAdHitIdGenerator(AdHitIdGenerator adHitIdGenerator) {
        this.adHitIdGenerator = adHitIdGenerator;
    }

    public void setAnonymizeIp(boolean z) {
        this.anonymizeIp = z;
        if (this.hitStore != null) {
            this.hitStore.setAnonymizeIp(this.anonymizeIp);
        }
    }

    public boolean setCustomVar(int i, String str, String str2) {
        return setCustomVar(i, str, str2, R.styleable.com_admob_android_ads_AdView_keywords);
    }

    public boolean setCustomVar(int i, String str, String str2, int i2) {
        try {
            CustomVariable customVariable = new CustomVariable(i, str, str2, i2);
            if (this.customVariableBuffer == null) {
                this.customVariableBuffer = new CustomVariableBuffer();
            }
            this.customVariableBuffer.setCustomVariable(customVariable);
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }

    public void setDispatchPeriod(int i) {
        int i2 = this.dispatchPeriod;
        this.dispatchPeriod = i;
        if (i2 <= 0) {
            maybeScheduleNextDispatch();
        } else if (i2 > 0) {
            cancelPendingDispatches();
            maybeScheduleNextDispatch();
        }
    }

    public boolean setDispatcher(Dispatcher dispatcher) {
        if (this.dispatcherIsBusy) {
            return false;
        }
        if (this.dispatcher != null) {
            this.dispatcher.stop();
        }
        this.dispatcher = dispatcher;
        this.dispatcher.init(new DispatcherCallbacks());
        this.dispatcher.setDryRun(this.dryRun);
        return true;
    }

    public void setDryRun(boolean z) {
        this.dryRun = z;
        if (this.dispatcher != null) {
            this.dispatcher.setDryRun(z);
        }
    }

    public void setProductVersion(String str, String str2) {
        this.userAgentProduct = str;
        this.userAgentVersion = str2;
    }

    public boolean setReferrer(String str) {
        if (this.hitStore != null) {
            return this.hitStore.setReferrer(str);
        }
        throw new IllegalStateException("Can't set a referrer before starting the tracker");
    }

    public void setSampleRate(int i) {
        if (i < 0 || i > 100) {
            Log.w(LOG_TAG, "Invalid sample rate: " + i + " (should be between 0 and 100");
        } else {
            this.sampleRate = i;
            if (this.hitStore != null) {
                this.hitStore.setSampleRate(this.sampleRate);
            }
        }
    }

    public void setUseServerTime(boolean z) {
        this.useServerTime = z;
    }

    @Deprecated
    public void start(String str, int i, Context context) {
        startNewSession(str, i, context);
    }

    void start(String str, int i, Context context, HitStore hitStore, Dispatcher dispatcher, boolean z) {
        start(str, i, context, hitStore, dispatcher, z, new DispatcherCallbacks());
    }

    void start(String str, int i, Context context, HitStore hitStore, Dispatcher dispatcher, boolean z, Callbacks callbacks) {
        this.accountId = str;
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        this.parent = context.getApplicationContext();
        this.hitStore = hitStore;
        this.adHitIdGenerator = new AdHitIdGenerator();
        if (z) {
            this.hitStore.startNewVisit();
        }
        this.dispatcher = dispatcher;
        this.dispatcher.init(callbacks);
        this.dispatcherIsBusy = false;
        if (this.connectivityManager == null) {
            this.connectivityManager = (ConnectivityManager) this.parent.getSystemService("connectivity");
        }
        if (this.handler == null) {
            this.handler = new Handler(context.getMainLooper());
        } else {
            cancelPendingDispatches();
        }
        setDispatchPeriod(i);
    }

    void start(String str, int i, Context context, boolean z) {
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        HitStore persistentHitStore;
        Dispatcher networkDispatcher;
        if (this.hitStore == null) {
            persistentHitStore = new PersistentHitStore(context);
            persistentHitStore.setAnonymizeIp(this.anonymizeIp);
            persistentHitStore.setSampleRate(this.sampleRate);
        } else {
            persistentHitStore = this.hitStore;
        }
        if (this.dispatcher == null) {
            networkDispatcher = new NetworkDispatcher(this.userAgentProduct, this.userAgentVersion);
            networkDispatcher.setDryRun(this.dryRun);
        } else {
            networkDispatcher = this.dispatcher;
        }
        start(str, i, context, persistentHitStore, networkDispatcher, z);
    }

    @Deprecated
    public void start(String str, Context context) {
        start(str, -1, context);
    }

    public void startNewSession(String str, int i, Context context) {
        start(str, i, context, true);
    }

    public void startNewSession(String str, Context context) {
        startNewSession(str, -1, context);
    }

    @Deprecated
    public void stop() {
        if (this.dispatcher != null) {
            this.dispatcher.stop();
        }
        cancelPendingDispatches();
    }

    public void stopSession() {
        stop();
    }

    public void trackEvent(String str, String str2, String str3, int i) {
        if (str == null) {
            throw new IllegalArgumentException("category cannot be null");
        } else if (str2 == null) {
            throw new IllegalArgumentException("action cannot be null");
        } else {
            createEvent(this.accountId, str, str2, str3, i);
        }
    }

    public void trackPageView(String str) {
        createEvent(this.accountId, "__##GOOGLEPAGEVIEW##__", str, null, -1);
    }

    public void trackTransactions() {
        Iterator it = this.transactionMap.values().iterator();
        while (it.hasNext()) {
            Transaction transaction = (Transaction) it.next();
            Event event = new Event(this.accountId, "__##GOOGLETRANSACTION##__", PocketCurrency.AD_MOB_KEYWORD_HINT, PocketCurrency.AD_MOB_KEYWORD_HINT, 0, this.parent.getResources().getDisplayMetrics().widthPixels, this.parent.getResources().getDisplayMetrics().heightPixels);
            event.setTransaction(transaction);
            this.hitStore.putEvent(event);
            Map map = (Map) this.itemMap.get(transaction.getOrderId());
            if (map != null) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    Item item = (Item) it2.next();
                    event = new Event(this.accountId, "__##GOOGLEITEM##__", PocketCurrency.AD_MOB_KEYWORD_HINT, PocketCurrency.AD_MOB_KEYWORD_HINT, 0, this.parent.getResources().getDisplayMetrics().widthPixels, this.parent.getResources().getDisplayMetrics().heightPixels);
                    event.setItem(item);
                    this.hitStore.putEvent(event);
                }
            }
        }
        clearTransactions();
        resetPowerSaveMode();
    }
}