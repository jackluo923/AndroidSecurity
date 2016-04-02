.class Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;
.super Ljava/lang/Object;
.source "BackgroundRunnable.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:[Ljava/lang/Object;

.field final synthetic this$1:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;->this$1:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;

    iput-object p2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;->a:[Ljava/lang/Object;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;->this$1:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->access$0(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->hideTipView()V

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;->this$1:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;

    # getter for: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;->access$0(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2$1;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->start([Ljava/lang/Object;)V

    .line 416
    return-void
.end method
