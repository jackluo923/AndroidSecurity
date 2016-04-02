.class Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;
.super Ljava/lang/Object;
.source "MenuItemRepresentation.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->addMenuItemToMenu(Lmobi/monaca/framework/nativeui/UIContext;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;

.field final synthetic val$context:Lmobi/monaca/framework/nativeui/UIContext;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;Lmobi/monaca/framework/nativeui/UIContext;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;->this$0:Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;

    iput-object p2, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;->val$context:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 74
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;->this$0:Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->action:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;->val$context:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->js_scheme:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;->this$0:Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;

    iget-object v2, v2, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->react(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
