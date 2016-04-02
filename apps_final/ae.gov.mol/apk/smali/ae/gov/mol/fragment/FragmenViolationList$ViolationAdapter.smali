.class public Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmenViolationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FragmenViolationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViolationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmenViolationList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/FragmenViolationList;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    iget-object v3, p0, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    invoke-virtual {v3}, Lae/gov/mol/fragment/FragmenViolationList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300d1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0606f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "mTextViewViolationText":Landroid/widget/TextView;
    const v3, 0x7f0606f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, "mTextViewHelpText":Landroid/widget/TextView;
    iget-object v3, p0, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    iget-object v3, v3, Lae/gov/mol/fragment/FragmenViolationList;->itemsHelp:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    iget-object v3, v3, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-object v2
.end method
