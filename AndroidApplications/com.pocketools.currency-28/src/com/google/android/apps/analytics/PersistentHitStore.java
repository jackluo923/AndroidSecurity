package com.google.android.apps.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.google.android.apps.analytics.Item.Builder;
import com.pocketools.currency.PocketCurrency;
import com.pocketools.currency.R;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

class PersistentHitStore implements HitStore {
    private static final String ACCOUNT_ID = "account_id";
    private static final String ACTION = "action";
    private static final String CATEGORY = "category";
    private static final String CREATE_CUSTOM_VARIABLES_TABLE;
    private static final String CREATE_CUSTOM_VAR_CACHE_TABLE;
    private static final String CREATE_EVENTS_TABLE;
    private static final String CREATE_HITS_TABLE;
    private static final String CREATE_INSTALL_REFERRER_TABLE = "CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);";
    private static final String CREATE_ITEM_EVENTS_TABLE;
    private static final String CREATE_REFERRER_TABLE = "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);";
    private static final String CREATE_SESSION_TABLE;
    private static final String CREATE_TRANSACTION_EVENTS_TABLE;
    private static final String CUSTOMVAR_ID = "cv_id";
    private static final String CUSTOMVAR_INDEX = "cv_index";
    private static final String CUSTOMVAR_NAME = "cv_name";
    private static final String CUSTOMVAR_SCOPE = "cv_scope";
    private static final String CUSTOMVAR_VALUE = "cv_value";
    private static final String CUSTOM_VARIABLE_COLUMN_TYPE = "CHAR(64) NOT NULL";
    private static final String DATABASE_NAME = "google_analytics.db";
    private static final int DATABASE_VERSION = 5;
    private static final String EVENT_ID = "event_id";
    private static final String HIT_ID = "hit_id";
    private static final String HIT_STRING = "hit_string";
    private static final String HIT_TIMESTAMP = "hit_time";
    private static final String ITEM_CATEGORY = "item_category";
    private static final String ITEM_COUNT = "item_count";
    private static final String ITEM_ID = "item_id";
    private static final String ITEM_NAME = "item_name";
    private static final String ITEM_PRICE = "item_price";
    private static final String ITEM_SKU = "item_sku";
    private static final String LABEL = "label";
    private static final int MAX_HITS = 1000;
    private static final String ORDER_ID = "order_id";
    private static final String RANDOM_VAL = "random_val";
    static final String REFERRER = "referrer";
    static final String REFERRER_COLUMN = "referrer";
    static final String REFERRER_INDEX = "referrer_index";
    static final String REFERRER_VISIT = "referrer_visit";
    private static final String SCREEN_HEIGHT = "screen_height";
    private static final String SCREEN_WIDTH = "screen_width";
    private static final String SHIPPING_COST = "tran_shippingcost";
    private static final String STORE_ID = "store_id";
    private static final String STORE_NAME = "tran_storename";
    private static final String TIMESTAMP_CURRENT = "timestamp_current";
    private static final String TIMESTAMP_FIRST = "timestamp_first";
    private static final String TIMESTAMP_PREVIOUS = "timestamp_previous";
    static final String TIMESTAMP_REFERRER = "timestamp_referrer";
    private static final String TOTAL_COST = "tran_totalcost";
    private static final String TOTAL_TAX = "tran_totaltax";
    private static final String TRANSACTION_ID = "tran_id";
    private static final String USER_ID = "user_id";
    private static final String VALUE = "value";
    private static final String VISITS = "visits";
    private boolean anonymizeIp;
    private DataBaseHelper databaseHelper;
    private volatile int numStoredHits;
    private Random random;
    private int sampleRate;
    private boolean sessionStarted;
    private int storeId;
    private long timestampCurrent;
    private long timestampFirst;
    private long timestampPrevious;
    private boolean useStoredVisitorVars;
    private CustomVariableBuffer visitorCVCache;
    private int visits;

    static class DataBaseHelper extends SQLiteOpenHelper {
        private final int databaseVersion;
        private final PersistentHitStore store;

        public DataBaseHelper(Context context, PersistentHitStore persistentHitStore) {
            this(context, DATABASE_NAME, 5, persistentHitStore);
        }

        DataBaseHelper(Context context, String str, int i, PersistentHitStore persistentHitStore) {
            super(context, str, null, i);
            this.databaseVersion = i;
            this.store = persistentHitStore;
        }

        public DataBaseHelper(Context context, String str, PersistentHitStore persistentHitStore) {
            this(context, str, 5, persistentHitStore);
        }

        private void createECommerceTables(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS transaction_events;");
            sQLiteDatabase.execSQL(CREATE_TRANSACTION_EVENTS_TABLE);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS item_events;");
            sQLiteDatabase.execSQL(CREATE_ITEM_EVENTS_TABLE);
        }

        private void createHitTable(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS hits;");
            sQLiteDatabase.execSQL(CREATE_HITS_TABLE);
        }

        private void createReferrerTable(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS referrer;");
            sQLiteDatabase.execSQL(CREATE_REFERRER_TABLE);
        }

        private void fixReferrerTable(SQLiteDatabase sQLiteDatabase) {
            Cursor query;
            Cursor cursor;
            Cursor cursor2 = null;
            try {
                query = sQLiteDatabase.query(REFERRER_COLUMN, null, null, null, null, null, null);
                try {
                    String[] columnNames = query.getColumnNames();
                    int i = 0;
                    boolean z = false;
                    boolean z2 = false;
                    while (i < columnNames.length) {
                        if (columnNames[i].equals(REFERRER_INDEX)) {
                            z2 = true;
                        } else if (columnNames[i].equals(REFERRER_VISIT)) {
                            z = true;
                        }
                        i++;
                    }
                    if (i == 0 || i == 0) {
                        Referrer referrer;
                        if (query.moveToFirst()) {
                            int columnIndex = query.getColumnIndex(REFERRER_VISIT);
                            int columnIndex2 = query.getColumnIndex(REFERRER_INDEX);
                            referrer = new Referrer(query.getString(query.getColumnIndex(REFERRER_COLUMN)), query.getLong(query.getColumnIndex(TIMESTAMP_REFERRER)), columnIndex == -1 ? 1 : query.getInt(columnIndex), columnIndex2 == -1 ? 1 : query.getInt(columnIndex2));
                        } else {
                            Cursor cursor3 = cursor2;
                        }
                        sQLiteDatabase.beginTransaction();
                        createReferrerTable(sQLiteDatabase);
                        if (referrer != null) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(REFERRER_COLUMN, referrer.getReferrerString());
                            contentValues.put(TIMESTAMP_REFERRER, Long.valueOf(referrer.getTimeStamp()));
                            contentValues.put(REFERRER_VISIT, Integer.valueOf(referrer.getVisit()));
                            contentValues.put(REFERRER_INDEX, Integer.valueOf(referrer.getIndex()));
                            sQLiteDatabase.insert(REFERRER_COLUMN, null, contentValues);
                        }
                        sQLiteDatabase.setTransactionSuccessful();
                    }
                    if (query != null) {
                        query.close();
                    }
                    if (sQLiteDatabase.inTransaction()) {
                        PersistentHitStore.endTransaction(sQLiteDatabase);
                    }
                } catch (SQLiteException e) {
                    sQLiteException = e;
                    cursor = query;
                    Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase.inTransaction()) {
                        PersistentHitStore.endTransaction(sQLiteDatabase);
                    }
                } catch (Throwable th) {
                    th = th;
                    if (query != null) {
                        query.close();
                    }
                    if (sQLiteDatabase.inTransaction()) {
                        PersistentHitStore.endTransaction(sQLiteDatabase);
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                sQLiteException = e2;
                cursor = cursor2;
                try {
                    SQLiteException sQLiteException2;
                    Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException2.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase.inTransaction()) {
                        PersistentHitStore.endTransaction(sQLiteDatabase);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    query = cursor;
                    if (query != null) {
                        query.close();
                    }
                    if (sQLiteDatabase.inTransaction()) {
                        PersistentHitStore.endTransaction(sQLiteDatabase);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                query = cursor2;
                if (query != null) {
                    query.close();
                }
                if (sQLiteDatabase.inTransaction()) {
                    PersistentHitStore.endTransaction(sQLiteDatabase);
                }
                throw th4;
            }
        }

        private void migrateEventsToHits(SQLiteDatabase sQLiteDatabase, int i) {
            this.store.loadExistingSession(sQLiteDatabase);
            this.store.visitorCVCache = this.store.getVisitorVarBuffer(sQLiteDatabase);
            Event[] peekEvents = this.store.peekEvents(MAX_HITS, sQLiteDatabase, i);
            int i2 = 0;
            while (i2 < peekEvents.length) {
                this.store.putEvent(peekEvents[i2], sQLiteDatabase, false);
                i2++;
            }
            sQLiteDatabase.execSQL("DELETE from events;");
            sQLiteDatabase.execSQL("DELETE from item_events;");
            sQLiteDatabase.execSQL("DELETE from transaction_events;");
            sQLiteDatabase.execSQL("DELETE from custom_variables;");
        }

        private void migratePreV4Referrer(SQLiteDatabase sQLiteDatabase) {
            Cursor query;
            Cursor query2;
            SQLiteException sQLiteException;
            Cursor cursor = null;
            try {
                query = sQLiteDatabase.query("install_referrer", new String[]{REFERRER_COLUMN}, null, null, null, null, null);
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(0);
                        query2 = sQLiteDatabase.query("session", null, null, null, null, null, null);
                        try {
                            long j;
                            j = query2.moveToFirst() ? query2.getLong(0) : 0;
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(REFERRER_COLUMN, string);
                            contentValues.put(TIMESTAMP_REFERRER, Long.valueOf(j));
                            contentValues.put(REFERRER_VISIT, Integer.valueOf(1));
                            contentValues.put(REFERRER_INDEX, Integer.valueOf(1));
                            sQLiteDatabase.insert(REFERRER_COLUMN, null, contentValues);
                        } catch (SQLiteException e) {
                            sQLiteException = e;
                            cursor = query;
                            Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (query2 == null) {
                                query2.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (query != null) {
                                query.close();
                            }
                            if (query2 != null) {
                                query2.close();
                            }
                            throw th;
                        }
                    } else {
                        query2 = cursor;
                    }
                    if (query != null) {
                        query.close();
                    }
                    if (query2 != null) {
                        query2.close();
                    }
                } catch (SQLiteException e2) {
                    sQLiteException = e2;
                    query2 = cursor;
                    cursor = query;
                    Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (query2 == null) {
                        query2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    query2 = cursor;
                    if (query != null) {
                        query.close();
                    }
                    if (query2 != null) {
                        query2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e3) {
                sQLiteException = e3;
                query2 = cursor;
                try {
                    Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (query2 == null) {
                        query2.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    query = cursor;
                    if (query != null) {
                        query.close();
                    }
                    if (query2 != null) {
                        query2.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                Throwable th5 = th4;
                query2 = cursor;
                query = cursor;
                if (query != null) {
                    query.close();
                }
                if (query2 != null) {
                    query2.close();
                }
                throw th5;
            }
        }

        void createCustomVariableTables(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_variables;");
            sQLiteDatabase.execSQL(CREATE_CUSTOM_VARIABLES_TABLE);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_var_cache;");
            sQLiteDatabase.execSQL(CREATE_CUSTOM_VAR_CACHE_TABLE);
            int i = 1;
            while (i <= 5) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(EVENT_ID, Integer.valueOf(0));
                contentValues.put(CUSTOMVAR_INDEX, Integer.valueOf(i));
                contentValues.put(CUSTOMVAR_NAME, PocketCurrency.AD_MOB_KEYWORD_HINT);
                contentValues.put(CUSTOMVAR_SCOPE, Integer.valueOf(R.styleable.com_admob_android_ads_AdView_keywords));
                contentValues.put(CUSTOMVAR_VALUE, PocketCurrency.AD_MOB_KEYWORD_HINT);
                sQLiteDatabase.insert("custom_var_cache", EVENT_ID, contentValues);
                i++;
            }
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS events;");
            sQLiteDatabase.execSQL(CREATE_EVENTS_TABLE);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS install_referrer;");
            sQLiteDatabase.execSQL(CREATE_INSTALL_REFERRER_TABLE);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS session;");
            sQLiteDatabase.execSQL(CREATE_SESSION_TABLE);
            if (this.databaseVersion > 1) {
                createCustomVariableTables(sQLiteDatabase);
            }
            if (this.databaseVersion > 2) {
                createECommerceTables(sQLiteDatabase);
            }
            if (this.databaseVersion > 3) {
                createHitTable(sQLiteDatabase);
                createReferrerTable(sQLiteDatabase);
            }
        }

        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            Log.w(GoogleAnalyticsTracker.LOG_TAG, "Downgrading database version from " + i + " to " + i2 + " not recommended.");
            sQLiteDatabase.execSQL(CREATE_REFERRER_TABLE);
            sQLiteDatabase.execSQL(CREATE_HITS_TABLE);
            sQLiteDatabase.execSQL(CREATE_CUSTOM_VAR_CACHE_TABLE);
            sQLiteDatabase.execSQL(CREATE_SESSION_TABLE);
            Set hashSet = new HashSet();
            Cursor query = sQLiteDatabase.query("custom_var_cache", null, null, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(query.getInt(query.getColumnIndex(CUSTOMVAR_INDEX))));
                } catch (SQLiteException e) {
                    Log.e(GoogleAnalyticsTracker.LOG_TAG, "Error on downgrade: " + e.toString());
                    query.close();
                }
            }
            query.close();
            int i3 = 1;
            while (i3 <= 5) {
                try {
                    if (!hashSet.contains(Integer.valueOf(i3))) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(EVENT_ID, Integer.valueOf(0));
                        contentValues.put(CUSTOMVAR_INDEX, Integer.valueOf(i3));
                        contentValues.put(CUSTOMVAR_NAME, PocketCurrency.AD_MOB_KEYWORD_HINT);
                        contentValues.put(CUSTOMVAR_SCOPE, Integer.valueOf(R.styleable.com_admob_android_ads_AdView_keywords));
                        contentValues.put(CUSTOMVAR_VALUE, PocketCurrency.AD_MOB_KEYWORD_HINT);
                        sQLiteDatabase.insert("custom_var_cache", EVENT_ID, contentValues);
                    }
                } catch (SQLiteException e2) {
                    Log.e(GoogleAnalyticsTracker.LOG_TAG, "Error inserting custom variable on downgrade: " + e2.toString());
                }
                i3++;
            }
        }

        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (sQLiteDatabase.isReadOnly()) {
                Log.w(GoogleAnalyticsTracker.LOG_TAG, "Warning: Need to update database, but it's read only.");
            } else {
                fixReferrerTable(sQLiteDatabase);
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i > i2) {
                onDowngrade(sQLiteDatabase, i, i2);
            } else {
                if (i < 2 && i2 > 1) {
                    createCustomVariableTables(sQLiteDatabase);
                }
                if (i < 3 && i2 > 2) {
                    createECommerceTables(sQLiteDatabase);
                }
                if (i < 4 && i2 > 3) {
                    createHitTable(sQLiteDatabase);
                    createReferrerTable(sQLiteDatabase);
                    migrateEventsToHits(sQLiteDatabase, i);
                    migratePreV4Referrer(sQLiteDatabase);
                }
            }
        }
    }

    static {
        CREATE_EVENTS_TABLE = "CREATE TABLE events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{EVENT_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{USER_ID}) + String.format(" '%s' CHAR(256) NOT NULL,", new Object[]{ACCOUNT_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{RANDOM_VAL}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{TIMESTAMP_FIRST}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{TIMESTAMP_PREVIOUS}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{TIMESTAMP_CURRENT}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{VISITS}) + String.format(" '%s' CHAR(256) NOT NULL,", new Object[]{CATEGORY}) + String.format(" '%s' CHAR(256) NOT NULL,", new Object[]{ACTION}) + String.format(" '%s' CHAR(256), ", new Object[]{LABEL}) + String.format(" '%s' INTEGER,", new Object[]{VALUE}) + String.format(" '%s' INTEGER,", new Object[]{SCREEN_WIDTH}) + String.format(" '%s' INTEGER);", new Object[]{SCREEN_HEIGHT});
        CREATE_SESSION_TABLE = "CREATE TABLE IF NOT EXISTS session (" + String.format(" '%s' INTEGER PRIMARY KEY,", new Object[]{TIMESTAMP_FIRST}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{TIMESTAMP_PREVIOUS}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{TIMESTAMP_CURRENT}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{VISITS}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{STORE_ID});
        CREATE_CUSTOM_VARIABLES_TABLE = "CREATE TABLE custom_variables (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{CUSTOMVAR_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{EVENT_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{CUSTOMVAR_INDEX}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{CUSTOMVAR_NAME}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{CUSTOMVAR_VALUE}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{CUSTOMVAR_SCOPE});
        CREATE_CUSTOM_VAR_CACHE_TABLE = "CREATE TABLE IF NOT EXISTS custom_var_cache (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{CUSTOMVAR_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{EVENT_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{CUSTOMVAR_INDEX}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{CUSTOMVAR_NAME}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{CUSTOMVAR_VALUE}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{CUSTOMVAR_SCOPE});
        CREATE_TRANSACTION_EVENTS_TABLE = "CREATE TABLE transaction_events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{TRANSACTION_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{EVENT_ID}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{ORDER_ID}) + String.format(" '%s' TEXT,", new Object[]{STORE_NAME}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{TOTAL_COST}) + String.format(" '%s' TEXT,", new Object[]{TOTAL_TAX}) + String.format(" '%s' TEXT);", new Object[]{SHIPPING_COST});
        CREATE_ITEM_EVENTS_TABLE = "CREATE TABLE item_events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{ITEM_ID}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{EVENT_ID}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{ORDER_ID}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{ITEM_SKU}) + String.format(" '%s' TEXT,", new Object[]{ITEM_NAME}) + String.format(" '%s' TEXT,", new Object[]{ITEM_CATEGORY}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{ITEM_PRICE}) + String.format(" '%s' TEXT NOT NULL);", new Object[]{ITEM_COUNT});
        CREATE_HITS_TABLE = "CREATE TABLE IF NOT EXISTS hits (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{HIT_ID}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{HIT_STRING}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{HIT_TIMESTAMP});
    }

    PersistentHitStore(Context context) {
        this(context, DATABASE_NAME, 5);
    }

    PersistentHitStore(Context context, String str) {
        this(context, str, 5);
    }

    PersistentHitStore(Context context, String str, int i) {
        this.sampleRate = 100;
        this.random = new Random();
        this.databaseHelper = new DataBaseHelper(context, str, i, this);
        loadExistingSession();
        this.visitorCVCache = getVisitorVarBuffer();
    }

    PersistentHitStore(DataBaseHelper dataBaseHelper) {
        this.sampleRate = 100;
        this.random = new Random();
        this.databaseHelper = dataBaseHelper;
        loadExistingSession();
        this.visitorCVCache = getVisitorVarBuffer();
    }

    private static boolean endTransaction(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.endTransaction();
            return true;
        } catch (SQLiteException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, "exception ending transaction:" + e.toString());
            return false;
        }
    }

    static String formatReferrer(String str) {
        if (str == null) {
            return null;
        }
        if (!str.contains("=") && !str.contains("%3D")) {
            return null;
        }
        try {
            str = URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
        Map parseURLParameters = Utils.parseURLParameters(str);
        int i = parseURLParameters.get("utm_campaign") != null;
        int i2 = parseURLParameters.get("utm_medium") != null;
        int i3 = parseURLParameters.get("utm_source") != null;
        if ((parseURLParameters.get("gclid") != null) == 0 && (i == 0 || i2 == 0 || i3 == 0)) {
            Log.w(GoogleAnalyticsTracker.LOG_TAG, "Badly formatted referrer missing campaign, medium and source or click ID");
            return null;
        } else {
            strArr = new String[7][];
            strArr[0] = new String[]{"utmcid", (String) parseURLParameters.get("utm_id")};
            strArr[1] = new String[]{"utmcsr", (String) parseURLParameters.get("utm_source")};
            strArr[2] = new String[]{"utmgclid", (String) parseURLParameters.get("gclid")};
            strArr[3] = new String[]{"utmccn", (String) parseURLParameters.get("utm_campaign")};
            strArr[4] = new String[]{"utmcmd", (String) parseURLParameters.get("utm_medium")};
            strArr[5] = new String[]{"utmctr", (String) parseURLParameters.get("utm_term")};
            strArr[6] = new String[]{"utmcct", (String) parseURLParameters.get("utm_content")};
            StringBuilder stringBuilder = new StringBuilder();
            i = 0;
            boolean z = true;
            while (i < strArr.length) {
                if (strArr[i][1] != null) {
                    String replace = strArr[i][1].replace("+", "%20").replace(" ", "%20");
                    if (i2 != 0) {
                        z = false;
                    } else {
                        stringBuilder.append("|");
                    }
                    stringBuilder.append(strArr[i][0]).append("=").append(replace);
                }
                i++;
            }
            return stringBuilder.toString();
        }
    }

    private Referrer getAndUpdateReferrer(SQLiteDatabase sQLiteDatabase) {
        Referrer readCurrentReferrer = readCurrentReferrer(sQLiteDatabase);
        if (readCurrentReferrer == null) {
            return null;
        }
        if (readCurrentReferrer.getTimeStamp() != 0) {
            return readCurrentReferrer;
        }
        int index = readCurrentReferrer.getIndex();
        String referrerString = readCurrentReferrer.getReferrerString();
        ContentValues contentValues = new ContentValues();
        contentValues.put(REFERRER_COLUMN, referrerString);
        contentValues.put(TIMESTAMP_REFERRER, Long.valueOf(this.timestampCurrent));
        contentValues.put(REFERRER_VISIT, Integer.valueOf(this.visits));
        contentValues.put(REFERRER_INDEX, Integer.valueOf(index));
        return setReferrerDatabase(sQLiteDatabase, contentValues) ? new Referrer(referrerString, this.timestampCurrent, this.visits, index) : null;
    }

    private void putEvent(Event event, SQLiteDatabase sQLiteDatabase, boolean z) {
        if (!event.isSessionInitialized()) {
            event.setRandomVal(this.random.nextInt(Integer.MAX_VALUE));
            event.setTimestampFirst((int) this.timestampFirst);
            event.setTimestampPrevious((int) this.timestampPrevious);
            event.setTimestampCurrent((int) this.timestampCurrent);
            event.setVisits(this.visits);
        }
        event.setAnonymizeIp(this.anonymizeIp);
        if (event.getUserId() == -1) {
            event.setUserId(this.storeId);
        }
        putCustomVariables(event, sQLiteDatabase);
        Referrer andUpdateReferrer = getAndUpdateReferrer(sQLiteDatabase);
        String[] split = event.accountId.split(",");
        if (split.length == 1) {
            writeEventToDatabase(event, andUpdateReferrer, sQLiteDatabase, z);
        } else {
            int length = split.length;
            int i = 0;
            while (i < length) {
                writeEventToDatabase(new Event(event, split[i]), andUpdateReferrer, sQLiteDatabase, z);
                i++;
            }
        }
    }

    private boolean setReferrerDatabase(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
        boolean z = false;
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.delete(REFERRER_COLUMN, null, null);
            sQLiteDatabase.insert(REFERRER_COLUMN, null, contentValues);
            sQLiteDatabase.setTransactionSuccessful();
            return (!sQLiteDatabase.inTransaction() || endTransaction(sQLiteDatabase)) ? true : z;
        } catch (SQLiteException e) {
            try {
                Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
                return (!sQLiteDatabase.inTransaction() || endTransaction(sQLiteDatabase)) ? z : z;
            } catch (Throwable th) {
                if (sQLiteDatabase.inTransaction() && !endTransaction(sQLiteDatabase)) {
                    return z;
                }
            }
        }
    }

    public void clearReferrer() {
        try {
            this.databaseHelper.getWritableDatabase().delete(REFERRER_COLUMN, null, null);
        } catch (SQLiteException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
        }
    }

    public synchronized void deleteHit(long j) {
        try {
            this.numStoredHits -= this.databaseHelper.getWritableDatabase().delete("hits", "hit_id = ?", new String[]{Long.toString(j)});
        } catch (SQLiteException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
        }
    }

    CustomVariableBuffer getCustomVariables(long j, SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        Cursor cursor = null;
        CustomVariableBuffer customVariableBuffer = new CustomVariableBuffer();
        try {
            query = sQLiteDatabase.query("custom_variables", null, "event_id= ?", new String[]{Long.toString(j)}, null, null, null);
            while (query.moveToNext()) {
                try {
                    customVariableBuffer.setCustomVariable(new CustomVariable(query.getInt(query.getColumnIndex(CUSTOMVAR_INDEX)), query.getString(query.getColumnIndex(CUSTOMVAR_NAME)), query.getString(query.getColumnIndex(CUSTOMVAR_VALUE)), query.getInt(query.getColumnIndex(CUSTOMVAR_SCOPE))));
                } catch (SQLiteException e) {
                    sQLiteException = e;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            query = cursor;
            try {
                SQLiteException sQLiteException2;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException2.toString());
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
            return customVariableBuffer;
        } catch (Throwable th3) {
            th2 = th3;
            query = cursor;
            if (query != null) {
                query.close();
            }
            throw th2;
        }
        return customVariableBuffer;
    }

    DataBaseHelper getDatabaseHelper() {
        return this.databaseHelper;
    }

    Item getItem(long j, SQLiteDatabase sQLiteDatabase) {
        SQLiteException sQLiteException;
        Item item = null;
        try {
            query = sQLiteDatabase.query("item_events", null, "event_id= ?", new String[]{Long.toString(j)}, null, null, null);
            try {
            } catch (SQLiteException e) {
                sQLiteException = e;
                cursor = query;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                if (cursor != null) {
                    cursor.close();
                }
                return item;
            } catch (Throwable th) {
                th = th;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
            if (query.moveToFirst()) {
                Item build = new Builder(query.getString(query.getColumnIndex(ORDER_ID)), query.getString(query.getColumnIndex(ITEM_SKU)), query.getDouble(query.getColumnIndex(ITEM_PRICE)), query.getLong(query.getColumnIndex(ITEM_COUNT))).setItemName(query.getString(query.getColumnIndex(ITEM_NAME))).setItemCategory(query.getString(query.getColumnIndex(ITEM_CATEGORY))).build();
                if (query == null) {
                    return build;
                }
                query.close();
                return build;
            } else {
                if (query != null) {
                    query.close();
                }
                return item;
            }
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            Item item2 = item;
            try {
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                Cursor cursor2;
                if (cursor2 != null) {
                    cursor2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                query = cursor2;
                Cursor query2;
                if (query2 != null) {
                    query2.close();
                }
                throw th;
            }
            return item;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            Item item3 = item;
            if (query2 != null) {
                query2.close();
            }
            throw th4;
        }
    }

    public int getNumStoredHits() {
        return this.numStoredHits;
    }

    public int getNumStoredHitsFromDb() {
        Cursor cursor = null;
        int i = 0;
        try {
            cursor = this.databaseHelper.getReadableDatabase().rawQuery("SELECT COUNT(*) from hits", null);
            if (cursor.moveToFirst()) {
                i = (int) cursor.getLong(0);
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (SQLiteException e) {
            try {
                Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return i;
    }

    public Referrer getReferrer() {
        try {
            return readCurrentReferrer(this.databaseHelper.getReadableDatabase());
        } catch (SQLiteException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
            return null;
        }
    }

    public String getSessionId() {
        return this.sessionStarted ? Integer.toString((int) this.timestampCurrent) : null;
    }

    public int getStoreId() {
        return this.storeId;
    }

    long getTimestampCurrent() {
        return this.timestampCurrent;
    }

    long getTimestampFirst() {
        return this.timestampFirst;
    }

    long getTimestampPrevious() {
        return this.timestampPrevious;
    }

    Transaction getTransaction(long j, SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        Transaction transaction = null;
        try {
            query = sQLiteDatabase.query("transaction_events", null, "event_id= ?", new String[]{Long.toString(j)}, null, null, null);
            try {
            } catch (SQLiteException e) {
                sQLiteException = e;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                if (query != null) {
                    query.close();
                }
                return transaction;
            }
            if (query.moveToFirst()) {
                Transaction build = new Transaction.Builder(query.getString(query.getColumnIndex(ORDER_ID)), query.getDouble(query.getColumnIndex(TOTAL_COST))).setStoreName(query.getString(query.getColumnIndex(STORE_NAME))).setTotalTax(query.getDouble(query.getColumnIndex(TOTAL_TAX))).setShippingCost(query.getDouble(query.getColumnIndex(SHIPPING_COST))).build();
                if (query == null) {
                    return build;
                }
                query.close();
                return build;
            } else {
                if (query != null) {
                    query.close();
                }
                return transaction;
            }
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            Transaction transaction2 = transaction;
            try {
                SQLiteException sQLiteException2;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException2.toString());
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th) {
                th = th;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
            return transaction;
        } catch (Throwable th2) {
            Throwable th3 = th2;
            transaction2 = transaction;
            if (query != null) {
                query.close();
            }
            throw th3;
        }
    }

    public String getVisitorCustomVar(int i) {
        CustomVariable customVariableAt = this.visitorCVCache.getCustomVariableAt(i);
        return (customVariableAt == null || customVariableAt.getScope() != 1) ? null : customVariableAt.getValue();
    }

    public String getVisitorId() {
        if (!this.sessionStarted) {
            return null;
        }
        return String.format("%d.%d", new Object[]{Integer.valueOf(this.storeId), Long.valueOf(this.timestampFirst)});
    }

    CustomVariableBuffer getVisitorVarBuffer() {
        try {
            return getVisitorVarBuffer(this.databaseHelper.getReadableDatabase());
        } catch (SQLiteException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
            return new CustomVariableBuffer();
        }
    }

    CustomVariableBuffer getVisitorVarBuffer(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        Cursor cursor = null;
        CustomVariableBuffer customVariableBuffer = new CustomVariableBuffer();
        try {
            query = sQLiteDatabase.query("custom_var_cache", null, "cv_scope= ?", new String[]{Integer.toString(1)}, null, null, null);
            while (query.moveToNext()) {
                try {
                    customVariableBuffer.setCustomVariable(new CustomVariable(query.getInt(query.getColumnIndex(CUSTOMVAR_INDEX)), query.getString(query.getColumnIndex(CUSTOMVAR_NAME)), query.getString(query.getColumnIndex(CUSTOMVAR_VALUE)), query.getInt(query.getColumnIndex(CUSTOMVAR_SCOPE))));
                } catch (SQLiteException e) {
                    sQLiteException = e;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            query = cursor;
            try {
                SQLiteException sQLiteException2;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException2.toString());
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
            return customVariableBuffer;
        } catch (Throwable th3) {
            th2 = th3;
            query = cursor;
            if (query != null) {
                query.close();
            }
            throw th2;
        }
        return customVariableBuffer;
    }

    int getVisits() {
        return this.visits;
    }

    public void loadExistingSession() {
        try {
            loadExistingSession(this.databaseHelper.getWritableDatabase());
        } catch (SQLiteException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
        }
    }

    public void loadExistingSession(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        Throwable th;
        Cursor cursor = null;
        try {
            query = sQLiteDatabase.query("session", null, null, null, null, null, null);
            try {
                if (query.moveToFirst()) {
                    boolean z;
                    this.timestampFirst = query.getLong(0);
                    this.timestampPrevious = query.getLong(1);
                    this.timestampCurrent = query.getLong(R.styleable.com_admob_android_ads_AdView_textColor);
                    this.visits = query.getInt(R.styleable.com_admob_android_ads_AdView_keywords);
                    this.storeId = query.getInt(R.styleable.com_admob_android_ads_AdView_refreshInterval);
                    Referrer readCurrentReferrer = readCurrentReferrer(sQLiteDatabase);
                    z = this.timestampFirst != 0 && (readCurrentReferrer == null || readCurrentReferrer.getTimeStamp() != 0);
                    this.sessionStarted = z;
                } else {
                    this.sessionStarted = false;
                    this.useStoredVisitorVars = true;
                    this.storeId = new SecureRandom().nextInt() & Integer.MAX_VALUE;
                    query.close();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(TIMESTAMP_FIRST, Long.valueOf(0));
                    contentValues.put(TIMESTAMP_PREVIOUS, Long.valueOf(0));
                    contentValues.put(TIMESTAMP_CURRENT, Long.valueOf(0));
                    contentValues.put(VISITS, Integer.valueOf(0));
                    contentValues.put(STORE_ID, Integer.valueOf(this.storeId));
                    sQLiteDatabase.insert("session", null, contentValues);
                    query = cursor;
                }
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e) {
                sQLiteException = e;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                if (query != null) {
                    query.close();
                }
            }
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            query = cursor;
            try {
                SQLiteException sQLiteException2;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException2.toString());
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            query = cursor;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public Event[] peekEvents(int i, SQLiteDatabase sQLiteDatabase, int i2) {
        Throwable th;
        List arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            query = sQLiteDatabase.query("events", null, null, null, null, null, EVENT_ID, Integer.toString(i));
            while (query.moveToNext()) {
                try {
                    Event event = new Event(query.getLong(0), query.getString(R.styleable.com_admob_android_ads_AdView_textColor), query.getInt(R.styleable.com_admob_android_ads_AdView_keywords), query.getInt(R.styleable.com_admob_android_ads_AdView_refreshInterval), query.getInt(DATABASE_VERSION), query.getInt(6), query.getInt(7), query.getString(8), query.getString(9), query.getString(10), query.getInt(11), query.getInt(12), query.getInt(13));
                    event.setUserId(query.getInt(1));
                    long j = query.getLong(query.getColumnIndex(EVENT_ID));
                    if ("__##GOOGLETRANSACTION##__".equals(event.category)) {
                        Transaction transaction = getTransaction(j, sQLiteDatabase);
                        if (transaction == null) {
                            Log.w(GoogleAnalyticsTracker.LOG_TAG, "missing expected transaction for event " + j);
                        }
                        event.setTransaction(transaction);
                    } else if ("__##GOOGLEITEM##__".equals(event.category)) {
                        Item item = getItem(j, sQLiteDatabase);
                        if (item == null) {
                            Log.w(GoogleAnalyticsTracker.LOG_TAG, "missing expected item for event " + j);
                        }
                        event.setItem(item);
                    } else {
                        event.setCustomVariableBuffer(i2 > 1 ? getCustomVariables(j, sQLiteDatabase) : new CustomVariableBuffer());
                    }
                    arrayList.add(event);
                } catch (SQLiteException e) {
                    sQLiteException = e;
                    cursor = query;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (query != null) {
                query.close();
            }
            return (Event[]) arrayList.toArray(new Event[arrayList.size()]);
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            cursor = cursor;
            try {
                SQLiteException sQLiteException2;
                Cursor cursor2;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException2.toString());
                Event[] eventArr = new Event[0];
                if (cursor2 == null) {
                    return eventArr;
                }
                cursor2.close();
                return eventArr;
            } catch (Throwable th3) {
                th = th3;
                query = cursor2;
                Cursor query2;
                if (query2 != null) {
                    query2.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            query2 = cursor;
            if (query2 != null) {
                query2.close();
            }
            throw th;
        }
    }

    public Hit[] peekHits() {
        return peekHits(MAX_HITS);
    }

    public Hit[] peekHits(int i) {
        Cursor query;
        Cursor cursor = null;
        List arrayList = new ArrayList();
        try {
            query = this.databaseHelper.getReadableDatabase().query("hits", null, null, null, null, null, HIT_ID, Integer.toString(i));
            while (query.moveToNext()) {
                try {
                    arrayList.add(new Hit(query.getString(1), query.getLong(0)));
                } catch (SQLiteException e) {
                    sQLiteException = e;
                }
            }
            if (query != null) {
                query.close();
            }
            return (Hit[]) arrayList.toArray(new Hit[arrayList.size()]);
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            query = cursor;
            try {
                SQLiteException sQLiteException2;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException2.toString());
                Hit[] hitArr = new Hit[0];
                if (query == null) {
                    return hitArr;
                }
                query.close();
                return hitArr;
            } catch (Throwable th) {
                Throwable th2 = th;
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        } catch (Throwable th3) {
            th2 = th3;
            query = cursor;
            if (query != null) {
                query.close();
            }
            throw th2;
        }
    }

    void putCustomVariables(Event event, SQLiteDatabase sQLiteDatabase) {
        if (!"__##GOOGLEITEM##__".equals(event.category) && !"__##GOOGLETRANSACTION##__".equals(event.category)) {
            try {
                CustomVariable customVariableAt;
                CustomVariableBuffer customVariableBuffer;
                CustomVariableBuffer customVariableBuffer2 = event.getCustomVariableBuffer();
                if (this.useStoredVisitorVars) {
                    if (customVariableBuffer2 == null) {
                        customVariableBuffer2 = new CustomVariableBuffer();
                        event.setCustomVariableBuffer(customVariableBuffer2);
                    }
                    int i = 1;
                    while (i <= 5) {
                        customVariableAt = this.visitorCVCache.getCustomVariableAt(i);
                        CustomVariable customVariableAt2 = customVariableBuffer2.getCustomVariableAt(i);
                        if (customVariableAt != null && customVariableAt2 == null) {
                            customVariableBuffer2.setCustomVariable(customVariableAt);
                        }
                        i++;
                    }
                    this.useStoredVisitorVars = false;
                    customVariableBuffer = customVariableBuffer2;
                } else {
                    customVariableBuffer = customVariableBuffer2;
                }
                if (customVariableBuffer != null) {
                    int i2 = 1;
                    while (i2 <= 5) {
                        if (!customVariableBuffer.isIndexAvailable(i2)) {
                            customVariableAt = customVariableBuffer.getCustomVariableAt(i2);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(EVENT_ID, Integer.valueOf(0));
                            contentValues.put(CUSTOMVAR_INDEX, Integer.valueOf(customVariableAt.getIndex()));
                            contentValues.put(CUSTOMVAR_NAME, customVariableAt.getName());
                            contentValues.put(CUSTOMVAR_SCOPE, Integer.valueOf(customVariableAt.getScope()));
                            contentValues.put(CUSTOMVAR_VALUE, customVariableAt.getValue());
                            sQLiteDatabase.update("custom_var_cache", contentValues, "cv_index = ?", new String[]{Integer.toString(customVariableAt.getIndex())});
                            if (customVariableAt.getScope() == 1) {
                                this.visitorCVCache.setCustomVariable(customVariableAt);
                            } else {
                                this.visitorCVCache.clearCustomVariableAt(customVariableAt.getIndex());
                            }
                        }
                        i2++;
                    }
                }
            } catch (SQLiteException e) {
                Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
            }
        }
    }

    public void putEvent(Event event) {
        SQLiteDatabase writableDatabase;
        if (this.numStoredHits >= 1000) {
            Log.w(GoogleAnalyticsTracker.LOG_TAG, "Store full. Not storing last event.");
        } else {
            if (this.sampleRate != 100) {
                if ((event.getUserId() == -1 ? this.storeId : event.getUserId()) % 10000 >= this.sampleRate * 100) {
                    if (GoogleAnalyticsTracker.getInstance().getDebug()) {
                        Log.v(GoogleAnalyticsTracker.LOG_TAG, "User has been sampled out. Aborting hit.");
                        return;
                    } else {
                        return;
                    }
                }
            }
            synchronized (this) {
                try {
                    writableDatabase = this.databaseHelper.getWritableDatabase();
                    try {
                        writableDatabase.beginTransaction();
                        if (!this.sessionStarted) {
                            storeUpdatedSession(writableDatabase);
                        }
                        putEvent(event, writableDatabase, true);
                        writableDatabase.setTransactionSuccessful();
                        if (writableDatabase.inTransaction()) {
                            endTransaction(writableDatabase);
                        }
                    } catch (SQLiteException e) {
                        Log.e(GoogleAnalyticsTracker.LOG_TAG, "putEventOuter:" + e.toString());
                        if (writableDatabase.inTransaction()) {
                            endTransaction(writableDatabase);
                        }
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    Referrer readCurrentReferrer(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        SQLiteException sQLiteException;
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            query = sQLiteDatabase.query(REFERRER_COLUMN, new String[]{REFERRER_COLUMN, TIMESTAMP_REFERRER, REFERRER_VISIT, REFERRER_INDEX}, null, null, null, null, null);
            try {
                if (query.moveToFirst()) {
                    Referrer referrer = new Referrer(query.getString(query.getColumnIndex(REFERRER_COLUMN)), query.getLong(query.getColumnIndex(TIMESTAMP_REFERRER)), query.getInt(query.getColumnIndex(REFERRER_VISIT)), query.getInt(query.getColumnIndex(REFERRER_INDEX)));
                } else {
                    Cursor cursor3 = cursor2;
                }
                if (query == null) {
                    return referrer;
                }
                query.close();
                return referrer;
            } catch (SQLiteException e) {
                sQLiteException = e;
                cursor = query;
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                if (cursor != null) {
                    cursor.close();
                }
                return cursor2;
            } catch (Throwable th) {
                th = th;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            sQLiteException = e2;
            cursor = cursor2;
            try {
                Log.e(GoogleAnalyticsTracker.LOG_TAG, sQLiteException.toString());
                if (cursor != null) {
                    cursor.close();
                }
                return cursor2;
            } catch (Throwable th2) {
                th = th2;
                query = cursor;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            query = cursor2;
            if (query != null) {
                query.close();
            }
            throw th4;
        }
    }

    public void setAnonymizeIp(boolean z) {
        this.anonymizeIp = z;
    }

    public boolean setReferrer(String str) {
        String formatReferrer = formatReferrer(str);
        if (formatReferrer == null) {
            return false;
        }
        try {
            long index;
            SQLiteDatabase writableDatabase = this.databaseHelper.getWritableDatabase();
            Referrer readCurrentReferrer = readCurrentReferrer(writableDatabase);
            ContentValues contentValues = new ContentValues();
            contentValues.put(REFERRER_COLUMN, formatReferrer);
            contentValues.put(TIMESTAMP_REFERRER, Long.valueOf(0));
            contentValues.put(REFERRER_VISIT, Integer.valueOf(0));
            if (readCurrentReferrer != null) {
                index = (long) readCurrentReferrer.getIndex();
                if (readCurrentReferrer.getTimeStamp() > 0) {
                    index++;
                }
            } else {
                index = 1;
            }
            contentValues.put(REFERRER_INDEX, Long.valueOf(index));
            if (!setReferrerDatabase(writableDatabase, contentValues)) {
                return false;
            }
            startNewVisit();
            return true;
        } catch (SQLiteException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, e.toString());
            return false;
        }
    }

    public void setSampleRate(int i) {
        this.sampleRate = i;
    }

    public synchronized void startNewVisit() {
        this.sessionStarted = false;
        this.useStoredVisitorVars = true;
        this.numStoredHits = getNumStoredHitsFromDb();
    }

    void storeUpdatedSession(SQLiteDatabase sQLiteDatabase) {
        SQLiteDatabase writableDatabase = this.databaseHelper.getWritableDatabase();
        writableDatabase.delete("session", null, null);
        if (this.timestampFirst == 0) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            this.timestampFirst = currentTimeMillis;
            this.timestampPrevious = currentTimeMillis;
            this.timestampCurrent = currentTimeMillis;
            this.visits = 1;
        } else {
            this.timestampPrevious = this.timestampCurrent;
            this.timestampCurrent = System.currentTimeMillis() / 1000;
            if (this.timestampCurrent == this.timestampPrevious) {
                this.timestampCurrent++;
            }
            this.visits++;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(TIMESTAMP_FIRST, Long.valueOf(this.timestampFirst));
        contentValues.put(TIMESTAMP_PREVIOUS, Long.valueOf(this.timestampPrevious));
        contentValues.put(TIMESTAMP_CURRENT, Long.valueOf(this.timestampCurrent));
        contentValues.put(VISITS, Integer.valueOf(this.visits));
        contentValues.put(STORE_ID, Integer.valueOf(this.storeId));
        writableDatabase.insert("session", null, contentValues);
        this.sessionStarted = true;
    }

    void writeEventToDatabase(Event event, Referrer referrer, SQLiteDatabase sQLiteDatabase, boolean z) throws SQLiteException {
        ContentValues contentValues = new ContentValues();
        contentValues.put(HIT_STRING, HitBuilder.constructHitRequestPath(event, referrer));
        contentValues.put(HIT_TIMESTAMP, Long.valueOf(z ? System.currentTimeMillis() : 0));
        sQLiteDatabase.insert("hits", null, contentValues);
        this.numStoredHits++;
    }
}