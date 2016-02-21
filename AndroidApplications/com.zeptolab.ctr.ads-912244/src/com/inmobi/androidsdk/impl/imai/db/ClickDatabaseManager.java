package com.inmobi.androidsdk.impl.imai.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.imai.IMAIClickEventList;
import com.inmobi.commons.db.ColumnData;
import com.inmobi.commons.db.ColumnData.ColumnType;
import com.inmobi.commons.db.DatabaseHandler;
import com.inmobi.commons.db.TableData;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

public class ClickDatabaseManager extends DatabaseHandler {
    public static final String COLUMN_CLICK_ID = "clickid";
    public static final String COLUMN_CLICK_URL = "clickurl";
    public static final String COLUMN_FOLLOW_REDIRECT = "followredirect";
    public static final String COLUMN_PINGWV = "pingwv";
    public static final String COLUMN_RETRY_COUNT = "retrycount";
    public static final String COLUMN_TIMESTAMP = "timestamp";
    public static final String TABLE_CLICK = "clickevent";
    private static ClickDatabaseManager a;
    private int b;

    protected ClickDatabaseManager(Context context, ArrayList arrayList) {
        super(context, arrayList);
        this.b = 1000;
    }

    private static TableData a() {
        TableData tableData = new TableData();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ColumnData columnData = new ColumnData();
        columnData.setPrimaryKey(true);
        columnData.setDataType(ColumnType.INTEGER);
        columnData.setMandatory(true);
        linkedHashMap.put(COLUMN_CLICK_ID, columnData);
        columnData = new ColumnData();
        columnData.setDataType(ColumnType.VARCHAR);
        columnData.setMandatory(true);
        linkedHashMap.put(COLUMN_CLICK_URL, columnData);
        columnData = new ColumnData();
        columnData.setDataType(ColumnType.INTEGER);
        columnData.setMandatory(true);
        linkedHashMap.put(COLUMN_PINGWV, columnData);
        columnData = new ColumnData();
        columnData.setDataType(ColumnType.INTEGER);
        columnData.setMandatory(true);
        linkedHashMap.put(COLUMN_FOLLOW_REDIRECT, columnData);
        columnData = new ColumnData();
        columnData.setDataType(ColumnType.INTEGER);
        columnData.setMandatory(true);
        linkedHashMap.put(COLUMN_RETRY_COUNT, columnData);
        columnData = new ColumnData();
        columnData.setDataType(ColumnType.INTEGER);
        columnData.setMandatory(true);
        linkedHashMap.put(COLUMN_TIMESTAMP, columnData);
        tableData.setmColumns(linkedHashMap);
        tableData.setmTableName(TABLE_CLICK);
        return tableData;
    }

    public static synchronized ClickDatabaseManager getInstance() {
        ClickDatabaseManager clickDatabaseManager;
        synchronized (ClickDatabaseManager.class) {
            try {
                if (a == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(a());
                    a = new ClickDatabaseManager(InternalSDKUtil.getContext(), arrayList);
                }
                clickDatabaseManager = a;
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception getting DB Manager Instance", e);
                clickDatabaseManager = null;
            }
        }
        return clickDatabaseManager;
    }

    public synchronized boolean deleteClickEvents(ArrayList arrayList) {
        boolean z;
        if (arrayList != null) {
            try {
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception deleting click events", e);
                z = false;
            }
            if (!arrayList.isEmpty()) {
                open();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    delete(TABLE_CLICK, "clickid = " + ((Long) it.next()).longValue(), null);
                }
                close();
                z = true;
            }
        }
        z = false;
        return z;
    }

    public synchronized IMAIClickEventList getClickEvents(int i) {
        IMAIClickEventList iMAIClickEventList;
        iMAIClickEventList = new IMAIClickEventList();
        try {
            open();
            Cursor nRows = getNRows(TABLE_CLICK, COLUMN_TIMESTAMP, i);
            nRows.moveToFirst();
            do {
                ClickData clickData = new ClickData();
                clickData.setClickId(nRows.getLong(0));
                clickData.setClickUrl(nRows.getString(1));
                if (1 == nRows.getInt(GoogleScorer.CLIENT_PLUS)) {
                    clickData.setPingWv(true);
                } else {
                    clickData.setPingWv(false);
                }
                if (1 == nRows.getInt(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                    clickData.setFollowRedirect(true);
                } else {
                    clickData.setFollowRedirect(false);
                }
                clickData.setRetryCount(nRows.getInt(GoogleScorer.CLIENT_APPSTATE));
                clickData.setTimestamp(nRows.getLong(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                iMAIClickEventList.add(clickData);
            } while (nRows.moveToNext());
            nRows.close();
            close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to get clicks from db", e);
        }
        return iMAIClickEventList;
    }

    public int getNoOfEvents() {
        try {
            open();
            int noOfRows = getInstance().getNoOfRows(TABLE_CLICK, null, null);
            close();
            return noOfRows;
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Exception getting no of click events", e);
            return 0;
        }
    }

    public synchronized void insertClick(ClickData clickData) {
        try {
            open();
            ContentValues contentValues = new ContentValues();
            contentValues.put(COLUMN_TIMESTAMP, Long.valueOf(clickData.getTimestamp()));
            contentValues.put(COLUMN_CLICK_URL, clickData.getClickUrl());
            contentValues.put(COLUMN_PINGWV, Boolean.valueOf(clickData.isPingWv()));
            contentValues.put(COLUMN_RETRY_COUNT, Integer.valueOf(clickData.getRetryCount()));
            contentValues.put(COLUMN_FOLLOW_REDIRECT, Boolean.valueOf(clickData.isFollowRedirects()));
            if (getTableSize(TABLE_CLICK) >= this.b) {
                Cursor executeQuery = executeQuery("SELECT clickid FROM clickevent WHERE timestamp= (SELECT MIN(timestamp) FROM clickevent Limit 1);", null);
                executeQuery.moveToFirst();
                long j = executeQuery.getLong(0);
                executeQuery.close();
                delete(TABLE_CLICK, "clickid = " + j, null);
            }
            insert(TABLE_CLICK, contentValues);
            close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert click event to db", e);
        }
    }

    public void setDBLimit(int i) {
        if (i > 0) {
            this.b = i;
        }
    }

    public synchronized boolean updateRetryCount(ArrayList arrayList) {
        boolean z;
        if (arrayList != null) {
            try {
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception updating retry count", e);
                z = false;
            }
            if (!arrayList.isEmpty()) {
                open();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ClickData clickData = (ClickData) it.next();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(COLUMN_CLICK_ID, Long.valueOf(clickData.getClickId()));
                    contentValues.put(COLUMN_CLICK_URL, clickData.getClickUrl());
                    contentValues.put(COLUMN_FOLLOW_REDIRECT, Boolean.valueOf(clickData.isFollowRedirects()));
                    contentValues.put(COLUMN_PINGWV, Boolean.valueOf(clickData.isPingWv()));
                    contentValues.put(COLUMN_RETRY_COUNT, Integer.valueOf(clickData.getRetryCount() + 1));
                    contentValues.put(COLUMN_TIMESTAMP, Long.valueOf(clickData.getTimestamp()));
                    update(TABLE_CLICK, contentValues, "clickid= ?", new String[]{String.valueOf(clickData.getClickId())});
                }
                close();
                z = true;
            }
        }
        z = false;
        return z;
    }
}