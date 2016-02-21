package com.vungle.publisher.net.http;

import com.vungle.publisher.VungleService;
import com.vungle.publisher.bm;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DownloadHttpGateway extends bm {
    @Inject
    public DownloadHttpTransactionFactory a;

    DownloadHttpGateway() {
    }

    protected final String a() {
        return VungleService.DOWNLOAD_ACTION;
    }
}