.class public abstract Lae/gov/mol/helper/CustomFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CustomFragmentActivity.java"


# instance fields
.field public mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 19
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragmentActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract finishFragmentOrActivity(Landroid/view/View;)V
.end method

.method public removeBack()V
    .locals 5

    .prologue
    .line 29
    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 30
    .local v2, "manager":Landroid/support/v4/app/FragmentManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 37
    instance-of v3, p0, Lae/gov/mol/MolFragmentActivity;

    if-nez v3, :cond_0

    .line 38
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v1, "mIntent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v1}, Lae/gov/mol/helper/CustomFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->finish()V

    .line 43
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 33
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 30
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
.end method
