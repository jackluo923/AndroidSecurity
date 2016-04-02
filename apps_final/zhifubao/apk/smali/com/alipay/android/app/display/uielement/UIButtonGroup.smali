.class public Lcom/alipay/android/app/display/uielement/UIButtonGroup;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->ButtonGroup:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/alipay/android/app/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_0

    new-array v0, v3, [Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    const-string/jumbo v1, "events"

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "events"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a(Lcom/alipay/android/app/json/JSONArray;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->l()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    new-instance v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    invoke-direct {v5}, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;-><init>()V

    aput-object v5, v0, v2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    aget-object v5, v0, v2

    const-string/jumbo v0, "id"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->a:Ljava/lang/String;

    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->b:Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->c:Ljava/lang/String;

    const-string/jumbo v0, "text"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/event/EventType;

    iget-object v6, v5, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public final h()[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->a:[Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    return-object v0
.end method

.method protected final o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
