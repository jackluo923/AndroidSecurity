.class public abstract Lcom/alipay/android/app/display/event/ToastEventArgs;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->Toast:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method
