.class final Lcom/alipay/mobile/appstoreapp/ui/a;
.super Ljava/lang/Object;
.source "AppDetailActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/a;)Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    return-object v0
.end method


# virtual methods
.method public final onLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/b;-><init>(Lcom/alipay/mobile/appstoreapp/ui/a;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method
