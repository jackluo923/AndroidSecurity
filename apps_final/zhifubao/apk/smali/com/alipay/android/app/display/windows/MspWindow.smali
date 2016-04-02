.class public Lcom/alipay/android/app/display/windows/MspWindow;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/display/event/OnElementEventListener;
.implements Lcom/alipay/android/app/script/IDocumentScriptable;
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/display/windows/MspWindow$1;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Lcom/alipay/android/app/data/DataProcessor;

.field private d:Lcom/alipay/android/app/script/IWindowScriptable;

.field private e:Lcom/alipay/android/app/display/uielement/IElementFocusChanged;

.field private f:Lcom/alipay/android/app/data/WindowFrameData;

.field private g:Lcom/alipay/android/app/data/WindowFrameData;

.field private h:Lcom/alipay/android/app/data/ValidatedFrameData;

.field private i:Lcom/alipay/android/app/display/windows/WindowElements;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/app/display/event/EventType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->m:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->b:Z

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-direct {v0}, Lcom/alipay/android/app/display/windows/WindowElements;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->j:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    .locals 7

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/windows/WindowElements;->a()[Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/app/display/uielement/ElementType;->Button:Lcom/alipay/android/app/display/uielement/ElementType;

    if-ne v5, v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    instance-of v5, v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable;->i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/WindowFrameData;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    return-object v2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/script/IWindowScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->d:Lcom/alipay/android/app/script/IWindowScriptable;

    return-object v0
.end method

.method private a(Lcom/alipay/android/app/display/event/EventType;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/windows/MspWindow;Lcom/alipay/android/app/display/uielement/IUIElement;Lcom/alipay/android/app/display/event/MspEventArgs;Lcom/alipay/android/app/display/event/EventType;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/app/display/windows/MspWindow$1;->b:[I

    invoke-virtual {p3}, Lcom/alipay/android/app/display/event/EventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/display/event/MspEventArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->b(Lcom/alipay/android/app/json/JSONObject;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/MspWindow;->c()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/MspWindow;->c()V

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/alipay/android/app/display/uielement/IUIElement;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/display/windows/MspWindow$1;->c:[I

    invoke-virtual {v1}, Lcom/alipay/android/app/display/uielement/ElementType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/alipay/android/app/display/uielement/IUIElement;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/display/windows/MspWindow;->getById(Ljava/lang/String;)Lcom/alipay/android/app/script/IDocumentScriptable;

    move-result-object v3

    if-eq v3, p0, :cond_0

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "visible"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    const-string/jumbo v6, "enable"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "text"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "value"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "checked"

    aput-object v6, v4, v5

    :goto_2
    if-ge v0, v8, :cond_1

    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Lcom/alipay/android/app/script/IDocumentScriptable;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alipay/android/app/display/uielement/ValueItem;

    invoke-direct {v7, v5, v6}, Lcom/alipay/android/app/display/uielement/ValueItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/android/app/display/uielement/ValueItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/MspWindow;->d()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/WindowFrameData;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->g()Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/MspWindow;->d()V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, p3}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/event/EventType;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->h()Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->i()Z

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/display/event/MspEventArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->k:Ljava/lang/String;

    const-string/jumbo v0, "message"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/display/event/MspEventArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->Done:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/event/EventType;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->e:Lcom/alipay/android/app/display/uielement/IElementFocusChanged;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->e:Lcom/alipay/android/app/display/uielement/IElementFocusChanged;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/display/uielement/IElementFocusChanged;->onFocusChange(I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->d:Lcom/alipay/android/app/script/IWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->d:Lcom/alipay/android/app/script/IWindowScriptable;

    const-string/jumbo v1, "toastMessage"

    invoke-virtual {p2, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/script/IWindowScriptable;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/app/display/windows/MspWindow;Lcom/alipay/android/app/event/IEventArgs$EventScript;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->b:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/display/windows/MspWindow$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/android/app/event/IEventArgs$EventScript;->a()Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {p1}, Lcom/alipay/android/app/event/IEventArgs$EventScript;->c()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/alipay/android/app/json/JSONArray;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONArray;->getJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "script"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/alipay/android/app/display/event/EventType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/event/EventType;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/alipay/android/app/display/windows/MspWindow;->j:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/display/windows/WindowElements;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/display/windows/WindowElements;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/display/windows/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/windows/d;-><init>(Lcom/alipay/android/app/display/windows/MspWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/windows/WindowElements;->a()[Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    aget-object v1, v4, v3

    invoke-interface {v1}, Lcom/alipay/android/app/display/uielement/IUIElement;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v0

    sget-object v5, Lcom/alipay/android/app/display/windows/MspWindow$1;->c:[I

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ElementType;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v0, v2

    :goto_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    :pswitch_0
    instance-of v0, v1, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    const-string/jumbo v5, "true"

    const-string/jumbo v6, "visible"

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    :goto_2
    invoke-interface {v1, v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/alipay/android/app/display/windows/MspWindow;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/script/IWindowScriptable;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->d:Lcom/alipay/android/app/script/IWindowScriptable;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/DataProcessor;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/display/windows/MspWindow;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/WindowFrameData;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->f:Lcom/alipay/android/app/data/WindowFrameData;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/WindowFrameData;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/data/ValidatedFrameData;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/data/WindowFrameData;)Lcom/alipay/android/app/display/windows/UIWindow;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->f:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/alipay/android/app/display/windows/UIWindow;

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-direct {v2, v0, p0}, Lcom/alipay/android/app/display/windows/UIWindow;-><init>(Lcom/alipay/android/app/display/windows/WindowElements;Lcom/alipay/android/app/display/event/OnElementEventListener;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->k()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "win"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "ui"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->c()I

    move-result v0

    if-ne v0, v8, :cond_1

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    if-nez v3, :cond_5

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->k:Ljava/lang/String;

    if-nez v3, :cond_6

    :goto_1
    iput-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->l:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementType;->Navigator:Lcom/alipay/android/app/display/uielement/ElementType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/uielement/ElementType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/display/windows/UIWindow;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementType;->Pane:Lcom/alipay/android/app/display/uielement/ElementType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/uielement/ElementType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/display/windows/UIWindow;->c(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/display/uielement/IUIElement;

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementType;->ButtonGroup:Lcom/alipay/android/app/display/uielement/ElementType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/uielement/ElementType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/display/windows/UIWindow;->a(Lcom/alipay/android/app/json/JSONArray;)V

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementType;->Popup:Lcom/alipay/android/app/display/uielement/ElementType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/uielement/ElementType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/display/windows/UIWindow;->b(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->getById(Ljava/lang/String;)Lcom/alipay/android/app/script/IDocumentScriptable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->e()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Lcom/alipay/android/app/display/uielement/ValueItem;

    invoke-direct {v7, v6}, Lcom/alipay/android/app/display/uielement/ValueItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/android/app/display/uielement/ValueItem;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/alipay/android/app/display/uielement/ValueItem;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/alipay/android/app/script/IDocumentScriptable;->attr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "allow_back"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "allow_back_text"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->f()Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/json/JSONArray;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/data/WindowFrameData;->k()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "win"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v1, "win_script"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/json/JSONArray;)V

    const-string/jumbo v1, "ui"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/json/JSONArray;)V

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->f:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/WindowFrameData;->l()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->m:Z

    if-nez v0, :cond_a

    iput-boolean v8, p0, Lcom/alipay/android/app/display/windows/MspWindow;->m:Z

    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->Loaded:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/event/EventType;)V

    :cond_9
    :goto_3
    return-object v2

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->f:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/WindowFrameData;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->Back:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/event/EventType;)V

    goto :goto_3
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Lcom/alipay/android/app/data/BizUiData;Lcom/alipay/android/app/script/IWindowScriptable;)V
    .locals 1

    invoke-interface {p1}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->c:Lcom/alipay/android/app/data/DataProcessor;

    invoke-interface {p1}, Lcom/alipay/android/app/data/BizUiData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->h:Lcom/alipay/android/app/data/ValidatedFrameData;

    iput-object p2, p0, Lcom/alipay/android/app/display/windows/MspWindow;->d:Lcom/alipay/android/app/script/IWindowScriptable;

    return-void
.end method

.method protected final a(Lcom/alipay/android/app/display/uielement/IElementFocusChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->e:Lcom/alipay/android/app/display/uielement/IElementFocusChanged;

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->d:Lcom/alipay/android/app/script/IWindowScriptable;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/display/windows/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/windows/b;-><init>(Lcom/alipay/android/app/display/windows/MspWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/display/windows/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/display/windows/a;-><init>(Lcom/alipay/android/app/display/windows/MspWindow;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/display/uielement/IUIElement;Lcom/alipay/android/app/display/event/MspEventArgs;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/script/ScriptEventRunnable;->getInstance()Lcom/alipay/android/app/script/ScriptEventRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/script/ScriptEventRunnable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/display/windows/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/android/app/display/windows/c;-><init>(Lcom/alipay/android/app/display/windows/MspWindow;Lcom/alipay/android/app/display/event/MspEventArgs;Lcom/alipay/android/app/display/uielement/IUIElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    .locals 1

    check-cast p1, Lcom/alipay/android/app/display/uielement/IUIElement;

    check-cast p2, Lcom/alipay/android/app/display/event/MspEventArgs;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/uielement/IUIElement;Lcom/alipay/android/app/display/event/MspEventArgs;)Z

    move-result v0

    return v0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "lua"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get none attr--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "lua"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set none  attr--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--value--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->l:Ljava/lang/String;

    return-object v0
.end method

.method public cache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/data/WindowFrameData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/data/WindowFrameData;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkInput()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/windows/WindowElements;->a()[Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    instance-of v5, v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable;->j()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submit verify false ! : at"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable;->i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_2
.end method

.method public dispose()V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/display/windows/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/windows/e;-><init>(Lcom/alipay/android/app/display/windows/MspWindow;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/alipay/android/app/display/event/EventType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/event/EventType;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/MspWindow;->j:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getById(Ljava/lang/String;)Lcom/alipay/android/app/script/IDocumentScriptable;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->i:Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/display/windows/WindowElements;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "can not find element--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public putSubmitData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/MspWindow;->g:Lcom/alipay/android/app/data/WindowFrameData;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/data/WindowFrameData;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "put submit data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public style(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
