package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.SessionStartHttpRequest.Factory;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class SessionStartHttpTransactionFactory {
    @Inject
    Factory a;
    @Inject
    FireAndForgetHttpResponseHandler b;

    public final HttpTransaction a(long j) {
        return new HttpTransaction(this.a.a(j), this.b);
    }
}