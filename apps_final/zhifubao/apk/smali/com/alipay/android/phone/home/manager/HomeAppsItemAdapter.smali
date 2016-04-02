.class public Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;
.super Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;
.source "HomeAppsItemAdapter.java"

# interfaces
.implements Lcom/alipay/android/phone/home/ui/DragReorderListAdapter;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;)V

    .line 21
    const-string/jumbo v0, "HomeAppsItemAdapter"

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->g:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HomeAppsItemAdapter"

    const-string/jumbo v2, "refreshAppList"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    if-eqz p1, :cond_1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a:Ljava/util/List;

    invoke-static {}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a()Lcom/alipay/android/phone/home/app/HomeMoreApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 56
    return-void

    .line 41
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 43
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    instance-of v2, v1, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HomeAppsItemAdapter"

    const-string/jumbo v3, "isReorderableItem false pressed homemore"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    return v0

    .line 69
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
