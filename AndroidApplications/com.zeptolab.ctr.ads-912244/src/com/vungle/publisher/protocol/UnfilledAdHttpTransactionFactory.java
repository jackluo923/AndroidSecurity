package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.protocol.UnfilledAdHttpRequest.Factory;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class UnfilledAdHttpTransactionFactory {
    @Inject
    Factory a;
    @Inject
    FireAndForgetHttpResponseHandler b;
}