.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
.super Ljava/lang/Object;
.source "DynamicReleaseProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/Transport;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->p:Lcom/alipay/mobile/common/transport/http/HttpManager;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$600(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)Lcom/alipay/mobile/common/transport/http/HttpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
