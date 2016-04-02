.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;
.super Ljava/lang/Object;
.source "FragmentEnetwasalDateForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f090138

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 133
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strInputValue:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextFromDate:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strFromDate:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextToDate:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strToDate:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strInputValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 138
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strFromDate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strToDate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    :cond_0
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    const v7, 0x7f09022d

    invoke-virtual {v6, v7}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v8, v9}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 143
    .local v1, "mCalendarfromDate":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strfullfromDate:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 146
    .local v2, "mCalendartoDate":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strfulltoDate:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 147
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 148
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strInputValue:Ljava/lang/String;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strFromDate:Ljava/lang/String;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strToDate:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getEnetwasalWebservice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_1
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 156
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    invoke-virtual {v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 157
    const-string v4, "input_method"

    .line 156
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 151
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    const v5, 0x7f090139

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strEnterTag:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v8, v9}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 163
    .end local v1    # "mCalendarfromDate":Ljava/util/Calendar;
    .end local v2    # "mCalendartoDate":Ljava/util/Calendar;
    :cond_4
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strEnterTag:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v8, v9}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_0
.end method
