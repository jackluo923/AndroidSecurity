.class public Lcom/alipay/android/app/base/message/MsgSubject;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Lcom/alipay/android/app/base/message/MsgSubject;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/base/message/IObserver;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/android/app/base/message/MsgSubject;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MsgSubject;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/base/message/MsgSubject;->d:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/app/base/BaseMessageHandlerAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/base/BaseMessageHandlerAdapter;-><init>()V

    new-instance v1, Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;-><init>(Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;)V

    new-instance v0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/base/message/DefaultMsgObserver;-><init>(ILcom/alipay/android/app/base/message/MessageHandleHelper;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/IObserver;)V

    new-instance v0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/HandlerThreadObserver;-><init>()V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/IObserver;)V

    new-instance v0, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/LogicMessageHandlerAdapter;-><init>()V

    new-instance v1, Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;-><init>(Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;)V

    new-instance v0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/base/message/DefaultMsgObserver;-><init>(ILcom/alipay/android/app/base/message/MessageHandleHelper;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/IObserver;)V

    new-instance v0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/base/message/DefaultMsgObserver;-><init>(ILcom/alipay/android/app/base/message/MessageHandleHelper;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/IObserver;)V

    new-instance v0, Lcom/alipay/android/app/source/SourceMessageObserver;

    invoke-direct {v0}, Lcom/alipay/android/app/source/SourceMessageObserver;-><init>()V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/IObserver;)V

    new-instance v0, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;-><init>()V

    new-instance v1, Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;-><init>(Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;)V

    new-instance v0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/base/message/DefaultMsgObserver;-><init>(ILcom/alipay/android/app/base/message/MessageHandleHelper;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/IObserver;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;-><init>()V

    new-instance v1, Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;-><init>(Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;)V

    new-instance v0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/base/message/DefaultMsgObserver;-><init>(ILcom/alipay/android/app/base/message/MessageHandleHelper;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/IObserver;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  MsgSubject registerObserver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/app/base/message/MsgSubject;
    .locals 2

    sget-object v1, Lcom/alipay/android/app/base/message/MsgSubject;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/base/message/MsgSubject;->c:Lcom/alipay/android/app/base/message/MsgSubject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/base/message/MsgSubject;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MsgSubject;-><init>()V

    sput-object v0, Lcom/alipay/android/app/base/message/MsgSubject;->c:Lcom/alipay/android/app/base/message/MsgSubject;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/alipay/android/app/base/message/MsgSubject;->c:Lcom/alipay/android/app/base/message/MsgSubject;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/alipay/android/app/base/message/IObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/base/message/MsgSubject;->a:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/alipay/android/app/base/message/IObserver;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/android/app/base/message/MsgSubject;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " handleMessage "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/app/base/message/MspMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/base/message/MsgSubject;->a:Landroid/util/SparseArray;

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/message/IObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alipay/android/app/base/message/IObserver;->a(Lcom/alipay/android/app/base/message/MspMessage;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/alipay/android/app/base/message/MspMessage;I)V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0xf

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3fb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    int-to-long v1, p2

    iput-wide v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->e:J

    iput-object p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method

.method public final b(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/base/message/MsgSubject;->a:Landroid/util/SparseArray;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/message/IObserver;

    instance-of v1, v0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/android/app/base/message/HandlerThreadObserver;

    new-instance v1, Lcom/alipay/android/app/base/message/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/base/message/b;-><init>(Lcom/alipay/android/app/base/message/MsgSubject;Lcom/alipay/android/app/base/message/MspMessage;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/HandlerThreadObserver;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
