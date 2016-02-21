package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.internal.CreateFileIntentSenderRequest;
import com.google.android.gms.drive.internal.n;
import com.google.android.gms.internal.er;
import java.io.IOException;

public class CreateFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private MetadataChangeSet CV;
    private Contents CW;
    private String CX;
    private DriveId CY;

    public IntentSender build(GoogleApiClient googleApiClient) {
        er.b(this.CW, (Object)"Must provide initial contents to CreateFileActivityBuilder.");
        try {
            this.CW.getParcelFileDescriptor().close();
        } catch (IOException e) {
        }
        this.CW.close();
        er.a(googleApiClient.isConnected(), "Client must be connected");
        try {
            return ((n) googleApiClient.a(Drive.va)).eT().a(new CreateFileIntentSenderRequest(this.CV.eS(), this.CW.eP(), this.CX, this.CY));
        } catch (RemoteException e2) {
            throw new RuntimeException("Unable to connect Drive Play Service", e2);
        }
    }

    public CreateFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.CY = (DriveId) er.f(driveId);
        return this;
    }

    public CreateFileActivityBuilder setActivityTitle(String str) {
        this.CX = (String) er.f(str);
        return this;
    }

    public CreateFileActivityBuilder setInitialContents(Contents contents) {
        this.CW = (Contents) er.f(contents);
        return this;
    }

    public CreateFileActivityBuilder setInitialMetadata(MetadataChangeSet metadataChangeSet) {
        this.CV = (MetadataChangeSet) er.f(metadataChangeSet);
        return this;
    }
}