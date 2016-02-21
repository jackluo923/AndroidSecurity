package com.zeptolab.ctr.billing.google.utils;

public class IabException extends Exception {
    IabResult mResult;

    public IabException(int i, String str) {
        this(new IabResult(i, str));
    }

    public IabException(int i, String str, Exception exception) {
        this(new IabResult(i, str), exception);
    }

    public IabException(IabResult iabResult) {
        this(iabResult, null);
    }

    public IabException(IabResult iabResult, Exception exception) {
        super(iabResult.getMessage(), exception);
        this.mResult = iabResult;
    }

    public IabResult getResult() {
        return this.mResult;
    }
}