.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;
.super Ljava/lang/Object;
.source "RpcExcutor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->a:Landroid/view/View;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$0(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;I)V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    const-string/jumbo v0, "RpcExcutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "titleBar#marginTop="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I
    invoke-static {v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$1(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
