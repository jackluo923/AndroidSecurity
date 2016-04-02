.class public Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;
.super Ljava/lang/Object;
.source "RPCProtoDesc.java"


# static fields
.field public static final PROTO_TYPE_JSON_V1:B = 0x0t

.field public static final PROTO_TYPE_JSON_V2:B = 0x2t

.field public static final PROTO_TYPE_PB_V1:B = 0x3t

.field public static final PROTO_TYPE_SIMPLE_JSON_V1:B = 0x1t


# instance fields
.field public protoType:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isJsonV1()Z
    .locals 1

    .prologue
    .line 25
    iget-byte v0, p0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJsonV2()Z
    .locals 2

    .prologue
    .line 29
    iget-byte v0, p0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPBV1()Z
    .locals 2

    .prologue
    .line 33
    iget-byte v0, p0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimpleJsonV1()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 37
    iget-byte v1, p0, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
