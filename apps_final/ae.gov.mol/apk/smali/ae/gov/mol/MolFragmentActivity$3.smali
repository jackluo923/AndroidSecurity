.class Lae/gov/mol/MolFragmentActivity$3;
.super Ljava/lang/Object;
.source "MolFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/MolFragmentActivity;->MobilePath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/MolFragmentActivity;


# direct methods
.method constructor <init>(Lae/gov/mol/MolFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/MolFragmentActivity$3;->this$0:Lae/gov/mol/MolFragmentActivity;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 336
    const-string v2, "ae.gov.mol"

    .line 337
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 338
    .local v1, "marketUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    .local v0, "marketIntent":Landroid/content/Intent;
    iget-object v3, p0, Lae/gov/mol/MolFragmentActivity$3;->this$0:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v3, v0}, Lae/gov/mol/MolFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 343
    return-void
.end method
