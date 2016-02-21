package com.pocketools.currency;

public class Deal {
    String dealURL;
    String details;
    String discount;
    String division;
    String imageURL;
    boolean isNowDeal;
    String mainTitle;
    String nutshell;
    String subTitle;
    String timeLeft;
    String type;
    String value;
    String youSave;

    public Deal() {
        this.isNowDeal = false;
    }

    public String getDealURL() {
        return this.dealURL;
    }

    public String getDetails() {
        return this.details;
    }

    public String getDiscount() {
        return this.discount;
    }

    public String getDivision() {
        return this.division;
    }

    public String getImageURL() {
        return this.imageURL;
    }

    public String getMainTitle() {
        return this.mainTitle;
    }

    public String getNutshell() {
        return this.nutshell;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTimeLeft() {
        return this.timeLeft;
    }

    public String getType() {
        return this.type;
    }

    public String getValue() {
        return this.value;
    }

    public String getYouSave() {
        return this.youSave;
    }

    public boolean isNowDeal() {
        return this.isNowDeal;
    }

    public void setDealURL(String url) {
        this.dealURL = url;
    }

    public void setDetails(String text) {
        this.details = text;
    }

    public void setDiscount(String discountString) {
        this.discount = discountString;
    }

    public void setDivision(String divisionString) {
        this.division = divisionString;
    }

    public void setImageURL(String url) {
        this.imageURL = url;
    }

    public void setIsNowDeal(boolean isNow) {
        this.isNowDeal = isNow;
    }

    public void setMainTitle(String title) {
        this.mainTitle = title;
    }

    public void setNutshell(String text) {
        this.nutshell = text;
    }

    public void setSubTitle(String title) {
        this.subTitle = title;
    }

    public void setTimeLeft(String time) {
        this.timeLeft = time;
    }

    public void setType(String typeString) {
        this.type = typeString;
    }

    public void setValue(String valueString) {
        this.value = valueString;
    }

    public void setYouSave(String youSaveString) {
        this.youSave = youSaveString;
    }
}