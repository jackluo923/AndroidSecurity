.class Lcom/alipay/android/app/template/YearMonthPicker$1;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/YearMonthPicker;

.field private final synthetic b:Z

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->b:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->c:Z

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->b:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->c:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/YearMonthPicker;->a(Z)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->a:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->c:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/YearMonthPicker;->decrement(Z)V

    goto :goto_0
.end method
