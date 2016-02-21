package com.inmobi.commons.analytics.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE;
import com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.net.AnalyticsNetworkManager;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class AnalyticsDatabaseManager {
    private static AnalyticsDatabaseManager c;
    private static final String[] d;
    private static final String[] e;
    private static final String[] f;
    private static final String[] g;
    private static final String[] h;
    private static final String[] i;
    private AnalyticsSQLiteHelper a;
    private SQLiteDatabase b;

    static {
        d = new String[]{AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.EVENT_LIST_EVENT_ID, AnalyticsSQLiteHelper.EVENT_LIST_TYPE, AnalyticsSQLiteHelper.EVENT_LIST_SID, AdTrackerConstants.TIMESTAMP, AnalyticsSQLiteHelper.EVENT_LIST_SSTS, AnalyticsSQLiteHelper.EVENT_LIST_AM};
        e = new String[]{AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.LEVEL_END_LEVEL_ID, AnalyticsSQLiteHelper.LEVEL_END_LEVEL_NAME};
        f = new String[]{AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.LEVEL_END_LEVEL_ID, AnalyticsSQLiteHelper.LEVEL_END_LEVEL_NAME, AnalyticsSQLiteHelper.LEVEL_END_LEVEL_STATUS, AnalyticsSQLiteHelper.LEVEL_END_TIME_TAKEN, AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_COUNT, AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_TIME};
        g = new String[]{AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.CUSTOM_EVENT_EVENT_NAME};
        h = new String[]{AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.LEVEL_END_LEVEL_ID, AnalyticsSQLiteHelper.ATTEMPT_DATA_BEGIN_TIME, AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_COUNT, AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_TIME};
        i = new String[]{AnalyticsSQLiteHelper.GENERAL_ID, AnalyticsSQLiteHelper.TRANSACTION_ITEM_NAME, AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE, AnalyticsSQLiteHelper.TRANSACTION_ITEM_COUNT, AnalyticsSQLiteHelper.TRANSACTION_ITEM_DESCRIPTION, AnalyticsSQLiteHelper.TRANSACTION_ITEM_ITEM_PRICE, AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE, AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID, AnalyticsSQLiteHelper.TRANSACTION_ID, AnalyticsSQLiteHelper.TRANSACTION_STATUS};
    }

    private AnalyticsDatabaseManager() {
    }

    private AnalyticsEvent a(Cursor cursor) {
        Cursor cursor2 = null;
        AnalyticsEvent analyticsEvent = new AnalyticsEvent(cursor.getString(GoogleScorer.CLIENT_PLUS));
        analyticsEvent.setEventSessionId(cursor.getString(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        analyticsEvent.setEventId(cursor.getLong(0));
        analyticsEvent.setEventTimeStamp(cursor.getLong(GoogleScorer.CLIENT_APPSTATE));
        analyticsEvent.setEventSessionTimeStamp(cursor.getLong(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
        analyticsEvent.setEventAttributeMap(cursor.getString(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
        long j = cursor.getLong(1);
        String toString = Long.toString(j);
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->" + analyticsEvent.getEventType() + "-" + j);
        if (j > -1) {
            if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_BEGIN)) {
                cursor2 = this.b.query(AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, e, "_id = ?", new String[]{toString}, null, null, null);
                cursor2.moveToFirst();
                analyticsEvent.setEventLevelId(cursor2.getString(1));
                analyticsEvent.setEventLevelName(cursor2.getString(GoogleScorer.CLIENT_PLUS));
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_END)) {
                cursor2 = this.b.query(AnalyticsSQLiteHelper.TABLE_LEVEL_END, f, "_id = ?", new String[]{toString}, null, null, null);
                cursor2.moveToFirst();
                analyticsEvent.setEventLevelId(cursor2.getString(1));
                analyticsEvent.setEventLevelName(cursor2.getString(GoogleScorer.CLIENT_PLUS));
                analyticsEvent.setEventLevelStatus(cursor2.getString(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                analyticsEvent.setEventTimeTaken(cursor2.getString(GoogleScorer.CLIENT_APPSTATE));
                analyticsEvent.setEventAttemptCount(cursor2.getString(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                analyticsEvent.setEventAttemptTime(cursor2.getString(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_CUSTOM_EVENT)) {
                cursor2 = this.b.query(AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, g, "_id = ?", new String[]{toString}, null, null, null);
                cursor2.moveToFirst();
                analyticsEvent.setEventCustomName(cursor2.getString(1));
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_TAG_TRANSACTION)) {
                cursor2 = this.b.query(AnalyticsSQLiteHelper.TABLE_TRANSACTION, i, "_id = ?", new String[]{toString}, null, null, null);
                cursor2.moveToFirst();
                analyticsEvent.setTransactionItemName(cursor2.getString(1));
                analyticsEvent.setTransactionItemType(cursor2.getInt(GoogleScorer.CLIENT_PLUS));
                analyticsEvent.setTransactionItemCount(cursor2.getInt(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                analyticsEvent.setTransactionItemDescription(cursor2.getString(GoogleScorer.CLIENT_APPSTATE));
                analyticsEvent.setTransactionItemPrice(cursor2.getDouble(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                analyticsEvent.setTransactionCurrencyCode(cursor2.getString(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
                analyticsEvent.setTransactionProductId(cursor2.getString(GoogleScorer.CLIENT_ALL));
                analyticsEvent.setTransactionId(cursor2.getString(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
                analyticsEvent.setTransactionStatus(cursor2.getInt(ZBuildConfig.$minsdk));
            }
            if (cursor2 != null) {
                cursor2.close();
            }
        }
        return analyticsEvent;
    }

    private void a() {
        this.b = this.a.getWritableDatabase();
    }

    private void a(AnalyticsEvent analyticsEvent, long j) {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->insertEvents-" + analyticsEvent.getEventType());
        if (j < AnalyticsUtils.getMaxdbcount()) {
            ContentValues contentValues = new ContentValues();
            long j2 = -1;
            long eventTimeStamp = analyticsEvent.getEventTimeStamp();
            if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_BEGIN)) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_BEGIN_TIME, Long.valueOf(eventTimeStamp));
                if (this.b.update(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, contentValues2, "levelid = ?", new String[]{analyticsEvent.getEventLevelId()}) <= 0) {
                    contentValues2.put(AnalyticsSQLiteHelper.LEVEL_END_LEVEL_ID, analyticsEvent.getEventLevelId());
                    contentValues2.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_COUNT, Integer.toString(0));
                    contentValues2.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_TIME, Integer.toString(0));
                    this.b.insert(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, null, contentValues2);
                }
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_LEVEL_ID, analyticsEvent.getEventLevelId());
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_LEVEL_NAME, analyticsEvent.getEventLevelName());
                j2 = this.b.insert(AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, null, contentValues);
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_LEVEL_END)) {
                String toString;
                String toString2;
                String toString3;
                String str = "0";
                String str2 = "0";
                String str3 = "0";
                Cursor query = this.b.query(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, h, "levelid = ?", new String[]{analyticsEvent.getEventLevelId()}, null, null, null, "1");
                if (query.getCount() > 0) {
                    query.moveToFirst();
                    j2 = eventTimeStamp - Long.parseLong(query.getString(GoogleScorer.CLIENT_PLUS));
                    toString = Long.toString(j2);
                    toString2 = Long.toString(j2 + Long.parseLong(query.getString(GoogleScorer.CLIENT_APPSTATE)));
                    toString3 = Integer.toString(Integer.parseInt(query.getString(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) + 1);
                    ContentValues contentValues3 = new ContentValues();
                    contentValues3.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_COUNT, toString3);
                    contentValues3.put(AnalyticsSQLiteHelper.ATTEMPT_DATA_TOTAL_TIME, toString2);
                    this.b.update(AnalyticsSQLiteHelper.TABLE_ATTEMPT_DATA, contentValues3, "levelid = ?", new String[]{analyticsEvent.getEventLevelId()});
                } else {
                    toString2 = str3;
                    toString3 = str2;
                    toString = str;
                }
                query.close();
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_LEVEL_ID, analyticsEvent.getEventLevelId());
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_LEVEL_STATUS, analyticsEvent.getEventLevelStatus());
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_LEVEL_NAME, analyticsEvent.getEventLevelName());
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_TIME_TAKEN, toString);
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_COUNT, toString3);
                contentValues.put(AnalyticsSQLiteHelper.LEVEL_END_ATTEMPT_TIME, toString2);
                j2 = this.b.insert(AnalyticsSQLiteHelper.TABLE_LEVEL_END, null, contentValues);
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_TAG_TRANSACTION)) {
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_NAME, analyticsEvent.getTransactionItemName());
                int transactionItemType = analyticsEvent.getTransactionItemType();
                if (TRANSACTION_ITEM_TYPE.INVALID.getValue() != transactionItemType) {
                    contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_TYPE, Integer.valueOf(transactionItemType));
                }
                transactionItemType = analyticsEvent.getTransactionItemCount();
                if (transactionItemType > 0) {
                    contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_COUNT, Integer.valueOf(transactionItemType));
                }
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_DESCRIPTION, analyticsEvent.getTransactionItemDescription());
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_ITEM_PRICE, Double.valueOf(analyticsEvent.getTransactionItemPrice()));
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE, analyticsEvent.getTransactionCurrencyCode());
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID, analyticsEvent.getTransactionProductId());
                contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_ID, analyticsEvent.getTransactionId());
                transactionItemType = analyticsEvent.getTransactionStatus();
                if (TRANSACTION_STATUS_SERVER_CODE.INVALID.getValue() != transactionItemType) {
                    contentValues.put(AnalyticsSQLiteHelper.TRANSACTION_STATUS, Integer.valueOf(transactionItemType));
                }
                j2 = this.b.insert(AnalyticsSQLiteHelper.TABLE_TRANSACTION, null, contentValues);
            } else if (analyticsEvent.getEventType().equals(AnalyticsEvent.TYPE_CUSTOM_EVENT)) {
                contentValues.put(AnalyticsSQLiteHelper.CUSTOM_EVENT_EVENT_NAME, analyticsEvent.getEventCustomName());
                j2 = this.b.insert(AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, null, contentValues);
            }
            ContentValues contentValues4 = new ContentValues();
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_EVENT_ID, Long.valueOf(j2));
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, analyticsEvent.getEventType());
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_SID, analyticsEvent.getEventSessionId());
            contentValues4.put(AdTrackerConstants.TIMESTAMP, Long.valueOf(analyticsEvent.getEventTimeStamp()));
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_SSTS, Long.valueOf(analyticsEvent.getEventSessionTimeStamp()));
            contentValues4.put(AnalyticsSQLiteHelper.EVENT_LIST_AM, analyticsEvent.getEventAttributeMap());
            this.b.insert(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, null, contentValues4);
        } else {
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Database full");
        }
        if (!AnalyticsUtils.getStartHandle() && AnalyticsNetworkManager.getHandler() != null) {
            AnalyticsUtils.setStartHandle(true);
            AnalyticsNetworkManager.getHandler().sendEmptyMessageDelayed(ApiEventType.API_IMAI_OPEN_EMBEDDED, AnalyticsUtils.getTimeinterval());
        }
    }

    private void a(List list) {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->deleteEvents");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String toString = ((Long) it.next()).toString();
            Cursor query = this.b.query(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, d, "_id=?", new String[]{toString}, null, null, null, "1");
            query.moveToFirst();
            Long valueOf = Long.valueOf(query.getLong(1));
            String toString2 = valueOf.toString();
            String string = query.getString(GoogleScorer.CLIENT_PLUS);
            if (valueOf.longValue() > -1) {
                if (string.equals(AnalyticsEvent.TYPE_LEVEL_BEGIN)) {
                    this.b.delete(AnalyticsSQLiteHelper.TABLE_LEVEL_BEGIN, "_id = ?", new String[]{toString2});
                } else if (string.equals(AnalyticsEvent.TYPE_LEVEL_END)) {
                    this.b.delete(AnalyticsSQLiteHelper.TABLE_LEVEL_END, "_id = ?", new String[]{toString2});
                } else if (string.equals(AnalyticsEvent.TYPE_CUSTOM_EVENT)) {
                    this.b.delete(AnalyticsSQLiteHelper.TABLE_CUSTOM_EVENT, "_id = ?", new String[]{toString2});
                } else if (string.equals(AnalyticsEvent.TYPE_TAG_TRANSACTION)) {
                    this.b.delete(AnalyticsSQLiteHelper.TABLE_TRANSACTION, "_id = ?", new String[]{toString2});
                }
            }
            query.close();
            this.b.delete(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, "_id = ?", new String[]{toString});
        }
    }

    private void b() {
        this.a.close();
    }

    private List c() {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->getEvents");
        List arrayList = new ArrayList();
        if (this.b.isOpen()) {
            Cursor query = this.b.query(AnalyticsSQLiteHelper.TABLE_EVENT_LIST, d, null, null, null, null, null, AnalyticsUtils.getMaxevents());
            query.moveToFirst();
            while (!query.isAfterLast()) {
                AnalyticsEvent a = a(query);
                a.setEventTableId(query.getLong(0));
                arrayList.add(a);
                query.moveToNext();
            }
            query.close();
            return arrayList;
        } else {
            android.util.Log.v(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IMAppDatabaseManager->getEvents()-database is not open");
            return arrayList;
        }
    }

    public static synchronized AnalyticsDatabaseManager getInstance() {
        AnalyticsDatabaseManager analyticsDatabaseManager;
        synchronized (AnalyticsDatabaseManager.class) {
            if (c == null) {
                c = new AnalyticsDatabaseManager();
                File databasePath = InternalSDKUtil.getContext().getDatabasePath(AnalyticsSQLiteHelper.OLD_DATABASE_NAME);
                if (databasePath.isFile()) {
                    databasePath.renameTo(InternalSDKUtil.getContext().getDatabasePath(AnalyticsSQLiteHelper.DATABASE_NAME));
                    SessionInfo.updatedFromOldSDK(InternalSDKUtil.getContext());
                }
                c.a = new AnalyticsSQLiteHelper(InternalSDKUtil.getContext());
            }
            analyticsDatabaseManager = c;
        }
        return analyticsDatabaseManager;
    }

    public synchronized void deleteEvents(List list) {
        try {
            a();
            a(list);
            b();
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error deleting from DB.");
        }
    }

    public synchronized List getEvents() {
        List c;
        try {
            a();
            c = c();
            b();
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error reading events from DB.");
            c = new ArrayList();
        }
        return c;
    }

    public synchronized void insertEvents(AnalyticsEvent analyticsEvent) {
        try {
            a();
            a(analyticsEvent, this.b.compileStatement("SELECT COUNT(*) FROM eventlist").simpleQueryForLong());
            b();
        } catch (Exception e) {
            Throwable th = e;
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error in inserting into DB.", th);
            th.printStackTrace();
        }
    }
}