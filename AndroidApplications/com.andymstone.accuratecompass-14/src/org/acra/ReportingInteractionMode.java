package org.acra;

public enum ReportingInteractionMode {
    SILENT,
    NOTIFICATION,
    TOAST,
    DIALOG;

    static {
        SILENT = new ReportingInteractionMode("SILENT", 0);
        NOTIFICATION = new ReportingInteractionMode("NOTIFICATION", 1);
        TOAST = new ReportingInteractionMode("TOAST", 2);
        DIALOG = new ReportingInteractionMode("DIALOG", 3);
        ENUM$VALUES = new ReportingInteractionMode[]{SILENT, NOTIFICATION, TOAST, DIALOG};
    }
}