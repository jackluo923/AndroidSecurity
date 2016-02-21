package com.tic_mobile.android.connectfour;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.provider.BaseColumns;
import android.text.TextUtils;
import com.tic_mobile.android.connectfour.game.GameState;
import java.util.HashMap;

public class GamesProvider extends ContentProvider {
    private static final String AUTHORITY = "com.tic_mobile.android.connectfour";
    private static final String DATABASE_NAME = "connectfour.db";
    private static final int DATABASE_VERSION = 1;
    private static final int GAMES = 1;
    private static final int GAME_ID = 2;
    private static HashMap<String, String> projectionMap;
    private static final UriMatcher uriMatcher;
    private DatabaseHelper openHelper;

    private static class DatabaseHelper extends SQLiteOpenHelper {
        DatabaseHelper(Context context) {
            super(context, DATABASE_NAME, null, 1);
        }

        public void onCreate(SQLiteDatabase database) {
            database.execSQL("CREATE TABLE Games (_id INTEGER PRIMARY KEY,Depth INTEGER,Error INTEGER,Result INTEGER,Played INTEGER);");
        }

        public void onUpgrade(SQLiteDatabase database, int oldVersion, int newVersion) {
            database.execSQL("DROP TABLE IF EXISTS Games");
            onCreate(database);
        }
    }

    public static final class GameColumns implements BaseColumns {
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/vnd.tic_mobile.game";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/vnd.tic_mobile.game";
        public static final Uri CONTENT_URI;
        public static final String DEFAULT_SORT_ORDER = "Played ASC";
        public static final String DEPTH = "Depth";
        public static final String ERROR = "Error";
        public static final String PLAYED = "Played";
        public static final String RESULT = "Result";
        public static final String TABLE = "Games";

        static {
            CONTENT_URI = Uri.parse("content://com.tic_mobile.android.connectfour/games");
        }

        private GameColumns() {
        }
    }

    static {
        String str = "_id";
        String str2 = GameColumns.RESULT;
        String str3 = GameColumns.PLAYED;
        String str4 = GameColumns.ERROR;
        String str5 = GameColumns.DEPTH;
        uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI(AUTHORITY, "games", GAMES);
        uriMatcher.addURI(AUTHORITY, "games/#", GAME_ID);
        projectionMap = new HashMap();
        String str6 = "_id";
        str6 = "_id";
        projectionMap.put(str, str);
        HashMap hashMap = projectionMap;
        str6 = GameColumns.DEPTH;
        str6 = GameColumns.DEPTH;
        hashMap.put(str5, str5);
        hashMap = projectionMap;
        str6 = GameColumns.ERROR;
        str6 = GameColumns.ERROR;
        hashMap.put(str4, str4);
        hashMap = projectionMap;
        str6 = GameColumns.RESULT;
        str6 = GameColumns.RESULT;
        hashMap.put(str2, str2);
        hashMap = projectionMap;
        str6 = GameColumns.PLAYED;
        str6 = GameColumns.PLAYED;
        hashMap.put(str3, str3);
    }

    public int delete(Uri uri, String where, String[] whereArgs) {
        int count;
        String str = GameColumns.TABLE;
        SQLiteDatabase db = this.openHelper.getWritableDatabase();
        String str2;
        switch (uriMatcher.match(uri)) {
            case GAMES:
                str2 = GameColumns.TABLE;
                count = db.delete(str, where, whereArgs);
                break;
            case GAME_ID:
                String gameId = (String) uri.getPathSegments().get(GAMES);
                str2 = GameColumns.TABLE;
                count = db.delete(str, "_id=" + gameId + (TextUtils.isEmpty(where) ? "" : " AND (" + where + ')'), whereArgs);
                break;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
        getContext().getContentResolver().notifyChange(uri, null);
        return count;
    }

    public String getType(Uri uri) {
        switch (uriMatcher.match(uri)) {
            case GAMES:
                return GameColumns.CONTENT_TYPE;
            case GAME_ID:
                return GameColumns.CONTENT_ITEM_TYPE;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
    }

    public Uri insert(Uri uri, ContentValues initialValues) {
        String str = GameColumns.PLAYED;
        String str2 = GameColumns.ERROR;
        String str3 = GameColumns.DEPTH;
        if (uriMatcher.match(uri) != 1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        ContentValues values;
        values = initialValues != null ? new ContentValues(initialValues) : new ContentValues();
        Long now = Long.valueOf(System.currentTimeMillis());
        String str4 = GameColumns.DEPTH;
        if (!values.containsKey(str3)) {
            str4 = GameColumns.DEPTH;
            values.put(str3, new Integer(0));
        }
        str4 = GameColumns.ERROR;
        if (!values.containsKey(str2)) {
            str4 = GameColumns.ERROR;
            values.put(str2, new Integer(0));
        }
        if (!values.containsKey(GameColumns.RESULT)) {
            values.put(GameColumns.RESULT, new Integer(GameState.DRAW.getStateValue()));
        }
        str4 = GameColumns.PLAYED;
        if (!values.containsKey(str)) {
            str4 = GameColumns.PLAYED;
            values.put(str, now);
        }
        long rowId = this.openHelper.getWritableDatabase().insert(GameColumns.TABLE, null, values);
        if (rowId > 0) {
            Uri gamesUri = ContentUris.withAppendedId(GameColumns.CONTENT_URI, rowId);
            getContext().getContentResolver().notifyChange(gamesUri, null);
            return gamesUri;
        } else {
            throw new SQLException("Failed to insert row into " + uri);
        }
    }

    public boolean onCreate() {
        this.openHelper = new DatabaseHelper(getContext());
        return true;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        String str = GameColumns.TABLE;
        SQLiteQueryBuilder queryBuilder = new SQLiteQueryBuilder();
        String str2;
        switch (uriMatcher.match(uri)) {
            case GAMES:
                str2 = GameColumns.TABLE;
                queryBuilder.setTables(str);
                queryBuilder.setProjectionMap(projectionMap);
                break;
            case GAME_ID:
                str2 = GameColumns.TABLE;
                queryBuilder.setTables(str);
                queryBuilder.setProjectionMap(projectionMap);
                queryBuilder.appendWhere("_id=" + ((String) uri.getPathSegments().get(GAMES)));
                break;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
        Cursor cursor = queryBuilder.query(this.openHelper.getReadableDatabase(), projection, selection, selectionArgs, null, null, TextUtils.isEmpty(sortOrder) ? GameColumns.DEFAULT_SORT_ORDER : sortOrder);
        cursor.setNotificationUri(getContext().getContentResolver(), uri);
        return cursor;
    }

    public int update(Uri uri, ContentValues values, String where, String[] whereArgs) {
        int count;
        String str = GameColumns.TABLE;
        SQLiteDatabase db = this.openHelper.getWritableDatabase();
        String str2;
        switch (uriMatcher.match(uri)) {
            case GAMES:
                str2 = GameColumns.TABLE;
                count = db.update(str, values, where, whereArgs);
                break;
            case GAME_ID:
                String gameId = (String) uri.getPathSegments().get(GAMES);
                str2 = GameColumns.TABLE;
                count = db.update(str, values, "_id=" + gameId + (TextUtils.isEmpty(where) ? "" : " AND (" + where + ')'), whereArgs);
                break;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
        getContext().getContentResolver().notifyChange(uri, null);
        return count;
    }
}