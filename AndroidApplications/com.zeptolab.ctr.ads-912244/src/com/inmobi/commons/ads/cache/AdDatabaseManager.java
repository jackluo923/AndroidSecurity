package com.inmobi.commons.ads.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class AdDatabaseManager {
    private static AdDatabaseManager c;
    private AdDatabaseHelper a;
    private SQLiteDatabase b;
    private int d;

    protected AdDatabaseManager() {
        this.d = 1000;
    }

    public static synchronized AdDatabaseManager getInstance() {
        AdDatabaseManager adDatabaseManager;
        synchronized (AdDatabaseManager.class) {
            if (c == null) {
                c = new AdDatabaseManager();
                c.a = new AdDatabaseHelper(InternalSDKUtil.getContext());
            }
            adDatabaseManager = c;
        }
        return adDatabaseManager;
    }

    protected void close() {
        try {
            this.b.close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to close ads db", e);
        }
    }

    public synchronized AdData getAd(String str) {
        AdData adData;
        try {
            open();
            Cursor rawQuery = this.b.rawQuery("SELECT * FROM ad WHERE appid = ? Order by timestamp Limit 1;", new String[]{str});
            rawQuery.moveToFirst();
            adData = new AdData();
            adData.setAdId(rawQuery.getLong(0));
            adData.setTimestamp(rawQuery.getLong(1));
            adData.setAppId(rawQuery.getString(GoogleScorer.CLIENT_PLUS));
            adData.setContent(rawQuery.getString(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            rawQuery.close();
            this.b.delete(AdDatabaseHelper.TABLE_AD, "adid = " + adData.getAdId(), null);
            close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get native ads from db", e);
            adData = null;
        }
        return adData;
    }

    protected int getDBSize() {
        try {
            open();
            int count = this.b.rawQuery("SELECT * FROM ad; ", null).getCount();
            close();
            return count;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get native ads from db", e);
            return 0;
        }
    }

    public synchronized int getNoOfAds(String str) {
        int count;
        try {
            open();
            count = this.b.rawQuery("SELECT * FROM ad WHERE appid = ?; ", new String[]{str}).getCount();
            close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get native ads from db", e);
            count = 0;
        }
        return count;
    }

    public synchronized void insertAd(AdData adData) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(AdDatabaseHelper.COLUMN_TIMESTAMP, Long.valueOf(adData.getTimestamp()));
            contentValues.put(AdDatabaseHelper.COLUMN_APPID, adData.getAppId());
            contentValues.put(AdDatabaseHelper.COLUMN_AD_CONTENT, adData.getContent());
            contentValues.put(AdDatabaseHelper.COLUMN_ADTYPE, adData.getAdType());
            if (getDBSize() >= this.d) {
                open();
                Cursor rawQuery = this.b.rawQuery("SELECT adid FROM ad WHERE timestamp= (SELECT MIN(timestamp) FROM ad Limit 1);", null);
                rawQuery.moveToFirst();
                long j = rawQuery.getLong(0);
                rawQuery.close();
                this.b.delete(AdDatabaseHelper.TABLE_AD, "adid = " + j, null);
                close();
            }
            open();
            this.b.insert(AdDatabaseHelper.TABLE_AD, null, contentValues);
            close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert native ads to db", e);
        }
    }

    protected void open() {
        try {
            this.b = this.a.getWritableDatabase();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to open ads db", e);
        }
    }

    public void setDBLimit(int i) {
        if (i > 0) {
            this.d = i;
        }
    }
}