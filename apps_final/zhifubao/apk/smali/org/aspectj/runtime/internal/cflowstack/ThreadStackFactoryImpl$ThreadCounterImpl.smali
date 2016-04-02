.class Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl;
.super Ljava/lang/ThreadLocal;

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dec()V
    .locals 2

    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;->value:I

    return-void
.end method

.method public getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;

    return-object v0
.end method

.method public inc()V
    .locals 2

    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;->value:I

    return-void
.end method

.method public initialValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;-><init>()V

    return-object v0
.end method

.method public isNotZero()Z
    .locals 1

    invoke-virtual {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl;->getThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;

    move-result-object v0

    iget v0, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl$Counter;->value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeThreadCounter()V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method
