.class Lae/gov/mol/fragment/News/Fragment_NewsDetails$1;
.super Ljava/lang/Object;
.source "Fragment_NewsDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/News/Fragment_NewsDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$1;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onTweet"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$1;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$1;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mStringHeadline:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$1;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->newsImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->onClickTwitt(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
