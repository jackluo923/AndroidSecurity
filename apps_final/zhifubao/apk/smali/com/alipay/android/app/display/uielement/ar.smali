.class final Lcom/alipay/android/app/display/uielement/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/alipay/android/app/display/uielement/UIDatePicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Ljava/util/Calendar;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ar;->c:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/ar;->a:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/alipay/android/app/display/uielement/ar;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ar;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ar;->c:Lcom/alipay/android/app/display/uielement/UIDatePicker;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ar;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ar;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/uielement/UIDatePicker;Landroid/widget/TextView;Ljava/util/Date;)V

    return-void
.end method
