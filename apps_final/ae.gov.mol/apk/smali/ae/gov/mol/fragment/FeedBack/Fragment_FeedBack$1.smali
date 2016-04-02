.class Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$1;
.super Ljava/lang/Object;
.source "Fragment_FeedBack.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$1;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$1;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    invoke-virtual {v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->removeBack()V

    .line 74
    return-void
.end method
