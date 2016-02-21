package com.yanex.emoticons;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public final class b {
    private SQLiteDatabase a;

    public b(Context context) {
        boolean z = 0;
        try {
            String[] databaseList = context.databaseList();
            if (databaseList != null) {
                int i = 0;
                while (i < databaseList.length) {
                    if (databaseList[i].equals("EMOTICONSDB")) {
                        z = 1;
                    }
                    i++;
                }
            }
            this.a = context.openOrCreateDatabase("EMOTICONSDB", 0, null);
            if (i == 0) {
                this.a.execSQL("create table SETTINGS(_id integer primary key autoincrement, name text not null,value text);");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final String a(String str) {
        String string;
        Cursor cursor = null;
        try {
            query = this.a.query("SETTINGS", new String[]{"value"}, new StringBuilder("name=\"").append(str).append("\"").toString(), null, null, null, null);
            try {
                if (query.getCount() > 0) {
                    query.moveToPosition(0);
                    string = query.getString(0);
                    if (!(query == null || query.isClosed())) {
                        query.close();
                    }
                } else {
                    string = "";
                    if (!(query == null || query.isClosed())) {
                        query.close();
                    }
                }
            } catch (Exception e) {
                exception = e;
                exception.printStackTrace();
                string = "";
                if (!(query == null || query.isClosed())) {
                    query.close();
                }
                return string;
            }
        } catch (Exception e2) {
            exception = e2;
            query = cursor;
            try {
                Cursor query2;
                Exception exception2;
                exception2.printStackTrace();
                string = "";
                query2.close();
            } catch (Throwable th) {
                th = th;
                cursor = query2;
                if (!(cursor == null || cursor.isClosed())) {
                    cursor.close();
                }
                throw th;
            }
            return string;
        } catch (Throwable th2) {
            Throwable th3 = th2;
            cursor.close();
            throw th3;
        }
        return string;
    }

    public final void a() {
        try {
            this.a.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void a(String str, String str2) {
        Cursor query;
        Cursor cursor = null;
        try {
            query = this.a.query("SETTINGS", new String[]{"name", "value"}, new StringBuilder("name=\"").append(str).append("\"").toString(), null, null, null, null);
            try {
                ContentValues contentValues;
                if (query.getCount() > 0) {
                    contentValues = new ContentValues();
                    contentValues.put("value", str2);
                    this.a.update("SETTINGS", contentValues, new StringBuilder("name=\"").append(str).append("\"").toString(), null);
                } else {
                    contentValues = new ContentValues();
                    contentValues.put("name", str);
                    contentValues.put("value", str2);
                    this.a.insert("SETTINGS", null, contentValues);
                }
                if (query != null && !query.isClosed()) {
                    query.close();
                }
            } catch (Exception e) {
                exception = e;
                try {
                    exception.printStackTrace();
                    if (query != null && !query.isClosed()) {
                        query.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    query.close();
                    throw th;
                }
            }
        } catch (Exception e2) {
            Exception exception2;
            exception2 = e2;
            query = cursor;
            exception2.printStackTrace();
        } catch (Throwable th2) {
            Throwable th3;
            th3 = th2;
            query = cursor;
            if (!(query == null || query.isClosed())) {
                query.close();
            }
            throw th3;
        }
    }
}