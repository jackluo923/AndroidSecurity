package com.millennialmedia.android;

public final class MMException extends RuntimeException {
    public static final int AD_BROKEN_REFERENCE = 25;
    public static final int AD_NO_ACTIVITY = 26;
    public static final int CACHE_NOT_EMPTY = 17;
    public static final int DISPLAY_AD_ALREADY_DISPLAYED = 23;
    public static final int DISPLAY_AD_EXPIRED = 21;
    public static final int DISPLAY_AD_NOT_FOUND = 22;
    public static final int DISPLAY_AD_NOT_PERMITTED = 24;
    public static final int DISPLAY_AD_NOT_READY = 20;
    public static final int INNER_EXCEPTION = 2;
    public static final int INVALID_PARAMETER = 1;
    public static final int MAIN_THREAD_REQUIRED = 3;
    public static final int REQUEST_ALREADY_CACHING = 13;
    public static final int REQUEST_BAD_RESPONSE = 15;
    public static final int REQUEST_IN_PROGRESS = 12;
    public static final int REQUEST_NOT_FILLED = 14;
    public static final int REQUEST_NOT_PERMITTED = 16;
    public static final int REQUEST_NO_NETWORK = 11;
    public static final int REQUEST_TIMEOUT = 10;
    public static final int UNKNOWN_ERROR = 100;
    static final String a = "MMJS is not downloaded";
    private final int b;

    MMException(int i) {
        super(a(i));
        this.b = i;
    }

    MMException(Exception exception) {
        super(exception);
        this.b = 2;
    }

    MMException(String str, int i) {
        super(str);
        this.b = i;
    }

    MMException(String str, Exception exception) {
        super(str, exception);
        this.b = 2;
    }

    static String a(int i) {
        switch (i) {
            case INVALID_PARAMETER:
                return "An invalid parameter was given.";
            case MAIN_THREAD_REQUIRED:
                return "Requires the main thread.";
            case REQUEST_TIMEOUT:
                return "The request timed out.";
            case REQUEST_NO_NETWORK:
                return "There is no network available.";
            case REQUEST_IN_PROGRESS:
                return "A request is already in progress.";
            case REQUEST_ALREADY_CACHING:
                return "A request is already being cached.";
            case REQUEST_NOT_FILLED:
                return "The request was not filled by the server.";
            case REQUEST_BAD_RESPONSE:
                return "The server replied with unknown or bad content.";
            case REQUEST_NOT_PERMITTED:
                return "The system is not permitting a request at this time, try again later.";
            case CACHE_NOT_EMPTY:
                return "Previously fetched ad exists in the playback queue";
            case DISPLAY_AD_NOT_READY:
                return "There is no fetched ad to display.";
            case DISPLAY_AD_EXPIRED:
                return "The ad to display has expired.";
            case DISPLAY_AD_NOT_FOUND:
                return "The ad could not be found on disk.";
            case DISPLAY_AD_ALREADY_DISPLAYED:
                return "The ad has already been displayed.";
            case DISPLAY_AD_NOT_PERMITTED:
                return "The ad has already been displayed.";
            case AD_BROKEN_REFERENCE:
                return "The reference to the ad view was broken.";
            case AD_NO_ACTIVITY:
                return "The ad view does not have a parent activity.";
            case UNKNOWN_ERROR:
                return "An unknown error occured.";
            default:
                return "No error.";
        }
    }

    public int getCode() {
        return this.b;
    }
}