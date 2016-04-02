.class final Lcom/alipay/android/app/display/uielement/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/widget/CustomDatePickerDialog;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UIDatePicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Lcom/alipay/android/app/widget/CustomDatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/as;->b:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/as;->a:Lcom/alipay/android/app/widget/CustomDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/as;->a:Lcom/alipay/android/app/widget/CustomDatePickerDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->show()V

    new-instance v0, Lcom/alipay/android/app/display/uielement/at;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/at;-><init>(Lcom/alipay/android/app/display/uielement/as;Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/as;->b:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method
