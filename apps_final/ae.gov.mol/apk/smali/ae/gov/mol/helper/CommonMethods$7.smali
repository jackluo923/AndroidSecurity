.class Lae/gov/mol/helper/CommonMethods$7;
.super Ljava/lang/Object;
.source "CommonMethods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CommonMethods;->ShowAlert(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$args:Landroid/os/Bundle;

.field private final synthetic val$customFrag:Lae/gov/mol/helper/CustomFragment;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CustomFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CommonMethods$7;->val$customFrag:Lae/gov/mol/helper/CustomFragment;

    iput-object p2, p0, Lae/gov/mol/helper/CommonMethods$7;->val$args:Landroid/os/Bundle;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$7;->val$customFrag:Lae/gov/mol/helper/CustomFragment;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$7;->val$customFrag:Lae/gov/mol/helper/CustomFragment;

    check-cast v0, Lae/gov/mol/interfaces/DialogCallback;

    iget-object v1, p0, Lae/gov/mol/helper/CommonMethods$7;->val$args:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lae/gov/mol/interfaces/DialogCallback;->okay(Landroid/os/Bundle;)V

    .line 289
    :cond_0
    return-void
.end method
