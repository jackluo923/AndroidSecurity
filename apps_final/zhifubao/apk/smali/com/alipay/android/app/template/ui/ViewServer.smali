.class public Lcom/alipay/android/app/template/ui/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static j:Lcom/alipay/android/app/template/ui/ViewServer;


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private final b:I

.field private c:Ljava/lang/Thread;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private h:Landroid/view/View;

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->e:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->f:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->b:I

    .line 189
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->e:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->f:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 200
    const/16 v0, 0x134b

    iput v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->b:I

    .line 201
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/ViewServer;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    return-void

    .line 444
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;

    .line 445
    invoke-interface {v0}, Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 419
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/ui/ViewServer;->b(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/ui/ViewServer;)Landroid/view/View;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/ui/ViewServer;Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x0

    .line 423
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 424
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x2000

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    const/4 v0, 0x1

    .line 432
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 440
    :goto_0
    return v0

    .line 430
    :catch_0
    move-exception v2

    .line 432
    :goto_1
    if-eqz v0, :cond_1

    .line 434
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    goto :goto_0

    .line 436
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 432
    :goto_2
    if-eqz v2, :cond_0

    .line 434
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 436
    :cond_0
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 431
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 430
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/ui/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/alipay/android/app/template/ui/ViewServer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/alipay/android/app/template/ui/ViewServer;->j:Lcom/alipay/android/app/template/ui/ViewServer;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/template/ui/ViewServer;-><init>(B)V

    sput-object v0, Lcom/alipay/android/app/template/ui/ViewServer;->j:Lcom/alipay/android/app/template/ui/ViewServer;

    .line 173
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/ui/ViewServer;->j:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/template/ui/ViewServer;->j:Lcom/alipay/android/app/template/ui/ViewServer;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/ui/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/app/template/ui/ViewServer;->j:Lcom/alipay/android/app/template/ui/ViewServer;

    return-object v0

    .line 181
    :cond_2
    new-instance v0, Lcom/alipay/android/app/template/ui/ViewServer$NoopViewServer;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/template/ui/ViewServer$NoopViewServer;-><init>(B)V

    sput-object v0, Lcom/alipay/android/app/template/ui/ViewServer;->j:Lcom/alipay/android/app/template/ui/ViewServer;

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/template/ui/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 305
    return-void

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 334
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/ViewServer;->a()V

    .line 335
    return-void

    .line 331
    :catchall_0
    move-exception v0

    .line 332
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 333
    throw v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/ViewServer;->removeWindow(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 348
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 353
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 355
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->h:Landroid/view/View;

    if-ne v1, v0, :cond_0

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->h:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 361
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/ViewServer;->a()V

    .line 362
    return-void

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 352
    throw v0

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 360
    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 395
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->b:I

    const/16 v2, 0xa

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 417
    :cond_0
    return-void

    .line 403
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/template/ui/ViewServer$ViewServerWorker;-><init>(Lcom/alipay/android/app/template/ui/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 408
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 409
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 397
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    .line 372
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 383
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->h:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 387
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    return-void

    .line 383
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 386
    throw v0

    .line 387
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;

    invoke-interface {v0}, Lcom/alipay/android/app/template/ui/ViewServer$WindowListener;->b()V

    goto :goto_1
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Local View Server [port="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/app/template/ui/ViewServer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    .line 219
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    .line 220
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    .line 247
    iput-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->c:Ljava/lang/Thread;

    .line 250
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->a:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    const/4 v0, 0x1

    .line 272
    :goto_1
    return v0

    :catch_0
    move-exception v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 260
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 265
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 267
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->h:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 272
    const/4 v0, 0x0

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 263
    throw v0

    .line 268
    :catchall_1
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 270
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
