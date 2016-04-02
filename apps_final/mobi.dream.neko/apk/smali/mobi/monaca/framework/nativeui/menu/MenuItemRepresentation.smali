.class public Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;
.super Ljava/lang/Object;
.source "MenuItemRepresentation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected action:Ljava/lang/String;

.field protected iconImagePath:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->action:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->title:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public addMenuItemToMenu(Lmobi/monaca/framework/nativeui/UIContext;Landroid/view/Menu;)V
    .locals 9
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 43
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->title:Ljava/lang/String;

    invoke-interface {p2, v5}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 45
    .local v2, "menuItem":Landroid/view/MenuItem;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    sget v6, Lmobi/monaca/framework/psedo/R$string;->at:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    :try_start_0
    const-class v5, Landroid/R$drawable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_menu_icmenu:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 50
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 51
    .local v1, "id":I
    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "id":I
    :cond_0
    :goto_0
    new-instance v5, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;

    invoke-direct {v5, p0, p1}, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation$1;-><init>(Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;Lmobi/monaca/framework/nativeui/UIContext;)V

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 81
    return-void

    .line 57
    :cond_1
    const/4 v3, 0x0

    .line 58
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_relative_data:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v3    # "stream":Ljava/io/InputStream;
    .local v4, "stream":Ljava/io/InputStream;
    move-object v3, v4

    .line 63
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :goto_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 64
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v5

    goto :goto_0

    .line 61
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lmobi/monaca/framework/psedo/R$string;->www_slash:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->openAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 52
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->action:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIconImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconImagePath"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/menu/MenuItemRepresentation;->iconImagePath:Ljava/lang/String;

    .line 36
    return-void
.end method
