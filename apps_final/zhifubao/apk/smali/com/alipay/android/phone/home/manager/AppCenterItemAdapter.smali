.class public Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
.super Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;
.source "AppCenterItemAdapter.java"

# interfaces
.implements Lcom/alipay/android/phone/home/ui/DragReorderListAdapter;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 20
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
    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/home/app/FastLoginApp;->a()Lcom/alipay/android/phone/home/app/FastLoginApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/app/FastLoginApp;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a:Ljava/util/List;

    invoke-static {}, Lcom/alipay/android/phone/home/app/FastLoginApp;->a()Lcom/alipay/android/phone/home/app/FastLoginApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->notifyDataSetChanged()V

    .line 45
    return-void

    .line 31
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 32
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 33
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/android/phone/home/app/FastLoginApp;

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 51
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    div-int/2addr v0, v1

    .line 52
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    .line 51
    mul-int/2addr v0, v1

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "baseAdapterCount"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getCount():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v0
.end method
