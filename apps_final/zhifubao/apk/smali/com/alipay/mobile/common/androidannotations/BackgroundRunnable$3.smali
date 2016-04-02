.class Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;
.super Ljava/lang/Object;
.source "BackgroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/view/View$OnClickListener;

.field private final synthetic c:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    iput-object p2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->b:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->c:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$1(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)V

    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->c:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3$1;

    iget-object v3, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->b:Landroid/view/View$OnClickListener;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3$1;-><init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$3(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 454
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0
.end method
