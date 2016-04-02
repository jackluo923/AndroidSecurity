.class final Lcom/alipay/mobile/appstoreapp/ui/e;
.super Ljava/lang/Object;
.source "AppDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/e;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/e;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->g(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/e;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->finish()V

    .line 370
    :cond_0
    return-void
.end method
