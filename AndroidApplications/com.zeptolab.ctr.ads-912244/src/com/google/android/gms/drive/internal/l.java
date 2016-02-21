package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.CreateFileActivityBuilder;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveApi.ContentsResult;
import com.google.android.gms.drive.DriveApi.DriveIdResult;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.OpenFileActivityBuilder;
import com.google.android.gms.drive.query.Query;

public class l implements DriveApi {

    abstract class i extends m {
        i() {
        }

        public /* synthetic */ Result d(Status status) {
            return o(status);
        }

        public MetadataBufferResult o(Status status) {
            return new e(status, null);
        }
    }

    class AnonymousClass_1 extends i {
        final /* synthetic */ Query Du;

        AnonymousClass_1(Query query) {
            this.Du = query;
            super();
        }

        protected void a(n nVar) {
            nVar.eT().a(new QueryRequest(this.Du), new h(this));
        }
    }

    abstract class g extends m {
        g() {
        }

        public /* synthetic */ Result d(Status status) {
            return n(status);
        }

        public ContentsResult n(Status status) {
            return new a(status, null);
        }
    }

    static abstract class j extends m {
        j() {
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    class AnonymousClass_3 extends j {
        final /* synthetic */ Contents Dw;

        AnonymousClass_3(Contents contents) {
            this.Dw = contents;
        }

        protected void a(n nVar) {
            nVar.eT().a(new CloseContentsRequest(this.Dw, false), new ak(this));
        }
    }

    abstract class d extends m {
        d() {
        }

        public /* synthetic */ Result d_(Status status) {
            return m(status);
        }

        public DriveIdResult m(Status status) {
            return new c(status, null);
        }
    }

    class AnonymousClass_4 extends d {
        final /* synthetic */ String Dx;

        AnonymousClass_4(String str) {
            this.Dx = str;
            super();
        }

        protected void a(n nVar) {
            nVar.eT().a(new GetMetadataRequest(DriveId.aq(this.Dx)), new b(this));
        }
    }

    abstract class l extends m {
        l() {
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    static class a implements ContentsResult {
        private final Contents CW;
        private final Status vl;

        public a(Status status, Contents contents) {
            this.vl = status;
            this.CW = contents;
        }

        public Contents getContents() {
            return this.CW;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    private static class b extends c {
        private final com.google.android.gms.common.api.a.c vj;

        public b(com.google.android.gms.common.api.a.c cVar) {
            this.vj = cVar;
        }

        public void a(OnMetadataResponse onMetadataResponse) {
            this.vj.b(new c(Status.zQ, new j(onMetadataResponse.fe()).getDriveId()));
        }

        public void l(Status status) {
            this.vj.b(new c(status, null));
        }
    }

    static class c implements DriveIdResult {
        private final DriveId CS;
        private final Status vl;

        public c(Status status, DriveId driveId) {
            this.vl = status;
            this.CS = driveId;
        }

        public DriveId getDriveId() {
            return this.CS;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    static class e implements MetadataBufferResult {
        private final MetadataBuffer Dy;
        private final Status vl;

        public e(Status status, MetadataBuffer metadataBuffer) {
            this.vl = status;
            this.Dy = metadataBuffer;
        }

        public MetadataBuffer getMetadataBuffer() {
            return this.Dy;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    private static class f extends c {
        private final com.google.android.gms.common.api.a.c vj;

        public f(com.google.android.gms.common.api.a.c cVar) {
            this.vj = cVar;
        }

        public void a(OnContentsResponse onContentsResponse) {
            this.vj.b(new a(Status.zQ, onContentsResponse.eX()));
        }

        public void l(Status status) {
            this.vj.b(new a(status, null));
        }
    }

    static class h extends c {
        private final com.google.android.gms.common.api.a.c vj;

        public h(com.google.android.gms.common.api.a.c cVar) {
            this.vj = cVar;
        }

        public void a(OnListEntriesResponse onListEntriesResponse) {
            this.vj.b(new e(Status.zQ, new MetadataBuffer(onListEntriesResponse.fc(), null)));
        }

        public void l(Status status) {
            this.vj.b(new e(status, null));
        }
    }

    static class k extends j {
        k(Status status) {
            a(status);
        }

        protected void a(n nVar) {
        }
    }

    public PendingResult discardContents(GoogleApiClient googleApiClient, Contents contents) {
        return googleApiClient.b(new AnonymousClass_3(contents));
    }

    public PendingResult fetchDriveId(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.a(new AnonymousClass_4(str));
    }

    public DriveFolder getAppFolder(GoogleApiClient googleApiClient) {
        if (googleApiClient.isConnected()) {
            DriveId eV = ((n) googleApiClient.a(Drive.va)).eV();
            return eV != null ? new q(eV) : null;
        } else {
            throw new IllegalStateException("Client must be connected");
        }
    }

    public DriveFile getFile(GoogleApiClient googleApiClient, DriveId driveId) {
        if (driveId == null) {
            throw new IllegalArgumentException("Id must be provided.");
        } else if (googleApiClient.isConnected()) {
            return new o(driveId);
        } else {
            throw new IllegalStateException("Client must be connected");
        }
    }

    public DriveFolder getFolder(GoogleApiClient googleApiClient, DriveId driveId) {
        if (driveId == null) {
            throw new IllegalArgumentException("Id must be provided.");
        } else if (googleApiClient.isConnected()) {
            return new q(driveId);
        } else {
            throw new IllegalStateException("Client must be connected");
        }
    }

    public DriveFolder getRootFolder(GoogleApiClient googleApiClient) {
        if (googleApiClient.isConnected()) {
            return new q(((n) googleApiClient.a(Drive.va)).eU());
        }
        throw new IllegalStateException("Client must be connected");
    }

    public PendingResult newContents(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new g() {
            {
                super();
            }

            protected void a(n nVar) {
                nVar.eT().a(new CreateContentsRequest(), new f(this));
            }
        });
    }

    public CreateFileActivityBuilder newCreateFileActivityBuilder() {
        return new CreateFileActivityBuilder();
    }

    public OpenFileActivityBuilder newOpenFileActivityBuilder() {
        return new OpenFileActivityBuilder();
    }

    public PendingResult query(GoogleApiClient googleApiClient, Query query) {
        if (query != null) {
            return googleApiClient.a(new AnonymousClass_1(query));
        }
        throw new IllegalArgumentException("Query must be provided.");
    }

    public PendingResult requestSync(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new l() {
            {
                super();
            }

            protected void a(n nVar) {
                nVar.eT().a(new ak(this));
            }
        });
    }
}