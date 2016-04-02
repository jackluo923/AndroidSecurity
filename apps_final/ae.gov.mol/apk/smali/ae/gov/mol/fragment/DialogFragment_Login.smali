.class public Lae/gov/mol/fragment/DialogFragment_Login;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragment_Login.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;,
        Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;
    }
.end annotation


# instance fields
.field private isTasheelLogin:Z

.field private mBackProcess:Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;

.field private mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mNum:I

.field mProfileVo:Lae/gov/mol/vo/ProfileVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringUserId:Ljava/lang/String;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_Login;->isTasheelLogin:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mStringUserId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/DialogFragment_Login;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_Login;->isTasheelLogin:Z

    return v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/DialogFragment_Login;Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mBackProcess:Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mBackProcess:Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;

    return-object v0
.end method

.method public static newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_Login;
    .locals 3
    .param p0, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p1, "num"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    .line 69
    new-instance v1, Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-direct {v1}, Lae/gov/mol/fragment/DialogFragment_Login;-><init>()V

    .line 70
    .local v1, "f":Lae/gov/mol/fragment/DialogFragment_Login;
    invoke-virtual {v1, p0}, Lae/gov/mol/fragment/DialogFragment_Login;->setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V

    .line 71
    iput-boolean p2, v1, Lae/gov/mol/fragment/DialogFragment_Login;->isTasheelLogin:Z

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/DialogFragment_Login;->setArguments(Landroid/os/Bundle;)V

    .line 77
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

    .line 195
    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 196
    check-cast v0, Landroid/widget/EditText;

    .line 197
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

    .line 198
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 200
    const/4 v1, 0x0

    .line 210
    .end local v0    # "mEditText":Landroid/widget/EditText;
    :cond_0
    :goto_0
    return v1

    .line 202
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

    .line 203
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getmCustomFragment()Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Login;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mNum:I

    .line 86
    const/4 v0, 0x0

    .local v0, "style":I
    const/4 v1, 0x0

    .line 87
    .local v1, "theme":I
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_0

    .line 97
    :goto_0
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_1

    .line 104
    :goto_1
    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/DialogFragment_Login;->setStyle(II)V

    .line 105
    return-void

    .line 88
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 91
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 95
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :pswitch_8
    const v1, 0x103006b

    goto :goto_1

    .line 99
    :pswitch_9
    const v1, 0x1030073

    goto :goto_1

    .line 100
    :pswitch_a
    const v1, 0x103006e

    goto :goto_1

    .line 101
    :pswitch_b
    const v1, 0x103007c

    goto :goto_1

    .line 102
    :pswitch_c
    const v1, 0x103006e

    goto :goto_1

    .line 87
    nop

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

    .line 97
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
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 110
    const v7, 0x7f0300a0

    invoke-virtual {p1, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 111
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Login;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 112
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Login;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 113
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Login;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    const v7, 0x7f060590

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 116
    .local v5, "mEditTextUserName":Landroid/widget/EditText;
    const v7, 0x7f060591

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 117
    .local v4, "mEditTextPassword":Landroid/widget/EditText;
    const v7, 0x7f060592

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 120
    .local v3, "mCheckBoxShowpassword":Landroid/widget/CheckBox;
    const v7, 0x7f060594

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 121
    .local v1, "mButtonCancel":Landroid/widget/Button;
    new-instance v7, Lae/gov/mol/fragment/DialogFragment_Login$1;

    invoke-direct {v7, p0}, Lae/gov/mol/fragment/DialogFragment_Login$1;-><init>(Lae/gov/mol/fragment/DialogFragment_Login;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v7, 0x7f060593

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 131
    .local v2, "mButtonLogin":Landroid/widget/Button;
    new-instance v7, Lae/gov/mol/fragment/DialogFragment_Login$2;

    invoke-direct {v7, p0, v5, v4}, Lae/gov/mol/fragment/DialogFragment_Login$2;-><init>(Lae/gov/mol/fragment/DialogFragment_Login;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v7, Lae/gov/mol/fragment/DialogFragment_Login$3;

    invoke-direct {v7, p0, v4}, Lae/gov/mol/fragment/DialogFragment_Login$3;-><init>(Lae/gov/mol/fragment/DialogFragment_Login;Landroid/widget/EditText;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    const v7, 0x7f060595

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    .local v0, "mButtonCall":Landroid/widget/Button;
    new-instance v7, Lae/gov/mol/fragment/DialogFragment_Login$4;

    invoke-direct {v7, p0}, Lae/gov/mol/fragment/DialogFragment_Login$4;-><init>(Lae/gov/mol/fragment/DialogFragment_Login;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-object v6
.end method

.method public setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 0
    .param p1, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 349
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 350
    return-void
.end method

.method public showDialog(IZ)V
    .locals 5
    .param p1, "Style"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    .line 180
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 181
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 182
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 185
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v3, p1, p2}, Lae/gov/mol/fragment/DialogFragment_Login;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_Login;

    move-result-object v1

    .line 189
    .local v1, "newFragment":Landroid/support/v4/app/DialogFragment;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 190
    const-string v3, "dialog"

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 192
    return-void
.end method
