.class public Lcom/alipay/android/app/template/TemplateUiParser;
.super Ljava/lang/Object;
.source "TemplateUiParser.java"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TemplateUiParser;->a:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/view/widget/TBaseComponent;Landroid/content/Context;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 8

    .prologue
    .line 245
    new-instance v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-direct {v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;-><init>()V

    .line 247
    if-eqz p3, :cond_0

    .line 248
    invoke-virtual {p3}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    iput-object v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parentLayoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 250
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/android/app/template/TemplateWindow;->getStyleSheetMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parse(Lcom/alipay/android/app/json/JSONObject;Ljava/util/Map;)V

    .line 251
    invoke-static {v1, p2}, Lcom/alipay/android/app/template/view/ElementFactory;->createElement(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 252
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setTemplateElement(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 253
    iget-object v2, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 254
    if-eqz p3, :cond_1

    .line 255
    invoke-virtual {v0, p3}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->setElementParent(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V

    .line 256
    invoke-virtual {p3}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 258
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v2, v3, :cond_2

    .line 259
    invoke-virtual {p2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->setBodyElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V

    .line 262
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v2, v3, :cond_3

    .line 263
    invoke-virtual {p2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->setNavElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V

    .line 266
    :cond_3
    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-static {v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->noNeedToParseChildren(Lcom/alipay/android/app/template/view/ViewType;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 316
    :cond_4
    return-object v0

    .line 269
    :cond_5
    const-string/jumbo v1, "children"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 273
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v4

    .line 274
    const/4 v1, 0x0

    move v2, v1

    .line 276
    :goto_0
    if-ge v2, v4, :cond_4

    .line 278
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 279
    const-string/jumbo v5, "tag"

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    const-string/jumbo v6, "script"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 281
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 276
    :cond_6
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 284
    :cond_7
    invoke-static {v5}, Lcom/alipay/android/app/template/view/ViewType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v5

    .line 286
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v6

    sget-object v7, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v6, v7, :cond_9

    .line 287
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_9

    .line 288
    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v5, v6, :cond_9

    .line 289
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v6

    iget-object v6, v6, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-nez v6, :cond_8

    .line 290
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v6

    sget-object v7, Lcom/alipay/android/app/template/view/OverflowType;->scroll:Lcom/alipay/android/app/template/view/OverflowType;

    iput-object v7, v6, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 292
    :cond_8
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->setIsFullscreen(Z)V

    .line 295
    :cond_9
    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->div:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v5, v6, :cond_a

    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v5, v6, :cond_a

    .line 296
    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v5, v6, :cond_a

    .line 297
    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->dialog:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v5, v6, :cond_a

    .line 298
    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->select:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v5, v6, :cond_a

    .line 299
    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->dragList:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v5, v6, :cond_b

    .line 300
    :cond_a
    invoke-direct {p0, v1, p2, v0, p4}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/view/widget/TBaseComponent;Landroid/content/Context;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v1

    .line 306
    :goto_2
    if-eqz v1, :cond_6

    .line 307
    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v5, v6, :cond_6

    .line 308
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->addChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 310
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 304
    :cond_b
    :try_start_1
    new-instance v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-direct {v5}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;-><init>()V

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v6

    iget-object v6, v6, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    iput-object v6, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parentLayoutType:Lcom/alipay/android/app/template/view/LayoutType;

    :cond_c
    invoke-virtual {p2}, Lcom/alipay/android/app/template/TemplateWindow;->getStyleSheetMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parse(Lcom/alipay/android/app/json/JSONObject;Ljava/util/Map;)V

    invoke-static {v5, p2}, Lcom/alipay/android/app/template/view/ElementFactory;->createElement(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setTemplateElement(Lcom/alipay/android/app/template/view/widget/TElement;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->setElementParent(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V

    iget-object v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {p2, v5, v1}, Lcom/alipay/android/app/template/TemplateWindow;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/template/view/widget/TElement;->extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 105
    const-string/jumbo v0, "style"

    invoke-static {v0, v8, v7, p1}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Ljava/lang/String;Ljava/util/List;ZLcom/alipay/android/app/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 107
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    :cond_1
    const-string/jumbo v0, "link"

    invoke-static {v0, v8, v7, p1}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Ljava/lang/String;Ljava/util/List;ZLcom/alipay/android/app/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 155
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 110
    const-string/jumbo v1, "children"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string/jumbo v1, "children"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v4

    .line 115
    const/4 v0, 0x0

    .line 116
    :goto_1
    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 120
    const-string/jumbo v5, "tag"

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    const-string/jumbo v6, "text"

    .line 119
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 122
    const-string/jumbo v5, "text"

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    const-string/jumbo v5, "text"

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 137
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 139
    const-string/jumbo v3, "text/css"

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 140
    const-string/jumbo v3, "stylesheet"

    const-string/jumbo v4, "rel"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 143
    const-string/jumbo v3, "href"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 148
    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 149
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_7
    invoke-static {v0, p0}, Lcom/alipay/android/app/template/util/UiUtil;->readAssertFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 207
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 210
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 211
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 213
    if-eqz v0, :cond_3

    const-string/jumbo v3, "src"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    const-string/jumbo v3, "src"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 216
    invoke-static {v3, p1}, Lcom/alipay/android/app/template/util/UiUtil;->readAssertFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_3
    const-string/jumbo v3, "children"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 223
    const-string/jumbo v3, "children"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v5

    move v0, v2

    .line 224
    :goto_2
    invoke-virtual {v5}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 211
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 226
    :cond_5
    :try_start_0
    invoke-virtual {v5, v0}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 227
    const-string/jumbo v6, "text"

    invoke-virtual {v3, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 229
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 232
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;ZLcom/alipay/android/app/json/JSONObject;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 322
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_2

    .line 323
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 352
    :cond_1
    :goto_0
    return-object p1

    .line 325
    :cond_2
    if-nez p1, :cond_3

    .line 326
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    :cond_3
    const-string/jumbo v0, "tag"

    invoke-virtual {p3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_4

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    if-nez p2, :cond_1

    goto :goto_0

    .line 336
    :cond_4
    const-string/jumbo v0, "children"

    invoke-virtual {p3, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    .line 337
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 338
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 340
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 341
    invoke-static {p0, p1, p2, v1}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Ljava/lang/String;Ljava/util/List;ZLcom/alipay/android/app/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v3, :cond_5

    if-eqz p2, :cond_1

    .line 338
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseFontFamily(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/alipay/android/app/template/TemplateWindow;->getStyleSheetMap()Ljava/util/Map;

    move-result-object v2

    move v0, v1

    .line 382
    :goto_0
    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 405
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 384
    const-string/jumbo v4, "iconfont"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 385
    const-string/jumbo v3, "iconfont"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 387
    const-string/jumbo v0, "iconfont"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 390
    :goto_2
    array-length v2, v0

    if-lt v1, v2, :cond_3

    .line 401
    :cond_2
    const-string/jumbo v0, "default"

    goto :goto_1

    .line 391
    :cond_3
    aget-object v2, v0, v1

    .line 392
    const-string/jumbo v3, "font-family"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 394
    if-eqz v2, :cond_4

    .line 395
    array-length v3, v2

    if-le v3, v5, :cond_4

    .line 396
    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 390
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 382
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static preParseCache(Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;
    .locals 17

    .prologue
    .line 72
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/template/TemplateUiParser;->a:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 74
    :cond_0
    new-instance v5, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;-><init>(B)V

    .line 76
    const-string/jumbo v2, "body"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Ljava/lang/String;Ljava/util/List;ZLcom/alipay/android/app/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    move-object v3, v2

    .line 80
    :goto_0
    invoke-static {v5, v3}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Lcom/alipay/android/app/json/JSONObject;)V

    .line 81
    const-string/jumbo v2, "script"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v2, v4, v6, v0}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Ljava/lang/String;Ljava/util/List;ZLcom/alipay/android/app/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 82
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 84
    :goto_1
    invoke-static {v5, v2}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Z)V

    .line 85
    invoke-static {v5, v4}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\\}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    move v6, v2

    :goto_2
    if-lt v6, v9, :cond_5

    .line 87
    :cond_1
    invoke-static {v5, v7}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Ljava/util/Map;)V

    .line 88
    const/4 v2, 0x0

    .line 89
    const-string/jumbo v4, "onload"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string/jumbo v2, "onload"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    :cond_2
    invoke-static {v5, v2}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->b(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Ljava/lang/String;)V

    .line 93
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 94
    sget-object v2, Lcom/alipay/android/app/template/TemplateUiParser;->a:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    .line 99
    :goto_3
    return-object v2

    .line 79
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/json/JSONObject;

    move-object v3, v2

    goto :goto_0

    .line 83
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 86
    :cond_5
    aget-object v2, v8, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\\{"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v10, 0x1

    if-le v4, v10, :cond_8

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v10, 0x1

    aget-object v2, v2, v10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    aget-object v10, v4, v10

    const-string/jumbo v11, "."

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    array-length v11, v4

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v4, ""

    array-length v13, v12

    const/4 v2, 0x0

    move/from16 v16, v2

    move-object v2, v4

    move/from16 v4, v16

    :goto_4
    if-lt v4, v13, :cond_9

    :cond_6
    move-object v4, v2

    const-string/jumbo v2, ""

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_2

    :cond_9
    aget-object v14, v12, v4

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v15, "-"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v14, ";"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 97
    :cond_b
    sget-object v2, Lcom/alipay/android/app/template/TemplateUiParser;->a:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;

    goto/16 :goto_3

    :cond_c
    move-object v2, v5

    goto/16 :goto_3
.end method


# virtual methods
.method public parse(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/OnTemplateClickListener;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 3

    .prologue
    .line 59
    invoke-static {p1, p3, p4}, Lcom/alipay/android/app/template/TemplateUiParser;->preParseCache(Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/alipay/android/app/template/TemplateWindow;

    invoke-direct {v2}, Lcom/alipay/android/app/template/TemplateWindow;-><init>()V

    .line 61
    invoke-virtual {v2, p2}, Lcom/alipay/android/app/template/TemplateWindow;->setListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 62
    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->setPageScriptStr(Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->b(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->setStyleSheetMap(Ljava/util/Map;)V

    .line 64
    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->c(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->d(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_0
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->setIsExecutedOnload(Z)V

    .line 66
    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->e(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1, p3}, Lcom/alipay/android/app/template/TemplateUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/view/widget/TBaseComponent;Landroid/content/Context;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    .line 67
    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
