.class Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess$1;
.super Ljava/lang/Object;
.source "FragmentNews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess$1;->this$1:Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess$1;->this$1:Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;
    invoke-static {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->access$2(Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;)Lae/gov/mol/fragment/AboutUs/FragmentNews;

    move-result-object v0

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mListViewNews:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess$1;->this$1:Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->access$2(Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;)Lae/gov/mol/fragment/AboutUs/FragmentNews;

    move-result-object v1

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess$1;->this$1:Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;
    invoke-static {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->access$2(Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;)Lae/gov/mol/fragment/AboutUs/FragmentNews;

    move-result-object v0

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->notifyDataSetChanged()V

    .line 295
    return-void
.end method
