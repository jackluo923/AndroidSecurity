.class public Lcom/alipay/mobile/command/model/TaskMetaCollect;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6c0580120b53250eL


# instance fields
.field private taskWrapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaCollect;->taskWrapMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getTaskWrapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TaskMetaCollect;->taskWrapMap:Ljava/util/Map;

    return-object v0
.end method

.method public setTaskWrapMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/command/model/TaskMetaCollect;->taskWrapMap:Ljava/util/Map;

    return-void
.end method
