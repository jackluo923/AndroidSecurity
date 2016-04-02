.class public Lae/gov/mol/fragment/FragmentPrivateNotification;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentPrivateNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/FragmentPrivateNotification$NotificationAdapter;
    }
.end annotation


# instance fields
.field isUserLoggedIn:Z

.field mFragmentNotification_Pager:Lae/gov/mol/fragment/FragmentNotification_Pager;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mListView:Landroid/widget/ListView;

.field mPrivateNotificationVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PrivateNotificationVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->isUserLoggedIn:Z

    .line 28
    return-void
.end method

.method public static newInstance()Lae/gov/mol/fragment/FragmentPrivateNotification;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lae/gov/mol/fragment/FragmentPrivateNotification;

    invoke-direct {v0}, Lae/gov/mol/fragment/FragmentPrivateNotification;-><init>()V

    .line 53
    .local v0, "f":Lae/gov/mol/fragment/FragmentPrivateNotification;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentPrivateNotification;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/FragmentNotification_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mFragmentNotification_Pager:Lae/gov/mol/fragment/FragmentNotification_Pager;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 60
    const v2, 0x7f0300b1

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mFragmentNotification_Pager:Lae/gov/mol/fragment/FragmentNotification_Pager;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iput-boolean v4, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->isUserLoggedIn:Z

    .line 87
    :goto_0
    return-object v1

    .line 67
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->isUserLoggedIn:Z

    .line 68
    const v2, 0x7f060758

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "mTextView":Landroid/widget/TextView;
    const v2, 0x7f090125

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentPrivateNotification;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v2, 0x7f060757

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/FragmentPrivateNotification$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/FragmentPrivateNotification$1;-><init>(Lae/gov/mol/fragment/FragmentPrivateNotification;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f0605f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mListView:Landroid/widget/ListView;

    goto :goto_0
.end method

.method public showFeatureDialog(Lae/gov/mol/fragment/FragmentNotification_Pager;)V
    .locals 5
    .param p1, "mFragmentNotification_Pager"    # Lae/gov/mol/fragment/FragmentNotification_Pager;

    .prologue
    .line 149
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0900c7

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentPrivateNotification;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    const v2, 0x7f0900c8

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentPrivateNotification;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 152
    const v3, 0x7f09016d

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/FragmentPrivateNotification;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lae/gov/mol/fragment/FragmentPrivateNotification$2;

    invoke-direct {v4, p0, p1}, Lae/gov/mol/fragment/FragmentPrivateNotification$2;-><init>(Lae/gov/mol/fragment/FragmentPrivateNotification;Lae/gov/mol/fragment/FragmentNotification_Pager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 156
    const v3, 0x7f090170

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/FragmentPrivateNotification;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lae/gov/mol/fragment/FragmentPrivateNotification$3;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/FragmentPrivateNotification$3;-><init>(Lae/gov/mol/fragment/FragmentPrivateNotification;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 163
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PrivateNotificationVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "mPrivateNotificationVo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/PrivateNotificationVo;>;"
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mPrivateNotificationVo:Ljava/util/ArrayList;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/FragmentPrivateNotification$NotificationAdapter;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/FragmentPrivateNotification$NotificationAdapter;-><init>(Lae/gov/mol/fragment/FragmentPrivateNotification;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->isUserLoggedIn:Z

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPrivateNotification;->mFragmentNotification_Pager:Lae/gov/mol/fragment/FragmentNotification_Pager;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FragmentPrivateNotification;->showFeatureDialog(Lae/gov/mol/fragment/FragmentNotification_Pager;)V

    .line 100
    :cond_1
    return-void
.end method
