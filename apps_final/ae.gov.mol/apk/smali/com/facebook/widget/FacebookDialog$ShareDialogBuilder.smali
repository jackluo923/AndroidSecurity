.class public Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$Builder;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<",
        "Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private caption:Ljava/lang/String;

.field private dataErrorsFatal:Z

.field private description:Ljava/lang/String;

.field private friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private picture:Ljava/lang/String;

.field private place:Ljava/lang/String;

.field private ref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 435
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->canPresent()Z

    move-result v0

    return v0
.end method

.method handleBuild(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 535
    const-string v2, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v2, "com.facebook.platform.extra.APPLICATION_NAME"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v2, "com.facebook.platform.extra.TITLE"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "com.facebook.platform.extra.SUBTITLE"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->caption:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v2, "com.facebook.platform.extra.DESCRIPTION"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->description:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v2, "com.facebook.platform.extra.LINK"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->link:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v2, "com.facebook.platform.extra.IMAGE"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->picture:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v2, "com.facebook.platform.extra.PLACE"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->place:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v2, "com.facebook.platform.extra.TITLE"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v2, "com.facebook.platform.extra.REF"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->ref:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "com.facebook.platform.extra.DATA_FAILURES_FATAL"

    iget-boolean v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->dataErrorsFatal:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 547
    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->friends:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    const-string v2, "com.facebook.platform.extra.FRIENDS"

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->friends:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->activity:Landroid/app/Activity;

    const v3, 0x1332b3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/Integer;)I
    invoke-static {v2, v3}, Lcom/facebook/widget/FacebookDialog;->access$1(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v1

    .line 553
    .local v1, "protocolVersion":I
    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->activity:Landroid/app/Activity;

    const-string v3, "com.facebook.platform.action.request.FEED_DIALOG"

    invoke-static {v2, v3, v1, p1}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 555
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method handleCanPresent()Z
    .locals 4

    .prologue
    .line 530
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->caption:Ljava/lang/String;

    .line 454
    return-object p0
.end method

.method public setDataErrorsFatal(Z)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "dataErrorsFatal"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->dataErrorsFatal:Z

    .line 525
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->description:Ljava/lang/String;

    .line 464
    return-object p0
.end method

.method public bridge synthetic setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;->setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFriends(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->friends:Ljava/util/ArrayList;

    .line 504
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->link:Ljava/lang/String;

    .line 474
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->name:Ljava/lang/String;

    .line 444
    return-object p0
.end method

.method public setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "picture"    # Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->picture:Ljava/lang/String;

    .line 484
    return-object p0
.end method

.method public setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "place"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->place:Ljava/lang/String;

    .line 494
    return-object p0
.end method

.method public setRef(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->ref:Ljava/lang/String;

    .line 514
    return-object p0
.end method

.method public bridge synthetic setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;->setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method
