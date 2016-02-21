package com.pocketools.currency;

public class NewsItem {
    private String mFreshness;
    private String mHeading;
    private String mSource;
    private String mSummary;
    private String mURL;

    public NewsItem() {
        this.mHeading = PocketCurrency.AD_MOB_KEYWORD_HINT;
        this.mSource = PocketCurrency.AD_MOB_KEYWORD_HINT;
        this.mSummary = PocketCurrency.AD_MOB_KEYWORD_HINT;
        this.mURL = PocketCurrency.AD_MOB_KEYWORD_HINT;
        this.mFreshness = PocketCurrency.AD_MOB_KEYWORD_HINT;
    }

    public String getFreshness() {
        return this.mFreshness;
    }

    public String getHeading() {
        return this.mHeading;
    }

    public String getSource() {
        return this.mSource;
    }

    public String getSummary() {
        return this.mSummary;
    }

    public String getURL() {
        return this.mURL;
    }

    public void setFreshness(String freshness) {
        this.mFreshness = freshness;
    }

    public void setHeading(String heading) {
        this.mHeading = heading;
    }

    public void setSource(String source) {
        this.mSource = source;
    }

    public void setSummary(String summary) {
        this.mSummary = summary;
    }

    public void setURL(String url) {
        this.mURL = url;
    }
}