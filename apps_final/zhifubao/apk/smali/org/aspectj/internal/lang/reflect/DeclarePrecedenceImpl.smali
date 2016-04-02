.class public Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclarePrecedence;


# instance fields
.field private a:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private b:[Lorg/aspectj/lang/reflect/TypePattern;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->c:Ljava/lang/String;

    const-string/jumbo v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/TypePattern;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->b:[Lorg/aspectj/lang/reflect/TypePattern;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->b:[Lorg/aspectj/lang/reflect/TypePattern;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->b:[Lorg/aspectj/lang/reflect/TypePattern;

    new-instance v3, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getPrecedenceOrder()[Lorg/aspectj/lang/reflect/TypePattern;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->b:[Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "declare precedence : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
