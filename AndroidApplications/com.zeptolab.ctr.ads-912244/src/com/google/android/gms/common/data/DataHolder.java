package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.AbstractWindowedCursor;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.er;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class DataHolder implements SafeParcelable {
    private static final Builder Ai;
    public static final DataHolderCreator CREATOR;
    private final String[] Aa;
    Bundle Ab;
    private final CursorWindow[] Ac;
    private final Bundle Ad;
    int[] Ae;
    int Af;
    private Object Ag;
    private boolean Ah;
    boolean mClosed;
    private final int wj;
    private final int yJ;

    public static class Builder {
        private final String[] Aa;
        private final ArrayList Aj;
        private final String Ak;
        private final HashMap Al;
        private boolean Am;
        private String An;

        private Builder(String[] strArr, String str) {
            this.Aa = (String[]) er.f(strArr);
            this.Aj = new ArrayList();
            this.Ak = str;
            this.Al = new HashMap();
            this.Am = false;
            this.An = null;
        }

        private void a(HashMap hashMap) {
            Object obj = hashMap.get(this.Ak);
            if (obj != null) {
                Integer num = (Integer) this.Al.remove(obj);
                if (num != null) {
                    this.Aj.remove(num.intValue());
                }
                this.Al.put(obj, Integer.valueOf(this.Aj.size()));
            }
        }

        private void dJ() {
            if (this.Ak != null) {
                this.Al.clear();
                int size = this.Aj.size();
                int i = 0;
                while (i < size) {
                    Object obj = ((HashMap) this.Aj.get(i)).get(this.Ak);
                    if (obj != null) {
                        this.Al.put(obj, Integer.valueOf(i));
                    }
                    i++;
                }
            }
        }

        public DataHolder build(int i) {
            return new DataHolder((com.google.android.gms.common.data.DataHolder.Builder)i, (int)null, (Bundle)null);
        }

        public DataHolder build(int i, Bundle bundle) {
            return new DataHolder((com.google.android.gms.common.data.DataHolder.Builder)i, (int)bundle, (Bundle)-1, (int)null);
        }

        public DataHolder build(int i, Bundle bundle, int i2) {
            return new DataHolder((com.google.android.gms.common.data.DataHolder.Builder)i, (int)bundle, (Bundle)i2, (int)null);
        }

        public int getCount() {
            return this.Aj.size();
        }

        public com.google.android.gms.common.data.DataHolder.Builder removeRowsWithValue(String str, Object obj) {
            int i = this.Aj.size() - 1;
            while (i >= 0) {
                if (ep.equal(((HashMap) this.Aj.get(i)).get(str), obj)) {
                    this.Aj.remove(i);
                }
                i--;
            }
            return this;
        }

        public com.google.android.gms.common.data.DataHolder.Builder sort(String str) {
            ed.d(str);
            if (!(this.Am && str.equals(this.An))) {
                Collections.sort(this.Aj, new a(str));
                dJ();
                this.Am = true;
                this.An = str;
            }
            return this;
        }

        public com.google.android.gms.common.data.DataHolder.Builder withRow(ContentValues contentValues) {
            ed.d(contentValues);
            HashMap hashMap = new HashMap(contentValues.size());
            Iterator it = contentValues.valueSet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return withRow(hashMap);
        }

        public com.google.android.gms.common.data.DataHolder.Builder withRow(HashMap hashMap) {
            ed.d(hashMap);
            if (this.Ak != null) {
                a(hashMap);
            }
            this.Aj.add(hashMap);
            this.Am = false;
            return this;
        }
    }

    final class AnonymousClass_1 extends com.google.android.gms.common.data.DataHolder.Builder {
        AnonymousClass_1(String[] strArr, String str) {
            super(str, null);
        }

        public com.google.android.gms.common.data.DataHolder.Builder withRow(ContentValues contentValues) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

        public com.google.android.gms.common.data.DataHolder.Builder withRow(HashMap hashMap) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }
    }

    private static final class a implements Comparator {
        private final String Ao;

        a(String str) {
            this.Ao = (String) er.f(str);
        }

        public int a_(HashMap hashMap, HashMap hashMap2) {
            Object f = er.f(hashMap.get(this.Ao));
            Object f2 = er.f(hashMap2.get(this.Ao));
            if (f.equals(f2)) {
                return 0;
            }
            if (f instanceof Boolean) {
                return ((Boolean) f).compareTo((Boolean) f2);
            }
            if (f instanceof Long) {
                return ((Long) f).compareTo((Long) f2);
            }
            if (f instanceof Integer) {
                return ((Integer) f).compareTo((Integer) f2);
            }
            if (f instanceof String) {
                return ((String) f).compareTo((String) f2);
            }
            throw new IllegalArgumentException("Unknown type for lValue " + f);
        }

        public /* synthetic */ int compare(Object obj, Object obj2) {
            return a((HashMap) obj, (HashMap) obj2);
        }
    }

    static {
        CREATOR = new DataHolderCreator();
        Ai = new AnonymousClass_1(new String[0], null);
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.Ah = true;
        this.wj = i;
        this.Aa = strArr;
        this.Ac = cursorWindowArr;
        this.yJ = i2;
        this.Ad = bundle;
    }

    public DataHolder(AbstractWindowedCursor abstractWindowedCursor, int i, Bundle bundle) {
        this(abstractWindowedCursor.getColumnNames(), a(abstractWindowedCursor), i, bundle);
    }

    private DataHolder(Builder builder, int i, Bundle bundle) {
        this(builder.Aa, a(builder, -1), i, bundle);
    }

    private DataHolder(Builder builder, int i, Bundle bundle, int i2) {
        this(builder.Aa, a(builder, i2), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.Ah = true;
        this.wj = 1;
        this.Aa = (String[]) er.f(strArr);
        this.Ac = (CursorWindow[]) er.f(cursorWindowArr);
        this.yJ = i;
        this.Ad = bundle;
        validateContents();
    }

    private static CursorWindow[] a(AbstractWindowedCursor abstractWindowedCursor) {
        int i;
        ArrayList arrayList = new ArrayList();
        int count = abstractWindowedCursor.getCount();
        CursorWindow window = abstractWindowedCursor.getWindow();
        if (window == null || window.getStartPosition() != 0) {
            i = 0;
        } else {
            window.acquireReference();
            abstractWindowedCursor.setWindow(null);
            arrayList.add(window);
            i = window.getNumRows();
        }
        while (i < count && abstractWindowedCursor.moveToPosition(i)) {
            CursorWindow window2 = abstractWindowedCursor.getWindow();
            if (window2 != null) {
                window2.acquireReference();
                abstractWindowedCursor.setWindow(null);
            } else {
                window2 = new CursorWindow(false);
                window2.setStartPosition(i);
                abstractWindowedCursor.fillWindow(i, window2);
            }
            if (window2.getNumRows() == 0) {
                break;
            }
            arrayList.add(window2);
            i = window2.getNumRows() + window2.getStartPosition();
        }
        abstractWindowedCursor.close();
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    private static CursorWindow[] a(Builder builder, int i) {
        int i2 = 0;
        if (builder.Aa.length == 0) {
            return new CursorWindow[0];
        }
        List list;
        if (i < 0 || i >= builder.Aj.size()) {
            ArrayList arrayList = builder.Aj;
        } else {
            list = builder.Aj.subList(0, i);
        }
        int size = list.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(builder.Aa.length);
        int i3 = 0;
        boolean z = false;
        while (i3 < size) {
            try {
                int i4;
                int i5;
                CursorWindow cursorWindow2;
                if (cursorWindow.allocRow()) {
                    i4 = i5;
                } else {
                    Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + i3 + ")");
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i3);
                    cursorWindow.setNumColumns(builder.Aa.length);
                    arrayList2.add(cursorWindow);
                    if (cursorWindow.allocRow()) {
                        i4 = 0;
                    } else {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = (Map) list.get(i3);
                boolean z2 = true;
                int i6 = 0;
                while (i6 < builder.Aa.length && z2) {
                    String str = builder.Aa[i6];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z2 = cursorWindow.putNull(i4, i6);
                    } else if (obj instanceof String) {
                        z2 = cursorWindow.putString((String) obj, i4, i6);
                    } else if (obj instanceof Long) {
                        z2 = cursorWindow.putLong(((Long) obj).longValue(), i4, i6);
                    } else if (obj instanceof Integer) {
                        z2 = cursorWindow.putLong((long) ((Integer) obj).intValue(), i4, i6);
                    } else if (obj instanceof Boolean) {
                        z2 = cursorWindow.putLong(((Boolean) obj).booleanValue() ? 1 : 0, i4, i6);
                    } else if (obj instanceof byte[]) {
                        z2 = cursorWindow.putBlob((byte[]) obj, i4, i6);
                    } else {
                        throw new IllegalArgumentException("Unsupported object for column " + str + ": " + obj);
                    }
                    i6++;
                }
                if (z2) {
                    int i7 = i4 + 1;
                    i5 = i3;
                    cursorWindow2 = cursorWindow;
                } else {
                    Log.d("DataHolder", "Couldn't populate window data for row " + i3 + " - allocating new window.");
                    cursorWindow.freeLastRow();
                    CursorWindow cursorWindow3 = new CursorWindow(false);
                    cursorWindow3.setNumColumns(builder.Aa.length);
                    arrayList2.add(cursorWindow3);
                    i5 = i3 - 1;
                    cursorWindow2 = cursorWindow3;
                    z2 = false;
                }
                cursorWindow = cursorWindow2;
                i3 = i5 + 1;
                z = z2;
            } catch (RuntimeException e) {
                RuntimeException runtimeException = e;
                size = arrayList2.size();
                int size2;
                while (i2 < size2) {
                    ((CursorWindow) arrayList2.get(i2)).close();
                    i2++;
                }
                throw runtimeException;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    public static Builder builder(String[] strArr) {
        return new Builder(null, null);
    }

    public static Builder builder(String[] strArr, String str) {
        er.f(str);
        return new Builder(str, null);
    }

    private void e(String str, int i) {
        if (this.Ab == null || !this.Ab.containsKey(str)) {
            throw new IllegalArgumentException("No such column: " + str);
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.Af) {
            throw new CursorIndexOutOfBoundsException(i, this.Af);
        }
    }

    public static DataHolder empty(int i) {
        return empty(i, null);
    }

    public static DataHolder empty(int i, Bundle bundle) {
        return new DataHolder(Ai, i, bundle);
    }

    public int I(int i) {
        boolean z;
        int i2 = 0;
        z = i >= 0 && i < this.Af;
        er.v(z);
        while (i2 < this.Ae.length) {
            if (i < this.Ae[i2]) {
                i2--;
                break;
            } else {
                i2++;
            }
        }
        return i2 == this.Ae.length ? i2 - 1 : i2;
    }

    public void c(Object obj) {
        this.Ag = obj;
    }

    public void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                int i = 0;
                while (i < this.Ac.length) {
                    this.Ac[i].close();
                    i++;
                }
            }
        }
    }

    public void copyToBuffer(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        e(str, i);
        this.Ac[i2].copyStringToBuffer(i, this.Ab.getInt(str), charArrayBuffer);
    }

    String[] dH() {
        return this.Aa;
    }

    CursorWindow[] dI() {
        return this.Ac;
    }

    public int describeContents() {
        return 0;
    }

    protected void finalize() {
        if (this.Ah && this.Ac.length > 0 && !isClosed()) {
            Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call close() on all DataBuffer extending objects when you are done with them. (" + (this.Ag == null ? "internal object: " + toString() : this.Ag.toString()) + ")");
            close();
        }
        super.finalize();
    }

    public boolean getBoolean(String str, int i, int i2) {
        e(str, i);
        return Long.valueOf(this.Ac[i2].getLong(i, this.Ab.getInt(str))).longValue() == 1;
    }

    public byte[] getByteArray(String str, int i, int i2) {
        e(str, i);
        return this.Ac[i2].getBlob(i, this.Ab.getInt(str));
    }

    public int getCount() {
        return this.Af;
    }

    public int getInteger(String str, int i, int i2) {
        e(str, i);
        return this.Ac[i2].getInt(i, this.Ab.getInt(str));
    }

    public long getLong(String str, int i, int i2) {
        e(str, i);
        return this.Ac[i2].getLong(i, this.Ab.getInt(str));
    }

    public Bundle getMetadata() {
        return this.Ad;
    }

    public int getStatusCode() {
        return this.yJ;
    }

    public String getString(String str, int i, int i2) {
        e(str, i);
        return this.Ac[i2].getString(i, this.Ab.getInt(str));
    }

    int getVersionCode() {
        return this.wj;
    }

    public boolean hasColumn(String str) {
        return this.Ab.containsKey(str);
    }

    public boolean hasNull(String str, int i, int i2) {
        e(str, i);
        return this.Ac[i2].isNull(i, this.Ab.getInt(str));
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    public Uri parseUri(String str, int i, int i2) {
        String string = getString(str, i, i2);
        return string == null ? null : Uri.parse(string);
    }

    public void validateContents() {
        int i = 0;
        this.Ab = new Bundle();
        int i2 = 0;
        while (i2 < this.Aa.length) {
            this.Ab.putInt(this.Aa[i2], i2);
            i2++;
        }
        this.Ae = new int[this.Ac.length];
        i2 = 0;
        while (i < this.Ac.length) {
            this.Ae[i] = i2;
            i2 += this.Ac[i].getNumRows() - i2 - this.Ac[i].getStartPosition();
            i++;
        }
        this.Af = i2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        DataHolderCreator.a(this, parcel, i);
    }
}