package com.gameanalytics.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public class EventDatabase {
    protected static final String AMOUNT = "amount";
    protected static final String AREA = "area";
    protected static final String BIRTH_YEAR = "birth_year";
    protected static final String BUILD = "build";
    protected static final String CREATE_TABLE = "create table events (_id integer primary key autoincrement not null,type text,user_id text,session_id text,build text,event_id text,area text,x num,y num,z num,value num,currency text,amount num,gender text,birth_year num,friend_count num,message text);";
    protected static final String CURRENCY = "currency";
    protected static final String EVENT_ID = "event_id";
    protected static final String FRIEND_COUNT = "friend_count";
    protected static final String GENDER = "gender";
    private static int MAXIMUM_EVENT_STORAGE = 0;
    protected static final String MESSAGE = "message";
    protected static final String ROW_ID = "_id";
    protected static final String SESSION_ID = "session_id";
    protected static final String TABLENAME = "events";
    protected static final String TYPE = "type";
    protected static final String USER_ID = "user_id";
    protected static final String VALUE = "value";
    protected static final String X = "x";
    protected static final String Y = "y";
    protected static final String Z = "z";
    private SQLiteDatabase db;

    class AnonymousClass_1 extends Thread {
        private final /* synthetic */ ContentValues val$values;

        AnonymousClass_1(ContentValues contentValues) {
            this.val$values = contentValues;
        }

        public void run() {
            EventDatabase.this.insert(this.val$values);
        }
    }

    class AnonymousClass_2 extends Thread {
        private final /* synthetic */ ContentValues val$values;

        AnonymousClass_2(ContentValues contentValues) {
            this.val$values = contentValues;
        }

        public void run() {
            EventDatabase.this.insert(this.val$values);
        }
    }

    class AnonymousClass_3 extends Thread {
        private final /* synthetic */ ContentValues val$values;

        AnonymousClass_3(ContentValues contentValues) {
            this.val$values = contentValues;
        }

        public void run() {
            EventDatabase.this.insert(this.val$values);
        }
    }

    class AnonymousClass_4 extends Thread {
        private final /* synthetic */ ContentValues val$values;

        AnonymousClass_4(ContentValues contentValues) {
            this.val$values = contentValues;
        }

        public void run() {
            EventDatabase.this.insert(this.val$values);
        }
    }

    private class OpenHelper extends SQLiteOpenHelper {
        private static final String DB_NAME = "GameAnalytics";
        private static final int DB_VERSION = 1;

        public OpenHelper(Context context) {
            super(context, DB_NAME, null, 1);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            GALog.i("Creating database to store events.");
            sQLiteDatabase.execSQL(CREATE_TABLE);
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    static {
        MAXIMUM_EVENT_STORAGE = 0;
    }

    public EventDatabase(Context context) {
        this.db = new OpenHelper(context).getWritableDatabase();
    }

    private synchronized void insert(ContentValues contentValues) {
        if (MAXIMUM_EVENT_STORAGE == 0 || !isFull()) {
            this.db.insert(TABLENAME, null, contentValues);
        }
    }

    private boolean isFull() {
        SQLiteDatabase sQLiteDatabase = this.db;
        String str = TABLENAME;
        String[] strArr = new String[]{ROW_ID};
        return sQLiteDatabase.query(str, strArr, null, null, null, null, null).getCount() >= MAXIMUM_EVENT_STORAGE;
    }

    protected void addBusinessEvent(String str, String str2, String str3, String str4, String str5, float f, float f2, float f3, String str6, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TYPE, "business");
        contentValues.put(USER_ID, str);
        contentValues.put(SESSION_ID, str2);
        contentValues.put(BUILD, str3);
        contentValues.put(EVENT_ID, str4);
        contentValues.put(AREA, str5);
        contentValues.put(X, Float.valueOf(f));
        contentValues.put(Y, Float.valueOf(f2));
        contentValues.put(Z, Float.valueOf(f3));
        contentValues.put(CURRENCY, str6);
        contentValues.put(AMOUNT, Integer.valueOf(i));
        new AnonymousClass_2(contentValues).start();
    }

    protected void addDesignEvent(String str, String str2, String str3, String str4, String str5, float f, float f2, float f3, float f4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TYPE, "design");
        contentValues.put(USER_ID, str);
        contentValues.put(SESSION_ID, str2);
        contentValues.put(BUILD, str3);
        contentValues.put(EVENT_ID, str4);
        contentValues.put(AREA, str5);
        contentValues.put(X, Float.valueOf(f));
        contentValues.put(Y, Float.valueOf(f2));
        contentValues.put(Z, Float.valueOf(f3));
        contentValues.put(VALUE, Float.valueOf(f4));
        new AnonymousClass_1(contentValues).start();
    }

    protected void addQualityEvent(String str, String str2, String str3, String str4, String str5, float f, float f2, float f3, String str6) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TYPE, "quality");
        contentValues.put(USER_ID, str);
        contentValues.put(SESSION_ID, str2);
        contentValues.put(BUILD, str3);
        contentValues.put(EVENT_ID, str4);
        contentValues.put(AREA, str5);
        contentValues.put(X, Float.valueOf(f));
        contentValues.put(Y, Float.valueOf(f2));
        contentValues.put(Z, Float.valueOf(f3));
        contentValues.put(MESSAGE, str6);
        new AnonymousClass_4(contentValues).start();
    }

    protected void addUserEvent(String str, String str2, String str3, String str4, String str5, float f, float f2, float f3, char c, int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TYPE, "user");
        contentValues.put(USER_ID, str);
        contentValues.put(SESSION_ID, str2);
        contentValues.put(BUILD, str3);
        contentValues.put(EVENT_ID, str4);
        contentValues.put(AREA, str5);
        contentValues.put(X, Float.valueOf(f));
        contentValues.put(Y, Float.valueOf(f2));
        contentValues.put(Z, Float.valueOf(f3));
        contentValues.put(GENDER, String.valueOf(c));
        contentValues.put(BIRTH_YEAR, Integer.valueOf(i));
        contentValues.put(FRIEND_COUNT, Integer.valueOf(i2));
        new AnonymousClass_3(contentValues).start();
    }

    protected void clear() {
        this.db.delete(TABLENAME, null, null);
    }

    protected synchronized ArrayList[] getEvents() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        Cursor query = this.db.query(TABLENAME, null, null, null, null, null, ROW_ID);
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        arrayList3 = new ArrayList();
        arrayList4 = new ArrayList();
        if (query.moveToFirst()) {
            while (!query.isAfterLast()) {
                String string = query.getString(1);
                String string2 = query.getString(GoogleScorer.CLIENT_PLUS);
                String string3 = query.getString(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                String string4 = query.getString(GoogleScorer.CLIENT_APPSTATE);
                String string5 = query.getString(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
                String string6 = query.getString(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
                float f = query.getFloat(GoogleScorer.CLIENT_ALL);
                float f2 = query.getFloat(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                float f3 = query.getFloat(ZBuildConfig.$minsdk);
                if (string.equals("design")) {
                    arrayList.add(new DesignEvent(string2, string3, string4, string5, string6, f, f2, f3, query.getFloat(R.styleable.MapAttrs_uiZoomControls)));
                } else if (string.equals("business")) {
                    arrayList3.add(new BusinessEvent(string2, string3, string4, string5, string6, f, f2, f3, query.getString(R.styleable.MapAttrs_uiZoomGestures), query.getInt(R.styleable.MapAttrs_useViewLifecycle)));
                } else if (string.equals("user")) {
                    arrayList2.add(new UserEvent(string2, string3, string4, string5, string6, f, f2, f3, query.getString(R.styleable.MapAttrs_zOrderOnTop).toCharArray()[0], query.getInt(MMException.REQUEST_NOT_FILLED), query.getInt(MMException.REQUEST_BAD_RESPONSE)));
                } else if (string.equals("quality")) {
                    arrayList4.add(new QualityEvent(string2, string3, string4, string5, string6, f, f2, f3, query.getString(MMException.REQUEST_NOT_PERMITTED)));
                }
                query.moveToNext();
            }
        }
        query.close();
        this.db.delete(TABLENAME, null, null);
        return new ArrayList[]{arrayList, arrayList3, arrayList2, arrayList4};
    }

    protected void setMaximumEventStorage(int i) {
        MAXIMUM_EVENT_STORAGE = i;
    }
}