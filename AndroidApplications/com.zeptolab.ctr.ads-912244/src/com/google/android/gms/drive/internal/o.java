package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi.ContentsResult;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFile.DownloadProgressListener;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;

public class o extends r implements DriveFile {

    private abstract class d extends m {
        private d() {
        }

        public /* synthetic */ Result d_(Status status) {
            return n(status);
        }

        public ContentsResult n(Status status) {
            return new a(status, null);
        }
    }

    class AnonymousClass_1 extends d {
        final /* synthetic */ int DH;
        final /* synthetic */ DownloadProgressListener DI;

        AnonymousClass_1(int i, DownloadProgressListener downloadProgressListener) {
            this.DH = i;
            this.DI = downloadProgressListener;
            super(null);
        }

        protected void a(n nVar) {
            nVar.eT().a(new OpenContentsRequest(o.this.getDriveId(), this.DH), new c(this, this.DI));
        }
    }

    private abstract class b extends m {
        private b() {
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    class AnonymousClass_2 extends b {
        final /* synthetic */ Contents Dw;

        AnonymousClass_2(Contents contents) {
            this.Dw = contents;
            super(null);
        }

        protected void a(n nVar) {
            this.Dw.close();
            nVar.eT().a(new CloseContentsRequest(this.Dw, true), new ak(this));
        }
    }

    private abstract class a extends m {
        private a() {
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    class AnonymousClass_3 extends a {
        final /* synthetic */ MetadataChangeSet DK;
        final /* synthetic */ Contents Dw;

        AnonymousClass_3(Contents contents, MetadataChangeSet metadataChangeSet) {
            this.Dw = contents;
            this.DK = metadataChangeSet;
            super(null);
        }

        protected void a(n nVar) {
            this.Dw.close();
            nVar.eT().a(new CloseContentsAndUpdateMetadataRequest(o.this.CS, this.DK.eS(), this.Dw), new ak(this));
        }
    }

    private static class c extends c {
        private final DownloadProgressListener DL;
        private final com.google.android.gms.common.api.a.c vj;

        public c(com.google.android.gms.common.api.a.c cVar, DownloadProgressListener downloadProgressListener) {
            this.vj = cVar;
            this.DL = downloadProgressListener;
        }

        public void a(OnContentsResponse onContentsResponse) {
            this.vj.b(new a(Status.zQ, onContentsResponse.eX()));
        }

        public void a(OnDownloadProgressResponse onDownloadProgressResponse) {
            if (this.DL != null) {
                this.DL.onProgress(onDownloadProgressResponse.eY(), onDownloadProgressResponse.eZ());
            }
        }

        public void l(Status status) {
            this.vj.b(new a(status, null));
        }
    }

    public o(DriveId driveId) {
        super(driveId);
    }

    public PendingResult commitAndCloseContents(GoogleApiClient googleApiClient, Contents contents) {
        if (contents != null) {
            return googleApiClient.b(new AnonymousClass_2(contents));
        }
        throw new IllegalArgumentException("Contents must be provided.");
    }

    public PendingResult commitAndCloseContents(GoogleApiClient googleApiClient, Contents contents, MetadataChangeSet metadataChangeSet) {
        if (contents != null) {
            return googleApiClient.b(new AnonymousClass_3(contents, metadataChangeSet));
        }
        throw new IllegalArgumentException("Contents must be provided.");
    }

    public PendingResult discardContents(GoogleApiClient googleApiClient, Contents contents) {
        return Drive.DriveApi.discardContents(googleApiClient, contents);
    }

    public PendingResult openContents(GoogleApiClient googleApiClient, int i, DownloadProgressListener downloadProgressListener) {
        if (i == 268435456 || i == 536870912 || i == 805306368) {
            return googleApiClient.a(new AnonymousClass_1(i, downloadProgressListener));
        }
        throw new IllegalArgumentException("Invalid mode provided.");
    }
}