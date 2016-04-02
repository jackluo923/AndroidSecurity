.class Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadStackImpl;
.super Ljava/lang/ThreadLocal;

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadStackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getThreadStack()Ljava/util/Stack;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public initialValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method

.method public removeThreadStack()V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method
