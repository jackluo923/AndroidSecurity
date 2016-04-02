.class public Lmobi/monaca/framework/nativeui/container/TabbarItem;
.super Lmobi/monaca/framework/nativeui/component/Component;
.source "TabbarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;
    }
.end annotation


# static fields
.field protected static final STYLE_VALID_KYES:[Ljava/lang/String;

.field protected static final TABBAR_ITEM_VALID_KYES:[Ljava/lang/String;


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field protected handler:Landroid/os/Handler;

.field protected link:Ljava/lang/String;

.field protected view:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_component:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->transition_link:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_id:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_androidstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_iosstyle:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->TABBAR_ITEM_VALID_KYES:[Ljava/lang/String;

    .line 44
    new-array v0, v7, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_badgetext:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->STYLE_VALID_KYES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "tabbarItemJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/Component;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->style:Lorg/json/JSONObject;

    sget-object v2, Lmobi/monaca/framework/nativeui/container/TabbarItem;->STYLE_VALID_KYES:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 54
    new-instance v0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    invoke-direct {v0, p0, p1}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;-><init>(Lmobi/monaca/framework/nativeui/container/TabbarItem;Lmobi/monaca/framework/nativeui/UIContext;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->view:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    .line 55
    sget v0, Lmobi/monaca/framework/psedo/R$string;->transition_link:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->link:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->handler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->style()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/TabbarItem;

    .prologue
    .line 36
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/TabbarItem;

    .prologue
    .line 36
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/TabbarItem;

    .prologue
    .line 36
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    return-object v0
.end method

.method static synthetic access$300(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/TabbarItem;

    .prologue
    .line 36
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    return-object v0
.end method

.method private readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "imageKeyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->style:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "imagePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v4, v3}, Lmobi/monaca/framework/nativeui/UIContext;->readScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, p1, v3, v5}, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v2, "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    throw v2

    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-class v0, Lmobi/monaca/framework/nativeui/container/TabbarItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->tabbarItem()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->TABBAR_ITEM_VALID_KYES:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->getView()Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->view:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    return-object v0
.end method

.method protected style()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->view:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->setText(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->view:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_badgetext:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->setBadgeText(Ljava/lang/String;)V

    .line 79
    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->view:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    invoke-virtual {v1, v0}, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    :cond_0
    return-void
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "update"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 68
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->style()V

    .line 69
    return-void
.end method
