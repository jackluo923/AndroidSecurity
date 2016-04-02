.class public Lcom/alipay/mobile/look/biz/rpc/EmotionQueryResponse;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;


# static fields
.field private static final serialVersionUID:J = 0x275c774d37a63883L


# instance fields
.field public emotion:Lcom/alipay/mobile/look/biz/rpc/Emotion;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionQueryResponse;->emotion:Lcom/alipay/mobile/look/biz/rpc/Emotion;

    return-void
.end method
