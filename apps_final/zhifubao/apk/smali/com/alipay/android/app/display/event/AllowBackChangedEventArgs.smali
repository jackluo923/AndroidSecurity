.class public abstract Lcom/alipay/android/app/display/event/AllowBackChangedEventArgs;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->AllowBack:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method
