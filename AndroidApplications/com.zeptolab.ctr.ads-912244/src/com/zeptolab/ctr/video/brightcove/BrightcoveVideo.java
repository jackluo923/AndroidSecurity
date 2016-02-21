package com.zeptolab.ctr.video.brightcove;

class BrightcoveVideo {
    public final long id;
    public final String name;
    public final String referenceId;
    public final String sponsor;
    public final String url;

    public BrightcoveVideo(String str, long j, String str2, String str3, String str4) {
        this.name = str;
        this.id = j;
        this.url = str2;
        this.referenceId = str3;
        this.sponsor = str4;
    }
}