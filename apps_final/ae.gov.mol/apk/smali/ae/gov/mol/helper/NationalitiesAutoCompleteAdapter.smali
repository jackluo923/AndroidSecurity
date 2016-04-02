.class public Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NationalitiesAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lae/gov/mol/vo/GetnationalitiesVo;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetnationalitiesVo;",
            ">;"
        }
    .end annotation
.end field

.field private itemsAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetnationalitiesVo;",
            ">;"
        }
    .end annotation
.end field

.field nameFilter:Landroid/widget/Filter;

.field private suggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetnationalitiesVo;",
            ">;"
        }
    .end annotation
.end field

.field private viewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetnationalitiesVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/GetnationalitiesVo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    new-instance v0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;

    invoke-direct {v0, p0}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter$1;-><init>(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)V

    iput-object v0, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->nameFilter:Landroid/widget/Filter;

    .line 26
    iput-object p3, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->items:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->itemsAll:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->suggestions:Ljava/util/ArrayList;

    .line 29
    iput p2, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->viewResourceId:I

    .line 30
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->suggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->itemsAll:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->nameFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    move-object v2, p2

    .line 34
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 36
    .local v3, "vi":Landroid/view/LayoutInflater;
    iget v4, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->viewResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    .end local v3    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lae/gov/mol/helper/NationalitiesAutoCompleteAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/GetnationalitiesVo;

    .line 39
    .local v0, "customer":Lae/gov/mol/vo/GetnationalitiesVo;
    if-eqz v0, :cond_1

    .line 40
    const v4, 0x7f060049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, "customerNameLabel":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v0}, Lae/gov/mol/vo/GetnationalitiesVo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .end local v1    # "customerNameLabel":Landroid/widget/TextView;
    :cond_1
    return-object v2
.end method
