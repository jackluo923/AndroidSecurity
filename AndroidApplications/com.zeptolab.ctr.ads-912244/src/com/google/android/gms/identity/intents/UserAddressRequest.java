package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class UserAddressRequest implements SafeParcelable {
    public static final Creator CREATOR;
    List Ky;
    private final int wj;

    public final class Builder {
        private Builder() {
        }

        public com.google.android.gms.identity.intents.UserAddressRequest.Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (UserAddressRequest.this.Ky == null) {
                UserAddressRequest.this.Ky = new ArrayList();
            }
            UserAddressRequest.this.Ky.add(countrySpecification);
            return this;
        }

        public com.google.android.gms.identity.intents.UserAddressRequest.Builder addAllowedCountrySpecifications(Collection collection) {
            if (UserAddressRequest.this.Ky == null) {
                UserAddressRequest.this.Ky = new ArrayList();
            }
            UserAddressRequest.this.Ky.addAll(collection);
            return this;
        }

        public UserAddressRequest build() {
            if (UserAddressRequest.this.Ky != null) {
                UserAddressRequest.this.Ky = Collections.unmodifiableList(UserAddressRequest.this.Ky);
            }
            return UserAddressRequest.this;
        }
    }

    static {
        CREATOR = new a();
    }

    UserAddressRequest() {
        this.wj = 1;
    }

    UserAddressRequest(int i, List list) {
        this.wj = i;
        this.Ky = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return new Builder(null);
    }

    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}