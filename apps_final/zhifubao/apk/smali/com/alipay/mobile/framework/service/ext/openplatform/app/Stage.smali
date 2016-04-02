.class public Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private maxNum:I

.field private maxShowNum:I

.field private refreshInterval:J

.field private reportInterval:J

.field private templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getMaxNum()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxNum:I

    return v0
.end method

.method public getMaxShowNum()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxShowNum:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->refreshInterval:J

    return-wide v0
.end method

.method public getReportInterval()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->reportInterval:J

    return-wide v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->appId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
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
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->apps:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setMaxNum(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxNum:I

    .line 49
    return-void
.end method

.method public setMaxShowNum(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxShowNum:I

    .line 57
    return-void
.end method

.method public setRefreshInterval(J)V
    .locals 0

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->refreshInterval:J

    .line 33
    return-void
.end method

.method public setReportInterval(J)V
    .locals 0

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->reportInterval:J

    .line 41
    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->templateId:Ljava/lang/String;

    .line 65
    return-void
.end method
