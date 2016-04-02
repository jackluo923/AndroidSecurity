.class final Lcom/alipay/mobile/appstoreapp/ui/f;
.super Ljava/lang/Thread;
.source "AppDetailActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;B)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/f;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/f;)Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/g;-><init>(Lcom/alipay/mobile/appstoreapp/ui/f;)V

    .line 437
    const-wide/16 v2, 0x1f4

    .line 422
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    return-void
.end method
