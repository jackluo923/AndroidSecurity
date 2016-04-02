.class public Lae/gov/mol/fragment/DialogFragment_ForgotPassword;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragment_ForgotPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;
    }
.end annotation


# instance fields
.field private isTasheelLogin:Z

.field length:I

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

.field mFragment_Forgot_Password:Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

.field mNum:I

.field strEmailAddress:Ljava/lang/String;

.field strPersonNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->isTasheelLogin:Z

    .line 59
    const/16 v0, 0xe

    iput v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->length:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strPersonNumber:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strEmailAddress:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method public static newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_ForgotPassword;
    .locals 3
    .param p0, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p1, "num"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    .line 65
    new-instance v1, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    invoke-direct {v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;-><init>()V

    .line 66
    .local v1, "f":Lae/gov/mol/fragment/DialogFragment_ForgotPassword;
    invoke-virtual {v1, p0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V

    .line 67
    iput-boolean p2, v1, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->isTasheelLogin:Z

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v1
.end method


# virtual methods
.method public CheckInputConstraint(Landroid/view/View;Ljava/lang/String;)Z
    .locals 5
    .param p1, "vi"    # Landroid/view/View;
    .param p2, "mStrMessage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 198
    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 199
    check-cast v0, Landroid/widget/EditText;

    .line 200
    .local v0, "mEditText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 203
    const/4 v1, 0x0

    .line 213
    .end local v0    # "mEditText":Landroid/widget/EditText;
    :cond_0
    :goto_0
    return v1

    .line 205
    .restart local v0    # "mEditText":Landroid/widget/EditText;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 206
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getmCustomFragment()Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mNum:I

    .line 80
    new-instance v2, Lae/gov/mol/helper/CommonMethods;

    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v2, v3}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 83
    const/4 v0, 0x0

    .local v0, "style":I
    const/4 v1, 0x0

    .line 84
    .local v1, "theme":I
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_0

    .line 94
    :goto_0
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_1

    .line 101
    :goto_1
    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->setStyle(II)V

    .line 102
    return-void

    .line 85
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 87
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 88
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 92
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :pswitch_8
    const v1, 0x103006b

    goto :goto_1

    .line 96
    :pswitch_9
    const v1, 0x1030073

    goto :goto_1

    .line 97
    :pswitch_a
    const v1, 0x103006e

    goto :goto_1

    .line 98
    :pswitch_b
    const v1, 0x103007c

    goto :goto_1

    .line 99
    :pswitch_c
    const v1, 0x103006e

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 108
    const v6, 0x7f030075

    invoke-virtual {p1, v6, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 109
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 111
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    const v6, 0x7f06033b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 115
    .local v3, "mEditTextPersonNumber":Landroid/widget/EditText;
    const v6, 0x7f06033c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 116
    .local v2, "mEditTextEmail":Landroid/widget/EditText;
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 117
    new-array v6, v10, [Landroid/text/InputFilter;

    new-instance v7, Lae/gov/mol/helper/InputFilterMinMax;

    iget v8, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->length:I

    invoke-direct {v7, v10, v8}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 119
    const v6, 0x7f06033a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 120
    .local v4, "mImageViewClose":Landroid/widget/ImageView;
    new-instance v6, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$1;

    invoke-direct {v6, p0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$1;-><init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v6, 0x7f06033d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 130
    .local v0, "mButtonCancel":Landroid/widget/Button;
    new-instance v6, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$2;

    invoke-direct {v6, p0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$2;-><init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v6, 0x7f06033e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 139
    .local v1, "mButtonSubmit":Landroid/widget/Button;
    new-instance v6, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;

    invoke-direct {v6, p0, v3, v2}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;-><init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-object v5
.end method

.method public setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 0
    .param p1, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 296
    return-void
.end method

.method public showDialog(IZ)V
    .locals 6
    .param p1, "Style"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    const/4 v5, 0x0

    .line 182
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 183
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 184
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 187
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 190
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v3, p1, p2}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    move-result-object v1

    .line 191
    .local v1, "newFragment":Landroid/support/v4/app/DialogFragment;
    const v3, 0x7f0a00c2

    invoke-virtual {v1, v5, v3}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 192
    invoke-virtual {v1, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 193
    const-string v3, "dialog"

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 195
    return-void
.end method
