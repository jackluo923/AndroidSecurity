.class Lcom/alipay/mobile/common/imageworker/HttpInvoker$1;
.super Lcom/alipay/mobile/common/imageworker/HttpInvoker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/imageworker/HttpInvoker",
        "<TI;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;-><init>(Lcom/alipay/mobile/common/imageworker/HttpInvoker;)V

    return-void
.end method


# virtual methods
.method public buildHttpCallback(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)Lcom/alipay/mobile/common/imageworker/HttpCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/imageworker/HttpCallback",
            "<TI;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;",
            "Lcom/alipay/mobile/common/imageworker/HttpDataProcessor",
            "<TI;>;)",
            "Lcom/alipay/mobile/common/imageworker/HttpCallback",
            "<TI;>;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/mobile/common/imageworker/BitmapCallback;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/BitmapCallback;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)V

    return-object v0
.end method
