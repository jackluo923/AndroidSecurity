.class public final Lcom/alipay/pushsdk/a/d;
.super Ljava/lang/Object;
.source "HttpReqHelper.java"


# instance fields
.field private a:Lcom/alipay/pushsdk/a/f;

.field private b:Lcom/alipay/pushsdk/a/e;

.field private c:Lcom/alipay/pushsdk/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/pushsdk/a/f;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 23
    iput-object p2, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/f;

    .line 24
    new-instance v0, Lcom/alipay/pushsdk/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a/e;-><init>(Lcom/alipay/pushsdk/a/d;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/d;->b:Lcom/alipay/pushsdk/a/e;

    .line 25
    invoke-static {p1}, Lcom/alipay/pushsdk/b/c;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/a/d;->c:Lcom/alipay/pushsdk/b/c;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a/d;)Lcom/alipay/pushsdk/a/f;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/pushsdk/a/d;->a:Lcom/alipay/pushsdk/a/f;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/alipay/pushsdk/b/b;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/alipay/pushsdk/a/d;->b:Lcom/alipay/pushsdk/a/e;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/b/b;-><init>(Landroid/os/Messenger;)V

    .line 36
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b/b;->a(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p2}, Lcom/alipay/pushsdk/b/b;->a(Ljava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/alipay/pushsdk/a/d;->c:Lcom/alipay/pushsdk/b/c;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/b/c;->a(Lcom/alipay/pushsdk/b/b;)V

    .line 39
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 40
    return-void
.end method
