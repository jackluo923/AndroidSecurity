package com.IQzone.postitial.obfuscated;

import com.facebook.ads.internal.AdWebViewUtils;

final class lc implements mx {
    private /* synthetic */ la a;

    lc(la laVar) {
        this.a = laVar;
    }

    public final Object a(Object obj) {
        boolean z = true;
        try {
            la.l();
            try {
                Boolean valueOf;
                if (this.a.a()) {
                    la.l();
                    try {
                        Thread.sleep(2000);
                    } catch (InterruptedException e) {
                        la.l();
                    }
                    la.l();
                    la.d(this.a).a(z);
                    return null;
                } else if (la.a(this.a)) {
                    la.l();
                    try {
                        Thread.sleep(2000);
                    } catch (InterruptedException e2) {
                        la.l();
                    }
                    la.l();
                    la.d(this.a).a(z);
                    return null;
                } else if (!la.b(this.a) || la.c(this.a)) {
                    valueOf = Boolean.valueOf(true);
                    try {
                        Thread.sleep(2000);
                    } catch (InterruptedException e3) {
                        la.l();
                    }
                    la.l();
                    la.d(this.a).a(z);
                    return valueOf;
                } else {
                    la.l();
                    int i = 0;
                    while (i < 30) {
                        Thread.sleep(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                        i++;
                    }
                    if (!la.b(this.a) || la.c(this.a)) {
                        valueOf = Boolean.valueOf(true);
                        try {
                            Thread.sleep(2000);
                        } catch (InterruptedException e4) {
                            la.l();
                        }
                        la.l();
                        la.d(this.a).a(z);
                        return valueOf;
                    } else {
                        i = 0;
                        while (i < 30) {
                            Thread.sleep(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                            i++;
                        }
                        if (!la.b(this.a) || la.c(this.a)) {
                            valueOf = Boolean.valueOf(true);
                            try {
                                Thread.sleep(2000);
                            } catch (InterruptedException e5) {
                                la.l();
                            }
                            la.l();
                            la.d(this.a).a(z);
                            return valueOf;
                        } else {
                            i = 0;
                            while (i < 90) {
                                Thread.sleep(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                                i++;
                            }
                            if (!la.b(this.a) || la.c(this.a)) {
                                valueOf = Boolean.valueOf(true);
                                try {
                                    Thread.sleep(2000);
                                } catch (InterruptedException e6) {
                                    la.l();
                                }
                                la.l();
                                la.d(this.a).a(z);
                                return valueOf;
                            } else {
                                i = 0;
                                while (i < 150) {
                                    Thread.sleep(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                                    i++;
                                }
                                if (!la.b(this.a) || la.c(this.a)) {
                                    valueOf = Boolean.valueOf(true);
                                    try {
                                        Thread.sleep(2000);
                                    } catch (InterruptedException e7) {
                                        la.l();
                                    }
                                    la.l();
                                    la.d(this.a).a(z);
                                    return valueOf;
                                } else {
                                    do {
                                        i = 0;
                                        while (i < 300) {
                                            Thread.sleep(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                                            i++;
                                        }
                                        if (!la.b(this.a)) {
                                            break;
                                        }
                                    } while (!la.c(this.a));
                                    valueOf = Boolean.valueOf(true);
                                    try {
                                        Thread.sleep(2000);
                                    } catch (InterruptedException e8) {
                                        la.l();
                                    }
                                    la.l();
                                    la.d(this.a).a(z);
                                    return valueOf;
                                }
                            }
                        }
                    }
                }
            } catch (InterruptedException e9) {
                la.l();
                valueOf = Boolean.valueOf(false);
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e10) {
                    la.l();
                }
                la.l();
                la.d(this.a).a(z);
                return valueOf;
            }
        } catch (Throwable th) {
            try {
                Thread.sleep(2000);
            } catch (InterruptedException e11) {
                la.l();
            }
        }
    }
}