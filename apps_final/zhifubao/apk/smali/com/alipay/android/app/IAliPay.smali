.class public interface abstract Lcom/alipay/android/app/IAliPay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/IAliPay$Stub;
    }
.end annotation


# virtual methods
.method public abstract Pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract deployFastConnect()V
.end method

.method public abstract registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
.end method

.method public abstract test()Ljava/lang/String;
.end method

.method public abstract unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
.end method
