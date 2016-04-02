.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;
.super Ljava/lang/Object;
.source "RpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->b:[Ljava/lang/Object;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;)Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$3(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)V

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->a:Landroid/app/Activity;

    .line 336
    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->b:[Ljava/lang/Object;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;[Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$5(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 347
    return-void
.end method
