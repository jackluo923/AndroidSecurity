.class Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v3, 0x64

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    # getter for: Lcom/alipay/mobile/common/misc/APNumberPicker;->a:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->access$000(Lcom/alipay/mobile/common/misc/APNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->increment()V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    iget-object v0, v0, Lcom/alipay/mobile/common/misc/APNumberPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    # getter for: Lcom/alipay/mobile/common/misc/APNumberPicker;->b:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->access$100(Lcom/alipay/mobile/common/misc/APNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->decrement()V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    iget-object v0, v0, Lcom/alipay/mobile/common/misc/APNumberPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
