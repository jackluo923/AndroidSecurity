.class public abstract Lcom/alipay/pushsdk/util/log/a;
.super Ljava/lang/Object;
.source "BaseLogger.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Ljava/io/PrintWriter;

.field protected b:Ljava/lang/String;

.field private d:Lcom/alipay/pushsdk/util/f;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alipay/pushsdk/util/log/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/util/log/a;->c:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v0, Lcom/alipay/pushsdk/util/f;

    const-string/jumbo v1, "BaseLogger"

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->d:Lcom/alipay/pushsdk/util/f;

    .line 36
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/util/log/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alipay/pushsdk/util/log/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final varargs a([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->a:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->a:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/log/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 48
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->a:Ljava/io/PrintWriter;

    const-string/jumbo v1, "##"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/a;->d:Lcom/alipay/pushsdk/util/f;

    new-instance v1, Lcom/alipay/pushsdk/util/log/b;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/util/log/b;-><init>(Lcom/alipay/pushsdk/util/log/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/f;->execute(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    return-void
.end method
