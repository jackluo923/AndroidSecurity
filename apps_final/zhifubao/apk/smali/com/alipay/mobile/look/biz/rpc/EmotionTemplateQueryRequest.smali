.class public Lcom/alipay/mobile/look/biz/rpc/EmotionTemplateQueryRequest;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1e60ad73ad9a8543L


# instance fields
.field public bizType:Ljava/lang/String;

.field public templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplateQueryRequest;->templateId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplateQueryRequest;->bizType:Ljava/lang/String;

    return-void
.end method
