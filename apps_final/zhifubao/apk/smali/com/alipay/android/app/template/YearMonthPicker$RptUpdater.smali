.class Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/YearMonthPicker;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x64

    .line 272
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->a(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->b(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->a()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->c(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->b()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPicker;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->d(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->b(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->c()V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->c(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->d()V

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPicker;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    :cond_5
    return-void
.end method
