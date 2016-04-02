.class Lae/gov/mol/fragment/AboutUs/FragmentNews$3;
.super Landroid/widget/ArrayAdapter;
.source "FragmentNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews;->DropDownMenuAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

.field private final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # [Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iput-object p5, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->val$inflater:Landroid/view/LayoutInflater;

    .line 326
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 330
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->val$inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300de

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 332
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    const v2, 0x7f060767

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTextViewpopItem:Landroid/widget/TextView;

    .line 333
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    .local v0, "item":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "item :- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTextViewpopItem:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTextViewpopItem:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 338
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$3;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTextViewpopItem:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    return-object v1
.end method
