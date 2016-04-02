.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_Inquiry_Get_PendingPayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mGetPendingPayment_Handler:Lae/gov/xmlhandler/GetPendingPayment_Handler;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Lae/gov/xmlhandler/GetPendingPayment_Handler;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/xmlhandler/GetPendingPayment_Handler;->getmEnq_GetPendingPayments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mGetPendingPayment_Handler:Lae/gov/xmlhandler/GetPendingPayment_Handler;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Lae/gov/xmlhandler/GetPendingPayment_Handler;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/xmlhandler/GetPendingPayment_Handler;->getmEnq_GetPendingPayments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    move-object v1, p2

    .line 131
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 132
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    new-instance v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    .line 135
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    const v2, 0x7f060515

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    const v2, 0x7f060516

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mGetPendingPayment_Handler:Lae/gov/xmlhandler/GetPendingPayment_Handler;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Lae/gov/xmlhandler/GetPendingPayment_Handler;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/xmlhandler/GetPendingPayment_Handler;->getmEnq_GetPendingPayments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v2}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getPAYCARD_NO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 156
    :goto_1
    return-object v1

    .line 139
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v2}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getPER_NAME_ENG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v2}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getWPDESCE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v2}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getPER_NAME_ARB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v2}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getWPDESCA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
