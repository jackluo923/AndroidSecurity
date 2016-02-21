package com.google.android.apps.analytics;

interface HitStore {
    void clearReferrer();

    void deleteHit(long j);

    int getNumStoredHits();

    Referrer getReferrer();

    String getSessionId();

    int getStoreId();

    String getVisitorCustomVar(int i);

    String getVisitorId();

    void loadExistingSession();

    Hit[] peekHits();

    Hit[] peekHits(int i);

    void putEvent(Event event);

    void setAnonymizeIp(boolean z);

    boolean setReferrer(String str);

    void setSampleRate(int i);

    void startNewVisit();
}