.class public Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;
.super Landroid/widget/Button;
.source "MonacaTextButton.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected style:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {p0, p2}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->buildStyleFromAttributeSet(Landroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    .line 38
    return-void
.end method


# virtual methods
.method protected buildStyleFromAttributeSet(Landroid/util/AttributeSet;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "style":Lorg/json/JSONObject;
    sget v2, Lmobi/monaca/framework/psedo/R$string;->android_schemas_url:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 46
    sget v2, Lmobi/monaca/framework/psedo/R$string;->at:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_0
    :try_start_0
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_1
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected style()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_buttonstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_activetextcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_gray:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v7

    .line 69
    .local v7, "activeTextColor":I
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_buttonstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v11

    .line 72
    .local v11, "textColor":I
    new-instance v12, Landroid/content/res/ColorStateList;

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, -0x10100a7

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    const/4 v2, 0x1

    aput v11, v1, v2

    invoke-direct {v12, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 82
    .local v12, "textColorState":Landroid/content/res/ColorStateList;
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_buttonstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_black:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v9

    .line 85
    .local v9, "backgroundColor":I
    new-instance v8, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    invoke-direct {v8, v0, v9}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    .line 88
    .local v8, "background":Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_buttonstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_float_one:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;FF)F

    move-result v10

    .line 90
    .local v10, "opacity":F
    float-to-double v0, v10

    invoke-static {v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v0

    invoke-virtual {v8, v0}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->setAlpha(I)V

    .line 92
    new-instance v0, Lmobi/monaca/framework/nativeui/component/view/ButtonDrawable;

    invoke-direct {v0, v8}, Lmobi/monaca/framework/nativeui/component/view/ButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-virtual {v8}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setVisibility(I)V

    .line 103
    const/4 v0, 0x0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->context:Landroid/content/Context;

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->getFontSizeFromDip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setTextSize(IF)V

    .line 106
    float-to-double v0, v10

    invoke-static {v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 108
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const v0, -0x666667

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setTextColor(I)V

    .line 111
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    float-to-double v1, v10

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 115
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->setShadowLayer(FFFI)V

    .line 116
    return-void

    .line 100
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
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
    .line 61
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 62
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/view/MonacaTextButton;->style()V

    .line 63
    return-void
.end method
