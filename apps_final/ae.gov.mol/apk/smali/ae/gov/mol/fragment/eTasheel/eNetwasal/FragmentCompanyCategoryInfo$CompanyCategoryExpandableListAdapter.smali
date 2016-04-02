.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FragmentCompanyCategoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompanyCategoryExpandableListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/content/Context;)V
    .locals 1
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 229
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 230
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 231
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 241
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 248
    move-object v2, p4

    .line 249
    .local v2, "vi":Landroid/view/View;
    const/4 v1, 0x0

    .line 250
    .local v1, "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    if-nez v2, :cond_0

    .line 251
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;

    .end local v1    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;)V

    .line 252
    .restart local v1    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 253
    const v3, 0x7f06005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewEmployees:Landroid/widget/TextView;

    .line 254
    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewApprovedGroupWorkPermit:Landroid/widget/TextView;

    .line 255
    const v3, 0x7f060060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewAbscondingEmployees:Landroid/widget/TextView;

    .line 256
    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewPercentage:Landroid/widget/TextView;

    .line 257
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 263
    :goto_0
    invoke-virtual {p0, p1, p2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyCategoryInfoVo;

    .line 264
    .local v0, "mCategoryInfoVo":Lae/gov/mol/vo/CompanyCategoryInfoVo;
    iget-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewEmployees:Landroid/widget/TextView;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->getTotalEmployees()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewApprovedGroupWorkPermit:Landroid/widget/TextView;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->getApprovedQuota()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewAbscondingEmployees:Landroid/widget/TextView;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->getAbscornded()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v3, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewPercentage:Landroid/widget/TextView;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->getTotalNat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    return-object v2

    .line 260
    .end local v0    # "mCategoryInfoVo":Lae/gov/mol/vo/CompanyCategoryInfoVo;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    check-cast v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;

    .restart local v1    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 292
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    move-object v1, p3

    .line 299
    .local v1, "vi":Landroid/view/View;
    const/4 v0, 0x0

    .line 300
    .local v0, "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    if-nez v1, :cond_0

    .line 301
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;

    .end local v0    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;)V

    .line 302
    .restart local v0    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 303
    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewNationality:Landroid/widget/TextView;

    .line 304
    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mImageViewIcon:Landroid/widget/ImageView;

    .line 306
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    :goto_0
    if-eqz p2, :cond_1

    .line 311
    iget-object v2, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mImageViewIcon:Landroid/widget/ImageView;

    const v3, 0x7f02017a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    :goto_1
    iget-object v2, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mTextViewNationality:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    return-object v1

    .line 308
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    check-cast v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;

    .restart local v0    # "mHolderChild":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;
    goto :goto_0

    .line 313
    :cond_1
    iget-object v2, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter$HolderChild;->mImageViewIcon:Landroid/widget/ImageView;

    const v3, 0x7f020187

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method
