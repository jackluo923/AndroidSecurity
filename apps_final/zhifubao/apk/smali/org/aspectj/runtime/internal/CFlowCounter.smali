.class public Lorg/aspectj/runtime/internal/CFlowCounter;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;


# instance fields
.field private b:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "aspectj.runtime.cflowstack.usethreadlocal"

    const-string/jumbo v3, "unspecified"

    invoke-static {v2, v3}, Lorg/aspectj/runtime/internal/CFlowCounter;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unspecified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "java.class.version"

    const-string/jumbo v3, "0.0"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "46.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->a:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactoryImpl11;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->a:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->a:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;->getNewThreadCounter()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->b:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getThreadStackFactoryClassName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/internal/CFlowCounter;->a:Lorg/aspectj/runtime/internal/cflowstack/ThreadStackFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dec()V
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->b:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->dec()V

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->b:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->b:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->removeThreadCounter()V

    :cond_0
    return-void
.end method

.method public inc()V
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->b:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->inc()V

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowCounter;->b:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;

    invoke-interface {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;->isNotZero()Z

    move-result v0

    return v0
.end method
