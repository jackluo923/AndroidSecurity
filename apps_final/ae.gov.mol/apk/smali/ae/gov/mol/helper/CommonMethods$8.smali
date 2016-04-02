.class Lae/gov/mol/helper/CommonMethods$8;
.super Ljava/lang/Object;
.source "CommonMethods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isFragmentFinish:Z

.field private final synthetic val$mActivity:Lae/gov/mol/helper/CustomFragmentActivity;


# direct methods
.method constructor <init>(ZLae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lae/gov/mol/helper/CommonMethods$8;->val$isFragmentFinish:Z

    iput-object p2, p0, Lae/gov/mol/helper/CommonMethods$8;->val$mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 306
    iget-boolean v0, p0, Lae/gov/mol/helper/CommonMethods$8;->val$isFragmentFinish:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$8;->val$mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$8;->val$mActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 309
    :cond_0
    return-void
.end method
