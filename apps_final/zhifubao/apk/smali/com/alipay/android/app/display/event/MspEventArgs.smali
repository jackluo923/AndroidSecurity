.class public Lcom/alipay/android/app/display/event/MspEventArgs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/event/IEventArgs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/app/event/IEventArgs",
        "<",
        "Lcom/alipay/android/app/display/event/EventType;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:Lcom/alipay/android/app/display/event/EventType;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/display/event/EventType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/display/event/MspEventArgs;->mType:Lcom/alipay/android/app/display/event/EventType;

    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEventType()Lcom/alipay/android/app/display/event/EventType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/event/MspEventArgs;->mType:Lcom/alipay/android/app/display/event/EventType;

    return-object v0
.end method

.method public bridge synthetic getEventType()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/display/event/MspEventArgs;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v0

    return-object v0
.end method
