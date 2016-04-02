.class public Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
.super Lcom/facebook/widget/WebDialog$BuilderBase;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<",
        "Lcom/facebook/widget/WebDialog$FeedDialogBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAPTION_PARAM:Ljava/lang/String; = "caption"

.field private static final DESCRIPTION_PARAM:Ljava/lang/String; = "description"

.field private static final FEED_DIALOG:Ljava/lang/String; = "feed"

.field private static final FROM_PARAM:Ljava/lang/String; = "from"

.field private static final LINK_PARAM:Ljava/lang/String; = "link"

.field private static final NAME_PARAM:Ljava/lang/String; = "name"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SOURCE_PARAM:Ljava/lang/String; = "source"

.field private static final TO_PARAM:Ljava/lang/String; = "to"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;

    .prologue
    .line 586
    const-string v0, "feed"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 587
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 602
    const-string v0, "feed"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 603
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/WebDialog;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "caption"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-object p0
.end method

.method public bridge synthetic setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/WebDialog$BuilderBase;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public setPicture(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "picture"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-object p0
.end method

.method public bridge synthetic setTheme(I)Lcom/facebook/widget/WebDialog$BuilderBase;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/WebDialog$BuilderBase;->setTheme(I)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public setTo(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-object p0
.end method
