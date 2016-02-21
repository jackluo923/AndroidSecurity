package com.brightcove.player.media;

public class VideoFields {
    public static final String ACCOUNT_ID = "accountId";
    public static final String CUE_POINTS = "cuePoints";
    public static final String CUSTOM_FIELDS = "customFields";
    public static final String[] DEFAULT_FIELDS;
    public static final String DURATION = "length";
    public static final String HLS_URL = "HLSURL";
    public static final String ID = "id";
    public static final String IOS_RENDITIONS = "IOSRenditions";
    public static final String NAME = "name";
    public static final String REFERENCE_ID = "referenceId";
    public static final String RENDITIONS = "renditions";
    public static final String SHORT_DESCRIPTION = "shortDescription";
    public static final String VIDEO_FULL_LENGTH = "videoFullLength";
    public static final String VIDEO_STILL_URL = "videoStillURL";
    public static final String WVM_RENDITIONS = "WVMRenditions";

    static {
        DEFAULT_FIELDS = new String[]{ACCOUNT_ID, NAME, SHORT_DESCRIPTION, REFERENCE_ID, ID, CUSTOM_FIELDS, VIDEO_FULL_LENGTH, HLS_URL, VIDEO_STILL_URL, CUE_POINTS, RENDITIONS, DURATION};
    }
}