.class Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;
.super Landroid/widget/Filter;
.source "NationalitiesAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    .line 53
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->convertResultToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lae/gov/mol/vo/GetnationalitiesVo;

    .end local p1    # "resultValue":Ljava/lang/Object;
    invoke-virtual {p1}, Lae/gov/mol/vo/GetnationalitiesVo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    if-eqz p1, :cond_2

    .line 61
    iget-object v2, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    # getter for: Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->suggestions:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->access$0(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v2, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    # getter for: Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->itemsAll:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->access$1(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 68
    .local v1, "filterResults":Landroid/widget/Filter$FilterResults;
    iget-object v2, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    # getter for: Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->suggestions:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->access$0(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    # getter for: Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->suggestions:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->access$0(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 72
    .end local v1    # "filterResults":Landroid/widget/Filter$FilterResults;
    :goto_1
    return-object v1

    .line 62
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/GetnationalitiesVo;

    .line 63
    .local v0, "customer":Lae/gov/mol/vo/GetnationalitiesVo;
    invoke-virtual {v0}, Lae/gov/mol/vo/GetnationalitiesVo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    # getter for: Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->suggestions:Ljava/util/ArrayList;
    invoke-static {v3}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->access$0(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v0    # "customer":Lae/gov/mol/vo/GetnationalitiesVo;
    :cond_2
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 77
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 78
    .local v1, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/GetnationalitiesVo;>;"
    if-eqz p2, :cond_0

    iget v2, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v2, :cond_0

    .line 79
    iget-object v2, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    invoke-virtual {v2}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->clear()V

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    iget-object v2, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    invoke-virtual {v2}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->notifyDataSetChanged()V

    .line 85
    :cond_0
    return-void

    .line 80
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/GetnationalitiesVo;

    .line 81
    .local v0, "c":Lae/gov/mol/vo/GetnationalitiesVo;
    iget-object v3, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;->this$0:Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;

    invoke-virtual {v3, v0}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
