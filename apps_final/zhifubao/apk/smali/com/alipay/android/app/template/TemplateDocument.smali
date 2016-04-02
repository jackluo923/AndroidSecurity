.class public Lcom/alipay/android/app/template/TemplateDocument;
.super Ljava/lang/Object;
.source "TemplateDocument.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;


# static fields
.field private static d:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/List;

.field private e:Lcom/alipay/android/app/template/OnTemplateClickListener;

.field private f:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

.field private g:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

.field private h:Lcom/alipay/android/app/template/TemplateWindow;

.field private i:Lcom/alipay/android/app/template/TemplateAnt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "document"

    sput-object v0, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/template/TemplateDocument;->j:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->a:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->c:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateDocument;->h:Lcom/alipay/android/app/template/TemplateWindow;

    .line 45
    new-instance v0, Lcom/alipay/android/app/template/TemplateAnt;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateAnt;-><init>(Lcom/alipay/android/app/template/TemplateDocument;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->i:Lcom/alipay/android/app/template/TemplateAnt;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateDocument;)Lcom/alipay/android/app/template/OnTemplateClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->e:Lcom/alipay/android/app/template/OnTemplateClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateDocument;)Lcom/alipay/android/app/template/TemplateWindow;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->h:Lcom/alipay/android/app/template/TemplateWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/template/TemplateDocument;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->c:Ljava/util/List;

    return-object v0
.end method

.method public static getElementById(Ljava/util/Map;Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 260
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getElementsByClassName(Ljava/util/Map;Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 133
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 137
    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/template/view/widget/TElement;

    .line 140
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alipay/android/app/template/view/widget/TElement;

    goto :goto_0
.end method

.method public static getElementsByTagName(Lcom/alipay/android/app/template/view/widget/TElement;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 225
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->tagName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    instance-of v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_2

    .line 230
    check-cast p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 231
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 232
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 240
    goto :goto_0

    .line 234
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 235
    invoke-static {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementsByTagName(Lcom/alipay/android/app/template/view/widget/TElement;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static putElement(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    return-void
.end method

.method public static removeElement(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public static updateClass(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;Z)V
    .locals 1

    .prologue
    .line 106
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 112
    if-nez p3, :cond_3

    .line 113
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 119
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public appendChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 245
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateDocument;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->appendChild(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 247
    return-void
.end method

.method public asyncSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/template/TemplateDocument;->nativeAsyncSubmit(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 290
    return-void
.end method

.method public clearClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/android/app/template/TemplateDocument;->updateClass(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;Z)V

    .line 126
    return-void
.end method

.method public clearDocument()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateDocument;->b:Ljava/util/Map;

    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 346
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateDocument;->a:Ljava/util/Map;

    .line 347
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateDocument;->e:Lcom/alipay/android/app/template/OnTemplateClickListener;

    .line 348
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateDocument;->c:Ljava/util/List;

    .line 355
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/app/template/TemplateDocument;->i:Lcom/alipay/android/app/template/TemplateAnt;

    .line 356
    return-void

    .line 349
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/TemplateClickCallback;

    .line 350
    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateClickCallback;->clear()V

    goto :goto_0
.end method

.method public createElement(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    :goto_0
    return-object v0

    .line 183
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/template/view/ViewType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/ViewType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateDocument;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 190
    new-instance v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-direct {v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;-><init>()V

    .line 191
    iput-object v1, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    .line 192
    invoke-virtual {v2, v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->initLayoutType(Lcom/alipay/android/app/template/view/ViewType;)V

    .line 193
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateDocument;->h:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v2, v1}, Lcom/alipay/android/app/template/view/ElementFactory;->createElement(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v1

    .line 194
    invoke-virtual {v2, v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setTemplateElement(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 195
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/view/widget/TElement;->initView(Landroid/app/Activity;)V

    move-object v0, v1

    .line 197
    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAnt()Lcom/alipay/android/app/template/TemplateAnt;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->i:Lcom/alipay/android/app/template/TemplateAnt;

    return-object v0
.end method

.method public getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->f:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementById(Ljava/util/Map;Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByClassName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->b:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementsByClassName(Ljava/util/Map;Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 2

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->f:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t get body element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateDocument;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateDocument;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/template/view/widget/TElement;

    return-object v0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->f:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-static {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementsByTagName(Lcom/alipay/android/app/template/view/widget/TElement;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/alipay/android/app/template/OnTemplateClickListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->e:Lcom/alipay/android/app/template/OnTemplateClickListener;

    return-object v0
.end method

.method public getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->g:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    return-object v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    sget-object v0, Lcom/alipay/android/app/template/TemplateDocument;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 296
    const-string/jumbo v2, "getElementById"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 297
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "getElementById"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 299
    const-string/jumbo v2, "getElementsByTagName"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 300
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "getElementsByTagName"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 302
    const-string/jumbo v2, "getElementsByClassName"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 303
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "getElementsByClassName"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 305
    const-string/jumbo v2, "querySelectorAll"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 306
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "querySelectorAll"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 308
    const-string/jumbo v2, "querySelector"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 309
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "querySelector"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 311
    const-string/jumbo v2, "createElement"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 312
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "createElement"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 314
    const-string/jumbo v2, "appendChild"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 315
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "appendChild"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 317
    const-string/jumbo v2, "removeChild"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 318
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "removeChild"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 320
    const-string/jumbo v2, "setOnreload"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 321
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "onreload"

    invoke-virtual {v0, v3, v4, v7, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 323
    const-string/jumbo v2, "getBodyElement"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 324
    sget-object v3, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v4, "body"

    invoke-virtual {v0, v3, v4, v2, v7}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 326
    const-string/jumbo v2, "getNavElement"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    const-string/jumbo v3, "navBar"

    invoke-virtual {v0, v2, v3, v1, v7}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 329
    sget-object v1, Lcom/alipay/android/app/template/TemplateDocument;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/TemplateDocument;->j:Ljava/lang/String;

    .line 331
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateDocument;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getWindow()Lcom/alipay/android/app/template/TemplateWindow;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->h:Lcom/alipay/android/app/template/TemplateWindow;

    return-object v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->h:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public nativeAsyncSubmit(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->f:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->h:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/alipay/android/app/template/TemplateDocument$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/alipay/android/app/template/TemplateDocument$1;-><init>(Lcom/alipay/android/app/template/TemplateDocument;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;Ljava/lang/String;)V

    .line 284
    const-wide/16 v2, 0x14

    .line 275
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    :cond_0
    return-void
.end method

.method public putClass(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/android/app/template/TemplateDocument;->updateClass(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;Z)V

    .line 102
    return-void
.end method

.method public putElement(Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->a:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateDocument;->putElement(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 80
    return-void
.end method

.method public querySelector(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->querySelectorAll(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 170
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public querySelectorAll(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    if-nez p1, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 151
    :cond_0
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/TemplateDocument;->getElementById(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v1

    .line 154
    if-nez v1, :cond_1

    .line 155
    new-array v0, v3, [Lcom/alipay/android/app/template/view/widget/TElement;

    goto :goto_0

    .line 157
    :cond_1
    new-array v0, v2, [Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v1, v0, v3

    goto :goto_0

    .line 159
    :cond_2
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/TemplateDocument;->getElementsByClassName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/TemplateDocument;->getElementsByTagName(Ljava/lang/String;)[Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    goto :goto_0
.end method

.method public removeChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/TemplateDocument;->removeElement(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateDocument;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->removeChild(Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 253
    return-void
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->removeElement(Ljava/util/Map;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setBodyElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateDocument;->f:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 72
    return-void
.end method

.method public setListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateDocument;->e:Lcom/alipay/android/app/template/OnTemplateClickListener;

    .line 56
    return-void
.end method

.method public setNavElement(Lcom/alipay/android/app/template/view/widget/TBaseComponent;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateDocument;->g:Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 64
    return-void
.end method

.method public setOnreload(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->i:Lcom/alipay/android/app/template/TemplateAnt;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateAnt;->setOnreload(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->e:Lcom/alipay/android/app/template/OnTemplateClickListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument;->e:Lcom/alipay/android/app/template/OnTemplateClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/alipay/android/app/template/OnTemplateClickListener;->onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z

    .line 270
    :cond_0
    return-void
.end method
