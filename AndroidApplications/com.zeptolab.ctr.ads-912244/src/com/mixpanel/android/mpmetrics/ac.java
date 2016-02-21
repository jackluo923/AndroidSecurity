package com.mixpanel.android.mpmetrics;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ac implements Creator {
    ac() {
    }

    public SurveyState a(Parcel parcel) {
        Bundle bundle = new Bundle(SurveyState.class.getClassLoader());
        bundle.readFromParcel(parcel);
        return new SurveyState(null);
    }

    public SurveyState[] a(int i) {
        return new SurveyState[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}