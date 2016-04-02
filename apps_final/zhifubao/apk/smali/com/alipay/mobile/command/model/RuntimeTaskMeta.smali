.class public Lcom/alipay/mobile/command/model/RuntimeTaskMeta;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5e2811ad098867baL


# instance fields
.field private status:Ljava/lang/String;

.field private taskUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/RuntimeTaskMeta;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/RuntimeTaskMeta;->taskUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/RuntimeTaskMeta;->status:Ljava/lang/String;

    return-void
.end method

.method public setTaskUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/RuntimeTaskMeta;->taskUuid:Ljava/lang/String;

    return-void
.end method
