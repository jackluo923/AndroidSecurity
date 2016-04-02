.class Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;

.field final synthetic val$selectedCalendar:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;->val$selectedCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;->val$selectedCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;->val$selectedCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDateTimePickerDialog$2;->val$selectedCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
