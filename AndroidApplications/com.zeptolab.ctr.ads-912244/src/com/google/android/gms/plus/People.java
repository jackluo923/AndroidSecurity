package com.google.android.gms.plus;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

public interface People {

    public static interface LoadPeopleResult extends Releasable, Result {
        String getNextPageToken();

        PersonBuffer getPersonBuffer();
    }

    public static interface OrderBy {
        public static final int ALPHABETICAL = 0;
        public static final int BEST = 1;
    }

    Person getCurrentPerson(GoogleApiClient googleApiClient);

    PendingResult load(GoogleApiClient googleApiClient, Collection collection);

    PendingResult load(GoogleApiClient googleApiClient, String... strArr);

    PendingResult loadConnected(GoogleApiClient googleApiClient);

    PendingResult loadVisible(GoogleApiClient googleApiClient, int i, String str);

    PendingResult loadVisible(GoogleApiClient googleApiClient, String str);
}