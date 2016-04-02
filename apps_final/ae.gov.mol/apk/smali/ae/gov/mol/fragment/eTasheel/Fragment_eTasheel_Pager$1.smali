.class Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$1;
.super Ljava/lang/Object;
.source "Fragment_eTasheel_Pager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->removeBack()V

    .line 122
    return-void
.end method
