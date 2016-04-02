.class Lcom/alipay/mobile/common/transport/http/RpcTestCase$1;
.super Ljava/util/TimerTask;
.source "RpcTestCase.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/RpcTestCase;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/RpcTestCase;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/RpcTestCase$1;->this$0:Lcom/alipay/mobile/common/transport/http/RpcTestCase;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/RpcTestCase$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/RpcTestCase$1;->this$0:Lcom/alipay/mobile/common/transport/http/RpcTestCase;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/RpcTestCase$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/RpcTestCase;->testSimpleRpc(Landroid/content/Context;)V

    .line 30
    return-void
.end method
