.class public Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentContactUsNearBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "umar size"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v2, v2, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v2}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 163
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 169
    move-object v2, p2

    .line 171
    .local v2, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 172
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 173
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300b3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 174
    new-instance v3, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    invoke-direct {v3, v4}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    .line 175
    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    const v3, 0x7f0605f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 176
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v3}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/ServiceCenterData;

    .line 181
    .local v1, "mServiceCenterData":Lae/gov/mol/vo/ServiceCenterData;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 194
    :goto_1
    return-object v2

    .line 178
    .end local v1    # "mServiceCenterData":Lae/gov/mol/vo/ServiceCenterData;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    goto :goto_0

    .line 183
    .restart local v1    # "mServiceCenterData":Lae/gov/mol/vo/ServiceCenterData;
    :pswitch_0
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_name_eng()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "umar"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_name_eng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :pswitch_1
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_name_arb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
