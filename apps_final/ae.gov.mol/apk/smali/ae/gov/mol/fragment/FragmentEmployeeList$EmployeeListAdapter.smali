.class public Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentEmployeeList.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FragmentEmployeeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmployeeListAdapter"
.end annotation


# instance fields
.field public OriginalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetEmployeeVo;",
            ">;"
        }
    .end annotation
.end field

.field public temporarylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetEmployeeVo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/gov/mol/fragment/FragmentEmployeeList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/FragmentEmployeeList;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 209
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/fragment/FragmentEmployeeList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetEmployeeVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "OriginalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/GetEmployeeVo;>;"
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 212
    iput-object p2, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    .line 213
    iput-object p2, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->temporarylist:Ljava/util/ArrayList;

    .line 214
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;-><init>(Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;)V

    .line 313
    .local v0, "filter":Landroid/widget/Filter;
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 233
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    invoke-virtual {v5}, Lae/gov/mol/fragment/FragmentEmployeeList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030052

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 235
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f06023a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 236
    .local v3, "mTextViewTitle":Landroid/widget/TextView;
    const v5, 0x7f06023b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    .local v2, "mTextViewNationality":Landroid/widget/TextView;
    const v5, 0x7f06023c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 239
    .local v1, "mTextViewExpiryDate":Landroid/widget/TextView;
    const v5, 0x7f060230

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 241
    .local v0, "mImageViewRightWrong":Landroid/widget/ImageView;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 256
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeVo;->getCardExpiryDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeVo;->getPhoto()Ljava/lang/String;

    move-result-object v5

    # invokes: Lae/gov/mol/fragment/FragmentEmployeeList;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v6, v0, v5}, Lae/gov/mol/fragment/FragmentEmployeeList;->access$0(Lae/gov/mol/fragment/FragmentEmployeeList;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 259
    return-object v4

    .line 243
    :pswitch_0
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeVo;->getPersonName_eng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeVo;->getNatioanlity_eng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeVo;->getPersonName_arb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeVo;->getNationality_arb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
