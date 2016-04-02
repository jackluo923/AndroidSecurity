.class final Lcom/alipay/android/app/source/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/source/a$a;
    }
.end annotation


# static fields
.field private static h:Lcom/alipay/android/app/source/a;


# instance fields
.field private a:Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/base/message/MspMessage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/base/message/MspMessage;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/app/source/a$a;

.field private e:Lcom/alipay/android/app/source/a$a;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/source/a;->a:Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/source/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/source/a;->c:Ljava/util/List;

    iput-object v1, p0, Lcom/alipay/android/app/source/a;->d:Lcom/alipay/android/app/source/a$a;

    iput-object v1, p0, Lcom/alipay/android/app/source/a;->e:Lcom/alipay/android/app/source/a$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/source/a;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/source/a;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/source/a;->i:Z

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->d:Lcom/alipay/android/app/source/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/source/a$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/source/a$a;-><init>(Lcom/alipay/android/app/source/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/source/a;->d:Lcom/alipay/android/app/source/a$a;

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->d:Lcom/alipay/android/app/source/a$a;

    const-string/jumbo v1, "SourceMessageThread 1"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/source/a$a;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->d:Lcom/alipay/android/app/source/a$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/source/a$a;->start()V

    :cond_0
    new-instance v0, Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/source/SourceMessageHandlerAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/source/a;->a:Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/source/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/source/a;->h:Lcom/alipay/android/app/source/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/source/a;

    invoke-direct {v0}, Lcom/alipay/android/app/source/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/source/a;->h:Lcom/alipay/android/app/source/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/source/a;->h:Lcom/alipay/android/app/source/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/source/a;II)V
    .locals 3

    const/16 v0, 0x3ee

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3f7

    if-eq p2, v0, :cond_0

    const/16 v0, 0x7d6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x7d7

    if-ne p2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/source/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/message/MspMessage;

    iget v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/source/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/source/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/source/a;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/source/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private b()Z
    .locals 2

    iget-object v1, p0, Lcom/alipay/android/app/source/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/source/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/alipay/android/app/source/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/source/a;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/source/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/source/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/source/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/source/a;)Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->a:Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->d:Lcom/alipay/android/app/source/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->e:Lcom/alipay/android/app/source/a$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->d:Lcom/alipay/android/app/source/a$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/source/a$a;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/source/a$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/source/a$a;-><init>(Lcom/alipay/android/app/source/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/source/a;->e:Lcom/alipay/android/app/source/a$a;

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->e:Lcom/alipay/android/app/source/a$a;

    const-string/jumbo v1, "SourceMessageThread 2"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/source/a$a;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/source/a;->e:Lcom/alipay/android/app/source/a$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/source/a$a;->start()V

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/source/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/source/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/alipay/android/app/source/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/source/a;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
