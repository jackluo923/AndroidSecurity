package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.SessionEndHttpRequest.Factory;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class SessionEndHttpTransactionFactory {
    @Inject
    Factory a;
    @Inject
    FireAndForgetHttpResponseHandler b;

    public final HttpTransaction a(long j, long j2) {
        return new HttpTransaction(this.a.a(j, j2), this.b);
    }
}