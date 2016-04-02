.class public Lcom/alipay/android/app/template/ui/TestListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TestListAdapter.java"


# instance fields
.field final a:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field private b:Ljava/util/List;

.field private final c:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private d:Ljava/lang/String;

.field private final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->b:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/alipay/android/app/template/ui/TestListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/ui/TestListAdapter$1;-><init>(Lcom/alipay/android/app/template/ui/TestListAdapter;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 60
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 56
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->c:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 61
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->e:Landroid/app/Activity;

    .line 62
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->c:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    const-string/jumbo v1, "123"

    iget-object v2, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 112
    iget-object v6, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->e:Landroid/app/Activity;

    move-object v5, v3

    move-object v7, p2

    .line 111
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setTemplateInJSON(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->d:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setmListDatas(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/TestListAdapter;->b:Ljava/util/List;

    .line 70
    return-void
.end method
