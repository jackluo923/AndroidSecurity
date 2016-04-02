.class public Lcom/alibaba/android/babylon/search/SearchImpl;
.super Ljava/lang/Object;
.source "SearchImpl.java"

# interfaces
.implements Lcom/alibaba/android/babylon/search/ISearch;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchImpl"

.field private static iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

.field private static final initLock:Ljava/lang/Object;


# instance fields
.field private final MIN_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->MIN_TIME:J

    .line 21
    return-void
.end method

.method public static getSearcher()Lcom/alibaba/android/babylon/search/ISearch;
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;
    .locals 5

    .prologue
    .line 24
    sget-object v2, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v2

    .line 25
    :try_start_0
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    monitor-exit v2

    .line 50
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "search"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_1
    new-instance v1, Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-direct {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;-><init>()V

    sput-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/16 v1, -0xa

    .line 40
    :try_start_1
    sget-object v3, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    const/16 v4, 0x60

    invoke-direct {v3, v0, v4}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_init_engine(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 45
    :goto_2
    if-gez v0, :cond_2

    .line 46
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->printNativeInfo(I)V

    .line 47
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    .line 50
    :cond_2
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private native native_addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native native_add_index_for_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_hook_db(Ljava/lang/String;I)I
.end method

.method private native native_init_engine(Ljava/lang/String;I)I
.end method

.method private native native_release_engine()V
.end method

.method private native native_scan_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
.end method

.method private native native_set_index_dataFunc(Ljava/lang/String;)I
.end method

.method private native native_set_log_callback()I
.end method

.method private native native_sqlite_handler(Ljava/lang/Object;)I
.end method

.method private native native_stop_hook_db(Ljava/lang/String;)I
.end method

.method private static printNativeInfo(I)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public static profLayerDataProcFunc(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v1

    .line 63
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 67
    const-string/jumbo v0, ""

    .line 68
    :goto_1
    array-length v3, p3

    if-lt v1, v3, :cond_1

    .line 73
    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "coupon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fieldNames : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fieldValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alipay/android/phone/globalsearch/api/Decryptor;->decryptValues(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 84
    :goto_2
    return-object p3

    .line 64
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p3, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "indexName : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", fieldNum : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", fieldNames : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fieldValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method


# virtual methods
.method public JNI_LOG(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    const-string/jumbo v0, "native_search"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public addDB(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 91
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    :try_start_0
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/babylon/search/SearchImpl;->hookDB(Ljava/lang/String;I)Z

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 96
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :try_start_0
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/babylon/search/SearchImpl;->hookDB(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 172
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/android/babylon/search/SearchImpl;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 10
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    .line 194
    :cond_1
    invoke-static {p5}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-static/range {p7 .. p7}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-static/range {p8 .. p8}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 197
    invoke-static/range {p9 .. p9}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    .line 203
    :try_start_0
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_add_index_for_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz p10, :cond_3

    .line 207
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add index for encrypted data,index is  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_set_index_dataFunc(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_3
    :goto_1
    const/16 v0, -0xa

    .line 223
    :try_start_1
    invoke-direct {p0, p2, p3, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_scan_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 230
    :goto_2
    if-gez v0, :cond_4

    .line 231
    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->printNativeInfo(I)V

    .line 232
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 227
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 235
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    const-string/jumbo v4, "rowid"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/android/babylon/search/SearchImpl;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 184
    const-string/jumbo v4, "rowid"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/android/babylon/search/SearchImpl;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public addIndexForTableWithEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/android/babylon/search/SearchImpl;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 296
    sget-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_release_engine()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    .line 296
    monitor-exit v1

    return-void

    .line 299
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
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
    .line 240
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v7

    .line 248
    :cond_1
    if-gez p4, :cond_2

    .line 249
    :goto_1
    if-gtz p5, :cond_3

    const v5, 0x7fffffff

    .line 253
    :goto_2
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    :goto_3
    const-string/jumbo v1, "SearchImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Query : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->parseResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    :cond_2
    move v4, p4

    .line 248
    goto :goto_1

    :cond_3
    move v5, p5

    .line 249
    goto :goto_2

    .line 254
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_3
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 266
    :cond_1
    if-gez p4, :cond_2

    const/4 v4, 0x0

    .line 267
    :goto_1
    if-gtz p5, :cond_3

    const v5, 0x7fffffff

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    .line 269
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "SearchImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->parseResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v4, p4

    .line 266
    goto :goto_1

    :cond_3
    move v5, p5

    .line 267
    goto :goto_2
.end method

.method public hookDB(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    const/16 v2, -0xa

    .line 140
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_hook_db(Ljava/lang/String;I)I

    move-result v2

    .line 141
    const-string/jumbo v1, "SearchImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "hook db : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dbName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Connection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public hookDB(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_sqlite_handler(Ljava/lang/Object;)I

    move-result v1

    .line 155
    if-ltz v1, :cond_0

    .line 158
    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_hook_db(Ljava/lang/String;I)I

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scanTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 281
    const/16 v1, -0xa

    .line 283
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_scan_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    if-gez v1, :cond_1

    .line 288
    invoke-static {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->printNativeInfo(I)V

    .line 291
    :cond_0
    :goto_1
    return v0

    .line 284
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    :cond_1
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public stopHook(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 308
    sget-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_stop_hook_db(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 311
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
