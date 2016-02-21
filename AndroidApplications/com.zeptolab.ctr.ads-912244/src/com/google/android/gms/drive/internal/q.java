package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;
import com.google.android.gms.drive.DriveFolder.DriveFolderResult;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.query.Filters;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.drive.query.Query.Builder;
import com.google.android.gms.drive.query.SearchableField;

public class q extends r implements DriveFolder {

    class AnonymousClass_1 extends m {
        final /* synthetic */ MetadataChangeSet DK;
        final /* synthetic */ Contents Dw;

        AnonymousClass_1(Contents contents, MetadataChangeSet metadataChangeSet) {
            this.Dw = contents;
            this.DK = metadataChangeSet;
        }

        protected void a(n nVar) {
            this.Dw.close();
            nVar.eT().a(new CreateFileRequest(q.this.getDriveId(), this.DK.eS(), this.Dw), new a(this));
        }

        public /* synthetic */ Result d(Status status) {
            return p(status);
        }

        public DriveFileResult p(Status status) {
            return new d(status, null);
        }
    }

    private abstract class c extends m {
        private c() {
        }

        public /* synthetic */ Result d(Status status) {
            return q(status);
        }

        public DriveFolderResult q(Status status) {
            return new e(status, null);
        }
    }

    class AnonymousClass_2 extends c {
        final /* synthetic */ MetadataChangeSet DK;

        AnonymousClass_2(MetadataChangeSet metadataChangeSet) {
            this.DK = metadataChangeSet;
            super(null);
        }

        protected void a(n nVar) {
            nVar.eT().a(new CreateFolderRequest(q.this.getDriveId(), this.DK.eS()), new b(this));
        }
    }

    private static class a extends c {
        private final com.google.android.gms.common.api.a.c vj;

        public a(com.google.android.gms.common.api.a.c cVar) {
            this.vj = cVar;
        }

        public void a_(OnDriveIdResponse onDriveIdResponse) {
            this.vj.b(new d(Status.zQ, new o(onDriveIdResponse.getDriveId())));
        }

        public void l(Status status) {
            this.vj.b(new d(status, null));
        }
    }

    private static class b extends c {
        private final com.google.android.gms.common.api.a.c vj;

        public b(com.google.android.gms.common.api.a.c cVar) {
            this.vj = cVar;
        }

        public void a(OnDriveIdResponse onDriveIdResponse) {
            this.vj.b(new e(Status.zQ, new q(onDriveIdResponse.getDriveId())));
        }

        public void l(Status status) {
            this.vj.b(new e(status, null));
        }
    }

    private static class d implements DriveFileResult {
        private final DriveFile DN;
        private final Status vl;

        public d(Status status, DriveFile driveFile) {
            this.vl = status;
            this.DN = driveFile;
        }

        public DriveFile getDriveFile() {
            return this.DN;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    private static class e implements DriveFolderResult {
        private final DriveFolder DO;
        private final Status vl;

        public e(Status status, DriveFolder driveFolder) {
            this.vl = status;
            this.DO = driveFolder;
        }

        public DriveFolder getDriveFolder() {
            return this.DO;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    public q(DriveId driveId) {
        super(driveId);
    }

    public PendingResult createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, Contents contents) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("MetatadataChangeSet must be provided.");
        } else if (contents == null) {
            throw new IllegalArgumentException("Contents must be provided.");
        } else if (!DriveFolder.MIME_TYPE.equals(metadataChangeSet.getMimeType())) {
            return googleApiClient.b(new AnonymousClass_1(contents, metadataChangeSet));
        } else {
            throw new IllegalArgumentException("May not create folders (mimetype: application/vnd.google-apps.folder) using this method. Use DriveFolder.createFolder() instead.");
        }
    }

    public PendingResult createFolder(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("MetatadataChangeSet must be provided.");
        } else if (metadataChangeSet.getMimeType() == null || metadataChangeSet.getMimeType().equals(DriveFolder.MIME_TYPE)) {
            return googleApiClient.b(new AnonymousClass_2(metadataChangeSet));
        } else {
            throw new IllegalArgumentException("The mimetype must be of type application/vnd.google-apps.folder");
        }
    }

    public PendingResult listChildren(GoogleApiClient googleApiClient) {
        return queryChildren(googleApiClient, null);
    }

    public PendingResult queryChildren(GoogleApiClient googleApiClient, Query query) {
        Builder addFilter = new Builder().addFilter(Filters.in(SearchableField.PARENTS, getDriveId()));
        if (query != null) {
            if (query.getFilter() != null) {
                addFilter.addFilter(query.getFilter());
            }
            addFilter.setPageToken(query.getPageToken());
        }
        return new l().query(googleApiClient, addFilter.build());
    }
}