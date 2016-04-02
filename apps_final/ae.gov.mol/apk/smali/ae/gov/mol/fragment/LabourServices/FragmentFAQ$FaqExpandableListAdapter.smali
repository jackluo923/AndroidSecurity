.class public Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FragmentFAQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentFAQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaqExpandableListAdapter"
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private _listDataChild:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _listDataHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

.field rowResourceChild:I

.field rowResourceGroup:I

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listDataHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listChildData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 114
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    .line 112
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 108
    iput v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->rowResourceGroup:I

    .line 109
    iput v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->rowResourceChild:I

    .line 115
    iput-object p2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->_context:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->_listDataHeader:Ljava/util/List;

    .line 117
    iput-object p4, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->_listDataChild:Ljava/util/Map;

    .line 118
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 119
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->_listDataChild:Ljava/util/Map;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->_listDataHeader:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 129
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "child":Ljava/lang/String;
    move-object v2, p4

    .line 141
    .local v2, "vi":Landroid/view/View;
    if-nez p4, :cond_0

    .line 142
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 143
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030099

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    new-instance v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    invoke-direct {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;)V

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    .line 145
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    const v3, 0x7f060548

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    .line 146
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-object v2

    .line 148
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->_listDataHeader:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->_listDataHeader:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 174
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
    .line 180
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, "groupHeader":Ljava/lang/String;
    move-object v2, p3

    .line 185
    .local v2, "vi":Landroid/view/View;
    if-nez p3, :cond_0

    .line 186
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 187
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 188
    new-instance v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    invoke-direct {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;)V

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    .line 189
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    const v3, 0x7f060549

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 190
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-object v2

    .line 192
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method
