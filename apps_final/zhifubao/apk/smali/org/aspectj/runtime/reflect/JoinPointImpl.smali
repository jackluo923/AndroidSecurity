.class Lorg/aspectj/runtime/reflect/JoinPointImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/ProceedingJoinPoint;


# instance fields
.field _this:Ljava/lang/Object;

.field private a:Lorg/aspectj/runtime/internal/AroundClosure;

.field args:[Ljava/lang/Object;

.field staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    iput-object p2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->_this:Ljava/lang/Object;

    iput-object p3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->target:Ljava/lang/Object;

    iput-object p4, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->args:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getKind()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/aspectj/lang/Signature;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    return-object v0
.end method

.method public getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getThis()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->_this:Ljava/lang/Object;

    return-object v0
.end method

.method public proceed()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v1}, Lorg/aspectj/runtime/internal/AroundClosure;->getState()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public proceed([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v0}, Lorg/aspectj/runtime/internal/AroundClosure;->getFlags()I

    move-result v0

    const/high16 v3, 0x10000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    move v7, v1

    :goto_1
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_2

    move v6, v1

    :goto_2
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_3

    move v5, v1

    :goto_3
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_4

    move v4, v1

    :goto_4
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iget-object v3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v3}, Lorg/aspectj/runtime/internal/AroundClosure;->getState()[Ljava/lang/Object;

    move-result-object v8

    if-eqz v6, :cond_6

    move v3, v1

    :goto_6
    add-int/lit8 v9, v3, 0x0

    if-eqz v4, :cond_7

    if-nez v7, :cond_7

    move v3, v1

    :goto_7
    add-int/2addr v9, v3

    if-eqz v6, :cond_10

    if-eqz v5, :cond_10

    aget-object v3, p1, v2

    aput-object v3, v8, v2

    move v3, v1

    :goto_8
    if-eqz v4, :cond_f

    if-eqz v0, :cond_f

    if-eqz v7, :cond_a

    if-eqz v5, :cond_8

    move v0, v1

    :goto_9
    add-int/lit8 v0, v0, 0x1

    if-eqz v5, :cond_9

    :goto_a
    aget-object v1, p1, v1

    aput-object v1, v8, v2

    :goto_b
    move v1, v0

    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_e

    sub-int v2, v1, v0

    add-int/2addr v2, v9

    aget-object v3, p1, v1

    aput-object v3, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1
    move v7, v2

    goto :goto_1

    :cond_2
    move v6, v2

    goto :goto_2

    :cond_3
    move v5, v2

    goto :goto_3

    :cond_4
    move v4, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v3, v2

    goto :goto_6

    :cond_7
    move v3, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_9

    :cond_9
    move v1, v2

    goto :goto_a

    :cond_a
    if-eqz v6, :cond_b

    move v0, v1

    :goto_d
    add-int/lit8 v0, v0, 0x1

    if-eqz v6, :cond_c

    move v3, v1

    :goto_e
    if-eqz v6, :cond_d

    :goto_f
    aget-object v1, p1, v1

    aput-object v1, v8, v3

    goto :goto_b

    :cond_b
    move v0, v2

    goto :goto_d

    :cond_c
    move v3, v2

    goto :goto_e

    :cond_d
    move v1, v2

    goto :goto_f

    :cond_e
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    invoke-virtual {v0, v8}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto :goto_b

    :cond_10
    move v3, v2

    goto :goto_8
.end method

.method public set$AroundClosure(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .locals 0

    iput-object p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Lorg/aspectj/runtime/internal/AroundClosure;

    return-void
.end method

.method public final toLongString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->toLongString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->staticPart:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
