package com.pocketools.currency;

public class CurrencyUtil {
    private String baseCurrency;
    private String compareCurrency;

    public CurrencyUtil(String base, String compare) {
        this.baseCurrency = base;
        this.compareCurrency = compare;
    }

    public String getBaseCurrency() {
        return this.baseCurrency;
    }

    public String getCompareCurrency() {
        return this.compareCurrency;
    }
}