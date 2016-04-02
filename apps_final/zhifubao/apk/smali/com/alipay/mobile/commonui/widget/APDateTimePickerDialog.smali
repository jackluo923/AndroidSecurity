.class public Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;
.super Landroid/view/View;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APViewInterface;


# instance fields
.field private a:Landroid/widget/DatePicker;

.field private b:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 8

    const/high16 v3, 0x60000

    const/16 v7, 0xb

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->date_time_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->DatePicker:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a:Landroid/widget/DatePicker;

    sget v1, Lcom/alipay/mobile/ui/R$id;->TimePicker:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->b:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->b:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->b:Landroid/widget/TimePicker;

    invoke-virtual {v1, v3}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$1;-><init>(Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;Ljava/util/Calendar;)V

    new-instance v2, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;

    invoke-direct {v2, p0, p3}, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;-><init>(Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;Ljava/util/Calendar;)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a:Landroid/widget/DatePicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->b:Landroid/widget/TimePicker;

    invoke-virtual {p2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->b:Landroid/widget/TimePicker;

    const/16 v3, 0xc

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->b:Landroid/widget/TimePicker;

    invoke-virtual {v2, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u8bbe\u7f6e\u65e5\u671f\u65f6\u95f4"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->a:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public getTimePicker()Landroid/widget/TimePicker;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;->b:Landroid/widget/TimePicker;

    return-object v0
.end method
