.class public Lmobi/monaca/framework/nativeui/component/ButtonComponent;
.super Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
.source "ButtonComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;,
        Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;,
        Lmobi/monaca/framework/nativeui/component/ButtonComponent$ButtonDrawable;
    }
.end annotation


# static fields
.field protected static final BUTTON_VALID_KEYS:[Ljava/lang/String;

.field protected static final STYLE_VALID_KEYS:[Ljava/lang/String;


# instance fields
.field protected button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

.field protected eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

.field protected imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

.field protected layout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
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

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_iosstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_androidstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_id:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->BUTTON_VALID_KEYS:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_activetextcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_innerimage:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "buttonJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->getComponentName()Ljava/lang/String;

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

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->getStyleValidKeys()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->buildEventer()V

    .line 53
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->initView()V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/component/ButtonComponent;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private buildEventer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lmobi/monaca/framework/nativeui/ComponentEventer;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/ComponentEventer;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    .line 63
    return-void
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
    .line 266
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "imagePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v4, v3}, Lmobi/monaca/framework/nativeui/UIContext;->readScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->getComponentName()Ljava/lang/String;

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

    .line 273
    .local v2, "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    throw v2

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_name_button:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->button()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getStyleValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public getUIEventer()Lmobi/monaca/framework/nativeui/ComponentEventer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->BUTTON_VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected initView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->layout:Landroid/widget/FrameLayout;

    .line 71
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->layout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 73
    new-instance v0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v0, v1}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    .line 74
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lmobi/monaca/framework/nativeui/component/ButtonComponent$1;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$1;-><init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->getInnerImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lmobi/monaca/framework/nativeui/component/ButtonComponent$2;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$2;-><init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v0, p0, v1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;-><init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    .line 88
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    new-instance v1, Lmobi/monaca/framework/nativeui/component/ButtonComponent$3;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$3;-><init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;)V

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style()V

    .line 99
    return-void
.end method

.method protected style()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    invoke-virtual {v0, v3}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v0, v2}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->styleImageButton()V

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    invoke-virtual {v0, v2}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v0, v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->styleButton()V

    goto :goto_0
.end method

.method protected styleButton()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->updateStyle(Lorg/json/JSONObject;)V

    .line 133
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style()V

    .line 135
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_innerimage:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaButton;

    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->getInnerImageButton()Landroid/widget/ImageButton;

    move-result-object v1

    .line 138
    .local v1, "imageButton":Landroid/widget/ImageButton;
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    .end local v1    # "imageButton":Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method protected styleImageButton()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    iget-object v6, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style:Lorg/json/JSONObject;

    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3, v4}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setBackgroundColor(I)V

    .line 145
    iget-object v6, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style:Lorg/json/JSONObject;

    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v6, v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setEnabled(Z)V

    .line 147
    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 149
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 150
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->getHeight()I

    move-result v2

    .line 151
    .local v2, "scaledHeight":I
    invoke-static {v0, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .end local v2    # "scaledHeight":I
    :cond_0
    new-instance v1, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;

    new-instance v3, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;

    invoke-direct {v3, v0}, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, p0, v3, v8}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;-><init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Landroid/graphics/drawable/Drawable;Lmobi/monaca/framework/nativeui/component/ButtonComponent$1;)V

    .line 155
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3, v1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3, v4, v4, v4, v4}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setPadding(IIII)V

    .line 160
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-void

    .line 143
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/16 v3, 0x8

    goto :goto_0

    :cond_2
    move v3, v4

    .line 145
    goto :goto_1

    .line 158
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3, v8}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "update"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 165
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style()V

    .line 166
    return-void
.end method
