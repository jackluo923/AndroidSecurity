.class Lcom/alipay/mobile/common/misc/APNumberPicker$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

.field final synthetic val$isUp:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->val$isUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    iget-boolean v2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->val$isUp:Z

    # setter for: Lcom/alipay/mobile/common/misc/APNumberPicker;->a:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/misc/APNumberPicker;->access$002(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)Z

    iget-object v2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->val$isUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/alipay/mobile/common/misc/APNumberPicker;->b:Z
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->access$102(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    iget-object v0, v0, Lcom/alipay/mobile/common/misc/APNumberPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/misc/APNumberPicker$RptUpdater;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method
