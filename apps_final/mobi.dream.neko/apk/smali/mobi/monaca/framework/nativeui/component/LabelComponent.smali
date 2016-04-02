.class public Lmobi/monaca/framework/nativeui/component/LabelComponent;
.super Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
.source "LabelComponent.java"


# static fields
.field protected static final LABEL_VALID_KEYS:[Ljava/lang/String;

.field protected static final STYLE_VALID_KEYS:[Ljava/lang/String;


# instance fields
.field protected view:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_iosstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_androidstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_component:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_id:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->LABEL_VALID_KEYS:[Ljava/lang/String;

    .line 30
    new-array v0, v6, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "labelJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 37
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style()V

    .line 41
    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_name_label:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->label()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->LABEL_VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    return-object v0
.end method

.method protected style()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 53
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 55
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/LabelComponent;->getComponentName()Ljava/lang/String;

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

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v9

    .line 62
    .local v9, "textColor":I
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/LabelComponent;->getComponentName()Ljava/lang/String;

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

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_float_one:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v6}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;FF)F

    move-result v8

    .line 64
    .local v8, "opacity":F
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    float-to-double v2, v8

    invoke-static {v2, v3}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v6, v5, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 66
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v1, v12}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v2, v11}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v3, v12}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v4, v11}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/LabelComponent;->getComponentName()Ljava/lang/String;

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

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v7

    .line 73
    .local v7, "backgroundColor":I
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    float-to-double v1, v8

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 78
    .end local v7    # "backgroundColor":I
    :goto_1
    return-void

    .end local v8    # "opacity":F
    .end local v9    # "textColor":I
    :cond_1
    move v0, v11

    .line 58
    goto/16 :goto_0

    .line 76
    .restart local v8    # "opacity":F
    .restart local v9    # "textColor":I
    :cond_2
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

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
    .line 44
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 45
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/LabelComponent;->style()V

    .line 46
    return-void
.end method
