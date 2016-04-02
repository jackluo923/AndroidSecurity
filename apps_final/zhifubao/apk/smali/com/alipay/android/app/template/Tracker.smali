.class public Lcom/alipay/android/app/template/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DynamicTemplateService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 2

    .prologue
    .line 43
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    .line 44
    :goto_0
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public static enterPage(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static leavePage(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->leaveView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordClick(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 33
    if-nez p0, :cond_8

    .line 34
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v0, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "remoteLog"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v0, "remoteLog"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    const-string/jumbo v2, "ucId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "appId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setAppID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v1

    const-string/jumbo v2, "seed"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v1

    const-string/jumbo v2, "extParams"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-le v0, v7, :cond_1

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam3(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->click()V

    .line 40
    :cond_4
    :goto_1
    return-void

    .line 34
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    goto :goto_0

    :cond_6
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_4

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_1

    .line 36
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37
    invoke-static {p0}, Lcom/alipay/android/app/template/Tracker;->a(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->click()V

    goto :goto_1
.end method

.method public static recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public static recordLongClick(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    if-nez p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/alipay/android/app/template/Tracker;->a(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->longClick()V

    goto :goto_0
.end method
