.class public interface abstract Lcom/squareup/okhttp/OkResponseCache;
.super Ljava/lang/Object;
.source "OkResponseCache.java"


# virtual methods
.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lcom/squareup/okhttp/ResponseSource;)V
.end method

.method public abstract update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
