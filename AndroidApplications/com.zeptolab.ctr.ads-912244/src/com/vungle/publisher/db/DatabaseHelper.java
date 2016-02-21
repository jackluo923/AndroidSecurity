package com.vungle.publisher.db;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.at;
import com.vungle.publisher.cj;
import com.vungle.publisher.file.CacheManager;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DatabaseHelper extends SQLiteOpenHelper {
    private static final String[] e;
    @Inject
    CacheManager a;
    @Inject
    cj b;
    @Inject
    at c;
    @Inject
    public ScheduledPriorityExecutor d;

    static {
        e = new String[]{AdDatabaseHelper.TABLE_AD, "viewable", "archive_entry", "event_tracking", "ad_report", "ad_play", "ad_report_event", "ad_report_extra"};
    }

    @Inject
    public DatabaseHelper(Context context) {
        super(context, "vungle", null, 6);
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = e;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str = strArr[i];
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("dropping table: ").append(str).toString());
            str = new StringBuilder("DROP TABLE  IF EXISTS ").append(str).toString();
            Logger.v(Logger.DATABASE_TAG, str);
            sQLiteDatabase.execSQL(str);
            i++;
        }
        CacheManager cacheManager = this.a;
        Logger.d(Logger.FILE_TAG, "deleting ad temp directory");
        CacheManager.a((String) cacheManager.a.get());
        onCreate(sQLiteDatabase);
    }

    final void a(?... Arr) {
        String b = this.c.b();
        Logger.d(Logger.DATABASE_DUMP_TAG, b + " sdk version 3.2.0, database version 6");
        if (Arr == null || Arr.length <= 0) {
            Logger.d(Logger.DATABASE_DUMP_TAG, b + " dumping all tables");
            Arr = e;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        int length = Arr.length;
        int i = 0;
        while (i < length) {
            String str = Arr[i];
            Logger.i(Logger.DATABASE_DUMP_TAG, b + " dumping table " + str);
            Cursor query = readableDatabase.query(str, null, null, new String[0], null, null, null);
            StringBuilder stringBuilder = new StringBuilder();
            DatabaseUtils.dumpCursor(query, stringBuilder);
            Logger.d(Logger.DATABASE_DUMP_TAG, stringBuilder.toString());
            i++;
        }
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        Logger.d(Logger.DATABASE_TAG, "creating database: vungle");
        Logger.d(Logger.DATABASE_TAG, "creating table: ad");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad (id STRING PRIMARY KEY, advertising_app_vungle_id INTEGER, call_to_action_final_url STRING, call_to_action_url STRING, status STRING NOT NULL, type STRING NOT NULL, delete_local_content_attempts INTEGER, expiration_timestamp_seconds INTEGER, parent_path STRING, prepare_retry_count INTEGER, received_timestamp_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL);");
        sQLiteDatabase.execSQL("CREATE TABLE ad (id STRING PRIMARY KEY, advertising_app_vungle_id INTEGER, call_to_action_final_url STRING, call_to_action_url STRING, status STRING NOT NULL, type STRING NOT NULL, delete_local_content_attempts INTEGER, expiration_timestamp_seconds INTEGER, parent_path STRING, prepare_retry_count INTEGER, received_timestamp_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL);");
        Logger.d(Logger.DATABASE_TAG, "creating table: viewable");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE viewable (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, type STRING NOT NULL, url STRING NOT NULL, status STRING NOT NULL, size INTEGER, width INTEGER, height INTEGER, show_close_delay_incentivized_seconds INTEGER, show_close_delay_interstitial_seconds INTEGER, show_countdown_delay_seconds INTEGER, cta_clickable_percent REAL, enable_cta_delay_seconds INTEGER, is_cta_enabled INTEGER, is_cta_shown_on_touch INTEGER, show_cta_delay_seconds INTEGER, checksum STRING, CONSTRAINT viewable_ad_type_uk UNIQUE (ad_id, type));");
        sQLiteDatabase.execSQL("CREATE TABLE viewable (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, type STRING NOT NULL, url STRING NOT NULL, status STRING NOT NULL, size INTEGER, width INTEGER, height INTEGER, show_close_delay_incentivized_seconds INTEGER, show_close_delay_interstitial_seconds INTEGER, show_countdown_delay_seconds INTEGER, cta_clickable_percent REAL, enable_cta_delay_seconds INTEGER, is_cta_enabled INTEGER, is_cta_shown_on_touch INTEGER, show_cta_delay_seconds INTEGER, checksum STRING, CONSTRAINT viewable_ad_type_uk UNIQUE (ad_id, type));");
        Logger.d(Logger.DATABASE_TAG, "creating table: archive_entry");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE archive_entry (id INTEGER PRIMARY KEY AUTOINCREMENT, viewable_id INTEGER NOT NULL REFERENCES viewable(id) ON DELETE CASCADE ON UPDATE CASCADE, relative_path STRING NOT NULL, size INTEGER, CONSTRAINT archive_entry_viewable_id_path_uk UNIQUE (id, relative_path));");
        sQLiteDatabase.execSQL("CREATE TABLE archive_entry (id INTEGER PRIMARY KEY AUTOINCREMENT, viewable_id INTEGER NOT NULL REFERENCES viewable(id) ON DELETE CASCADE ON UPDATE CASCADE, relative_path STRING NOT NULL, size INTEGER, CONSTRAINT archive_entry_viewable_id_path_uk UNIQUE (id, relative_path));");
        Logger.d(Logger.DATABASE_TAG, "creating table: event_tracking");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE event_tracking (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, event INTEGER NOT NULL, url STRING NOT NULL);");
        sQLiteDatabase.execSQL("CREATE TABLE event_tracking (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, event INTEGER NOT NULL, url STRING NOT NULL);");
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_report");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_report (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, incentivized_publisher_app_user_id STRING, is_incentivized INTEGER NOT NULL, placement STRING, status STRING NOT NULL, video_duration_millis INTEGER, view_end_millis INTEGER, view_start_millis INTEGER, download_end_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL);");
        sQLiteDatabase.execSQL("CREATE TABLE ad_report (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_id STRING NOT NULL REFERENCES ad(id) ON DELETE CASCADE ON UPDATE CASCADE, incentivized_publisher_app_user_id STRING, is_incentivized INTEGER NOT NULL, placement STRING, status STRING NOT NULL, video_duration_millis INTEGER, view_end_millis INTEGER, view_start_millis INTEGER, download_end_millis INTEGER, insert_timestamp_millis INTEGER NOT NULL, update_timestamp_millis INTEGER NOT NULL);");
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_play");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_play (id INTEGER PRIMARY KEY AUTOINCREMENT, report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, start_millis INTEGER, watched_millis INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE ad_play (id INTEGER PRIMARY KEY AUTOINCREMENT, report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, start_millis INTEGER, watched_millis INTEGER);");
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_report_event");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_report_event (id INTEGER PRIMARY KEY AUTOINCREMENT, play_id INTEGER NOT NULL REFERENCES ad_play(id) ON DELETE CASCADE ON UPDATE CASCADE, event STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL, value STRING);");
        sQLiteDatabase.execSQL("CREATE TABLE ad_report_event (id INTEGER PRIMARY KEY AUTOINCREMENT, play_id INTEGER NOT NULL REFERENCES ad_play(id) ON DELETE CASCADE ON UPDATE CASCADE, event STRING NOT NULL, insert_timestamp_millis INTEGER NOT NULL, value STRING);");
        Logger.d(Logger.DATABASE_TAG, "creating table: ad_report_extra");
        Logger.v(Logger.DATABASE_TAG, "CREATE TABLE ad_report_extra (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, name STRING, value STRING, CONSTRAINT ad_report_extra_id_name_uk UNIQUE (id, name));");
        sQLiteDatabase.execSQL("CREATE TABLE ad_report_extra (id INTEGER PRIMARY KEY AUTOINCREMENT, ad_report_id INTEGER NOT NULL REFERENCES ad_report(id) ON DELETE CASCADE ON UPDATE CASCADE, name STRING, value STRING, CONSTRAINT ad_report_extra_id_name_uk UNIQUE (id, name));");
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Logger.d(Logger.DATABASE_TAG, new StringBuilder("downgrading databse version ").append(i).append(" --> ").append(i2).toString());
        a(sQLiteDatabase);
    }

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        Logger.d(Logger.DATABASE_TAG, "enabling foreign keys");
        sQLiteDatabase.execSQL("PRAGMA foreign_keys = true");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Logger.d(Logger.DATABASE_TAG, new StringBuilder("upgrading database version ").append(i).append(" --> ").append(i2).toString());
        a(sQLiteDatabase);
    }
}