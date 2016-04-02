.class public Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "AuthorizationCheckProtocol.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APButton;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->finish()V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/alipay/mobile/openplatform/R$layout;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Landroid/view/Window;->setLayout(II)V

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "protocol_url"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Ljava/lang/String;

    .line 32
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 33
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 37
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 38
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    new-instance v3, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 40
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 46
    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->loadUrl(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
