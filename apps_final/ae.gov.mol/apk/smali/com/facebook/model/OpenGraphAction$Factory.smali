.class public final Lcom/facebook/model/OpenGraphAction$Factory;
.super Ljava/lang/Object;
.source "OpenGraphAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/OpenGraphAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForPost()Lcom/facebook/model/OpenGraphAction;
    .locals 1

    .prologue
    .line 257
    const-class v0, Lcom/facebook/model/OpenGraphAction;

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/OpenGraphAction;

    return-object v0
.end method
