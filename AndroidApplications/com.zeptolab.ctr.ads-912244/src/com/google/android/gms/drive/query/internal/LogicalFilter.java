package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LogicalFilter implements SafeParcelable, Filter {
    public static final Creator CREATOR;
    private List EN;
    final Operator EO;
    final List EY;
    final int wj;

    static {
        CREATOR = new f();
    }

    LogicalFilter(int i, Operator operator, List list) {
        this.wj = i;
        this.EO = operator;
        this.EY = list;
    }

    public LogicalFilter(Operator operator, Filter filter, Filter... filterArr) {
        this.wj = 1;
        this.EO = operator;
        this.EY = new ArrayList(filterArr.length + 1);
        this.EY.add(new FilterHolder(filter));
        this.EN = new ArrayList(filterArr.length + 1);
        this.EN.add(filter);
        int length = filterArr.length;
        int i = 0;
        while (i < length) {
            Filter filter2 = filterArr[i];
            this.EY.add(new FilterHolder(filter2));
            this.EN.add(filter2);
            i++;
        }
    }

    public LogicalFilter(Operator operator, Iterable iterable) {
        this.wj = 1;
        this.EO = operator;
        this.EN = new ArrayList();
        this.EY = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Filter filter = (Filter) it.next();
            this.EN.add(filter);
            this.EY.add(new FilterHolder(filter));
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}