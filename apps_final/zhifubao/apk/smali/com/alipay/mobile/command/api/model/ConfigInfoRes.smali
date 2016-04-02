.class public Lcom/alipay/mobile/command/api/model/ConfigInfoRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10a0f20cec36b4baL


# instance fields
.field private configInfo:Lcom/alipay/mobile/command/api/model/ConfigInfo;

.field private updatedConfigFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->updatedConfigFlag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConfigInfo()Lcom/alipay/mobile/command/api/model/ConfigInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->configInfo:Lcom/alipay/mobile/command/api/model/ConfigInfo;

    return-object v0
.end method

.method public getUpdatedConfigFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->updatedConfigFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setConfigInfo(Lcom/alipay/mobile/command/api/model/ConfigInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->configInfo:Lcom/alipay/mobile/command/api/model/ConfigInfo;

    return-void
.end method

.method public setUpdatedConfigFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfoRes;->updatedConfigFlag:Ljava/lang/String;

    return-void
.end method
