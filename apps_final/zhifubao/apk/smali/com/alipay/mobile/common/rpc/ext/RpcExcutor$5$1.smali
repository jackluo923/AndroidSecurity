.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5$1;
.super Ljava/lang/Object;
.source "RpcExcutor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5$1;->a:Landroid/view/View$OnClickListener;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;->access$0(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;)Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->hideTipView()V

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 411
    return-void
.end method
