.class public abstract Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;
.super Ljava/lang/Object;
.source "AbstractSerializer.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/protocol/Serializer;


# instance fields
.field protected mOperationType:Ljava/lang/String;

.field protected mParams:Ljava/lang/Object;

.field protected scene:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;->mOperationType:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;->mParams:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public getScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;->scene:Ljava/lang/String;

    .line 56
    return-void
.end method
