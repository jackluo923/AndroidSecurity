.class public Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/InterTypeDeclaration;


# instance fields
.field private a:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private c:I

.field protected targetTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetTypeName:Ljava/lang/String;

    iput p3, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->c:I

    :try_start_0
    invoke-interface {p1}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/aspectj/internal/lang/reflect/StringToType;->stringToType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->b:Lorg/aspectj/lang/reflect/AjType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->b:Lorg/aspectj/lang/reflect/AjType;

    invoke-interface {p2}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetTypeName:Ljava/lang/String;

    iput p3, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->c:I

    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->a:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->c:I

    return v0
.end method

.method public getTargetType()Lorg/aspectj/lang/reflect/AjType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->b:Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->targetTypeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;->b:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method
