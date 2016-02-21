package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.er;

public final class NotifyTransactionStatusRequest implements SafeParcelable {
    public static final Creator CREATOR;
    String Yk;
    String Zk;
    int status;
    final int wj;

    public final class Builder {
        private Builder() {
        }

        public NotifyTransactionStatusRequest build() {
            boolean z = true;
            er.b(!TextUtils.isEmpty(NotifyTransactionStatusRequest.this.Yk), (Object)"googleTransactionId is required");
            if (NotifyTransactionStatusRequest.this.status < 1 || NotifyTransactionStatusRequest.this.status > 8) {
                z = false;
            }
            er.b(z, (Object)"status is an unrecognized value");
            return NotifyTransactionStatusRequest.this;
        }

        public com.google.android.gms.wallet.NotifyTransactionStatusRequest.Builder setDetailedReason(String str) {
            NotifyTransactionStatusRequest.this.Zk = str;
            return this;
        }

        public com.google.android.gms.wallet.NotifyTransactionStatusRequest.Builder setGoogleTransactionId(String str) {
            NotifyTransactionStatusRequest.this.Yk = str;
            return this;
        }

        public com.google.android.gms.wallet.NotifyTransactionStatusRequest.Builder setStatus(int i) {
            NotifyTransactionStatusRequest.this.status = i;
            return this;
        }
    }

    public static interface Status {
        public static final int SUCCESS = 1;

        public static interface Error {
            public static final int AVS_DECLINE = 7;
            public static final int BAD_CARD = 4;
            public static final int BAD_CVC = 3;
            public static final int DECLINED = 5;
            public static final int FRAUD_DECLINE = 8;
            public static final int OTHER = 6;
            public static final int UNKNOWN = 2;
        }
    }

    static {
        CREATOR = new m();
    }

    NotifyTransactionStatusRequest() {
        this.wj = 1;
    }

    NotifyTransactionStatusRequest(int i, String str, int i2, String str2) {
        this.wj = i;
        this.Yk = str;
        this.status = i2;
        this.Zk = str2;
    }

    public static Builder newBuilder() {
        NotifyTransactionStatusRequest notifyTransactionStatusRequest = new NotifyTransactionStatusRequest();
        notifyTransactionStatusRequest.getClass();
        return new Builder(null);
    }

    public int describeContents() {
        return 0;
    }

    public String getDetailedReason() {
        return this.Zk;
    }

    public String getGoogleTransactionId() {
        return this.Yk;
    }

    public int getStatus() {
        return this.status;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        m.a(this, parcel, i);
    }
}