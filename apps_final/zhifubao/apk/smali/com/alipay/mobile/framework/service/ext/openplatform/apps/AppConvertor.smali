.class public Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;
.super Ljava/lang/Object;
.source "AppConvertor.java"


# direct methods
.method public static final a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 3

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSlogan(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 40
    iget v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->size:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSize(J)V

    .line 41
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 42
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->display:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    .line 43
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->canDelete:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setCanDelete(Z)V

    .line 44
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->alipayApp:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 45
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->schemeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSchemeUri(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIconUrl(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->tipsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    .line 50
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->recommend:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRecommend(Z)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->labelContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLabelContent(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportAppVersionCode:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportAppVersionCode(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportClientVersion:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportClientVersion(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportOsVersion:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportOsVersion(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportSdkVersion:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportSdkVersion(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 61
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->needAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 62
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoAuthorize(Z)V

    .line 63
    iget v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->rank:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 64
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMd5(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/util/Map;)V

    .line 66
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setWidgetId(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->pageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPageUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 3

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 126
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->alipayApp:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 127
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoAuthorize(Z)V

    .line 128
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoStatus:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoStatus(Z)V

    .line 129
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->movable:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setCanDelete(Z)V

    .line 130
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 131
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->display:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    .line 132
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgUrlNew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->extProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtProperties(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIconUrl(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMd5(Ljava/lang/String;)V

    .line 138
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->movable:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 139
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 140
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->needAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 141
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->thirdPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPageUrl(Ljava/lang/String;)V

    .line 143
    iget v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->rank:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 144
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->recommend:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRecommend(Z)V

    .line 145
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->schemeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSchemeUri(Ljava/lang/String;)V

    .line 146
    iget-wide v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgSize:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSize(J)V

    .line 147
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSlogan(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->incrementPkgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIncrementPkgUrl(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setH5AppCdnBaseUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final a(Ljava/lang/String;Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 156
    if-nez p1, :cond_0

    move-object v0, v1

    .line 247
    :goto_0
    return-object v0

    .line 159
    :cond_0
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;-><init>()V

    .line 160
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setUserId(Ljava/lang/String;)V

    .line 161
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setStageCode(Ljava/lang/String;)V

    .line 162
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->parentStageCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setParentStageCode(Ljava/lang/String;)V

    .line 163
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->dataVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setDataVersion(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 166
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "reportSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "reportSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 170
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setReportInterval(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "refreshSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :try_start_1
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "refreshSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 178
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRefreshInterval(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :cond_2
    :goto_2
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appNumLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :try_start_2
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appNumLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 187
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 192
    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appShowLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    :try_start_3
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    .line 195
    const-string/jumbo v3, "appShowLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxShowAppNum(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 201
    :cond_4
    :goto_4
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "templateId"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    :try_start_4
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "templateId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setTemplateId(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 211
    :goto_5
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appId"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 213
    :try_start_5
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppId(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 221
    :goto_6
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v1, "stageRank"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    :try_start_6
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v1, "stageRank"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRank(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 232
    :cond_5
    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 245
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppRank(Ljava/lang/String;)V

    :cond_6
    move-object v0, v2

    .line 247
    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 179
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 188
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 197
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 205
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 209
    :cond_7
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setTemplateId(Ljava/lang/String;)V

    goto :goto_5

    .line 215
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 219
    :cond_8
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppId(Ljava/lang/String;)V

    goto :goto_6

    .line 225
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 229
    :cond_9
    const/16 v0, 0x63

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRank(I)V

    goto :goto_7

    .line 234
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 235
    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;-><init>()V

    .line 236
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setAppId(Ljava/lang/String;)V

    .line 237
    iget-boolean v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->display:Z

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setDisplay(Z)V

    .line 238
    iget-boolean v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->movable:Z

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setMovable(Z)V

    .line 239
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setIconUrl(Ljava/lang/String;)V

    .line 240
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setName(Ljava/lang/String;)V

    .line 241
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->extra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setExtra(Ljava/lang/String;)V

    .line 242
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->bizOptionMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->convertMapToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setOptionMap(Ljava/lang/String;)V

    .line 243
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public static final a(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;
    .locals 2

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    invoke-direct {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSlogan()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->slogan:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->desc:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->display:Z

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isCanDelete()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->canDelete:Z

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAlipayApp()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->alipayApp:Z

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->packageName:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSchemeUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->schemeUri:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->iconUrl:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->downloadUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getTipsType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->tipsType:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->recommend:Z

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLabelContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->labelContent:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportAppVersionCode()Ljava/lang/String;

    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportAppVersionCode:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportClientVersion()Ljava/lang/String;

    move-result-object v1

    .line 102
    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportClientVersion:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportOsVersion()Ljava/lang/String;

    move-result-object v1

    .line 104
    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportOsVersion:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 106
    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportSdkVersion:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNeedAuthorize()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->needAuthorize:Z

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAutoAuthorize()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoAuthorize:Z

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getRank()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->rank:I

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMd5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->md5:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getExtra()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->extra:Ljava/util/Map;

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->widgetId:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->pageURL:Ljava/lang/String;

    goto/16 :goto_0
.end method
