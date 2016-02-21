package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.util.List;
import java.util.Map;

public class Playlist extends MetadataObject {
    private List videos;

    public static final class Fields {
        public static final String NAME = "name";
        public static final String SHORT_DESCRIPTION = "shortDescription";
    }

    public Playlist(Map map) {
        super(map);
    }

    public Playlist(Map map, List list) {
        super(map);
        if (list == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.VIDEOS_REQUIRED));
        }
        this.videos = list;
    }

    public Integer getCount() {
        return Integer.valueOf(this.videos.size());
    }

    public List getVideos() {
        return this.videos;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Playlist{");
        if (this.properties.get(com.brightcove.player.model.Video.Fields.NAME) != null) {
            stringBuilder.append("name: ");
            stringBuilder.append(this.properties.get(com.brightcove.player.model.Video.Fields.NAME));
        }
        if (this.properties.get(com.brightcove.player.model.Video.Fields.SHORT_DESCRIPTION) != null) {
            stringBuilder.append(" shortDescription: ");
            stringBuilder.append(this.properties.get(com.brightcove.player.model.Video.Fields.SHORT_DESCRIPTION));
        }
        stringBuilder.append(" videos: ");
        stringBuilder.append(this.videos != null ? this.videos.size() : 0);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}