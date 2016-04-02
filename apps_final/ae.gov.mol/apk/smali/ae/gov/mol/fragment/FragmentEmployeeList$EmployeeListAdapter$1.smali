.class Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;
.super Landroid/widget/Filter;
.source "FragmentEmployeeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    .line 265
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 269
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 270
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "FilteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/GetEmployeeVo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 273
    :cond_0
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->temporarylist:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 274
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->temporarylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 299
    :goto_0
    return-object v3

    .line 277
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 296
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 278
    :cond_2
    const-string v1, ""

    .line 279
    .local v1, "data":Ljava/lang/String;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 291
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 292
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 293
    :cond_3
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    :pswitch_0
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/GetEmployeeVo;->getPersonName_eng()Ljava/lang/String;

    move-result-object v1

    .line 282
    goto :goto_2

    .line 284
    :pswitch_1
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/GetEmployeeVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/GetEmployeeVo;->getPersonName_arb()Ljava/lang/String;

    move-result-object v1

    .line 285
    goto :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 307
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->OriginalList:Ljava/util/ArrayList;

    .line 310
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter$1;->this$1:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    invoke-virtual {v0}, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->notifyDataSetChanged()V

    .line 311
    return-void
.end method
