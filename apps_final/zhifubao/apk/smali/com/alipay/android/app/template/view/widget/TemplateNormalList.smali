.class public Lcom/alipay/android/app/template/view/widget/TemplateNormalList;
.super Lcom/alipay/android/app/template/view/widget/TBaseComponent;
.source "TemplateNormalList.java"


# instance fields
.field private d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

.field private p:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

.field private q:Ljava/util/List;

.field private r:I

.field private s:I

.field private t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 30
    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->q:Ljava/util/List;

    .line 37
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->r:I

    .line 39
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->s:I

    .line 41
    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->u:Z

    .line 45
    const-string/jumbo v0, "frontpay"

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->v:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "loc:returnData"

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->w:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "/frontpay/newCard"

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->x:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->y:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    .line 53
    const-string/jumbo v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->s:I

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->r:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->y:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->r:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->s:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->p:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    return-void
.end method

.method static synthetic k(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->p:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    return-void
.end method

.method static synthetic l(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->q:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    .line 196
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;->setDividerHeight(I)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->b:Landroid/view/ViewGroup;

    .line 199
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 200
    return-void
.end method

.method public addChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->destroy()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->y:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    .line 421
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->fillElementView(Landroid/app/Activity;)V

    .line 205
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->p:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->p:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->p:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d:Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ListViewForEmbeddingInScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 209
    return-void
.end method

.method public insertBefore(Lcom/alipay/android/app/template/view/widget/TElement;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onClickCallback(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->y:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->y:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    invoke-static {v0, v3}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 401
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 410
    :cond_0
    :goto_0
    invoke-static {v0, v2}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 411
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->p:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->notifyDataSetChanged()V

    .line 414
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->onClickCallback(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 405
    :cond_2
    invoke-static {v0, v2}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 406
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    invoke-static {v1, v3}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    goto :goto_0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setList"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "list"

    invoke-virtual {p1, v1, v2, v6, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setBizType"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bizType"

    invoke-virtual {p1, v1, v2, v6, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 65
    return-void
.end method

.method public removeChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->v:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "deposit"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "loc:back;/deposit/channelChoosed"

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->w:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "loc:back;/setting/addCard"

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->x:Ljava/lang/String;

    .line 73
    :cond_0
    return-void
.end method

.method public setList(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    const-string/jumbo v3, "channel"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "exit"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->u:Z

    .line 84
    :cond_0
    new-instance v4, Lcom/alipay/android/app/json/JSONArray;

    invoke-direct {v4, p1}, Lcom/alipay/android/app/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v5

    move v3, v1

    .line 86
    :goto_0
    if-lt v3, v5, :cond_2

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "newCardChannel"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    const-string/jumbo v3, "usable"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 163
    if-eqz v3, :cond_1

    .line 164
    new-instance v3, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    .line 165
    invoke-static {v3, v2}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 166
    invoke-static {v3, v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->g(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 167
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, ""

    invoke-static {v3, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 169
    const/4 v0, -0x1

    invoke-static {v3, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;I)V

    .line 170
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    return-void

    .line 87
    :cond_2
    invoke-virtual {v4, v3}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 88
    new-instance v6, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    invoke-direct {v6, p0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    .line 89
    const-string/jumbo v7, "name"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 90
    const-string/jumbo v7, "name"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 93
    :cond_3
    const-string/jumbo v7, "value"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 94
    const-string/jumbo v7, "value"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 97
    :cond_4
    const-string/jumbo v7, "available"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    const-string/jumbo v7, "available"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 101
    :cond_5
    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->m(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 102
    const-string/jumbo v7, "available_title"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 105
    :cond_6
    const-string/jumbo v7, "detail"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 106
    const-string/jumbo v7, "detail"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 109
    :cond_7
    const-string/jumbo v7, "end_code"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 110
    const-string/jumbo v7, "end_code"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 113
    :cond_8
    const-string/jumbo v7, "close_msg"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 114
    const-string/jumbo v7, "close_msg"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 117
    :cond_9
    const-string/jumbo v7, "tail"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 118
    const-string/jumbo v7, "tail"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 121
    :cond_a
    const-string/jumbo v7, "hui"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 122
    const-string/jumbo v7, "hui"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 126
    :cond_b
    const-string/jumbo v7, "new_card"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 127
    const-string/jumbo v7, "new_card"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 130
    :cond_c
    const-string/jumbo v7, "add"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 131
    const-string/jumbo v7, "add"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 134
    :cond_d
    const-string/jumbo v7, "fan"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 135
    const-string/jumbo v7, "fan"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 138
    :cond_e
    const-string/jumbo v7, "checked"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 139
    const-string/jumbo v7, "checked"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 140
    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 141
    iput-object v6, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->t:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    .line 145
    :cond_f
    const-string/jumbo v7, "disable"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 146
    const-string/jumbo v7, "disable"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->g(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 149
    :cond_10
    const-string/jumbo v7, "usable"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 150
    const-string/jumbo v7, "usable"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_1
    invoke-static {v6, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->g(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 151
    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->v:Ljava/lang/String;

    const-string/jumbo v7, "frontpay"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 152
    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->n(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Ljava/lang/String;)V

    .line 155
    :cond_11
    invoke-static {v6, v3}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;I)V

    .line 156
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->q:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_12
    move v0, v2

    .line 150
    goto :goto_1
.end method
