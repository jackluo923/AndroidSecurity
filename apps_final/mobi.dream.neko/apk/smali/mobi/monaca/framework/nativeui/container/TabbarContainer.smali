.class public Lmobi/monaca/framework/nativeui/container/TabbarContainer;
.super Lmobi/monaca/framework/nativeui/container/Container;
.source "TabbarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;
    }
.end annotation


# static fields
.field protected static final STYLE_VALID_KEYS:[Ljava/lang/String;

.field protected static final TAB_BAR_VALID_KEYS:[Ljava/lang/String;

.field protected static final mContainerViewID:I = 0x3ea


# instance fields
.field protected oldActiveIndex:Ljava/lang/Integer;

.field private shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

.field protected view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_id:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_iosstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_androidstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_items:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->TAB_BAR_VALID_KEYS:[Ljava/lang/String;

    .line 48
    new-array v0, v7, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_activeindex:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "tabbarJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/container/Container;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->oldActiveIndex:Ljava/lang/Integer;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->getComponentName()Ljava/lang/String;

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

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    sget-object v2, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->STYLE_VALID_KEYS:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 62
    new-instance v0, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-direct {v0, p0, p1}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;-><init>(Lmobi/monaca/framework/nativeui/container/TabbarContainer;Lmobi/monaca/framework/nativeui/UIContext;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    .line 63
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->setId(I)V

    .line 64
    new-instance v0, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Z)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    .line 66
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->buildChildren()V

    .line 68
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/nativeui/container/TabbarContainer;)Lmobi/monaca/framework/nativeui/UIContext;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    .prologue
    .line 33
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/monaca/framework/nativeui/container/TabbarContainer;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    .prologue
    .line 33
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/monaca/framework/nativeui/container/TabbarContainer;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    .prologue
    .line 33
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    return-object v0
.end method

.method private buildChildren()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->componentJSON:Lorg/json/JSONObject;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_items:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 73
    .local v1, "itemsJSON":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 75
    new-instance v2, Lmobi/monaca/framework/nativeui/container/TabbarItem;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmobi/monaca/framework/nativeui/container/TabbarItem;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 76
    .local v2, "tabbarItem":Lmobi/monaca/framework/nativeui/container/TabbarItem;
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->getView()Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->addTabbarItemView(Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    .end local v2    # "tabbarItem":Lmobi/monaca/framework/nativeui/container/TabbarItem;
    :cond_0
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_items:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 82
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 93
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    return-void
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "TabBar"

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->tabbar()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->TAB_BAR_VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    return-object v0
.end method

.method public isTransparent()Z
    .locals 6

    .prologue
    .line 226
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 227
    .local v0, "opacity":D
    const-wide v2, 0x3feff7ced916872bL    # 0.999

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected style()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->resetBackground()V

    .line 105
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_black:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    .line 109
    .local v8, "backgroundColor":I
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v8, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    .local v10, "filter":Landroid/graphics/ColorFilter;
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v10}, Lmobi/monaca/framework/nativeui/UIUtil;->createBitmapWithColorFilter(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 112
    .local v9, "bgBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$drawable;->monaca_tabbar_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.0"

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;FF)F

    move-result v14

    .line 115
    .local v14, "tabbarOpacity":F
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    float-to-double v1, v14

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activeIndex"

    const-string v3, "0"

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    const/4 v5, 0x0

    iget-object v6, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->getItemSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static/range {v0 .. v6}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;II)I

    move-result v7

    .line 118
    .local v7, "activeIndex":I
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->oldActiveIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->oldActiveIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 119
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->view:Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    const-string v2, "activeIndex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/container/TabbarContainer$TabbarContainerView;->setActiveIndex(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shadowOpacity"

    const-string v3, "0.3"

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;FF)F

    move-result v13

    .line 123
    .local v13, "shadowOpacity":F
    mul-float v0, v14, v13

    float-to-double v11, v0

    .line 124
    .local v11, "relativeShadowOpacity":D
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->getShadowView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v11, v12}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    return-void

    .line 105
    .end local v7    # "activeIndex":I
    .end local v8    # "backgroundColor":I
    .end local v9    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "filter":Landroid/graphics/ColorFilter;
    .end local v11    # "relativeShadowOpacity":D
    .end local v13    # "shadowOpacity":F
    .end local v14    # "tabbarOpacity":F
    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_0
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "update"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_activeindex:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_activeindex:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->oldActiveIndex:Ljava/lang/Integer;

    .line 86
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 87
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;->style()V

    .line 88
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
