.class public interface abstract Lcom/alipay/mobile/android/mvp/DataObservable;
.super Ljava/lang/Object;
.source "DataObservable.java"


# static fields
.field public static final NOTIFY_CHANGE:I = 0x0

.field public static final NOTIFY_EXCEPTION:I = 0x1


# virtual methods
.method public abstract addDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V
.end method

.method public abstract countDataObservers()I
.end method

.method public abstract deleteDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V
.end method

.method public abstract notifyDataObservers(Lcom/alipay/mobile/android/mvp/DataEvent;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;I)V"
        }
    .end annotation
.end method
