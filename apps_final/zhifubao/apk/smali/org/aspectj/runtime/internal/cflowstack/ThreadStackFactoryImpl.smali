.class public Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;
    .locals 2

    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadCounterImpl;-><init>(Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$1;)V

    return-object v0
.end method

.method public getNewThreadStack()Lorg/aspectj/runtime/internal/cflowstack/ThreadStack;
    .locals 2

    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadStackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$ThreadStackImpl;-><init>(Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl$1;)V

    return-object v0
.end method
