package com.google.ads.interactivemedia.v3.api;

public class ImaSdkSettings {
    private transient String language;
    private String ppid;

    public ImaSdkSettings() {
        this.language = "en";
    }

    public String getLanguage() {
        return this.language;
    }

    public String getPpid() {
        return this.ppid;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setPpid(String str) {
        this.ppid = str;
    }

    public String toString() {
        return new StringBuilder("ImaSdkSettings [ppid=").append(this.ppid).append(", language=").append(this.language).append("]").toString();
    }
}