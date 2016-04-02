.class final Lcom/appyet/manager/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appyet/manager/bq;

.field private final b:Lcom/appyet/data/Feed;

.field private c:Lcom/appyet/context/ApplicationContext;


# direct methods
.method constructor <init>(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    iput-object p3, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const v5, 0x7f080055

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->a(Lcom/appyet/manager/bq;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedType()Lcom/appyet/data/Feed$FeedTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/data/Feed$FeedTypeEnum;->RSS:Lcom/appyet/data/Feed$FeedTypeEnum;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/appyet/b/a/ay;

    iget-object v1, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/b/a/ay;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/b/a/ay;->a(Lcom/appyet/data/Feed;)Lcom/appyet/b/a/u;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    sget-object v2, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/appyet/b/a/u;->b:Lcom/appyet/data/Feed;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/appyet/b/a/u;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getFeedItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_3
    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->f(Lcom/appyet/manager/bq;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

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

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedType()Lcom/appyet/data/Feed$FeedTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/data/Feed$FeedTypeEnum;->ATOM:Lcom/appyet/data/Feed$FeedTypeEnum;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/appyet/b/a/a;

    iget-object v1, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/b/a/a;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/b/a/a;->a(Lcom/appyet/data/Feed;)Lcom/appyet/b/a/u;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedType()Lcom/appyet/data/Feed$FeedTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/data/Feed$FeedTypeEnum;->RDF:Lcom/appyet/data/Feed$FeedTypeEnum;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/appyet/b/a/w;

    iget-object v1, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/b/a/w;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/b/a/w;->a(Lcom/appyet/data/Feed;)Lcom/appyet/b/a/u;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/appyet/b/a/ay;

    iget-object v1, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/b/a/ay;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/b/a/ay;->a(Lcom/appyet/data/Feed;)Lcom/appyet/b/a/u;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    sget-object v2, Lcom/appyet/b/a/v;->a:Lcom/appyet/b/a/v;

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/appyet/b/a/u;->b:Lcom/appyet/data/Feed;

    sget-object v2, Lcom/appyet/data/Feed$FeedTypeEnum;->RSS:Lcom/appyet/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/data/Feed;->setFeedType(Lcom/appyet/data/Feed$FeedTypeEnum;)V

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    sget-object v2, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    if-ne v1, v2, :cond_9

    :cond_8
    new-instance v0, Lcom/appyet/b/a/a;

    iget-object v1, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/b/a/a;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/b/a/a;->a(Lcom/appyet/data/Feed;)Lcom/appyet/b/a/u;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    sget-object v2, Lcom/appyet/b/a/v;->a:Lcom/appyet/b/a/v;

    if-ne v1, v2, :cond_9

    iget-object v1, v0, Lcom/appyet/b/a/u;->b:Lcom/appyet/data/Feed;

    sget-object v2, Lcom/appyet/data/Feed$FeedTypeEnum;->ATOM:Lcom/appyet/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/data/Feed;->setFeedType(Lcom/appyet/data/Feed$FeedTypeEnum;)V

    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    sget-object v2, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    if-ne v1, v2, :cond_2

    :cond_a
    new-instance v0, Lcom/appyet/b/a/w;

    iget-object v1, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/b/a/w;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/b/a/w;->a(Lcom/appyet/data/Feed;)Lcom/appyet/b/a/u;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    sget-object v2, Lcom/appyet/b/a/v;->a:Lcom/appyet/b/a/v;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/appyet/b/a/u;->b:Lcom/appyet/data/Feed;

    sget-object v2, Lcom/appyet/data/Feed$FeedTypeEnum;->RDF:Lcom/appyet/data/Feed$FeedTypeEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/data/Feed;->setFeedType(Lcom/appyet/data/Feed$FeedTypeEnum;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->f(Lcom/appyet/manager/bq;)I

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_2

    :cond_b
    :try_start_3
    iget-object v1, v0, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    sget-object v2, Lcom/appyet/b/a/v;->c:Lcom/appyet/b/a/v;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v2, :cond_c

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_2

    :cond_c
    :try_start_4
    iget-object v0, v0, Lcom/appyet/b/a/u;->b:Lcom/appyet/data/Feed;

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setFeedId(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1, v0}, Lcom/appyet/manager/bq;->a(Lcom/appyet/manager/bq;Lcom/appyet/data/Feed;)Z

    move-result v1

    iget-object v2, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v2, v0}, Lcom/appyet/manager/bq;->b(Lcom/appyet/manager/bq;Lcom/appyet/data/Feed;)V

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    iget-object v1, p0, Lcom/appyet/manager/bt;->b:Lcom/appyet/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getModuleId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/manager/bq;->a(Lcom/appyet/manager/bq;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v5}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v3}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

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

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v1}, Lcom/appyet/manager/bq;->d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v2}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/manager/bt;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4, v5}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

    invoke-static {v4}, Lcom/appyet/manager/bq;->c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/appyet/manager/bt;->a:Lcom/appyet/manager/bq;

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

    :cond_e
    throw v0
.end method
