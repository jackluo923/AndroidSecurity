.class Lcom/alipay/mobile/common/misc/YearMonthPicker$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

.field final synthetic val$isUp:Z

.field final synthetic val$isYear:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->val$isYear:Z

    iput-boolean p3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->val$isUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->val$isYear:Z

    # setter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->d:Z
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$002(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->val$isYear:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->e:Z
    invoke-static {v3, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$102(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->val$isUp:Z

    # setter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->b:Z
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$202(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->val$isUp:Z

    if-nez v3, :cond_1

    :goto_1
    # setter for: Lcom/alipay/mobile/common/misc/YearMonthPicker;->c:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->access$302(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-direct {v1, v3}, Lcom/alipay/mobile/common/misc/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
