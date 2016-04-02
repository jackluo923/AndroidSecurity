.class Lae/gov/mol/fragment/AboutUs/FragmentNews$1;
.super Ljava/lang/Object;
.source "FragmentNews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$1;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    new-instance v0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$1;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method
