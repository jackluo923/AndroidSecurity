package com.zeptolab.ctr.billing;

public interface BillingInterface {
    boolean available();

    void onDestroy();

    void onPause();

    void onResume();

    void onStart();

    String price(String str);

    boolean pricesAvailable();

    void purchase(String str);

    void restoreTransactions(boolean z);

    void updatePrices();

    int value(String str);
}