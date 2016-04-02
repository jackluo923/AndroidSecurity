.class final Lcom/alipay/mobile/appstoreapp/ui/b;
.super Ljava/lang/Object;
.source "AppDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/a;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/a;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->a:Lcom/alipay/mobile/appstoreapp/ui/a;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->b:Landroid/graphics/drawable/Drawable;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->b:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->a:Lcom/alipay/mobile/appstoreapp/ui/a;

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/a;->a(Lcom/alipay/mobile/appstoreapp/ui/a;)Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v1

    .line 252
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->a:Lcom/alipay/mobile/appstoreapp/ui/a;

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/a;->a(Lcom/alipay/mobile/appstoreapp/ui/a;)Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->h(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    return-void
.end method
