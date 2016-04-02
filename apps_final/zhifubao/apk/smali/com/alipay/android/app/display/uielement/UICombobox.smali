.class public Lcom/alipay/android/app/display/uielement/UICombobox;
.super Lcom/alipay/android/app/display/uielement/BaseElement;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/display/uielement/UICombobox$Option;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/widget/LinearLayout;",
        ">;",
        "Lcom/alipay/android/app/display/uielement/ISubmitable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/display/uielement/UICombobox$Option;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICombobox;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    return p1
.end method

.method private a(Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V
    .locals 2

    iget-object v0, p2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Landroid/widget/TextView;I)V

    iget-object v0, p2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->c:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/display/uielement/ak;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/android/app/display/uielement/ak;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;Lcom/alipay/android/app/display/uielement/UICombobox$Option;Landroid/widget/TextView;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    return-void
.end method

.method private a(Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "value"

    iget-object v1, p1, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->a:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V

    iget-object v0, p1, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICombobox;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/display/uielement/am;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/am;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;Lcom/alipay/android/app/display/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/widget/TextView;Landroid/widget/ArrayAdapter;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    invoke-direct {v0, p3}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a()V

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    new-instance v2, Lcom/alipay/android/app/display/uielement/al;

    invoke-direct {v2, p0, p2, p1}, Lcom/alipay/android/app/display/uielement/al;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;->b()Lcom/alipay/android/app/widget/CustomAlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICombobox;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICombobox;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICombobox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Lcom/alipay/android/app/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONArray;->getJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/display/uielement/UICombobox$Option;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;)V

    const-string/jumbo v3, "text"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->a:Ljava/lang/String;

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->b:Ljava/lang/String;

    const-string/jumbo v3, "icon"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/util/UIUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->c:Ljava/lang/String;

    const-string/jumbo v3, "icon_align"

    const-string/jumbo v4, "left"

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->d:Ljava/lang/String;

    const-string/jumbo v3, "selected"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "value"

    iget-object v3, v2, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->c:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/display/uielement/UICombobox;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/display/uielement/UICombobox;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Combobox:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 3

    check-cast p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "combox_title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->f:Landroid/widget/TextView;

    const-string/jumbo v0, "combox_button"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/util/UIUtils;->b()F

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "name"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICombobox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->c:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/android/app/display/uielement/aj;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/display/uielement/aj;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->c:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->c:Landroid/widget/ArrayAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/app/display/uielement/ai;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/display/uielement/ai;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method protected final a(Landroid/os/Handler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/os/Handler;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/aq;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/aq;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/ap;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/ap;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->a:Ljava/lang/String;

    const-string/jumbo v0, "options"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "options"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->b(Lcom/alipay/android/app/json/JSONArray;)V

    :cond_0
    const-string/jumbo v0, "ds"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->b(Lcom/alipay/android/app/json/JSONArray;)V

    :cond_1
    const-string/jumbo v0, "show_toast"

    const-string/jumbo v1, "show_toast"

    const-string/jumbo v2, "false"

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    iget-object v2, v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->b:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->d:I

    const-string/jumbo v1, "value"

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/alipay/android/app/display/uielement/an;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/an;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->c(Landroid/os/Handler;Z)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/ao;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/ao;-><init>(Lcom/alipay/android/app/display/uielement/UICombobox;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->c:Landroid/widget/ArrayAdapter;

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->e:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->f:Landroid/widget/TextView;

    return-void
.end method

.method public final i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->r()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UICombobox;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICombobox;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->r()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICombobox;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_combobox"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
