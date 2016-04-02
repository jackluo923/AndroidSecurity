.class public Lcom/alipay/android/app/display/event/SubmitEventArgs;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# static fields
.field public static final KEY_ID:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->Submit:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method
