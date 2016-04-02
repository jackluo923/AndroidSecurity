.class public Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;
.super Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;

# interfaces
.implements Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/reflect/Method;

.field private c:I


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->a:Ljava/lang/String;

    iput-object p5, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Method;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;I)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lorg/aspectj/lang/reflect/AjType;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 5

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v0, v2

    iget v1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    sub-int/2addr v0, v1

    new-array v3, v0, [Lorg/aspectj/lang/reflect/AjType;

    iget v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    sub-int v4, v1, v0

    aget-object v0, v2, v1

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    aput-object v0, v3, v4

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    sub-int v0, v1, v0

    aget-object v4, v2, v1

    aput-object v4, v3, v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    iget v2, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    sub-int/2addr v0, v2

    new-array v2, v0, [Lorg/aspectj/lang/reflect/AjType;

    iget v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    iget v3, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->c:I

    sub-int v3, v0, v3

    aget-object v4, v1, v0

    invoke-static {v4}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getReturnType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->getReturnType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->targetTypeName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v2

    if-lez v0, :cond_1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
