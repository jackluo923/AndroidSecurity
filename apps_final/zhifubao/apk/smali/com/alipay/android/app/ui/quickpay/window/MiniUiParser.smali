.class public Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation
.end field

.field b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/android/app/json/JSONObject;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/JsonUtil;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/json/JSONObject;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;",
            ")",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONArray;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p2, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Component:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONArray;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v4, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 6

    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Component:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONArray;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Cell:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    :cond_4
    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v4, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;I)V

    goto :goto_1
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;I)V
    .locals 4

    const-string/jumbo v0, "parseElement start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u65e0\u6cd5\u5904\u7406\u7684\u5143\u7d20\u7c7b\u578b"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p2, p1, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->g:Z

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->b(Z)V

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c(Z)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;)V

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->y()V

    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->K()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-nez v2, :cond_3

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Input:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Password:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->SimplePassword:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I()I

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->e:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->b(Lcom/alipay/android/app/json/JSONObject;)V

    return-void

    :cond_4
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "element type is null,resp data error"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->c(Z)V

    invoke-virtual {p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->a(Lcom/alipay/android/app/json/JSONObject;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->e:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->b(Lcom/alipay/android/app/json/JSONObject;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->g:Z

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->b(Z)V

    return-void
.end method

.method private static b(Lcom/alipay/android/app/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, "component"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/alipay/android/app/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, "block"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/alipay/android/app/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, "cell"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;Lcom/alipay/android/app/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;",
            "Lcom/alipay/android/app/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, v2, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public final b()Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    move-result-object v2

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Input:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Password:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->SimplePassword:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-ne v2, v3, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I()I

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    goto :goto_0
.end method
