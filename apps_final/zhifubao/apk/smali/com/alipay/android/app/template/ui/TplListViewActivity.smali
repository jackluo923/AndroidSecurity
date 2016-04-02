.class public Lcom/alipay/android/app/template/ui/TplListViewActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "TplListViewActivity.java"


# static fields
.field public static DEVELOPMENT_MODE:Z = false

.field public static ENABLE_HIERARCHY_VIEWER:Z = false

.field public static final TEST_TPL_ID:Ljava/lang/String; = "/sdcard/searchListItem.html"


# instance fields
.field private a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private c:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->DEVELOPMENT_MODE:Z

    .line 44
    sput-boolean v0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->ENABLE_HIERARCHY_VIEWER:Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
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
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 53
    const-string/jumbo v4, "templateLayout"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 54
    sget-boolean v4, Lcom/alipay/android/app/template/ui/TplListViewActivity;->DEVELOPMENT_MODE:Z

    if-nez v4, :cond_0

    .line 55
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/TplListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "templateLayout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    .line 56
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->c:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    .line 63
    :cond_0
    sget v0, Lcom/alipay/android/app/template/R$layout;->tpl_list_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/TplListViewActivity;->setContentView(I)V

    .line 69
    sget-boolean v0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->ENABLE_HIERARCHY_VIEWER:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p0}, Lcom/alipay/android/app/template/ui/ViewServer;->get(Landroid/content/Context;)Lcom/alipay/android/app/template/ui/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->addWindow(Landroid/app/Activity;)V

    .line 73
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 77
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 80
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 82
    sget v0, Lcom/alipay/android/app/template/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/TplListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    sget-boolean v1, Lcom/alipay/android/app/template/ui/TplListViewActivity;->DEVELOPMENT_MODE:Z

    if-eqz v1, :cond_6

    move v1, v3

    .line 87
    :goto_1
    const/16 v5, 0xa

    if-lt v1, v5, :cond_5

    .line 102
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    const-string/jumbo v5, "/sdcard/searchListItem.html"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6, p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->preLoadTemplate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateListAdapter(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplListAdapter;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 115
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setScrollingCacheEnabled(Z)V

    .line 116
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setAnimationCacheEnabled(Z)V

    .line 120
    iget-object v3, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v3, v0, v2, v2, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 121
    return-void

    :cond_3
    move v0, v3

    .line 51
    goto/16 :goto_0

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid params to launch TplListViewActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{\"shopName\":\"shopName_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"rank\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    rem-int/lit8 v6, v1, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",\"priceAverage\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 91
    rem-int/lit8 v6, v1, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",\"itemUnit\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 92
    rem-int/lit8 v6, v1, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",\"hasPromo\":\"block\",\"hasBrand\":\"block\",\"shopLogoUrl\":\"https://tfsimg.alipay.com/images/partner/T1BQleXeBtXXXXXXXX\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    new-instance v6, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;

    const-string/jumbo v7, "/sdcard/searchListItem.html"

    const-string/jumbo v8, ""

    .line 99
    iget-object v9, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 98
    invoke-direct {v6, v7, v8, v5, v9}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/service/DynamicTemplateService;)V

    .line 100
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->c:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    invoke-static {v1}, Lcom/alipay/android/app/template/action/TplController;->convertTplLayoutToList(Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    .line 106
    new-instance v6, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;

    .line 107
    iget-object v7, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    const-string/jumbo v8, ""

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 106
    invoke-direct {v6, v7, v8, v1, v9}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/service/DynamicTemplateService;)V

    .line 108
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 129
    sget-boolean v0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->ENABLE_HIERARCHY_VIEWER:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0}, Lcom/alipay/android/app/template/ui/ViewServer;->get(Landroid/content/Context;)Lcom/alipay/android/app/template/ui/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->removeWindow(Landroid/app/Activity;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 156
    sget-boolean v0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->ENABLE_HIERARCHY_VIEWER:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/alipay/android/app/template/ui/ViewServer;->get(Landroid/content/Context;)Lcom/alipay/android/app/template/ui/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/ui/ViewServer;->setFocusedWindow(Landroid/app/Activity;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStart()V

    .line 167
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
