.class public Lcom/alipay/android/app/display/uielement/UIDatePicker;
.super Lcom/alipay/android/app/display/uielement/BaseElement;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/widget/TextView;",
        ">;",
        "Lcom/alipay/android/app/display/uielement/ISubmitable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:Ljava/util/Date;

.field private d:Ljava/text/DateFormat;

.field private e:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UIDatePicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UIDatePicker;Landroid/widget/TextView;Ljava/util/Date;)V
    .locals 2

    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/au;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/au;-><init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Lcom/alipay/android/app/display/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/UIDatePicker;)Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->DatePicker:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 6

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;

    new-instance v2, Lcom/alipay/android/app/display/uielement/ar;

    invoke-direct {v2, p0, v1, p2}, Lcom/alipay/android/app/display/uielement/ar;-><init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Ljava/util/Calendar;Landroid/widget/TextView;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->b(Ljava/util/Date;)V

    new-instance v1, Lcom/alipay/android/app/display/uielement/as;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/display/uielement/as;-><init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Lcom/alipay/android/app/widget/CustomDatePickerDialog;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Landroid/os/Handler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/os/Handler;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/ax;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/ax;-><init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a:Ljava/lang/String;

    :try_start_1
    const-string/jumbo v1, "date_start"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->b:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    const-string/jumbo v1, "date_end"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->c:Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const-string/jumbo v0, "dateFormat"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x835

    const/16 v2, 0xc

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->c:Ljava/util/Date;

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method protected final b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/av;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/av;-><init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->c(Landroid/os/Handler;Z)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/aw;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/aw;-><init>(Lcom/alipay/android/app/display/uielement/UIDatePicker;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->b:Ljava/util/Date;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->c:Ljava/util/Date;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->e:Landroid/widget/TextView;

    return-void
.end method

.method public final i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 4

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIDatePicker;->d:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_date_picker"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
