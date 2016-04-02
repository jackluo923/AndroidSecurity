.class public Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x9f014fb33632db9L


# instance fields
.field private inValidTaskUUID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sysRuntimeConfig:Lcom/alipay/mobile/command/api/model/ConfigInfoRes;

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/TaskMeta;",
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
.method public getInValidTaskUUID()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->inValidTaskUUID:Ljava/util/List;

    return-object v0
.end method

.method public getTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/TaskMeta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->taskList:Ljava/util/List;

    return-object v0
.end method

.method public setInValidTaskUUID(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->inValidTaskUUID:Ljava/util/List;

    return-void
.end method

.method public setTaskList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/TaskMeta;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->taskList:Ljava/util/List;

    return-void
.end method
