.class public Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;
.super Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
.source "SearchBoxComponent.java"

# interfaces
.implements Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;


# static fields
.field protected static final SEARCH_BOX_VALID_KEYS:[Ljava/lang/String;

.field protected static final STYLE_VALID_KEYS:[Ljava/lang/String;


# instance fields
.field protected clearButton:Landroid/widget/Button;

.field protected eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

.field protected layout:Landroid/widget/FrameLayout;

.field protected searchEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
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

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->SEARCH_BOX_VALID_KEYS:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x8

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

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_placeholder:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_focus:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_value:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "searchBoxJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->getComponentName()Ljava/lang/String;

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

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    sget-object v3, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->buildEventer()V

    .line 68
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->initView()V

    .line 69
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style()V

    .line 72
    :try_start_0
    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_focus:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-virtual {p1, p0}, Lmobi/monaca/framework/nativeui/UIContext;->addOnRotateListener(Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;)V

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 81
    new-instance v0, Lmobi/monaca/framework/nativeui/ComponentEventer;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/ComponentEventer;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    .line 82
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_name_searchbox:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->searchBox()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_value:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->SEARCH_BOX_VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected initView()V
    .locals 5

    .prologue
    .line 123
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->layout:Landroid/widget/FrameLayout;

    .line 125
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    .line 126
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    new-instance v3, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$1;

    invoke-direct {v3, p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$1;-><init>(Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 138
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 139
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 140
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    sget v3, Lmobi/monaca/framework/psedo/R$drawable;->monaca_searchbox_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 141
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    new-instance v3, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$2;

    invoke-direct {v3, p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$2;-><init>(Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    new-instance v3, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$3;

    invoke-direct {v3, p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$3;-><init>(Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->layout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->clearButton:Landroid/widget/Button;

    .line 169
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->clearButton:Landroid/widget/Button;

    sget v3, Lmobi/monaca/framework/psedo/R$drawable;->monaca_search_clear:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 170
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->clearButton:Landroid/widget/Button;

    new-instance v3, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;

    invoke-direct {v3, p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;-><init>(Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$drawable;->monaca_search_clear:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/16 v4, 0x15

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 182
    .local v1, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->layout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->clearButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method public onRotate(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->updateWidthForOrientation(I)V

    .line 87
    return-void
.end method

.method protected style()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 190
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_value:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_placeholder:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->getComponentName()Ljava/lang/String;

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

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_default_black:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    .line 197
    .local v8, "color":I
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 198
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->getComponentName()Ljava/lang/String;

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

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;FF)F

    move-result v10

    .line 200
    .local v10, "opacity":F
    float-to-double v0, v10

    invoke-static {v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v9

    .line 201
    .local v9, "integerOpacity":I
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 202
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getFontSizeFromDip(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 204
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    const/16 v2, 0x41

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 206
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->getComponentName()Ljava/lang/String;

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

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v7

    .line 209
    .local v7, "backgroundColor":I
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    .end local v7    # "backgroundColor":I
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 213
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->clearButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 214
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 215
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/UIContext;->getUIOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->updateWidthForOrientation(I)V

    .line 216
    return-void

    .line 192
    .end local v8    # "color":I
    .end local v9    # "integerOpacity":I
    .end local v10    # "opacity":F
    :cond_1
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_2
    move v0, v11

    .line 193
    goto/16 :goto_1
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
    .line 99
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 100
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style()V

    .line 101
    return-void
.end method

.method protected updateWidthForOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 90
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 91
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    const/16 v2, 0x88

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 96
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWidth(I)V

    goto :goto_0
.end method
