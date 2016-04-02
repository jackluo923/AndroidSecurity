.class Lcom/alipay/mobile/commonbiz/image/ImageWorker$2$1;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2$1;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2$1;->b:Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2$1;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;->a(Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Lcom/alipay/mobile/commonbiz/image/ImageWorker;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2$1;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;->a(Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Lcom/alipay/mobile/commonbiz/image/ImageWorker;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    return-void
.end method
