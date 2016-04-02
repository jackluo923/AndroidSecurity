.class public Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6dd94311082f1806L


# instance fields
.field public memo:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x6d

    iput v0, p0, Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;->resultStatus:I

    const-string/jumbo v0, "\u7cfb\u7edf\u9519\u8bef\u3002"

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;->memo:Ljava/lang/String;

    return-void
.end method
