.class Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/CustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomDatePickerDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;


# direct methods
.method public constructor <init>(Lae/gov/mol/helper/CustomFragment;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 687
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->this$0:Lae/gov/mol/helper/CustomFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 688
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 689
    invoke-direct {p0, p4, p5, p6}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->updateTitle(III)V

    .line 690
    return-void
.end method

.method private updateTitle(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 696
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 697
    .local v0, "mCalendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 698
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 699
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 700
    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 701
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 706
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 693
    invoke-direct {p0, p2, p3, p4}, Lae/gov/mol/helper/CustomFragment$CustomDatePickerDialog;->updateTitle(III)V

    .line 694
    return-void
.end method
