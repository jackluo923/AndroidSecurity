.class final Lcom/alipay/mobile/appstoreapp/ui/d;
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
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    sget v2, Lcom/alipay/mobile/openplatform/R$string;->c:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    const-string/jumbo v1, "main_button_style"

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    sget v2, Lcom/alipay/mobile/openplatform/R$string;->j:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/d;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    const-string/jumbo v1, "main_button_style"

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
