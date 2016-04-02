.class abstract Lcom/facebook/widget/FacebookDialog$Builder;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected final appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field protected final applicationId:Ljava/lang/String;

.field protected applicationName:Ljava/lang/String;

.field protected fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 311
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    .line 315
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    .line 316
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    const v1, 0xfacf

    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 317
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/widget/FacebookDialog;
    .locals 8

    .prologue
    .line 366
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 368
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v1}, Lcom/facebook/widget/FacebookDialog$Builder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "com.facebook.platform.extra.APPLICATION_NAME"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v1}, Lcom/facebook/widget/FacebookDialog$Builder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v6}, Lcom/facebook/widget/FacebookDialog$Builder;->handleBuild(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 373
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_0

    .line 374
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to create Intent; this likely means the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestIntent(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$1(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V

    .line 378
    new-instance v0, Lcom/facebook/widget/FacebookDialog;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog;)V

    return-object v0
.end method

.method public canPresent()Z
    .locals 1

    .prologue
    .line 389
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->handleCanPresent()Z

    move-result v0

    return v0
.end method

.method getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .locals 1

    .prologue
    .line 400
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract handleBuild(Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method handleCanPresent()Z
    .locals 2

    .prologue
    .line 393
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    const v1, 0x1332b3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/Integer;)I
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->access$1(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v0

    .line 394
    const/4 v1, -0x1

    .line 393
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 406
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    if-eqz p3, :cond_0

    .line 407
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    .line 341
    move-object v0, p0

    .line 342
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    .line 356
    move-object v0, p0

    .line 357
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method public setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestCode(I)V
    invoke-static {v1, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$0(Lcom/facebook/widget/FacebookDialog$PendingCall;I)V

    .line 328
    move-object v0, p0

    .line 329
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method validate()V
    .locals 0

    .prologue
    .line 397
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    return-void
.end method
