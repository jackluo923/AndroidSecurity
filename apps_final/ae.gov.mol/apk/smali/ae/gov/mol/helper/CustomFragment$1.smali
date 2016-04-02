.class Lae/gov/mol/helper/CustomFragment$1;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CustomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CustomFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$1;->this$0:Lae/gov/mol/helper/CustomFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/MOLLocationManager;->stopListener()V

    .line 106
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$1;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/helper/CustomFragment;->access$1(Lae/gov/mol/helper/CustomFragment;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$1;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/helper/CustomFragment;->access$1(Lae/gov/mol/helper/CustomFragment;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 109
    :cond_0
    return-void
.end method
