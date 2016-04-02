.class final Lcom/appyet/manager/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appyet/manager/bq;

.field private final b:Lcom/appyet/data/FileCache;

.field private c:Lcom/appyet/context/ApplicationContext;


# direct methods
.method constructor <init>(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FileCache;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iput-object p3, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const v6, 0x7f080054

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->a(Lcom/appyet/manager/bq;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    sget-object v1, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    invoke-static {}, Lcom/appyet/context/ApplicationContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    iget-object v2, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v2}, Lcom/appyet/data/FileCache;->getDownloadAttempt()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appyet/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    iget-object v2, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v2}, Lcom/appyet/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/appyet/a/d;

    invoke-direct {v0}, Lcom/appyet/a/d;-><init>()V

    iget-object v2, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v2}, Lcom/appyet/data/FileCache;->getFileLink()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/appyet/a/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v2, v0}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/d;)Lcom/appyet/a/f;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-static {v1}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/appyet/a/f;->c:Ljava/lang/String;

    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "image/jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    iget-wide v2, v1, Lcom/appyet/a/f;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    iget-wide v2, v1, Lcom/appyet/a/f;->e:J

    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->A()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    iget-object v2, v1, Lcom/appyet/a/f;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v3}, Lcom/appyet/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/appyet/manager/al;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    sget-object v2, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Success:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v0, v2}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V

    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v0}, Lcom/appyet/data/FileCache;->getFileType()Lcom/appyet/data/FileCache$FileTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/appyet/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v0}, Lcom/appyet/data/FileCache;->getFileCacheName()Ljava/lang/String;

    invoke-static {}, Lcom/appyet/manager/bq;->e()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v0}, Lcom/appyet/data/FileCache;->getDownloadAttempt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v0}, Lcom/appyet/data/FileCache;->getDownloadStatus()Lcom/appyet/data/FileCache$DownloadStatusEnum;

    move-result-object v0

    sget-object v2, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    sget-object v2, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Failed:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v0, v2}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V

    :cond_5
    iget-object v0, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v2, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    invoke-virtual {v0, v2}, Lcom/appyet/manager/d;->b(Lcom/appyet/data/FileCache;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v6}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/d/f;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    sget-object v2, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Ignore:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v0, v2}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v6}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/d/f;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    sget-object v2, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Ignore:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v0, v2}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v6}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/d/f;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_9
    :try_start_5
    iget-object v0, p0, Lcom/appyet/manager/bu;->b:Lcom/appyet/data/FileCache;

    sget-object v2, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Success:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v0, v2}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v1, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v2}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/manager/bu;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4, v6}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/appyet/manager/bu;->a:Lcom/appyet/manager/bq;

    invoke-static {v5}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Lcom/appyet/d/f;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_a
    throw v0
.end method
