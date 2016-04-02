.class public Lae/gov/mol/fragment/DialogFragment_CallCenter;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragment_CallCenter.java"


# instance fields
.field private isTasheelLogin:Z

.field private mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

.field mNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->isTasheelLogin:Z

    .line 27
    return-void
.end method

.method public static newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_CallCenter;
    .locals 3
    .param p0, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p1, "num"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    .line 37
    new-instance v1, Lae/gov/mol/fragment/DialogFragment_CallCenter;

    invoke-direct {v1}, Lae/gov/mol/fragment/DialogFragment_CallCenter;-><init>()V

    .line 38
    .local v1, "f":Lae/gov/mol/fragment/DialogFragment_CallCenter;
    invoke-virtual {v1, p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V

    .line 39
    iput-boolean p2, v1, Lae/gov/mol/fragment/DialogFragment_CallCenter;->isTasheelLogin:Z

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public getmCustomFragment()Lae/gov/mol/helper/CustomFragmentActivity;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mNum:I

    .line 52
    const/4 v0, 0x0

    .local v0, "style":I
    const/4 v1, 0x0

    .line 53
    .local v1, "theme":I
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_0

    .line 63
    :goto_0
    iget v2, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mNum:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x6

    packed-switch v2, :pswitch_data_1

    .line 70
    :goto_1
    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->setStyle(II)V

    .line 71
    return-void

    .line 54
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 56
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 57
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 61
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :pswitch_8
    const v1, 0x103006b

    goto :goto_1

    .line 65
    :pswitch_9
    const v1, 0x1030073

    goto :goto_1

    .line 66
    :pswitch_a
    const v1, 0x103006e

    goto :goto_1

    .line 67
    :pswitch_b
    const v1, 0x103007c

    goto :goto_1

    .line 68
    :pswitch_c
    const v1, 0x103006e

    goto :goto_1

    .line 53
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

    .line 63
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

    .line 77
    const v4, 0x7f030032

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 79
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 80
    invoke-virtual {p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const v4, 0x7f060097

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 83
    .local v2, "mImageViewClose":Landroid/widget/ImageView;
    new-instance v4, Lae/gov/mol/fragment/DialogFragment_CallCenter$1;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter$1;-><init>(Lae/gov/mol/fragment/DialogFragment_CallCenter;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v4, 0x7f060099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 93
    .local v1, "mButtonCancel":Landroid/widget/Button;
    new-instance v4, Lae/gov/mol/fragment/DialogFragment_CallCenter$2;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter$2;-><init>(Lae/gov/mol/fragment/DialogFragment_CallCenter;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v4, 0x7f06009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    .local v0, "mButtonCall":Landroid/widget/Button;
    new-instance v4, Lae/gov/mol/fragment/DialogFragment_CallCenter$3;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/DialogFragment_CallCenter$3;-><init>(Lae/gov/mol/fragment/DialogFragment_CallCenter;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object v3
.end method

.method public setmCustomFragment(Lae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 0
    .param p1, "mCustomFragment"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 147
    return-void
.end method

.method public showDialog(IZ)V
    .locals 5
    .param p1, "Style"    # I
    .param p2, "isTasheelLogin"    # Z

    .prologue
    .line 128
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 129
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 130
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 133
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v3, p1, p2}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_CallCenter;

    move-result-object v1

    .line 135
    .local v1, "newFragment":Landroid/support/v4/app/DialogFragment;
    const/4 v3, 0x2

    const v4, 0x7f0a00c2

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 136
    const-string v3, "dialog"

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 138
    return-void
.end method
