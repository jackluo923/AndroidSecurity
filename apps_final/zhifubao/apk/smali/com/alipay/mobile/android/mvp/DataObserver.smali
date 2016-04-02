.class public interface abstract Lcom/alipay/mobile/android/mvp/DataObserver;
.super Ljava/lang/Object;
.source "DataObserver.java"


# virtual methods
.method public abstract onChanged(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract onException(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;)V"
        }
    .end annotation
.end method
