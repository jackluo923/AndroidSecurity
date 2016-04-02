.class public Lcom/alipay/android/phone/home/ui/AppsCenterFragment;
.super Landroid/support/v4/app/Fragment;
.source "AppsCenterFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;
.implements Ljava/util/Observer;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "applications_center"
.end annotation


# static fields
.field public static b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# instance fields
.field protected a:Lcom/alipay/android/phone/home/ui/DragReorderGridView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "appscenter_apps_grid"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pull_refresh_container"
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

.field private f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    const-string/jumbo v0, "ApplicationsCenter"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->d:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->d()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "secondScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->reportUserRank(Z)Z

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 304
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u63d0\u793a"

    const-string/jumbo v2, "\u9996\u9875\u5e94\u7528\u5df2\u6ee1\uff0c\u8bf7\u79fb\u9664\u9996\u9875\u67d0\u4e2a\u5e94\u7528\u540e\u6dfb\u52a0\u3002"

    const-string/jumbo v3, "\u597d\u7684"

    new-instance v4, Lcom/alipay/android/phone/home/ui/o;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/ui/o;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method


# virtual methods
.method protected afterView()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 87
    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppCenterAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setNumColumns(I)V

    .line 94
    new-instance v2, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v3, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 96
    invoke-direct {v3, v4, v0}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 95
    iput-object v3, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {v0, v5}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(Z)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(Lcom/alipay/android/phone/home/ui/DragReorderGridView;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    new-instance v3, Lcom/alipay/android/phone/home/ui/i;

    invoke-direct {v3, p0, v2}, Lcom/alipay/android/phone/home/ui/i;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;)V

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setDragReorderListener(Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->a:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v2, Lcom/alipay/android/phone/openplatform/R$id;->m:I

    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->enableEditMode(II)V

    .line 157
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    sget v2, Lcom/alipay/android/phone/openplatform/R$layout;->l:I

    .line 157
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/PortraitOverView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->c:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 164
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.android.main.appcenterinited"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 165
    return-void

    :cond_1
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public canRefresh()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->g:Lcom/alipay/android/phone/home/ui/PortraitOverView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppsCenterFragment"

    const-string/jumbo v2, "onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz p1, :cond_0

    const-string/jumbo v0, "AppsCenterFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "AppsCenterFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->d:Ljava/lang/String;

    .line 81
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 82
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 81
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 83
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    .line 200
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 201
    return-void
.end method

.method public onFail()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 217
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppsCenterFragment"

    const-string/jumbo v2, "onResume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 207
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedRefreshMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->notifyDataSetChanged()V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshMore(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 191
    const-string/jumbo v0, "AppsCenterFragment:Content"

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 320
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 221
    if-nez p2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    if-eqz v0, :cond_3

    .line 225
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/m;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/m;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/n;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/n;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 226
    :cond_3
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_5

    .line 227
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/l;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/home/ui/l;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 228
    :cond_5
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    if-eqz v0, :cond_0

    .line 229
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->getParentStageCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "indexStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/k;-><init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
