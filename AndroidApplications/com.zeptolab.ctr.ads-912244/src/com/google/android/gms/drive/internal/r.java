package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.DriveResource.MetadataResult;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.DriveEvent.Listener;

public class r implements DriveResource {
    protected final DriveId CS;

    private abstract class a extends m {
        private a() {
        }

        public /* synthetic */ Result d(Status status) {
            return r(status);
        }

        public MetadataResult r(Status status) {
            return new e(status, null);
        }
    }

    private abstract class c extends m {
        private c() {
        }

        public /* synthetic */ Result d(Status status) {
            return o(status);
        }

        public MetadataBufferResult o(Status status) {
            return new e(status, null);
        }
    }

    private abstract class f extends m {
        private f() {
        }

        public /* synthetic */ Result d(Status status) {
            return r(status);
        }

        public MetadataResult r(Status status) {
            return new e(status, null);
        }
    }

    class AnonymousClass_3 extends f {
        final /* synthetic */ MetadataChangeSet DK;

        AnonymousClass_3(MetadataChangeSet metadataChangeSet) {
            this.DK = metadataChangeSet;
            super(null);
        }

        protected void a(n nVar) {
            nVar.eT().a(new UpdateMetadataRequest(r.this.CS, this.DK.eS()), new d(this));
        }
    }

    private static class b extends c {
        private final com.google.android.gms.common.api.a.c vj;

        public b(com.google.android.gms.common.api.a.c cVar) {
            this.vj = cVar;
        }

        public void a(OnListParentsResponse onListParentsResponse) {
            this.vj.b(new e(Status.zQ, new MetadataBuffer(onListParentsResponse.fd(), null)));
        }

        public void l(Status status) {
            this.vj.b(new e(status, null));
        }
    }

    private static class d extends c {
        private final com.google.android.gms.common.api.a.c vj;

        public d(com.google.android.gms.common.api.a.c cVar) {
            this.vj = cVar;
        }

        public void a(OnMetadataResponse onMetadataResponse) {
            this.vj.b(new e(Status.zQ, new j(onMetadataResponse.fe())));
        }

        public void l(Status status) {
            this.vj.b(new e(status, null));
        }
    }

    private static class e implements MetadataResult {
        private final Metadata DQ;
        private final Status vl;

        public e(Status status, Metadata metadata) {
            this.vl = status;
            this.DQ = metadata;
        }

        public Metadata getMetadata() {
            return this.DQ;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    protected r(DriveId driveId) {
        this.CS = driveId;
    }

    public PendingResult addChangeListener(GoogleApiClient googleApiClient, Listener listener) {
        return ((n) googleApiClient.a(Drive.va)).a(googleApiClient, this.CS, 1, listener);
    }

    public DriveId getDriveId() {
        return this.CS;
    }

    public PendingResult getMetadata(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new a() {
            {
                super(null);
            }

            protected void a(n nVar) {
                nVar.eT().a(new GetMetadataRequest(r.this.CS), new d(this));
            }
        });
    }

    public PendingResult listParents(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new c() {
            {
                super(null);
            }

            protected void a(n nVar) {
                nVar.eT().a(new ListParentsRequest(r.this.CS), new b(this));
            }
        });
    }

    public PendingResult removeChangeListener(GoogleApiClient googleApiClient, Listener listener) {
        return ((n) googleApiClient.a(Drive.va)).b(googleApiClient, this.CS, 1, listener);
    }

    public PendingResult updateMetadata(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet != null) {
            return googleApiClient.b(new AnonymousClass_3(metadataChangeSet));
        }
        throw new IllegalArgumentException("ChangeSet must be provided.");
    }
}