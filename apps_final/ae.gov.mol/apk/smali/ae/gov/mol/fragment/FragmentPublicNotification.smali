.class public Lae/gov/mol/fragment/FragmentPublicNotification;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentPublicNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;
    }
.end annotation


# instance fields
.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mListView:Landroid/widget/ListView;

.field mPublicNotificationVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PublicNotificationVo;",
            ">;"
        }
    .end annotation
.end field

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lae/gov/mol/fragment/FragmentPublicNotification;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lae/gov/mol/fragment/FragmentPublicNotification;

    invoke-direct {v0}, Lae/gov/mol/fragment/FragmentPublicNotification;-><init>()V

    .line 47
    .local v0, "f":Lae/gov/mol/fragment/FragmentPublicNotification;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0}, Lae/gov/mol/MolFragmentActivity;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentPublicNotification;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v2, 0x7f0300b1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f060758

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "mTextView":Landroid/widget/TextView;
    const v2, 0x7f090125

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentPublicNotification;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v2, 0x7f060757

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentPublicNotification;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 60
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentPublicNotification;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/FragmentPublicNotification$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/FragmentPublicNotification$1;-><init>(Lae/gov/mol/fragment/FragmentPublicNotification;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v2, 0x7f0605f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentPublicNotification;->mListView:Landroid/widget/ListView;

    .line 72
    return-object v1
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PublicNotificationVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "mPublicNotificationVo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/PublicNotificationVo;>;"
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentPublicNotification;->mPublicNotificationVo:Ljava/util/ArrayList;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPublicNotification;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;-><init>(Lae/gov/mol/fragment/FragmentPublicNotification;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    :cond_0
    return-void
.end method
