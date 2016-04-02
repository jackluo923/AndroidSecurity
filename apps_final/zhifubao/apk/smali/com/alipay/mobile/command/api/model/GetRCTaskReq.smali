.class public Lcom/alipay/mobile/command/api/model/GetRCTaskReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5e78e217925b059eL


# instance fields
.field private clientInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/MapConstructor;",
            ">;"
        }
    .end annotation
.end field

.field private taskUUID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
.method public getClientInfo()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->clientInfo:Ljava/util/List;

    return-object v0
.end method

.method public getTaskUUID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->taskUUID:Ljava/util/List;

    return-object v0
.end method

.method public setClientInfo(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->clientInfo:Ljava/util/List;

    return-void
.end method

.method public setTaskUUID(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->taskUUID:Ljava/util/List;

    return-void
.end method
