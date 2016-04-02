.class Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;
.super Ljava/lang/Object;
.source "BackgroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    iput-object p2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->b:[Ljava/lang/Object;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$1(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)V

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->a:Landroid/app/Activity;

    .line 408
    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    new-instance v2, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;

    iget-object v3, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->b:[Ljava/lang/Object;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;-><init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;[Ljava/lang/Object;)V

    .line 409
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$3(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 419
    return-void
.end method
