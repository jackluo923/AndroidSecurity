package com.jirbo.adcolony;

public interface AdColonyAdListener {
    void onAdColonyAdAttemptFinished(AdColonyAd adColonyAd);

    void onAdColonyAdStarted(AdColonyAd adColonyAd);
}