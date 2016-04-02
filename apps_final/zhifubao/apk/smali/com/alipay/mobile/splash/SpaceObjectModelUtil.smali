.class public Lcom/alipay/mobile/splash/SpaceObjectModelUtil;
.super Ljava/lang/Object;
.source "SpaceObjectModelUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static spaceObjectInfo2Model(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)Lcom/alipay/mobile/splash/SpaceObjectInfoModel;
    .locals 4

    .prologue
    .line 11
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 12
    :cond_0
    new-instance v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    invoke-direct {v2}, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->actionUrl:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->bgColor:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->content:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->contentType:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->fgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->fgColor:Ljava/lang/String;

    .line 18
    iget-wide v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtStart:J

    iput-wide v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->gmtStart:J

    .line 19
    iget-wide v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtEnd:J

    iput-wide v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->gmtEnd:J

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->hrefUrl:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->md5:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->md5:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->objectId:Ljava/lang/String;

    .line 23
    iget-boolean v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->preload:Z

    iput-boolean v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->preload:Z

    .line 24
    iget v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->priority:I

    iput v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->priority:I

    .line 25
    iget-boolean v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->realTimeReport:Z

    iput-boolean v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->realTimeReport:Z

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->resVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->resVersion:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->textColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->textColor:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->userId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->userId:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetColor:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v2

    .line 41
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    .line 33
    const-string/jumbo v3, "CLOSE_AFTER_MOMENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    iget v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->showTimes:I

    iput v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->hoverTime:I

    .line 31
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 35
    :cond_3
    const-string/jumbo v3, "CLOSE_EVERYDAY_TIMES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    iget v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->showTimes:I

    iput v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->showTimesEveryday:I

    goto :goto_2

    .line 37
    :cond_4
    const-string/jumbo v3, "CLOSE_AFTER_TIMES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    iget v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->showTimes:I

    iput v0, v2, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->showTimesAfter:I

    goto :goto_2
.end method
