.class public Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "TplRecyclerViewActivity.java"


# static fields
.field public static DEVELOPMENT_MODE:Z = false

.field public static final TEST_TPL_ID:Ljava/lang/String; = "/sdcard/searchListItem.html"


# instance fields
.field private a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private b:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->DEVELOPMENT_MODE:Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-boolean v0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->DEVELOPMENT_MODE:Z

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "templateLayout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "templateLayout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->b:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    .line 45
    :cond_0
    sget v0, Lcom/alipay/android/app/template/R$layout;->tpl_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 50
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 46
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 52
    sget v0, Lcom/alipay/android/app/template/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 53
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 54
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sget-boolean v1, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->DEVELOPMENT_MODE:Z

    if-eqz v1, :cond_4

    .line 62
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_3

    .line 76
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    const-string/jumbo v3, "/sdcard/searchListItem.html"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4, p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->preLoadTemplate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 85
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v1

    invoke-static {v2, v1, p0}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->from(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    return-void

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid params to launch TplListViewActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{\"shopName\":\"shopName_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\",\"rank\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    rem-int/lit8 v4, v1, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",\"priceAverage\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 66
    rem-int/lit8 v4, v1, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",\"itemUnit\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    rem-int/lit8 v4, v1, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",\"hasPromo\":\"block\",\"hasBrand\":\"block\",\"shopLogoUrl\":\"https://tfsimg.alipay.com/images/partner/T1BQleXeBtXXXXXXXX\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;

    const-string/jumbo v5, "/sdcard/searchListItem.html"

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/service/DynamicTemplateService;)V

    .line 74
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->b:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    invoke-static {v1}, Lcom/alipay/android/app/template/action/TplController;->convertTplLayoutToList(Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    .line 80
    new-instance v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;

    iget-object v5, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    const-string/jumbo v6, ""

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/service/DynamicTemplateService;)V

    .line 81
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 118
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStart()V

    .line 126
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
