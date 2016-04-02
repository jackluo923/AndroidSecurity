.class final Lcom/alipay/android/app/display/uielement/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UIDatePicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/av;->b:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/av;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/av;->b:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/uielement/UIDatePicker;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/av;->b:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->b(Lcom/alipay/android/app/display/uielement/UIDatePicker;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/av;->b:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/av;->b:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-static {v2}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/uielement/UIDatePicker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/uielement/UIDatePicker;Landroid/widget/TextView;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
