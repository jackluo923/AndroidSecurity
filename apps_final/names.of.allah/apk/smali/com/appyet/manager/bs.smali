.class final Lcom/appyet/manager/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appyet/manager/bq;

.field private final b:Lcom/appyet/data/FeedItem;

.field private c:Lcom/appyet/context/ApplicationContext;


# direct methods
.method constructor <init>(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iput-object p3, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v1, 0x0

    const v9, 0x7f080057

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->a(Lcom/appyet/manager/bq;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    sget-object v2, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v2, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v2, v3}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v9}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

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

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/appyet/a/d;

    invoke-direct {v0}, Lcom/appyet/a/d;-><init>()V

    iget-object v2, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->z()Lcom/appyet/context/b;

    move-result-object v2

    sget-object v3, Lcom/appyet/context/b;->b:Lcom/appyet/context/b;

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.google.com/gwt/x?u="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/appyet/a/d;->a:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v2, v0}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/d;)Lcom/appyet/a/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_2
    iget v0, v2, Lcom/appyet/a/f;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0x1f8

    if-ne v0, v3, :cond_4

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v9}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_1

    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.instapaper.com/m?u="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/appyet/a/d;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v3, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v9}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_1

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-static {v2}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/f;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v2, Lcom/appyet/a/f;->c:Ljava/lang/String;

    const-string v3, "text/html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/appyet/a/f;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/appyet/d/b;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    :cond_5
    :goto_4
    invoke-static {v3, v0}, Lcom/appyet/d/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v3, "<div id=\"story\">"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "<div id=\"footer\">"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_9

    if-ltz v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    if-ge v3, v4, :cond_9

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v3, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v4, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v4}, Lcom/appyet/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v4

    new-instance v5, Lcom/appyet/manager/i;

    invoke-direct {v5, v0, v1, v3}, Lcom/appyet/manager/i;-><init>(Lcom/appyet/manager/d;Ljava/lang/String;Lcom/appyet/data/FeedItem;)V

    invoke-static {v4, v5}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    :try_start_7
    invoke-static {v1}, Lcom/appyet/d/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_a

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v9}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_1

    :cond_7
    :try_start_8
    invoke-static {v3}, Lcom/appyet/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_8
    const-string v0, "utf-8"

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v3, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v3, v4}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    :goto_8
    :try_start_9
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v9}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_1

    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/appyet/f/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "//"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->a(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    :try_start_b
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    new-instance v4, Lcom/appyet/data/FileCache;

    invoke-direct {v4}, Lcom/appyet/data/FileCache;-><init>()V

    invoke-static {v0}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/appyet/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    sget-object v6, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v4, v6}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V

    invoke-virtual {v4, v0}, Lcom/appyet/data/FileCache;->setFileLink(Ljava/lang/String;)V

    sget-object v6, Lcom/appyet/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v4, v6}, Lcom/appyet/data/FileCache;->setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V

    invoke-virtual {v4, v5}, Lcom/appyet/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v5}, Lcom/appyet/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v5}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v5, v0}, Lcom/appyet/data/FeedItem;->setThumbnail(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v6, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v6}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v6

    :try_start_d
    iget-object v7, v5, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v7}, Lcom/appyet/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v7

    new-instance v8, Lcom/appyet/manager/q;

    invoke-direct {v8, v5, v0, v6}, Lcom/appyet/manager/q;-><init>(Lcom/appyet/manager/d;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v7, v8}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_9
    :try_start_e
    sget-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v4, v0}, Lcom/appyet/data/FileCache;->setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V

    :cond_c
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->b(Lcom/appyet/manager/bq;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :goto_a
    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v2}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4, v9}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

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

    :cond_d
    throw v0

    :catch_5
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    :try_start_11
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_7

    :catch_7
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_e
    :try_start_14
    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/d;->b(Ljava/util/List;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_f
    :goto_b
    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v9}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bs;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_1

    :cond_10
    :try_start_15
    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v3, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1, v3}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V

    goto/16 :goto_b

    :cond_11
    iget-object v0, p0, Lcom/appyet/manager/bs;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/manager/bs;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    sget-object v3, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v0, v1, v3}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8
.end method
