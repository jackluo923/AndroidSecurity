package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.ArrayList;
import java.util.List;

public class Query implements SafeParcelable {
    public static final Creator CREATOR;
    LogicalFilter EL;
    String EM;
    final int wj;

    public static class Builder {
        private String EM;
        private final List EN;

        public Builder() {
            this.EN = new ArrayList();
        }

        public com.google.android.gms.drive.query.Query.Builder addFilter(Filter filter) {
            this.EN.add(filter);
            return this;
        }

        public Query build() {
            return new Query(new LogicalFilter(Operator.Ff, this.EN), this.EM);
        }

        public com.google.android.gms.drive.query.Query.Builder setPageToken(String str) {
            this.EM = str;
            return this;
        }
    }

    static {
        CREATOR = new a();
    }

    Query(int i, LogicalFilter logicalFilter, String str) {
        this.wj = i;
        this.EL = logicalFilter;
        this.EM = str;
    }

    Query(LogicalFilter logicalFilter, String str) {
        this(1, logicalFilter, str);
    }

    public int describeContents() {
        return 0;
    }

    public Filter getFilter() {
        return this.EL;
    }

    public String getPageToken() {
        return this.EM;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}