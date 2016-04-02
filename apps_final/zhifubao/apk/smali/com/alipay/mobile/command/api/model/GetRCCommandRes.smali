.class public Lcom/alipay/mobile/command/api/model/GetRCCommandRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4734b89a733621d3L


# instance fields
.field private cmdMetaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/CommandMeta;",
            ">;"
        }
    .end annotation
.end field

.field private remainedSyncTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdMetaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/CommandMeta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->cmdMetaList:Ljava/util/List;

    return-object v0
.end method

.method public getRemainedSyncTimes()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->remainedSyncTimes:I

    return v0
.end method

.method public setCmdMetaList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/CommandMeta;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->cmdMetaList:Ljava/util/List;

    return-void
.end method

.method public setRemainedSyncTimes(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/GetRCCommandRes;->remainedSyncTimes:I

    return-void
.end method
