.class public Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;
.super Lorg/codehaus/jackson/map/deser/ValueInstantiators$Base;
.source "SimpleValueInstantiators.java"


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/ValueInstantiators$Base;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public addValueInstantiator(Ljava/lang/Class;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;
    .locals 2
    .param p2, "inst"    # Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            ")",
            "Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "forType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object p0
.end method

.method public findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/BeanDescription;
    .param p3, "defaultInstantiator"    # Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .prologue
    .line 42
    iget-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    new-instance v2, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 43
    .local v0, "inst":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    if-nez v0, :cond_0

    .end local p3    # "defaultInstantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    :goto_0
    return-object p3

    .restart local p3    # "defaultInstantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method
