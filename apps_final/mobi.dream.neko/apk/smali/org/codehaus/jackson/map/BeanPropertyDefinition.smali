.class public abstract Lorg/codehaus/jackson/map/BeanPropertyDefinition;
.super Ljava/lang/Object;
.source "BeanPropertyDefinition.java"

# interfaces
.implements Lorg/codehaus/jackson/map/util/Named;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public couldDeserialize()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getMutator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public couldSerialize()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.end method

.method public abstract getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
.end method

.method public abstract getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;
.end method

.method public abstract getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract getInternalName()Ljava/lang/String;
.end method

.method public abstract getMutator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
.end method

.method public abstract hasConstructorParameter()Z
.end method

.method public abstract hasField()Z
.end method

.method public abstract hasGetter()Z
.end method

.method public abstract hasSetter()Z
.end method

.method public abstract isExplicitlyIncluded()Z
.end method
