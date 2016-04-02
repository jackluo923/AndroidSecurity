.class public Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;
.super Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
.source "GlobalSearchServiceImp.java"


# static fields
.field public static currentTime:J

.field public static decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

.field private static r:Ljava/lang/String;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/api/QueryListener;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/api/Decryptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

.field private d:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/android/phone/globalsearch/a/b;

.field private i:Lcom/alipay/android/phone/globalsearch/a/b;

.field private j:Lcom/alipay/android/phone/globalsearch/a/b;

.field private k:Lcom/alipay/android/phone/globalsearch/a/b;

.field private l:Lcom/alipay/android/phone/globalsearch/a/b;

.field private m:Lcom/alipay/android/phone/globalsearch/a/k;

.field private n:Lcom/alipay/android/phone/globalsearch/a/d;

.field private o:Lcom/alipay/android/phone/globalsearch/a/b;

.field private p:Z

.field private q:Ljava/lang/String;

.field private s:Lcom/alibaba/android/babylon/search/ISearch;

.field private t:Z

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

.field private w:Lcom/alipay/android/phone/globalsearch/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->currentTime:J

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->b:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;)V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/l;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/d;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/globalsearch/a/k;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/a/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->c:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->c:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/globalsearch/a/k;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/a/k;->f()Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;->onSearchResult(Ljava/util/List;Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/l;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/n;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 568
    :try_start_0
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    :goto_0
    return v0

    .line 571
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Z

    if-eqz v2, :cond_1

    .line 572
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Z

    goto :goto_0

    .line 574
    :cond_1
    const-string/jumbo v2, "laiwang-searcher"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 575
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 576
    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 579
    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Z

    goto :goto_0
.end method


# virtual methods
.method public addSearchIndex(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    return-void

    .line 602
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    const-string/jumbo v2, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addIndexName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 404
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z

    .line 407
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk NewAddTableIndex : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 417
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z

    .line 420
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk addPinYin index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 391
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v5, 0x4c4b40

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)Z

    .line 394
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk addTableIndex : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTableIndexForEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 431
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTableWithEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0
.end method

.method public clearData()V
    .locals 3

    .prologue
    .line 307
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    .line 308
    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clear keyWord : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/n;->a()V

    .line 311
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->d()V

    .line 312
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->d()V

    .line 313
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/d;->d()V

    .line 314
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->d()V

    .line 316
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->d()V

    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->d()V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/globalsearch/a/k;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/k;->d()V

    .line 319
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->d()V

    .line 321
    return-void
.end method

.method public clearData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 324
    const-string/jumbo v0, "MainPage"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->clearData()V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/globalsearch/a/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeDbHook()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    return-void
.end method

.method public closeDbHook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 620
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "GlobalSearchServiceImp exit!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 335
    sput-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    .line 336
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->clearData()V

    .line 337
    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    .line 338
    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    .line 339
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    const-string/jumbo v1, "publicplatform"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    const-string/jumbo v1, "publicplatform"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    const-string/jumbo v1, "message_box"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    const-string/jumbo v1, "message_box"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    const-string/jumbo v1, "coupon"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    const-string/jumbo v1, "coupon"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_2
    return-void
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 529
    :goto_0
    return-object v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 527
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2, p4}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 462
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 464
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk doSearch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 466
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/util/List;)Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    move-result-object v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    invoke-interface {v0, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/QueryListener;->doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "indexName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " didn\'t registed, calling fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string/jumbo v1, "search"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public doSearchApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 441
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 443
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk doSearch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Ljava/util/List;)Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    move-result-object v1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    invoke-interface {v0, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/QueryListener;->doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "indexName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " didn\'t registed, calling fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v1, "search"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public doSearchEx(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 482
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 484
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "indexFor"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-interface {v1, v0, p2, v2, v3}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 486
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "search sdk doSearch : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    invoke-interface {v0, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/QueryListener;->doQuery(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "indexName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " didn\'t registed, calling fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v1, "search"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public downLoadApp()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;->downLoadApp()V

    .line 670
    :cond_0
    return-void
.end method

.method public getChatMessageClickListener()Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/d;->f()Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    return-object v0
.end method

.method public highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    const/4 v0, 0x0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/android/babylon/search/Utils;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hookDB(Ljava/lang/String;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 539
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/babylon/search/ISearch;->hookDB(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public hookDB(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 550
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 552
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hookDB \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dbPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dbConnection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/babylon/search/ISearch;->addDB(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 366
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 368
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk init : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/babylon/search/ISearch;->addDB(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 378
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 380
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk init encrypt db : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/ISearch;->addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    .line 239
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 256
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/j;

    const-string/jumbo v1, "publicplatform"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 257
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 258
    const-string/jumbo v0, "publicplatformclient"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 260
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/a;

    const-string/jumbo v1, "app"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 261
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 262
    const-string/jumbo v0, "app"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 264
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/g;

    const-string/jumbo v1, "coupon"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 265
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 266
    const-string/jumbo v0, "coupon"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 268
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/h;

    const-string/jumbo v1, "messagebox"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 269
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 270
    const-string/jumbo v0, "messagebox"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 272
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/f;

    const-string/jumbo v1, "contact"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 273
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 274
    const-string/jumbo v0, "contact"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 276
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/k;

    invoke-direct {v0}, Lcom/alipay/android/phone/globalsearch/a/k;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/globalsearch/a/k;

    .line 277
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/globalsearch/a/k;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/k;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 278
    const-string/jumbo v0, "server"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/globalsearch/a/k;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 280
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/d;

    const-string/jumbo v1, "chatmsg"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    .line 281
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/d;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 282
    const-string/jumbo v0, "chatmsg"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 284
    new-instance v0, Lcom/alipay/android/phone/globalsearch/a/c;

    const-string/jumbo v1, "group"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/globalsearch/a/i;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;)V

    .line 286
    const-string/jumbo v0, "group"

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V

    .line 288
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string/jumbo v1, "search"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onSearchResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchDataInterface;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    return-void
.end method

.method public onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keyword : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , drop this result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v1, "jiushi"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "source : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",keyword : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " , query : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " , hasData :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 145
    :cond_1
    const-string/jumbo v0, "publicplatform"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "app"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "coupon"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v0, "contact"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "message_box"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v0, "chatmsg"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Lcom/alipay/android/phone/globalsearch/a/d;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/globalsearch/a/d;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v0, "group"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_8
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "search"

    const-string/jumbo v1, "add new data,enter service onSearchResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 141
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 142
    const-string/jumbo v2, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sourcr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " param = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 145
    :cond_b
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "no new data"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public registerAppDownloadListener(Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

    .line 663
    return-void
.end method

.method public registerDecryptor(Lcom/alipay/android/phone/globalsearch/api/Decryptor;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 594
    sput-object p1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    .line 595
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public registerQueryListener(Lcom/alipay/android/phone/globalsearch/api/QueryListener;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerQueryListener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public scanTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 637
    :goto_0
    return v0

    .line 627
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 629
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "cann\'t do scanTable in MainThread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_2

    .line 635
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/babylon/search/ISearch;->scanTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 90
    invoke-virtual {p0, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->clearData(Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->currentTime:J

    .line 93
    const-string/jumbo v0, "app"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearchApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "publicplatform"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "chatmsg"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearchEx(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Ljava/util/Map;

    const-string/jumbo v2, "contact"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    invoke-interface {v0, v1, p1}, Lcom/alipay/android/phone/globalsearch/api/QueryListener;->doQuery(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :cond_2
    :goto_1
    const-string/jumbo v0, "message_box"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "coupon"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    .line 100
    const-string/jumbo v0, "MainPage"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v6, v2}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 107
    :goto_2
    return-void

    .line 96
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "search"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "search sdk doSearcrGroup : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,query : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Lcom/alibaba/android/babylon/search/ISearch;

    const/16 v4, 0x1f4

    invoke-interface {v3, v0, p1, v6, v4}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "search"

    const-string/jumbo v2, "indexName : group didn\'t registed, calling fail"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "search"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_4
    iput-boolean v6, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Z

    .line 104
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    invoke-virtual {v0, p1, v6, p2}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public searchMore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;->onMoreItemClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setMoreClickListener(Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    .line 358
    return-void
.end method

.method public setOnSearchListener(Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;)V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "setOnSearchListener"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-void
.end method

.method public setResultListener(Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->c:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    .line 303
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Ljava/lang/String;

    .line 651
    return-void
.end method
