.class public Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragment_RegisterNewUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$BackProcess;
    }
.end annotation


# instance fields
.field private isTasheelLogin:Z

.field private mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

.field mNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->isTasheelLogin:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;)Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->isTasheelLogin:Z

    return v0
.end method

.method public static newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;
    .locals 3
    .param p0, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p1, "num"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    .line 52
    new-instance v1, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    invoke-direct {v1}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;-><init>()V

    .line 53
    .local v1, "f":Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;
    invoke-virtual {v1, p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V

    .line 54
    iput-boolean p2, v1, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->isTasheelLogin:Z

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->setArguments(Landroid/os/Bundle;)V

    .line 59
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

    .line 168
    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 169
    check-cast v0, Landroid/widget/EditText;

    .line 170
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

    .line 171
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    const/4 v1, 0x0

    .line 182
    .end local v0    # "mEditText":Landroid/widget/EditText;
    :cond_0
    :goto_0
    return v1

    .line 175
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

    .line 176
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getmCustomFragment()Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mNum:I

    .line 68
    const/4 v0, 0x0

    .local v0, "style":I
    const/4 v1, 0x0

    .line 69
    .local v1, "theme":I
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_0

    .line 79
    :goto_0
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_1

    .line 86
    :goto_1
    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->setStyle(II)V

    .line 87
    return-void

    .line 70
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 72
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 73
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :pswitch_8
    const v1, 0x103006b

    goto :goto_1

    .line 81
    :pswitch_9
    const v1, 0x1030073

    goto :goto_1

    .line 82
    :pswitch_a
    const v1, 0x103006e

    goto :goto_1

    .line 83
    :pswitch_b
    const v1, 0x103007c

    goto :goto_1

    .line 84
    :pswitch_c
    const v1, 0x103006e

    goto :goto_1

    .line 69
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

    .line 79
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
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 92
    const v4, 0x7f0300c0

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const v4, 0x7f06067e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 99
    .local v2, "mImageViewClose":Landroid/widget/ImageView;
    new-instance v4, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$1;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$1;-><init>(Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v4, 0x7f06067f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    .local v0, "mButtonCancel":Landroid/widget/Button;
    new-instance v4, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$2;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$2;-><init>(Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v4, 0x7f060680

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    .local v1, "mButtonSubmit":Landroid/widget/Button;
    new-instance v4, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$3;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$3;-><init>(Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object v3
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 137
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 138
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 139
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 140
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    return-void
.end method

.method public setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 0
    .param p1, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 252
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 253
    return-void
.end method

.method public showDialog(IZ)V
    .locals 6
    .param p1, "Style"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 154
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 155
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 158
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 161
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v3, p1, p2}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    move-result-object v1

    .line 162
    .local v1, "newFragment":Landroid/support/v4/app/DialogFragment;
    const v3, 0x7f0a00c2

    invoke-virtual {v1, v5, v3}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 163
    invoke-virtual {v1, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 164
    const-string v3, "dialog"

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 165
    return-void
.end method
