.class Lcom/alipay/android/app/template/YearMonthPicker$2;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/YearMonthPicker;

.field private final synthetic b:Z

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->b:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->c:Z

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->b:Z

    invoke-static {v0, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->a(Lcom/alipay/android/app/template/YearMonthPicker;Z)V

    .line 176
    iget-object v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->b(Lcom/alipay/android/app/template/YearMonthPicker;Z)V

    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->c:Z

    invoke-static {v0, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->c(Lcom/alipay/android/app/template/YearMonthPicker;Z)V

    .line 179
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->c:Z

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->d(Lcom/alipay/android/app/template/YearMonthPicker;Z)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPicker;->j:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;

    iget-object v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return v1

    :cond_1
    move v0, v2

    .line 176
    goto :goto_0
.end method
