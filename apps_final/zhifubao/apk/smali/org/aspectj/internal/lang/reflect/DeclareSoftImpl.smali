.class public Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareSoft;


# instance fields
.field private a:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Lorg/aspectj/lang/reflect/PointcutExpression;

.field private c:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p2}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->b:Lorg/aspectj/lang/reflect/PointcutExpression;

    :try_start_0
    invoke-interface {p1}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->c:Lorg/aspectj/lang/reflect/AjType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->b:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public getSoftenedExceptionType()Lorg/aspectj/lang/reflect/AjType;
    .locals 2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->c:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "declare soft : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->c:Lorg/aspectj/lang/reflect/AjType;

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
