.class final Lcom/alipay/android/app/display/uielement/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UIDatePicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ax;->a:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ax;->a:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/uielement/UIDatePicker;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ax;->a:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ax;->a:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/uielement/UIDatePicker;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
