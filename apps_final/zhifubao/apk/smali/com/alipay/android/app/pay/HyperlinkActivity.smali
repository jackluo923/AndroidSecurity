.class public Lcom/alipay/android/app/pay/HyperlinkActivity;
.super Lcom/alipay/android/app/AbsActivity;

# interfaces
.implements Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/pay/HyperlinkActivity$b;,
        Lcom/alipay/android/app/pay/HyperlinkActivity$a;
    }
.end annotation


# instance fields
.field b:Landroid/os/Handler;

.field c:Ljava/lang/Runnable;

.field private d:Lcom/alipay/android/app/net/Envelope;

.field private e:Landroid/webkit/WebView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Lcom/alipay/android/app/widget/CustomListView;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alipay/android/app/pay/HyperlinkActivity$a;

.field private l:Lcom/alipay/android/app/pay/HyperlinkActivity$b;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:I

    iput v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:I

    new-instance v0, Lcom/alipay/android/app/pay/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/a;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/pay/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/d;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/HyperlinkActivity;)Lcom/alipay/android/app/net/Envelope;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Lcom/alipay/android/app/net/Envelope;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "data"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "format"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "current_page"

    iget v3, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:I

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:I

    const-string/jumbo v2, "total"

    iget v3, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:I

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:I

    const-string/jumbo v0, "text/plain"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:Lcom/alipay/android/app/pay/HyperlinkActivity$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/pay/HyperlinkActivity$b;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity$b;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:Lcom/alipay/android/app/pay/HyperlinkActivity$b;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:Lcom/alipay/android/app/pay/HyperlinkActivity$b;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/widget/CustomListView;->setXListViewListener(Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;)V

    :goto_1
    iget v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:I

    iget v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setPullLoadState(I)V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:Lcom/alipay/android/app/pay/HyperlinkActivity$b;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/alipay/android/app/pay/HyperlinkActivity$b;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->l:Lcom/alipay/android/app/pay/HyperlinkActivity$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/HyperlinkActivity$b;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Lcom/alipay/android/app/pay/HyperlinkActivity$a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity$a;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Lcom/alipay/android/app/pay/HyperlinkActivity$a;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Lcom/alipay/android/app/pay/HyperlinkActivity$a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/widget/CustomListView;->setXListViewListener(Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Lcom/alipay/android/app/pay/HyperlinkActivity$a;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->j:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->k:Lcom/alipay/android/app/pay/HyperlinkActivity$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setPullLoadState(I)V

    goto :goto_2
.end method

.method private a([Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:[Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    :try_start_0
    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->o:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const-string/jumbo v0, "current_page"

    iget v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->n:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/android/app/pay/c;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/android/app/pay/c;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v0, "msp_error_title_default"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getString(I)Ljava/lang/String;

    const-string/jumbo v0, "msp_net_error_exit"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "msp_exit"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/pay/e;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/pay/e;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:Z

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopLoadMore()V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setRefreshTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopRefresh()V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopLoadMore()V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListView;->stopRefresh()V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->m:Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "msp_agreement"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    const-string/jumbo v0, "title_close"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->p:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/pay/b;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/pay/b;-><init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v2}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Lcom/alipay/android/app/net/Envelope;

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v3, "inner.web"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v3, "1.0.0"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Lcom/alipay/android/app/net/Envelope;

    const-string/jumbo v3, "com.alipay.mobilecashier"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->d:Lcom/alipay/android/app/net/Envelope;

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/net/Envelope;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:[Ljava/lang/String;

    const-string/jumbo v0, "agreement_list"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/widget/CustomListView;

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->i:Lcom/alipay/android/app/widget/CustomListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->h:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v2, "url"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/alipay/android/app/widget/BaseWebView;

    const-string/jumbo v0, "web_view"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {v2, v0, p0}, Lcom/alipay/android/app/widget/BaseWebView;-><init>(Landroid/webkit/WebView;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/widget/BaseWebView;->a()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "removeJavascriptInterface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    :try_start_3
    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onLowMemory()V

    return-void
.end method
