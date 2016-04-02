.class final Lcom/alipay/android/app/ui/quickpay/widget/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->a:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->a:Z

    # setter for: Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->d:Z
    invoke-static {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$002(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->e:Z
    invoke-static {v3, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$102(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->b:Z

    # setter for: Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->b:Z
    invoke-static {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$202(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->b:Z

    if-nez v3, :cond_1

    :goto_1
    # setter for: Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->c:Z
    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$302(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/p;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-direct {v1, v3}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
