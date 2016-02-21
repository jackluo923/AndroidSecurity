package com.jirbo.adcolony;

public class AdColonyV4VCReward {
    int amount;
    String name;
    boolean success;

    AdColonyV4VCReward(boolean z, String str, int i) {
        this.success = z;
        this.name = str;
        this.amount = i;
    }

    public int amount() {
        return this.amount;
    }

    public String name() {
        return this.name;
    }

    public boolean success() {
        return this.success;
    }

    public String toString() {
        return this.success ? this.name + ":" + this.amount : "no reward";
    }
}