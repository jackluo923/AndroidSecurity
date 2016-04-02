.class public Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;
.super Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;
.source "SimpleHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected i:Landroid/view/View;

.field j:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

.field protected k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

.field l:I

.field private final m:Landroid/content/Context;

.field private n:Lcom/alipay/android/phone/home/ui/HeaderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v3, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 70
    iput v4, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->l:I

    .line 56
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->m:Landroid/content/Context;

    .line 58
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->e:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->i:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->U:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HeaderView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->n:Lcom/alipay/android/phone/home/ui/HeaderView;

    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->j:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setFadingEdgeLength(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setOverScrollMode(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->i:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->N:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->i:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->K:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_1
    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->m:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/ar;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/ar;-><init>(Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->h:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;)V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "initHomeAppGrid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/android/phone/home/ui/DragReorderGridView;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    new-instance v2, Lcom/alipay/android/phone/home/ui/as;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/home/ui/as;-><init>(Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setDragReorderListener(Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->m:I

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->enableEditMode(II)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->refreshAppListData()V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->reportUserRank(Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->N:I

    if-ne v0, v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->jumpToSaoyisao()V

    .line 215
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b()V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->K:I

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->jumpToSaomafu()V

    .line 218
    const-string/jumbo v0, "20000056"

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 224
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "onRefresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedRefreshHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 228
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->refreshHomeAppsData()V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->n:Lcom/alipay/android/phone/home/ui/HeaderView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HeaderView;->onRefresh()V

    .line 235
    iget v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->l:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->j:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->setAppList(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Ljava/util/List;)V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 239
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->j:Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->k:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->d:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->setAppList(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected whenRefreshApplistData()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
