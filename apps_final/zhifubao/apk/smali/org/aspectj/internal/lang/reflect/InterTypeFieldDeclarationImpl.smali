.class public Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;
.super Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;

# interfaces
.implements Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;I)V

    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->a:Ljava/lang/String;

    iput-object p5, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->b:Lorg/aspectj/lang/reflect/AjType;

    iput-object p6, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;I)V

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->a:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->b:Lorg/aspectj/lang/reflect/AjType;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->c:Ljava/lang/reflect/Type;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->c:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->c:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->b:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->getType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->targetTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
