.class public Lcom/alipay/android/app/widget/CustomDatePickerDialog;
.super Landroid/app/DatePickerDialog;


# instance fields
.field private a:Ljava/util/Date;

.field private b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method private static a(Landroid/widget/DatePicker;Ljava/util/Calendar;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/DatePicker;->updateDate(III)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    return-void
.end method

.method public final b(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->b:Ljava/util/Date;

    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {p1, v0}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a(Landroid/widget/DatePicker;Ljava/util/Calendar;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->b:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->b:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {p1, v0}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a(Landroid/widget/DatePicker;Ljava/util/Calendar;)V

    goto :goto_0
.end method
