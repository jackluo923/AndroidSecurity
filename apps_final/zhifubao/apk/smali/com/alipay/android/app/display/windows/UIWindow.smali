.class public Lcom/alipay/android/app/display/windows/UIWindow;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/display/windows/UIWindow$1;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/display/uielement/IUIElement;

.field private b:Lcom/alipay/android/app/display/uielement/IUIElement;

.field private c:Lcom/alipay/android/app/display/uielement/IUIElement;

.field private d:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/display/windows/WindowElements;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/display/event/OnElementEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/display/windows/WindowElements;Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Lcom/alipay/android/app/display/uielement/IUIElementContainer;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;IIII)Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 25

    invoke-static/range {p2 .. p2}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    invoke-interface {v13}, Lcom/alipay/android/app/display/uielement/IUIElement;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v4

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(IIII)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v13, v0, v1}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alipay/android/app/display/windows/UIWindow;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alipay/android/app/display/windows/UIWindow;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    :cond_2
    sget-object v4, Lcom/alipay/android/app/display/windows/UIWindow$1;->a:[I

    invoke-interface {v13}, Lcom/alipay/android/app/display/uielement/IUIElement;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/app/display/uielement/ElementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "layout"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v12, v13

    check-cast v12, Lcom/alipay/android/app/display/uielement/IUIElementContainer;

    const-string/jumbo v5, "rows"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v17

    add-int/lit8 v18, v17, -0x1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/4 v4, 0x0

    move v15, v4

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string/jumbo v5, "columns"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v20

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_7

    sget-object v4, Lcom/alipay/android/app/display/uielement/ElementType;->LayoutRow:Lcom/alipay/android/app/display/uielement/ElementType;

    invoke-static {v4}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Lcom/alipay/android/app/display/uielement/ElementType;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/app/display/uielement/IUIElementContainer;

    invoke-interface {v12, v5}, Lcom/alipay/android/app/display/uielement/IUIElementContainer;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    const-string/jumbo v4, "msp_margin_top"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v9, v4

    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    const/4 v4, 0x0

    :goto_2
    float-to-int v11, v4

    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v21

    add-int/lit8 v22, v21, -0x1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/4 v4, 0x0

    move v14, v4

    :goto_3
    move/from16 v0, v21

    if-ge v14, v0, :cond_7

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v24

    const-string/jumbo v4, "component"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    move/from16 v0, v22

    if-ge v14, v0, :cond_6

    const/4 v4, 0x0

    :goto_4
    float-to-int v10, v4

    const-string/jumbo v4, "msp_margin_left"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v8, v4

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/alipay/android/app/display/windows/UIWindow;->a(Lcom/alipay/android/app/display/uielement/IUIElementContainer;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;IIII)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v6

    if-eqz v6, :cond_4

    sget-object v4, Lcom/alipay/android/app/display/uielement/ElementType;->LayoutColumn:Lcom/alipay/android/app/display/uielement/ElementType;

    invoke-static {v4}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Lcom/alipay/android/app/display/uielement/ElementType;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/app/display/uielement/IUIElementContainer;

    invoke-interface {v4, v6}, Lcom/alipay/android/app/display/uielement/IUIElementContainer;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    invoke-interface {v5, v4}, Lcom/alipay/android/app/display/uielement/IUIElementContainer;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    const-string/jumbo v7, "styles"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v4, v7}, Lcom/alipay/android/app/display/uielement/IUIElementContainer;->a(Lcom/alipay/android/app/json/JSONObject;)V

    invoke-interface {v6}, Lcom/alipay/android/app/display/uielement/IUIElement;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v8

    sget-object v10, Lcom/alipay/android/app/display/uielement/ElementType;->Panel:Lcom/alipay/android/app/display/uielement/ElementType;

    if-ne v8, v10, :cond_3

    check-cast v6, Lcom/alipay/android/app/display/uielement/IUIElementContainer;

    invoke-interface {v6, v7}, Lcom/alipay/android/app/display/uielement/IUIElementContainer;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/android/app/display/windows/UIWindow;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    :cond_4
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto :goto_3

    :cond_5
    const-string/jumbo v4, "msp_margin_bottom"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v4, "msp_margin_right"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto/16 :goto_1

    :pswitch_1
    move-object v4, v13

    check-cast v4, Lcom/alipay/android/app/display/uielement/UIList;

    invoke-virtual {v4}, Lcom/alipay/android/app/display/uielement/UIList;->c()Lcom/alipay/android/app/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/alipay/android/app/display/uielement/UIList;->b()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v8

    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v9

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v5, 0x0

    move v6, v5

    :goto_5
    if-ge v6, v9, :cond_0

    invoke-static {v8}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Lcom/alipay/android/app/display/uielement/ElementType;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v11

    if-lez v6, :cond_8

    const-string/jumbo v5, "msp_margin_top"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_6
    float-to-int v5, v5

    invoke-interface {v11}, Lcom/alipay/android/app/display/uielement/IUIElement;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v5, v15, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(IIII)V

    :try_start_0
    invoke-virtual {v7, v6}, Lcom/alipay/android/app/json/JSONArray;->getJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v11, v5, v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v4, v11}, Lcom/alipay/android/app/display/uielement/UIList;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/alipay/android/app/display/windows/UIWindow;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :catch_0
    move-exception v5

    invoke-static {v5}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/event/OnElementEventListener;

    invoke-interface {p1, v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alipay/android/app/display/uielement/IUIElement;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/display/windows/WindowElements;->a(Ljava/lang/String;Lcom/alipay/android/app/display/uielement/IUIElement;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;->b(Lcom/alipay/android/app/json/JSONArray;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->c:Lcom/alipay/android/app/display/uielement/IUIElement;

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->b:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    goto :goto_0
.end method

.method public final b()Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->b:Lcom/alipay/android/app/display/uielement/IUIElement;

    return-object v0
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->d:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->d:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/UIWindow;->d:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/event/OnElementEventListener;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->b(Lcom/alipay/android/app/display/event/OnElementEventListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/UIWindow;->d:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/windows/WindowElements;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->a(Lcom/alipay/android/app/display/windows/WindowElements;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->d:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    const-string/jumbo v1, "layout"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    goto :goto_0
.end method

.method public final c()Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->c:Lcom/alipay/android/app/display/uielement/IUIElement;

    return-object v0
.end method

.method public final c(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/display/windows/UIWindow;->a(Lcom/alipay/android/app/display/uielement/IUIElementContainer;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;IIII)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/alipay/android/app/display/uielement/UILayoutPopup;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/UIWindow;->d:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    return-object v0
.end method
