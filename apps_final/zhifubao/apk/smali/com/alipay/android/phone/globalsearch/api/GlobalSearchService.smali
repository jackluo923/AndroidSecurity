.class public abstract Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "GlobalSearchService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public abstract addSearchIndex(Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract addTableIndexForEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract clearData()V
.end method

.method public abstract closeDbHook()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract closeDbHook(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
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
.end method

.method public abstract doSearch(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downLoadApp()V
.end method

.method public abstract getChatMessageClickListener()Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;
.end method

.method public abstract getListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hookDB(Ljava/lang/String;I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hookDB(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
.end method

.method public abstract onSearchResult(Ljava/util/List;Ljava/lang/String;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract registerAppDownloadListener(Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;)V
.end method

.method public abstract registerDecryptor(Lcom/alipay/android/phone/globalsearch/api/Decryptor;Ljava/lang/String;)V
.end method

.method public abstract registerQueryListener(Lcom/alipay/android/phone/globalsearch/api/QueryListener;Ljava/lang/String;)V
.end method

.method public abstract scanTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract searchMore(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMoreClickListener(Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;)V
.end method

.method public abstract setOnSearchListener(Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setResultListener(Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method
