.class public Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "Fragment_eServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableListAdapter"
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private serviceDataGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataGroupVo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataGroupVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p3, "serviceDataGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataGroupVo;>;"
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 434
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->_context:Landroid/content/Context;

    .line 437
    iput-object p3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->serviceDataGroup:Ljava/util/ArrayList;

    .line 439
    iget-object v0, p1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 440
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->serviceDataGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceDataGroupVo;

    iget-object v0, v0, Lae/gov/mol/vo/ServiceDataGroupVo;->ServiceGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 452
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
    .line 463
    if-nez p4, :cond_0

    .line 464
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300e5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p5, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 470
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f06077d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 472
    .local v1, "mTextViewTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1, p2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceDataVo;

    .line 473
    .local v0, "childServiceDataVo":Lae/gov/mol/vo/ServiceDataVo;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 483
    :goto_1
    return-object v2

    .line 467
    .end local v0    # "childServiceDataVo":Lae/gov/mol/vo/ServiceDataVo;
    .end local v1    # "mTextViewTitle":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p4

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 475
    .restart local v0    # "childServiceDataVo":Lae/gov/mol/vo/ServiceDataVo;
    .restart local v1    # "mTextViewTitle":Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceNameEN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 478
    :pswitch_1
    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceNameAR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->serviceDataGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceDataGroupVo;

    iget-object v0, v0, Lae/gov/mol/vo/ServiceDataGroupVo;->ServiceGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->serviceDataGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->serviceDataGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 509
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 518
    if-nez p3, :cond_0

    .line 519
    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0300e2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 524
    .local v5, "view":Landroid/view/View;
    :goto_0
    const v6, 0x7f06076f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 525
    .local v3, "mTextViewTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/ServiceDataGroupVo;

    .line 526
    .local v1, "groupService":Lae/gov/mol/vo/ServiceDataGroupVo;
    iget-object v0, v1, Lae/gov/mol/vo/ServiceDataGroupVo;->GroupNameService:Lae/gov/mol/vo/ServiceDataVo;

    .line 529
    .local v0, "groupNameService":Lae/gov/mol/vo/ServiceDataVo;
    const v6, 0x7f060770

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 530
    .local v2, "indecatorImage":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    const v6, 0x7f020179

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 534
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 550
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    return-object v5

    .line 522
    .end local v0    # "groupNameService":Lae/gov/mol/vo/ServiceDataVo;
    .end local v1    # "groupService":Lae/gov/mol/vo/ServiceDataGroupVo;
    .end local v2    # "indecatorImage":Landroid/widget/ImageView;
    .end local v3    # "mTextViewTitle":Landroid/widget/TextView;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    move-object v5, p3

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_0

    .line 530
    .restart local v0    # "groupNameService":Lae/gov/mol/vo/ServiceDataVo;
    .restart local v1    # "groupService":Lae/gov/mol/vo/ServiceDataGroupVo;
    .restart local v2    # "indecatorImage":Landroid/widget/ImageView;
    .restart local v3    # "mTextViewTitle":Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f020186

    goto :goto_1

    .line 536
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u2022 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceNameEN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 543
    :pswitch_1
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 544
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u2022 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceNameAR()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 565
    const/4 v0, 0x1

    return v0
.end method
