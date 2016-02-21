package com.mixpanel.android.mpmetrics;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.mixpanel.android.mpmetrics.SurveyState.AnswerMap;
import java.util.Iterator;

final class ad implements Creator {
    ad() {
    }

    public AnswerMap a(Parcel parcel) {
        Bundle bundle = new Bundle();
        AnswerMap answerMap = new AnswerMap();
        bundle.readFromParcel(parcel);
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            answerMap.a(Integer.valueOf(str), bundle.getString(str));
        }
        return answerMap;
    }

    public AnswerMap[] a(int i) {
        return new AnswerMap[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}