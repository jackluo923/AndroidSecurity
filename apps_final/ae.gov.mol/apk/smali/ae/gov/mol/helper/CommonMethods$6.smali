.class Lae/gov/mol/helper/CommonMethods$6;
.super Ljava/lang/Object;
.source "CommonMethods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isActivityFinish:Z

.field private final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lae/gov/mol/helper/CommonMethods$6;->val$isActivityFinish:Z

    iput-object p2, p0, Lae/gov/mol/helper/CommonMethods$6;->val$mActivity:Landroid/app/Activity;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 268
    iget-boolean v0, p0, Lae/gov/mol/helper/CommonMethods$6;->val$isActivityFinish:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$6;->val$mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$6;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 271
    :cond_0
    return-void
.end method
