.class public abstract Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.super Ljava/lang/Object;
.source "AbstractDeserializer.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/protocol/Deserializer;


# instance fields
.field protected mData:[B

.field protected mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;->mType:Ljava/lang/reflect/Type;

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;->mData:[B

    .line 29
    return-void
.end method
