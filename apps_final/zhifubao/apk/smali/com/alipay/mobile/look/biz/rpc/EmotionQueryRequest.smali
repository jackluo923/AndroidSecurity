.class public Lcom/alipay/mobile/look/biz/rpc/EmotionQueryRequest;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38906b43863f21aaL


# instance fields
.field public emotionID:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionQueryRequest;->emotionID:Ljava/lang/String;

    return-void
.end method
