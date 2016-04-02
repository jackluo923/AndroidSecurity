.class public Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
.super Ljava/lang/Object;
.source "AppEntity.java"


# static fields
.field public static final COL_APPID:Ljava/lang/String; = "appId"

.field public static final COL_AUTOSTATUS:Ljava/lang/String; = "autoUpdate"


# instance fields
.field private alipayApp:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
        unique = true
    .end annotation
.end field

.field private autoStatus:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "autoUpdate"
    .end annotation
.end field

.field private canDelete:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private comment:Ljava/lang/String;

.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private display:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extProperties:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extra:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private h5AppCdnBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private incrementPkgUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private installerType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isRecommend:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private labelContent:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private localIcon:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportAppVersionCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportClientVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportOsVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportSdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private movable:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needAuth:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needAutoAuth:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needShowNewFlag:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pageUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pkgPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pkgVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private preinstall:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private preinstallVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rank:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private schemeUri:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private slogan:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tipsType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private widgetId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 174
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 179
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 184
    iput v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 205
    iput v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->comment:Ljava/lang/String;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 225
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 640
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 174
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 179
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 184
    iput v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 205
    iput v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->comment:Ljava/lang/String;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 225
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 657
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 658
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 659
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 660
    iput-boolean p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 661
    iput-object p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 662
    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 663
    iput-object p7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 664
    iput-object p8, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 665
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    .line 666
    iput-object p10, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 667
    iput-object p11, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 668
    iput-object p12, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 174
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 179
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 184
    iput v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 205
    iput v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->comment:Ljava/lang/String;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 225
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 685
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 686
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 687
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 688
    iput-boolean p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 689
    iput-object p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 690
    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 691
    iput-object p7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 692
    iput-object p8, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 693
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    .line 694
    iput-object p10, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 695
    iput-object p11, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 696
    iput-object p12, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 698
    iput-object p13, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    .line 699
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoStatus()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->autoStatus:Z

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extProperties:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    const/4 v2, 0x0

    .line 483
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    if-eqz v1, :cond_0

    .line 488
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 490
    :cond_0
    return-object v0

    .line 484
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method public getH5AppCdnBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->h5AppCdnBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->id:I

    return v0
.end method

.method public getIncrementPkgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->incrementPkgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->labelContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->localIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportAppVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedShowNewFlag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 512
    iget v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPreinstallVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstallVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    return v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->schemeUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    return-wide v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTipsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->tipsType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public hideNewFlag()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 529
    return-void
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    return v0
.end method

.method public isAutoAuthorize()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    return v0
.end method

.method public isCanDelete()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canDelete:Z

    return v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    return v0
.end method

.method public isNeedAuthorize()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    return v0
.end method

.method public isNewFlagUnknown()Z
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreinstall()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    return v0
.end method

.method public setAlipayApp(Z)V
    .locals 0

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 332
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setAutoAuthorize(Z)V
    .locals 0

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 460
    return-void
.end method

.method public setAutoStatus(Z)V
    .locals 0

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->autoStatus:Z

    .line 444
    return-void
.end method

.method public setCanDelete(Z)V
    .locals 0

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canDelete:Z

    .line 324
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->comment:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setDisplay(Z)V
    .locals 0

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 316
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setExtProperties(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extProperties:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->mapToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    .line 501
    :cond_0
    return-void
.end method

.method public setH5AppCdnBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->h5AppCdnBaseUrl:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 251
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->id:I

    .line 252
    return-void
.end method

.method public setIncrementPkgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->incrementPkgUrl:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public setInstallerType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setLabelContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->labelContent:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setLocalIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->localIcon:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->md5:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setMinSupportAppVersionCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportAppVersionCode:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setMinSupportClientVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportClientVersion:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setMinSupportOsVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportOsVersion:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setMinSupportSdkVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportSdkVersion:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 545
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setNeedAuthorize(Z)V
    .locals 0

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 452
    return-void
.end method

.method public setNeedShowNewFlag(Z)V
    .locals 1

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pageUrl:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public setPkgPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgPath:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public setPkgVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgVersion:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public setPreinstall(Z)V
    .locals 0

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 577
    return-void
.end method

.method public setPreinstallVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstallVersion:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public setRank(I)V
    .locals 0

    .prologue
    .line 467
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 468
    return-void
.end method

.method public setRecommend(Z)V
    .locals 0

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 388
    return-void
.end method

.method public setSchemeUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->schemeUri:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .prologue
    .line 299
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    .line 300
    return-void
.end method

.method public setSlogan(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setTipsType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->tipsType:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->widgetId:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 621
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 622
    const-string/jumbo v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const-string/jumbo v1, "installerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string/jumbo v1, "needAuth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
