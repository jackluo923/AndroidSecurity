.class public Lcom/alipay/mobile/look/biz/rpc/EmotionTemplateQueryResponse;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;


# static fields
.field private static final serialVersionUID:J = -0x6581d08e55b8c8ddL


# instance fields
.field public emotionTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplateQueryResponse;->emotionTemplates:Ljava/util/List;

    return-void
.end method
