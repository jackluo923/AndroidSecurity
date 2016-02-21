package com.inmobi.monetization.internal;

import com.inmobi.monetization.internal.abstraction.IGetLtvpRuleRequestListener;
import com.inmobi.monetization.internal.abstraction.INativeAdController;
import com.inmobi.monetization.internal.abstraction.IServiceProvider;
import com.millennialmedia.android.MMException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ServiceProvider implements IServiceProvider {
    private static ServiceProvider a;
    private ExecutorService b;

    private ServiceProvider() {
        this.b = Executors.newFixedThreadPool(MMException.REQUEST_BAD_RESPONSE);
    }

    public static ServiceProvider getInstance() {
        if (a == null) {
            synchronized (ServiceProvider.class) {
                if (a == null) {
                    a = new ServiceProvider();
                }
            }
        }
        return a;
    }

    public void getLtvpRule(GetLtvpRulesRequest getLtvpRulesRequest, IGetLtvpRuleRequestListener iGetLtvpRuleRequestListener) {
        this.b.execute(new GetLtvpRuleRequestTask(getLtvpRulesRequest, iGetLtvpRuleRequestListener));
    }

    public void getNativeAd(NativeAdRequest nativeAdRequest, INativeAdController iNativeAdController) {
        this.b.execute(new NativeAdRequestTask(nativeAdRequest, iNativeAdController));
    }
}