package com.vungle.publisher.net.http;

import com.vungle.publisher.net.http.DownloadHttpRequest.Factory;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DownloadHttpTransactionFactory {
    @Inject
    public Factory a;
    @Inject
    public DownloadHttpResponseHandler.Factory b;
}