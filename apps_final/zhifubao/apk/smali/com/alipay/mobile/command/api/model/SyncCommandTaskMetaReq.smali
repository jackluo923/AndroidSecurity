.class public Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xa7a28a68581a785L


# instance fields
.field private alipayWalletVersion:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:I

.field public updatedConfigFlag:Ljava/lang/String;

.field private uuidList:Ljava/util/List;
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
.method public getAlipayWalletVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->alipayWalletVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->osVersion:I

    return v0
.end method

.method public getUuidList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->uuidList:Ljava/util/List;

    return-object v0
.end method

.method public setAlipayWalletVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->alipayWalletVersion:Ljava/lang/String;

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->osName:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->osVersion:I

    return-void
.end method

.method public setUuidList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->uuidList:Ljava/util/List;

    return-void
.end method
