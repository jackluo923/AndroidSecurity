.class public Lcom/taobao/infsword/client/b;
.super Ljava/lang/Object;


# static fields
.field private static k:Lcom/taobao/infsword/client/b;

.field private static final l:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Landroid/content/Context;

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/infsword/client/b;->k:Lcom/taobao/infsword/client/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/infsword/client/b;->l:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/taobao/infsword/client/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/infsword/client/b;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/infsword/client/b;->c:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/taobao/infsword/client/b;->d:J

    const-wide/32 v0, 0x1e00000

    iput-wide v0, p0, Lcom/taobao/infsword/client/b;->e:J

    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/taobao/infsword/client/b;->f:J

    const-string/jumbo v0, "alibaba_antitrojan_client"

    iput-object v0, p0, Lcom/taobao/infsword/client/b;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/infsword/client/b;
    .locals 2

    sget-object v0, Lcom/taobao/infsword/client/b;->k:Lcom/taobao/infsword/client/b;

    if-nez v0, :cond_1

    sget-object v1, Lcom/taobao/infsword/client/b;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/infsword/client/b;->k:Lcom/taobao/infsword/client/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/infsword/client/b;

    invoke-direct {v0, p0}, Lcom/taobao/infsword/client/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/infsword/client/b;->k:Lcom/taobao/infsword/client/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/taobao/infsword/client/b;->k:Lcom/taobao/infsword/client/b;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;
    .locals 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v3, Lcom/taobao/infsword/a/a;

    invoke-direct {v3}, Lcom/taobao/infsword/a/a;-><init>()V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x1e00000

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/taobao/infsword/c/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/infsword/a/a;->b(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3, v5, v6}, Lcom/taobao/infsword/a/a;->b(J)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/infsword/a/a;->c(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/taobao/infsword/a/a;->d(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v4}, Lcom/taobao/infsword/c/c;->a([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/infsword/a/a;->e(Ljava/lang/String;)V

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Lcom/taobao/infsword/a/a;->a(I)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/taobao/infsword/a/a;->f(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v3, v4, v5}, Lcom/taobao/infsword/a/a;->a(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/taobao/infsword/a/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private a(Landroid/content/pm/PackageManager;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/infsword/client/b;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/infsword/client/b;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/infsword/client/b;->i:Ljava/util/List;

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/taobao/infsword/statistic/b;->a(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    iget-object v2, p0, Lcom/taobao/infsword/client/b;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-wide/32 v4, 0x1e00000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    :try_start_1
    iget-object v2, p0, Lcom/taobao/infsword/client/b;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/taobao/infsword/client/b;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const-wide/16 v2, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v4, "time"

    const-wide/16 v5, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v4, "time2"

    const-wide/16 v5, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-lt v6, v7, :cond_1

    const-wide/32 v6, 0x6400000

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    const/4 v1, 0x0

    move v6, v1

    move-wide/from16 v17, v4

    move-wide v4, v2

    move-wide/from16 v1, v17

    :goto_1
    if-lt v6, v8, :cond_2

    move-wide v3, v4

    :goto_2
    const-wide/32 v5, 0x6400000

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v4, "time2"

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-lt v2, v9, :cond_5

    :goto_4
    return-object v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->g:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->g:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v4, v11

    if-lez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->g:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v1, v2, v15

    :goto_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-wide/from16 v17, v1

    move-wide/from16 v2, v17

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->h:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->h:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v2, v13

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->h:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v4, v15

    :cond_3
    const-wide/32 v15, 0x6400000

    cmp-long v1, v4, v15

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v6, "time2"

    invoke-static {v1, v6, v2, v3}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-wide/from16 v17, v2

    move-wide/from16 v1, v17

    move-wide/from16 v19, v4

    move-wide/from16 v3, v19

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-wide/from16 v17, v2

    move-wide/from16 v1, v17

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v3, v11

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/infsword/client/b;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_7
    move-wide v1, v2

    goto/16 :goto_5
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v3, "scantime"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/taobao/infsword/statistic/KGB;->m:J

    add-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v3, "scantime"

    invoke-static {v2, v3, v4, v5}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/infsword/statistic/KGB;->x:Z

    iget-object v2, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v3, "content"

    invoke-static {v2, v3}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "report cache"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v1, "content"

    invoke-static {v0, v1}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "alibaba_antitrojan_client"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/infsword/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/taobao/infsword/a/c;

    invoke-direct {v4}, Lcom/taobao/infsword/a/c;-><init>()V

    invoke-virtual {v4, v1, v2}, Lcom/taobao/infsword/a/c;->a(J)V

    invoke-virtual {v4, v3}, Lcom/taobao/infsword/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/infsword/statistic/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/taobao/infsword/a/c;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/taobao/infsword/a/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/taobao/infsword/client/b;->a(Ljava/lang/String;Lcom/taobao/infsword/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "scan apps"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/infsword/client/b;->a(Landroid/content/pm/PackageManager;)V

    invoke-direct {p0}, Lcom/taobao/infsword/client/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/infsword/client/b;->a(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "no app need report"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;)Lcom/taobao/infsword/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/infsword/a/b;->a(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/taobao/infsword/a/b;->a(Ljava/util/Set;)V

    invoke-virtual {v2}, Lcom/taobao/infsword/a/b;->p()Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    const-string/jumbo v1, "apps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/infsword/statistic/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/taobao/infsword/statistic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "alibaba_antitrojan_client"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/infsword/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/taobao/infsword/a/c;

    invoke-direct {v4}, Lcom/taobao/infsword/a/c;-><init>()V

    invoke-virtual {v4, v1, v2}, Lcom/taobao/infsword/a/c;->a(J)V

    invoke-virtual {v4, v3}, Lcom/taobao/infsword/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/infsword/statistic/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/taobao/infsword/a/c;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/taobao/infsword/a/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/taobao/infsword/client/b;->a(Ljava/lang/String;Lcom/taobao/infsword/a/c;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/taobao/infsword/statistic/KGB;->x:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/infsword/client/b;->c:J

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lcom/taobao/infsword/client/b;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/taobao/infsword/a/c;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/taobao/infsword/b/b;

    invoke-direct {v4}, Lcom/taobao/infsword/b/b;-><init>()V

    invoke-static {v2}, Lcom/taobao/infsword/statistic/KGB;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lcom/taobao/infsword/b/b;->a(Ljava/lang/String;Lcom/taobao/infsword/a/c;)Lcom/taobao/infsword/a/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/infsword/a/d;->a()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lcom/taobao/infsword/a/d;->a()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/taobao/infsword/statistic/KGB;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lcom/taobao/infsword/b/b;->a(Ljava/lang/String;Lcom/taobao/infsword/a/c;)Lcom/taobao/infsword/a/d;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lcom/taobao/infsword/a/d;->a()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "upload success"

    invoke-static {v1, v2}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/infsword/a/d;->b()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "globalqueryid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v1, "content"

    invoke-static {v0, v1}, Lcom/taobao/infsword/statistic/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/taobao/infsword/client/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "upload failed"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/infsword/client/b;->j:Landroid/content/Context;

    const-string/jumbo v1, "content"

    invoke-static {v0, v1, p1}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method
