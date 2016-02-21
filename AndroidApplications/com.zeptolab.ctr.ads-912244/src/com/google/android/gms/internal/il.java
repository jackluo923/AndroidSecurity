package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

public final class il implements People {
    private final b Rw;

    private static abstract class a extends com.google.android.gms.plus.Plus.a {

        class AnonymousClass_1 implements LoadPeopleResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public String getNextPageToken() {
                return null;
            }

            public PersonBuffer getPersonBuffer() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        a(b bVar) {
            super(bVar);
        }

        public LoadPeopleResult N(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return N(status);
        }
    }

    class AnonymousClass_1 extends a {
        final /* synthetic */ int RG;
        final /* synthetic */ String Rz;

        AnonymousClass_1(b bVar, int i, String str) {
            this.RG = i;
            this.Rz = str;
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.a(this, this.RG, this.Rz);
        }
    }

    class AnonymousClass_2 extends a {
        final /* synthetic */ String Rz;

        AnonymousClass_2(b bVar, String str) {
            this.Rz = str;
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.i(this, this.Rz);
        }
    }

    class AnonymousClass_3 extends a {
        AnonymousClass_3(b bVar) {
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.j(this);
        }
    }

    class AnonymousClass_4 extends a {
        final /* synthetic */ Collection RI;

        AnonymousClass_4(b bVar, Collection collection) {
            this.RI = collection;
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.a(this, this.RI);
        }
    }

    class AnonymousClass_5 extends a {
        final /* synthetic */ String[] RJ;

        AnonymousClass_5(b bVar, String[] strArr) {
            this.RJ = strArr;
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.c(this, this.RJ);
        }
    }

    public il(b bVar) {
        this.Rw = bVar;
    }

    public Person getCurrentPerson(GoogleApiClient googleApiClient) {
        return Plus.a(googleApiClient, this.Rw).getCurrentPerson();
    }

    public PendingResult load(GoogleApiClient googleApiClient, Collection collection) {
        return googleApiClient.a(new AnonymousClass_4(this.Rw, collection));
    }

    public PendingResult load(GoogleApiClient googleApiClient, String... strArr) {
        return googleApiClient.a(new AnonymousClass_5(this.Rw, strArr));
    }

    public PendingResult loadConnected(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new AnonymousClass_3(this.Rw));
    }

    public PendingResult loadVisible(GoogleApiClient googleApiClient, int i, String str) {
        return googleApiClient.a(new AnonymousClass_1(this.Rw, i, str));
    }

    public PendingResult loadVisible(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.a(new AnonymousClass_2(this.Rw, str));
    }
}