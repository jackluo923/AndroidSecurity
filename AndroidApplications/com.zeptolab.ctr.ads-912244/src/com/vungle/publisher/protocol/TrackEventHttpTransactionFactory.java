package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.protocol.TrackEventHttpRequest.Factory;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class TrackEventHttpTransactionFactory {
    @Inject
    public Factory a;
    @Inject
    public FireAndForgetHttpResponseHandler b;
}