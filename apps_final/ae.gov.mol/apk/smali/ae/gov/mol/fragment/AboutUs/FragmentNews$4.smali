.class Lae/gov/mol/fragment/AboutUs/FragmentNews$4;
.super Ljava/lang/Object;
.source "FragmentNews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews;->popupWindowDogs()Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$4;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 364
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$4;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$4;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    const v4, 0x7f0900b8

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->startActivity(Landroid/content/Intent;)V

    .line 366
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 367
    const-string v0, "click on Youtube"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$4;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.youtube.com/user/MOLUAE"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->startActivity(Landroid/content/Intent;)V

    .line 370
    :cond_1
    return-void
.end method
