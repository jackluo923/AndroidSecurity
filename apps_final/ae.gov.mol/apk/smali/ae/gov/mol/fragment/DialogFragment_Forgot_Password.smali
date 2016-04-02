.class public Lae/gov/mol/fragment/DialogFragment_Forgot_Password;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragment_Forgot_Password.java"


# static fields
.field static mStringValue:Ljava/lang/String;


# instance fields
.field private isTasheelLogin:Z

.field private mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

.field mNum:I

.field mTextViewDetail:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->isTasheelLogin:Z

    .line 25
    return-void
.end method

.method public static newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZLjava/lang/String;)Lae/gov/mol/fragment/DialogFragment_Forgot_Password;
    .locals 3
    .param p0, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p1, "num"    # I
    .param p2, "isTasheelLogin"    # Z
    .param p3, "mValue"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v1, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    invoke-direct {v1}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;-><init>()V

    .line 44
    .local v1, "f":Lae/gov/mol/fragment/DialogFragment_Forgot_Password;
    invoke-virtual {v1, p0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V

    .line 45
    iput-boolean p2, v1, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->isTasheelLogin:Z

    .line 46
    sput-object p3, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mStringValue:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public getmCustomFragment()Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mNum:I

    .line 60
    const/4 v0, 0x0

    .local v0, "style":I
    const/4 v1, 0x0

    .line 61
    .local v1, "theme":I
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_1

    .line 78
    :goto_1
    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->setStyle(II)V

    .line 79
    return-void

    .line 62
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 64
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 65
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 69
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :pswitch_8
    const v1, 0x103006b

    goto :goto_1

    .line 73
    :pswitch_9
    const v1, 0x1030073

    goto :goto_1

    .line 74
    :pswitch_a
    const v1, 0x103006e

    goto :goto_1

    .line 75
    :pswitch_b
    const v1, 0x103007c

    goto :goto_1

    .line 76
    :pswitch_c
    const v1, 0x103006e

    goto :goto_1

    .line 61
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

    .line 71
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
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 85
    const v3, 0x7f030074

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 87
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    const v3, 0x7f060338

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mTextViewDetail:Landroid/widget/TextView;

    .line 92
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mTextViewDetail:Landroid/widget/TextView;

    sget-object v4, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mStringValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v3, 0x7f060336

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 95
    .local v1, "mImageViewClose":Landroid/widget/ImageView;
    new-instance v3, Lae/gov/mol/fragment/DialogFragment_Forgot_Password$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password$1;-><init>(Lae/gov/mol/fragment/DialogFragment_Forgot_Password;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v3, 0x7f060339

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, "mButtonCancel":Landroid/widget/Button;
    new-instance v3, Lae/gov/mol/fragment/DialogFragment_Forgot_Password$2;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password$2;-><init>(Lae/gov/mol/fragment/DialogFragment_Forgot_Password;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-object v2
.end method

.method public setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 0
    .param p1, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 142
    return-void
.end method

.method public showDialog(IZ)V
    .locals 5
    .param p1, "Style"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    .line 122
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 123
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 124
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 127
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 130
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    sget-object v4, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->mStringValue:Ljava/lang/String;

    invoke-static {v3, p1, p2, v4}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZLjava/lang/String;)Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    move-result-object v1

    .line 131
    .local v1, "newFragment":Landroid/support/v4/app/DialogFragment;
    const/4 v3, 0x2

    const v4, 0x7f0a00c2

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 133
    const-string v3, "dialog"

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 134
    return-void
.end method
