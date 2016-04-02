.class public Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;


# instance fields
.field private a:Lorg/aspectj/lang/reflect/PointcutExpression;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lorg/aspectj/lang/reflect/AjType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->a:Lorg/aspectj/lang/reflect/PointcutExpression;

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->c:Z

    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->d:Lorg/aspectj/lang/reflect/AjType;

    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->d:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->a:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "declare "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "error : "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "warning : "

    goto :goto_0
.end method
