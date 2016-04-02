.class public Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
.super Ljava/lang/Object;
.source "MenuRepresentation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected menuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "menuItemList":Ljava/util/List;, "Ljava/util/List<Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;->menuItemList:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public configureMenu(Lmobi/monaca/framework/nativeui/UIContext;Landroid/view/Menu;)V
    .locals 3
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 22
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;->menuItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;

    .line 23
    .local v1, "menuItem":Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;
    invoke-virtual {v1, p1, p2}, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->addMenuItemToMenu(Lmobi/monaca/framework/nativeui/UIContext;Landroid/view/Menu;)V

    goto :goto_0

    .line 25
    .end local v1    # "menuItem":Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;
    :cond_0
    return-void
.end method
