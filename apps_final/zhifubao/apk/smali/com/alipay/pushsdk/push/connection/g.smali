.class final Lcom/alipay/pushsdk/push/connection/g;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/connection/d;

.field private b:Lcom/alipay/pushsdk/push/c/a;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/connection/d;Lcom/alipay/pushsdk/push/c/a;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/g;->a:Lcom/alipay/pushsdk/push/connection/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lcom/alipay/pushsdk/push/connection/g;->b:Lcom/alipay/pushsdk/push/c/a;

    .line 456
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/g;->a:Lcom/alipay/pushsdk/push/connection/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/d;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/pushsdk/push/connection/k;->c:Ljava/util/Map;

    .line 460
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 459
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    return-void

    .line 460
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/connection/b;

    .line 461
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/g;->b:Lcom/alipay/pushsdk/push/c/a;

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/b;->a(Lcom/alipay/pushsdk/push/c/a;)V

    goto :goto_0
.end method
