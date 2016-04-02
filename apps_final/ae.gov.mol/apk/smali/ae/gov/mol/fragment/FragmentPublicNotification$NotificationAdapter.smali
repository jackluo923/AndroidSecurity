.class public Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentPublicNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FragmentPublicNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentPublicNotification;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/FragmentPublicNotification;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;->this$0:Lae/gov/mol/fragment/FragmentPublicNotification;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;->this$0:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentPublicNotification;->mPublicNotificationVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;->this$0:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentPublicNotification;->mPublicNotificationVo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;->this$0:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentPublicNotification;->mPublicNotificationVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;->this$0:Lae/gov/mol/fragment/FragmentPublicNotification;

    invoke-virtual {v2}, Lae/gov/mol/fragment/FragmentPublicNotification;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0605f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, "mTextViewnotificationText":Landroid/widget/TextView;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 125
    :goto_0
    return-object v1

    .line 115
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;->this$0:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentPublicNotification;->mPublicNotificationVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PublicNotificationVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PublicNotificationVo;->getNotification_Eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentPublicNotification$NotificationAdapter;->this$0:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentPublicNotification;->mPublicNotificationVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PublicNotificationVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PublicNotificationVo;->getNotification_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
