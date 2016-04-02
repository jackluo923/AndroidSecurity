.class public Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "gesture_config_convenient"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected c:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "applist"
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/security/gesture/ui/ae;

.field private e:Lcom/alipay/mobile/security/gesture/GestureConfig;

.field private f:Landroid/widget/AdapterView$OnItemClickListener;

.field private g:Lcom/alipay/mobile/security/gesture/ui/u;

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/mobile/security/gesture/service/i;

.field private j:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "ooooxxxx"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/GestureConfig;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e:Lcom/alipay/mobile/security/gesture/GestureConfig;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "adapter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->configItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->k:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IN"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void

    :cond_0
    const-string/jumbo v0, "OUT"

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/service/i;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->i:Lcom/alipay/mobile/security/gesture/service/i;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/framework/service/ext/security/GestureService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->j:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->j:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    iput-object p0, v0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->a()Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v4, v4}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->h:Ljava/lang/String;

    const-string/jumbo v0, "convenient"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->setOn(Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e:Lcom/alipay/mobile/security/gesture/GestureConfig;

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->setInEditMode(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e:Lcom/alipay/mobile/security/gesture/GestureConfig;

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/x;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/security/gesture/ui/x;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->i:Lcom/alipay/mobile/security/gesture/service/i;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/y;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/ui/y;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/z;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/z;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->f:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->f:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/aa;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/security/gesture/ui/aa;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->g:Lcom/alipay/mobile/security/gesture/ui/u;

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/v;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/v;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->setOn(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public final b()Lcom/alipay/mobile/security/gesture/ui/u;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->g:Lcom/alipay/mobile/security/gesture/ui/u;

    return-object v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/GestureConfig;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e:Lcom/alipay/mobile/security/gesture/GestureConfig;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    iput-object v2, v0, Lcom/alipay/mobile/security/gesture/ui/ae;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d:Lcom/alipay/mobile/security/gesture/ui/ae;

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->a()Lcom/alipay/mobile/security/gesture/service/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->i:Lcom/alipay/mobile/security/gesture/service/i;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/c;->a(Lcom/alipay/mobile/security/gesture/service/i;)V

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->i:Lcom/alipay/mobile/security/gesture/service/i;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e:Lcom/alipay/mobile/security/gesture/GestureConfig;

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->setInEditMode(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e:Lcom/alipay/mobile/security/gesture/GestureConfig;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getIsFromInside()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->k:Z

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/w;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/w;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStop()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
