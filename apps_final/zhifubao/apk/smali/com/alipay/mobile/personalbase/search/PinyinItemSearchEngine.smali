.class public Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;
.super Ljava/lang/Object;
.source "PinyinItemSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TH;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    iput-object v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->d:I

    .line 15
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    move v1, v2

    .line 136
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 147
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1
    return-object v0

    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 137
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 136
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TH;>;"
        }
    .end annotation

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 183
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_5

    .line 198
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 204
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/alipay/mobile/personalbase/search/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/personalbase/search/a;-><init>(B)V

    .line 206
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 207
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object v0, v2

    .line 208
    goto :goto_0

    .line 187
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;

    .line 189
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->isFirstFieldMatch(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-boolean v0, v1, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mIsSecondSearch:Z

    if-nez v0, :cond_2

    .line 192
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TH;>;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    return-object v1

    .line 156
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;

    .line 157
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->isSecondFieldMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    invoke-static {p0}, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->getFullPY(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static createSearchEngine()Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;-><init>()V

    return-object v0
.end method

.method public static getFullPY(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 237
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    .line 251
    return-object v3

    .line 238
    :cond_0
    aget-char v4, v2, v0

    .line 239
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    invoke-static {}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->getInstance()Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v5

    .line 243
    if-nez v5, :cond_2

    .line 244
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    aget-object v4, v5, v1

    if-eqz v4, :cond_1

    .line 248
    aget-object v4, v5, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clearSearchIndex()V
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->clearInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadAndPrepareSearchIndex(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TH;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    return-void

    .line 35
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 41
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;

    .line 43
    iget-object v0, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public declared-synchronized resetSearchResult()V
    .locals 3

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mIsFirstSearch:Z

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mIsSecondSearch:Z

    .line 121
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedWord:Ljava/lang/String;

    .line 122
    const/4 v2, -0x1

    iput v2, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex:I

    .line 123
    const/4 v2, -0x1

    iput v2, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedEndIndex:I

    .line 124
    const/4 v2, -0x1

    iput v2, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedStartIndex2:I

    .line 125
    const/4 v2, -0x1

    iput v2, v0, Lcom/alipay/mobile/personalbase/search/PinyinSearchableItem;->mMatchedEndIndex2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized search(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TH;>;"
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->resetSearchResult()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 98
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-direct {p0, v1}, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/personalbase/search/PinyinItemSearchEngine;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
