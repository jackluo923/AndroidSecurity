.class Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v3, 0x64

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    # getter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->b:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$200(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    # getter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->d:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$000(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->incrementYear()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    # getter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->e:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$100(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->incrementMonth()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    # getter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->c:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$300(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    # getter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->d:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$000(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->decrementYear()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    # getter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->e:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$100(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->decrementMonth()V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
