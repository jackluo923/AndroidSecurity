.class public Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareParents;


# instance fields
.field private a:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Lorg/aspectj/lang/reflect/TypePattern;

.field private c:[Ljava/lang/reflect/Type;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->g:Z

    new-instance v0, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->b:Lorg/aspectj/lang/reflect/TypePattern;

    iput-boolean p3, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->f:Z

    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->d:Ljava/lang/String;

    :try_start_0
    invoke-interface {p4}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/aspectj/internal/lang/reflect/StringToType;->commaSeparatedListToTypeArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->c:[Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->g:Z

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->e:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getParentTypes()[Ljava/lang/reflect/Type;
    .locals 2

    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->c:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getTargetTypesPattern()Lorg/aspectj/lang/reflect/TypePattern;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->b:Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public isExtends()Z
    .locals 1

    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->f:Z

    return v0
.end method

.method public isImplements()Z
    .locals 1

    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "declare parents : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->getTargetTypesPattern()Lorg/aspectj/lang/reflect/TypePattern;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/TypePattern;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " extends "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, " implements "

    goto :goto_0
.end method
