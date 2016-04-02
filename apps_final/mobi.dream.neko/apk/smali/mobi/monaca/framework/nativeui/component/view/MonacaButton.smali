.class public Lmobi/monaca/framework/nativeui/component/view/MonacaButton;
.super Landroid/widget/FrameLayout;
.source "MonacaButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/component/view/MonacaButton$ImageButtonDrawable;
    }
.end annotation


# instance fields
.field protected button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

.field protected context:Landroid/content/Context;

.field protected innerImageButton:Landroid/widget/ImageButton;

.field protected style:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->context:Landroid/content/Context;

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    .line 52
    new-instance v0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    invoke-direct {v0, p1}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    .line 53
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    .line 55
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->addView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    .line 38
    new-instance v0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    invoke-direct {v0, p1, p2}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    .line 39
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    .line 41
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style()V

    .line 45
    return-void
.end method


# virtual methods
.method public getButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    return-object v0
.end method

.method public getInnerImageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public style()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_innerImage:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    invoke-virtual {v0, v3}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->updateStyle(Lorg/json/JSONObject;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->button:Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;

    invoke-virtual {v0, v4}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->styleInnerImageButton()V

    goto :goto_0
.end method

.method protected styleInnerImageButton()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 89
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->context:Landroid/content/Context;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_buttonstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_black:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    .line 92
    .local v8, "backgroundColor":I
    new-instance v7, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->context:Landroid/content/Context;

    invoke-direct {v7, v0, v8}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    .line 95
    .local v7, "background":Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->context:Landroid/content/Context;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_buttonstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_float_one:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;FF)F

    move-result v9

    .line 97
    .local v9, "opacity":F
    float-to-double v0, v9

    invoke-static {v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v0

    invoke-virtual {v7, v0}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->setAlpha(I)V

    .line 98
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobi/monaca/framework/nativeui/component/view/ButtonDrawable;

    invoke-direct {v1, v7}, Lmobi/monaca/framework/nativeui/component/view/ButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->innerImageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v10, v11

    :cond_0
    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 104
    return-void

    .line 100
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
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
    .line 71
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 72
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/view/MonacaButton;->style()V

    .line 73
    return-void
.end method
