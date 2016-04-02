.class public Lorg/aspectj/internal/lang/reflect/AjTypeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/AjType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/aspectj/lang/reflect/AjType",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:[Lorg/aspectj/lang/reflect/Pointcut;

.field private c:[Lorg/aspectj/lang/reflect/Pointcut;

.field private d:[Lorg/aspectj/lang/reflect/Advice;

.field private e:[Lorg/aspectj/lang/reflect/Advice;

.field private f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

.field private k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b:[Lorg/aspectj/lang/reflect/Pointcut;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->c:[Lorg/aspectj/lang/reflect/Pointcut;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-static {v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->c(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/DeclareParents;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const-class v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareParents;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5, v2, p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v6, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareParents;->defaultImpl()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_2

    aget-object v8, v6, v0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v9, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, p0, v10, v8, v11}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Method;I)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/reflect/Method;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ajc$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-class v2, Lorg/aspectj/lang/annotation/Pointcut;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lorg/aspectj/lang/annotation/Before;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lorg/aspectj/lang/annotation/After;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lorg/aspectj/lang/annotation/AfterReturning;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lorg/aspectj/lang/annotation/AfterThrowing;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lorg/aspectj/lang/annotation/Around;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Lorg/aspectj/lang/reflect/AjType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static b(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;
    .locals 6

    const-class v0, Lorg/aspectj/lang/annotation/Pointcut;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/aspectj/lang/annotation/Pointcut;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "ajc$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "$$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;

    invoke-interface {v3}, Lorg/aspectj/lang/annotation/Pointcut;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    invoke-interface {v3}, Lorg/aspectj/lang/annotation/Pointcut;->argNames()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/PointcutImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-static {v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->c(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private static c(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/aspectj/lang/annotation/Before;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/Before;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/Before;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->BEFORE:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p0, v0, v2}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-class v0, Lorg/aspectj/lang/annotation/After;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/After;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/After;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p0, v0, v2}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-class v0, Lorg/aspectj/lang/annotation/AfterReturning;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/AfterReturning;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterReturning;->pointcut()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterReturning;->value()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v2, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_RETURNING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterReturning;->returning()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    const-class v0, Lorg/aspectj/lang/annotation/AfterThrowing;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/AfterThrowing;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterThrowing;->pointcut()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterThrowing;->value()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_THROWING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterThrowing;->throwing()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_6
    const-class v0, Lorg/aspectj/lang/annotation/Around;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/Around;

    if-eqz v0, :cond_7

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/Around;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p0, v0, v2}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    iget-object v0, p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAdvice(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Advice;
    .locals 5

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b()V

    :cond_1
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Advice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getAdvice([Lorg/aspectj/lang/reflect/AdviceKind;)[Lorg/aspectj/lang/reflect/Advice;
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_2

    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/Advice;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getAjTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public varargs getConstructor([Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-static {p1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclareAnnotations()[Lorg/aspectj/lang/reflect/DeclareAnnotation;
    .locals 13

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_0
    if-ge v7, v10, :cond_2

    aget-object v2, v9, v7

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    array-length v5, v3

    move v2, v6

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v4, v3, v2

    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    if-eq v11, v12, :cond_1

    :goto_2
    new-instance v0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->kind()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->annotation()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclareAnnotations()[Lorg/aspectj/lang/reflect/DeclareAnnotation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareAnnotation;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_4
    move-object v4, v0

    goto :goto_2
.end method

.method public getDeclareErrorOrWarnings()[Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;
    .locals 9

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v5, v3

    :try_start_0
    const-class v0, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v7, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareWarning;->value()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-direct {v7, v0, v1, v8, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    const-class v0, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v7, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareError;->value()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-direct {v7, v0, v1, v8, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v5, v3

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v0, v3, v1

    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    new-instance v2, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->pointcut()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->message()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->isError()Z

    move-result v0

    invoke-direct {v2, v6, v7, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getDeclareParents()[Lorg/aspectj/lang/reflect/DeclareParents;
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    new-instance v5, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->targetTypePattern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->parentTypes()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->isExtends()Z

    move-result v0

    invoke-direct {v5, v6, v7, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclareParents()[Lorg/aspectj/lang/reflect/DeclareParents;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareParents;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getDeclarePrecedence()[Lorg/aspectj/lang/reflect/DeclarePrecedence;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    new-instance v1, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclarePrecedence;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;-><init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    new-instance v5, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;-><init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclarePrecedence()[Lorg/aspectj/lang/reflect/DeclarePrecedence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclarePrecedence;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getDeclareSofts()[Lorg/aspectj/lang/reflect/DeclareSoft;
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    new-instance v5, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;->pointcut()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;->exceptionType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p0, v6, v0}, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclareSofts()[Lorg/aspectj/lang/reflect/DeclareSoft;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareSoft;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getDeclaredAdvice(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Advice;
    .locals 5

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a()V

    :cond_1
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Advice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getDeclaredAdvice([Lorg/aspectj/lang/reflect/AdviceKind;)[Lorg/aspectj/lang/reflect/Advice;
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_2

    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/Advice;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getDeclaredAjTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-static {p1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 7

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ajc$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public varargs getDeclaredITDConstructor(Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    :try_start_0
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    array-length v0, v6

    array-length v7, p2

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_3

    aget-object v7, v6, v0

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    :cond_3
    return-object v5

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getDeclaredITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 8

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    if-nez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ajc$postInterConstructor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    new-instance v6, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-direct {v6, p0, v7, v0, v5}, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    return-object v0
.end method

.method public getDeclaredITDField(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v11, v9, v7

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ajc$interFieldInit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "FieldInit"

    const-string/jumbo v3, "FieldGetDispatch"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t find field get dispatch method for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    return-object v0
.end method

.method public varargs getDeclaredITDMethod(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    :try_start_0
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    array-length v0, v6

    array-length v7, p3

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    aget-object v7, v6, v0

    aget-object v8, p3, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v5

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getDeclaredITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 11

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    if-nez v0, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v6, v7

    :goto_0
    if-ge v6, v10, :cond_1

    aget-object v5, v9, v6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ajc$interMethodDispatch1$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8, v7}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a(Ljava/util/List;Z)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    return-object v0
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-static {p2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 6

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-static {v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getDeclaredPointcut(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Pointcut;
    .locals 5

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Pointcut;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;
    .locals 5

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b:[Lorg/aspectj/lang/reflect/Pointcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b:[Lorg/aspectj/lang/reflect/Pointcut;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Pointcut;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b:[Lorg/aspectj/lang/reflect/Pointcut;

    goto :goto_0
.end method

.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 7

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ajc$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getGenericSupertype()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public varargs getITDConstructor(Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    :try_start_0
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    array-length v0, v6

    array-length v7, p2

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_3

    aget-object v7, v6, v0

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    :cond_3
    return-object v5

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .locals 8

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    if-nez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ajc$postInterConstructor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-direct {v6, p0, v7, v0, v5}, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    return-object v0
.end method

.method public getITDField(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .locals 12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v11, v9, v7

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ajc$interFieldInit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "FieldInit"

    const-string/jumbo v3, "FieldGetDispatch"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t find field get dispatch method for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    return-object v0
.end method

.method public varargs getITDMethod(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    :try_start_0
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    array-length v0, v6

    array-length v7, p3

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    aget-object v7, v6, v0

    aget-object v8, p3, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v5

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .locals 10

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    if-nez v0, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v5, v8, v6

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ajc$interMethod$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a(Ljava/util/List;Z)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    return-object v0
.end method

.method public getInterfaces()[Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs getMethod(Ljava/lang/String;[Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-static {p2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 6

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-static {v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public getPerClause()Lorg/aspectj/lang/reflect/PerClause;
    .locals 5

    const/16 v4, 0xe

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/Aspect;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/Aspect;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/Aspect;->value()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getPerClause()Lorg/aspectj/lang/reflect/PerClause;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->SINGLETON:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "perthis("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTHIS:Lorg/aspectj/lang/reflect/PerClauseKind;

    const/16 v3, 0x8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "pertarget("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTARGET:Lorg/aspectj/lang/reflect/PerClauseKind;

    const/16 v3, 0xa

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "percflow("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    const/16 v3, 0x9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "percflowbelow("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOWBELOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "pertypewithin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/aspectj/internal/lang/reflect/TypePatternBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTYPEWITHIN:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/TypePatternBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Per-clause not recognized: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getPointcut(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Pointcut;
    .locals 5

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Pointcut;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;
    .locals 5

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->c:[Lorg/aspectj/lang/reflect/Pointcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->c:[Lorg/aspectj/lang/reflect/Pointcut;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Pointcut;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->c:[Lorg/aspectj/lang/reflect/Pointcut;

    goto :goto_0
.end method

.method public getSupertype()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isAspect()Z
    .locals 2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/Aspect;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnum()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isLocalClass()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberAspect()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberClass()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isPrivileged()Z
    .locals 2

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/internal/lang/annotation/ajcPrivileged;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
