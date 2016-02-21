package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.db.DatabaseHelper;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;

public abstract class ak {
    public Class p;
    public Object q;
    @Inject
    public DatabaseHelper r;

    public static abstract class a {
        @Inject
        public DatabaseHelper b;

        public static void a_(ak... akVarArr) {
            if (akVarArr != null) {
                int length = akVarArr.length;
                int i = 0;
                while (i < length) {
                    akVarArr[i].o();
                    i++;
                }
            }
        }

        public int a_(List list) {
            ?[] Arr;
            int i = 0;
            if (list == null) {
                Arr = null;
            } else {
                ak[] akVarArr = (ak[]) list.toArray(c(list.size()));
            }
            Object[] b = b(Arr == null ? 0 : Arr.length);
            int length = Arr.length;
            int i2 = 0;
            while (i < length) {
                int i3 = i2 + 1;
                b[i2] = Arr[i].p();
                i++;
                i2 = i3;
            }
            return a(b);
        }

        public final int a_(Object... objArr) {
            int i = 0;
            int length = objArr == null ? 0 : objArr.length;
            if (length <= 0) {
                return 0;
            }
            String[] strArr;
            int i2;
            ak b_ = b_();
            boolean z = objArr instanceof String[];
            strArr = z ? (String[]) objArr : new String[length];
            if (!z) {
                int length2 = objArr.length;
                i2 = 0;
                while (i < length2) {
                    int i3 = i2 + 1;
                    strArr[i2] = String.valueOf(objArr[i]);
                    i++;
                    i2 = i3;
                }
            }
            i2 = this.b.getWritableDatabase().delete(b_.b(), ak.u() + " IN (" + ai.a(length) + ")", strArr);
            if (i2 == length) {
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("deleted ").append(i2).append(" ").append(b_.b()).append(" records by ").append(ak.u()).append(" ").append(cd.b(objArr)).toString());
                return i2;
            } else {
                Logger.w(Logger.DATABASE_TAG, new StringBuilder("deleted ").append(i2).append(" of ").append(length).append(" requested records by ").append(ak.u()).append(" ").append(cd.b(objArr)).toString());
                return i2;
            }
        }

        public abstract ak a_(ak akVar, Cursor cursor, boolean z);

        protected final ak a_(ak akVar, String str, String[] strArr, boolean z) {
            if (akVar == null) {
                throw new IllegalArgumentException("null model");
            }
            String u = ak.u();
            Object p = akVar.p();
            if (p == null) {
                throw new IllegalArgumentException(new StringBuilder("null ").append(u).toString());
            }
            String b = akVar.b();
            String str2 = u + " = ?";
            ArrayList arrayList = new ArrayList(Arrays.asList(new String[]{p.toString()}));
            if (str != null) {
                str2 = str2 + str;
                if (strArr != null) {
                    arrayList.addAll(Arrays.asList(strArr));
                }
            }
            List a = a(b, str2, (String[]) arrayList.toArray(new String[arrayList.size()]), null, z);
            str2 = u + " " + p;
            int size = a.size();
            switch (size) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    return null;
                case GoogleScorer.CLIENT_GAMES:
                    return (ak) a.get(0);
                default:
                    throw new SQLException(size + " " + b + " records found for " + str2);
            }
        }

        public final ak a_(Object obj, String str, String[] strArr, boolean z) {
            ak b_ = b_();
            b_.a(obj);
            return a(b_, str, strArr, z);
        }

        public final ak a_(Object obj, boolean z) {
            return a(obj, null, null, z);
        }

        public final List a_(String str, String str2, String[] strArr, String str3) {
            return a(str, str2, strArr, str3, false);
        }

        public final List a_(String str, String str2, String[] strArr, String str3, boolean z) {
            Cursor query;
            Throwable th;
            try {
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetching ").append(str2 == null ? new StringBuilder("all ").append(str).append(" records").toString() : str + " records by " + str2 + " " + cd.b(strArr)).toString());
                query = this.b.getReadableDatabase().query(str, null, str2, strArr, null, null, str3, null);
                try {
                    int count = query.getCount();
                    Logger.v(Logger.DATABASE_TAG, (count == 0 ? "no " : new StringBuilder("fetched ").append(count).append(" ").toString()) + str + " records by " + str2 + " " + cd.b(strArr));
                    List arrayList = new ArrayList(count);
                    while (query.moveToNext()) {
                        arrayList.add(b(b_(), query, z));
                    }
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                query = null;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }

        public final ak b(ak akVar, Cursor cursor, boolean z) {
            a(akVar, cursor, z);
            Logger.v(Logger.DATABASE_TAG, new StringBuilder("fetched ").append(akVar).toString());
            return akVar;
        }

        public abstract Object[] b(int i);

        public abstract ak b_();

        public abstract ak[] c(int i);
    }

    protected static String u() {
        return AnalyticsEvent.EVENT_ID;
    }

    public abstract ContentValues a(boolean z);

    protected final void a(Object obj) {
        this.q = obj;
    }

    public abstract a a_();

    public abstract String b();

    public boolean c() {
        return true;
    }

    public int l() {
        String str = AnalyticsEvent.EVENT_ID;
        Object p = p();
        if (p == null) {
            throw new IllegalArgumentException(new StringBuilder("null ").append(str).toString());
        }
        String b = b();
        String str2 = str + " " + p;
        int updateWithOnConflict = this.r.getWritableDatabase().updateWithOnConflict(b, a(false), "id = ?", new String[]{p.toString()}, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        switch (updateWithOnConflict) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("no ").append(b).append(" rows updated by ").append(str2).toString());
                break;
            case GoogleScorer.CLIENT_GAMES:
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("update successful ").append(x()).toString());
                break;
            default:
                Logger.w(Logger.DATABASE_TAG, new StringBuilder("updated ").append(updateWithOnConflict).append(" ").append(b).append(" records for ").append(str2).toString());
                break;
        }
        return updateWithOnConflict;
    }

    public StringBuilder m() {
        return new StringBuilder("{").append(y()).append(":: id: ").append(p());
    }

    public StringBuilder n() {
        return m();
    }

    public Object o() {
        Object p = p();
        if (!c() || p == null) {
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("inserting ").append(this).toString());
            long insertOrThrow = this.r.getWritableDatabase().insertOrThrow(b(), null, a(true));
            if (this.p == null || Integer.class.equals(this.p)) {
                this.q = Integer.valueOf((int) insertOrThrow);
            } else if (Long.class.equals(this.p)) {
                this.q = Long.valueOf(insertOrThrow);
            }
            Logger.v(Logger.DATABASE_TAG, new StringBuilder("inserted ").append(this).toString());
            return p();
        } else {
            throw new SQLException(new StringBuilder("attempt to insert with non-auto generated id ").append(x()).toString());
        }
    }

    public Object p() {
        return this.q;
    }

    public String toString() {
        return n() + "}";
    }

    public final void v() {
        a_().a(this, null, null, false);
    }

    public final Object w() {
        Object p = p();
        if (p == null) {
            return o();
        }
        l();
        return p;
    }

    public final String x() {
        return m() + "}";
    }

    public String y() {
        return b();
    }
}