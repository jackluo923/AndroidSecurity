.class public Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareAnnotation;


# instance fields
.field private a:Ljava/lang/annotation/Annotation;

.field private b:Ljava/lang/String;

.field private c:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

.field private e:Lorg/aspectj/lang/reflect/TypePattern;

.field private f:Lorg/aspectj/lang/reflect/SignaturePattern;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->c:Lorg/aspectj/lang/reflect/AjType;

    const-string/jumbo v0, "at_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Type:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->d:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    :goto_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->d:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    sget-object v1, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Type:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    if-ne v0, v1, :cond_4

    new-instance v0, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;

    invoke-direct {v0, p3}, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->e:Lorg/aspectj/lang/reflect/TypePattern;

    :goto_1
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->a:Ljava/lang/annotation/Annotation;

    iput-object p5, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "at_field"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Field:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->d:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "at_method"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Method:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->d:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "at_constructor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Constructor:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->d:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown declare annotation kind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/aspectj/internal/lang/reflect/SignaturePatternImpl;

    invoke-direct {v0, p3}, Lorg/aspectj/internal/lang/reflect/SignaturePatternImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->f:Lorg/aspectj/lang/reflect/SignaturePattern;

    goto :goto_1
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->a:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotationAsText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->c:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getKind()Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->d:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    return-object v0
.end method

.method public getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->f:Lorg/aspectj/lang/reflect/SignaturePattern;

    return-object v0
.end method

.method public getTypePattern()Lorg/aspectj/lang/reflect/TypePattern;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->e:Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "declare @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl$1;->$SwitchMap$org$aspectj$lang$reflect$DeclareAnnotation$Kind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getKind()Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getAnnotationAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v1, "type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getTypePattern()Lorg/aspectj/lang/reflect/TypePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/TypePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/SignaturePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/SignaturePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "constructor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/SignaturePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
