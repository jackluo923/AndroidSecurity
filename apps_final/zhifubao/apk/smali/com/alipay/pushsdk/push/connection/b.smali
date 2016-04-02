.class public final Lcom/alipay/pushsdk/push/connection/b;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private a:Lcom/alipay/pushsdk/push/d/d;

.field private b:Lcom/alipay/pushsdk/push/connection/c;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/d/d;)V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/b;->a:Lcom/alipay/pushsdk/push/d/d;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->b:Lcom/alipay/pushsdk/push/connection/c;

    .line 373
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->b:Lcom/alipay/pushsdk/push/connection/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->b:Lcom/alipay/pushsdk/push/connection/c;

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/connection/c;->a(Lcom/alipay/pushsdk/push/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/b;->a:Lcom/alipay/pushsdk/push/d/d;

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/d/d;->a(Lcom/alipay/pushsdk/push/c/a;)V

    .line 386
    :cond_1
    return-void
.end method
