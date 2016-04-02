.class public abstract Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.super Lorg/codehaus/jackson/map/introspect/Annotated;
.source "AnnotatedMember.java"


# instance fields
.field protected final _annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .param p1, "annotations"    # Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    .line 23
    return-void
.end method


# virtual methods
.method public final fixAccess()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 41
    return-void
.end method

.method protected getAllAnnotations()Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    return-object v0
.end method

.method public abstract getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getMember()Ljava/lang/reflect/Member;
.end method

.method public abstract setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
