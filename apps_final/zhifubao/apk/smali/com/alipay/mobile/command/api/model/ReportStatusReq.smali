.class public Lcom/alipay/mobile/command/api/model/ReportStatusReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf176f9a2059d52dL


# instance fields
.field private executeResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/TaskExecuteResultReq;",
            ">;"
        }
    .end annotation
.end field

.field private extend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/MapConstructor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecuteResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/TaskExecuteResultReq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/ReportStatusReq;->executeResults:Ljava/util/List;

    return-object v0
.end method

.method public getExtend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/MapConstructor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/ReportStatusReq;->extend:Ljava/util/List;

    return-object v0
.end method

.method public setExecuteResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/TaskExecuteResultReq;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/ReportStatusReq;->executeResults:Ljava/util/List;

    return-void
.end method

.method public setExtend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/MapConstructor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/ReportStatusReq;->extend:Ljava/util/List;

    return-void
.end method
