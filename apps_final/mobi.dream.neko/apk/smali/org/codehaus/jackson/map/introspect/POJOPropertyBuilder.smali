.class public Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
.super Lorg/codehaus/jackson/map/BeanPropertyDefinition;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected _fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _internalName:Ljava/lang/String;

.field protected final _name:Ljava/lang/String;

.field protected _setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "internalName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 44
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 47
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 48
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 49
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 50
    return-void
.end method

.method private _anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "n":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 428
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 432
    :goto_1
    return v0

    .line 427
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "n":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 477
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x1

    .line 481
    :goto_1
    return v0

    .line 476
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 481
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "n":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 446
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    .line 450
    :goto_1
    return v0

    .line 445
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 450
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private varargs _mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotationMap;"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, "nodes":[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    aget-object v1, p2, p1

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAllAnnotations()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 378
    .local v0, "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    add-int/lit8 p1, p1, 0x1

    .line 379
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_0

    .line 380
    aget-object v1, p2, p1

    if-eqz v1, :cond_1

    .line 381
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->merge(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 384
    .end local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_0
    return-object v0

    .line 379
    .restart local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private _removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p1, :cond_0

    .line 392
    .end local p1    # "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private _removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p1, :cond_0

    .line 400
    .end local p1    # "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutNonVisible()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private _trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p1, :cond_0

    .line 408
    .end local p1    # "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->trimByVisibility()Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "node":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    .local p2, "renamed":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    :goto_0
    if-eqz p1, :cond_3

    .line 503
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    .line 504
    .local v0, "explName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_1
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 508
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    if-nez p2, :cond_2

    .line 512
    move-object p2, p1

    goto :goto_1

    .line 515
    :cond_2
    iget-object v1, p2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflicting property name definitions: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") vs \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    .end local v0    # "explName":Ljava/lang/String;
    :cond_3
    return-object p2
.end method

.method private static merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "chain1":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    .local p1, "chain2":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    if-nez p0, :cond_0

    .line 299
    .end local p1    # "chain2":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p1

    .line 296
    .restart local p1    # "chain2":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 297
    goto :goto_0

    .line 299
    :cond_1
    # invokes: Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->access$000(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addAll(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2
    .param p1, "src"    # Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 286
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 287
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 288
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->merge(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 289
    return-void
.end method

.method public addCtor(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 268
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 269
    return-void
.end method

.method public addField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 264
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 265
    return-void
.end method

.method public addGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 272
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 273
    return-void
.end method

.method public addSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p2, "ename"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .param p4, "ignored"    # Z

    .prologue
    .line 276
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 277
    return-void
.end method

.method public anyDeserializeIgnorals()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyExplicitNames()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyIgnorals()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anySerializeIgnorals()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyIgnorals(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyVisible()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_anyVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->compareTo(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I
    .locals 2
    .param p1, "other"    # Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public couldSerialize()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNewName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "renamed":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<+Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findRenamed(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 496
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 117
    .local v0, "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 120
    :cond_0
    return-object v0
.end method

.method public getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v1, :cond_0

    .line 237
    const/4 v1, 0x0

    .line 254
    :goto_0
    return-object v1

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 249
    .local v0, "curr":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;>;"
    :cond_1
    iget-object v1, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getOwner()Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v1

    instance-of v1, v1, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 253
    if-nez v0, :cond_1

    .line 254
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0
.end method

.method public getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 8

    .prologue
    .line 208
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v5, :cond_1

    .line 209
    const/4 v0, 0x0

    .line 230
    :cond_0
    return-object v0

    .line 212
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v5, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 213
    .local v0, "field":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, v5, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 214
    .local v2, "next":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lorg/codehaus/jackson/map/introspect/AnnotatedField;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 215
    iget-object v4, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 216
    .local v4, "nextField":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 217
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 218
    .local v3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v3, :cond_4

    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    move-object v0, v4

    .line 214
    :cond_2
    iget-object v2, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 227
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple fields representing property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 8

    .prologue
    .line 144
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v5, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 170
    :cond_0
    return-object v0

    .line 148
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v5, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 149
    .local v0, "getter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, v5, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 150
    .local v2, "next":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 155
    iget-object v4, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 156
    .local v4, "nextGetter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 157
    .local v1, "getterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 158
    .local v3, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v3, :cond_4

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    move-object v0, v4

    .line 150
    :cond_2
    iget-object v2, v2, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 167
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting getter definitions for property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMutator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    .line 127
    .local v0, "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 8

    .prologue
    .line 176
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v5, :cond_1

    .line 177
    const/4 v3, 0x0

    .line 202
    :cond_0
    return-object v3

    .line 180
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v3, v5, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 181
    .local v3, "setter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v0, v5, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 182
    .local v0, "next":Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 187
    iget-object v2, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v2, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 188
    .local v2, "nextSetter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 189
    .local v4, "setterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 190
    .local v1, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v4, v1, :cond_4

    .line 191
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    move-object v3, v2

    .line 182
    :cond_2
    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 199
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting setter definitions for property \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public hasConstructorParameter()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetter()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetter()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExplicitlyIncluded()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyExplicitNames()Z

    move-result v0

    return v0
.end method

.method public mergeAnnotations(Z)V
    .locals 7
    .param p1, "forSerialization"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 353
    if-eqz p1, :cond_2

    .line 354
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_1

    .line 355
    new-array v1, v2, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v6

    invoke-direct {p0, v3, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 356
    .local v0, "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 373
    .end local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_0

    .line 358
    new-array v1, v6, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    invoke-direct {p0, v3, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 359
    .restart local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 362
    .end local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_3

    .line 363
    new-array v1, v2, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v6

    invoke-direct {p0, v3, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 364
    .restart local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 365
    .end local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_4

    .line 366
    new-array v1, v6, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v5

    invoke-direct {p0, v3, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 367
    .restart local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto :goto_0

    .line 368
    .end local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_0

    .line 369
    new-array v1, v5, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 370
    .restart local v0    # "ann":Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withValue(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    goto/16 :goto_0
.end method

.method public removeIgnored()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 315
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeIgnored(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 318
    return-void
.end method

.method public removeNonVisible()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 329
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 331
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 333
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_removeNonVisible(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 335
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[Property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; ctors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", field(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimByVisibility()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 345
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 346
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 347
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_trimByVisibility(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 348
    return-void
.end method

.method public withName(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V

    return-object v0
.end method
