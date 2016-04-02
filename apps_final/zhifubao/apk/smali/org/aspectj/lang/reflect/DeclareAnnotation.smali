.class public interface abstract Lorg/aspectj/lang/reflect/DeclareAnnotation;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAnnotation()Ljava/lang/annotation/Annotation;
.end method

.method public abstract getAnnotationAsText()Ljava/lang/String;
.end method

.method public abstract getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getKind()Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;
.end method

.method public abstract getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;
.end method

.method public abstract getTypePattern()Lorg/aspectj/lang/reflect/TypePattern;
.end method
