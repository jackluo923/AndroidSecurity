.class public Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;
.super Ljava/lang/Object;
.source "StageEntity.java"


# static fields
.field public static final COL_PARENT_STAGECODE:Ljava/lang/String; = "parentStageCode"

.field public static final COL_RANK:Ljava/lang/String; = "rank"

.field public static final COL_STAGECODE:Ljava/lang/String; = "stageCode"

.field public static final COL_USERID:Ljava/lang/String; = "userId"

.field private static final DEFAULT_REFRESH_INTERVAL:J = 0xe10L

.field private static final DEFAULT_REPORT_INTERVAL:J = 0x258L


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private appRank:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private lastRefreshTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastReportTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private maxAppNum:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private maxShowAppNum:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needReport:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private parentStageCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rank:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private refreshInterval:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private reportInterval:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private stageCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        uniqueCombo = true
    .end annotation
.end field

.field private stageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private templateId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        uniqueCombo = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->refreshInterval:J

    .line 36
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->reportInterval:J

    .line 38
    const/16 v0, 0x32

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->maxAppNum:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->needReport:Z

    .line 11
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->appRank:Ljava/lang/String;

    return-object v0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->id:I

    return v0
.end method

.method public getLastRefreshTime()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->lastRefreshTime:J

    return-wide v0
.end method

.method public getLastReportTime()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->lastReportTime:J

    return-wide v0
.end method

.method public getMaxAppNum()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->maxAppNum:I

    return v0
.end method

.method public getMaxShowAppNum()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->maxShowAppNum:I

    return v0
.end method

.method public getParentStageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->parentStageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->rank:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->refreshInterval:J

    return-wide v0
.end method

.method public getReportInterval()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->reportInterval:J

    return-wide v0
.end method

.method public getStageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->stageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->stageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedReport()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->needReport:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->appId:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setAppRank(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->appRank:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setDataVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->dataVersion:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->id:I

    .line 62
    return-void
.end method

.method public setLastRefreshTime(J)V
    .locals 0

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->lastRefreshTime:J

    .line 150
    return-void
.end method

.method public setLastReportTime(J)V
    .locals 0

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->lastReportTime:J

    .line 158
    return-void
.end method

.method public setMaxAppNum(I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->maxAppNum:I

    .line 134
    return-void
.end method

.method public setMaxShowAppNum(I)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->maxShowAppNum:I

    .line 166
    return-void
.end method

.method public setNeedReport(Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->needReport:Z

    .line 142
    return-void
.end method

.method public setParentStageCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->parentStageCode:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRank(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->rank:I

    .line 186
    return-void
.end method

.method public setRefreshInterval(J)V
    .locals 0

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->refreshInterval:J

    .line 110
    return-void
.end method

.method public setReportInterval(J)V
    .locals 0

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->reportInterval:J

    .line 118
    return-void
.end method

.method public setStageCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->stageCode:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setStageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->stageName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->templateId:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->userId:Ljava/lang/String;

    .line 70
    return-void
.end method
