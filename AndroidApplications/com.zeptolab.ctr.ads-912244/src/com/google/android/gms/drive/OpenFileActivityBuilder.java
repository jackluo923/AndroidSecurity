package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.internal.OpenFileIntentSenderRequest;
import com.google.android.gms.drive.internal.n;
import com.google.android.gms.internal.er;

public class OpenFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private String CX;
    private DriveId CY;
    private String[] Dk;

    public IntentSender build(GoogleApiClient googleApiClient) {
        er.b(this.Dk, (Object)"setMimeType(String[]) must be called on this builder before calling build()");
        er.a(googleApiClient.isConnected(), "Client must be connected");
        try {
            return ((n) googleApiClient.a(Drive.va)).eT().a(new OpenFileIntentSenderRequest(this.CX, this.Dk, this.CY));
        } catch (RemoteException e) {
            throw new RuntimeException("Unable to connect Drive Play Service", e);
        }
    }

    public OpenFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.CY = (DriveId) er.f(driveId);
        return this;
    }

    public OpenFileActivityBuilder setActivityTitle(String str) {
        this.CX = (String) er.f(str);
        return this;
    }

    public OpenFileActivityBuilder setMimeType(String[] strArr) {
        boolean z;
        z = strArr != null && strArr.length > 0;
        er.b(z, (Object)"mimeTypes may not be null and must contain at least one value");
        this.Dk = strArr;
        return this;
    }
}