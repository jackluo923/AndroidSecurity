package com.brightcove.player.media;

public class PlaylistFields {
    public static final String[] DEFAULT_FIELDS;
    public static final String ID = "id";
    public static final String NAME = "name";
    public static final String REFERENCE_ID = "referenceId";
    public static final String SHORT_DESCRIPTION = "shortDescription";
    public static final String THUMBNAIL_URL = "thumbnailURL";
    public static final String VIDEOS = "videos";

    static {
        DEFAULT_FIELDS = new String[]{NAME, ID, REFERENCE_ID, SHORT_DESCRIPTION, THUMBNAIL_URL, VIDEOS};
    }
}