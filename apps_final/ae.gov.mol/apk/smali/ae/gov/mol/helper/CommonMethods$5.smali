.class Lae/gov/mol/helper/CommonMethods$5;
.super Ljava/lang/Object;
.source "CommonMethods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CommonMethods;

.field private final synthetic val$isFinish:Z

.field private final synthetic val$mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CommonMethods;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CommonMethods$5;->this$0:Lae/gov/mol/helper/CommonMethods;

    iput-boolean p2, p0, Lae/gov/mol/helper/CommonMethods$5;->val$isFinish:Z

    iput-object p3, p0, Lae/gov/mol/helper/CommonMethods$5;->val$mView:Landroid/view/View;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 236
    iget-boolean v0, p0, Lae/gov/mol/helper/CommonMethods$5;->val$isFinish:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$5;->this$0:Lae/gov/mol/helper/CommonMethods;

    # getter for: Lae/gov/mol/helper/CommonMethods;->mActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->access$0(Lae/gov/mol/helper/CommonMethods;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/helper/CommonMethods$5;->val$mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CustomFragmentActivity;->finishFragmentOrActivity(Landroid/view/View;)V

    .line 239
    :cond_0
    return-void
.end method
