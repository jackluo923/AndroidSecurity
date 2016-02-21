package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

public class no implements Executor {
    public static final ql a;
    private final Executor b;

    static {
        a = new ql();
    }

    public no(Executor executor) {
        this.b = executor;
    }

    public void execute(Runnable runnable) {
        this.b.execute(new nq(this, runnable));
    }
}