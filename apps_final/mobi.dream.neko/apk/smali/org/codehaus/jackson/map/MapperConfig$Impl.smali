.class abstract Lorg/codehaus/jackson/map/MapperConfig$Impl;
.super Lorg/codehaus/jackson/map/MapperConfig;
.source "MapperConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/MapperConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;",
        "T:",
        "Lorg/codehaus/jackson/map/MapperConfig$Impl",
        "<TCFG;TT;>;>",
        "Lorg/codehaus/jackson/map/MapperConfig",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected _featureFlags:I


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;I)V
    .locals 0
    .param p2, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .param p5, "pns"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    .param p6, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;
    .param p7, "hi"    # Lorg/codehaus/jackson/map/HandlerInstantiator;
    .param p8, "defaultFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lorg/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/HandlerInstantiator;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1025
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "ci":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    .line 1026
    iput p8, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1027
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "src":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;)V

    .line 1031
    iget v0, p1, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1032
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;I)V
    .locals 0
    .param p2, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "src":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;)V

    .line 1036
    iput p2, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1037
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p2, "base"    # Lorg/codehaus/jackson/map/MapperConfig$Base;
    .param p3, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;",
            "Lorg/codehaus/jackson/map/MapperConfig$Base;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "src":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 1045
    iget v0, p1, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1046
    return-void
.end method

.method static collectFeatureDefaults(Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum",
            "<TF;>;:",
            "Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;",
            ">(",
            "Ljava/lang/Class",
            "<TF;>;)I"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const/4 v1, 0x0

    .line 1055
    .local v1, "flags":I
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, "value":Ljava/lang/Enum;, "TF;"
    move-object v5, v4

    .line 1056
    check-cast v5, Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    invoke-interface {v5}, Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1057
    check-cast v4, Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .end local v4    # "value":Ljava/lang/Enum;, "TF;"
    invoke-interface {v4}, Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v5

    or-int/2addr v1, v5

    .line 1055
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    return v1
.end method


# virtual methods
.method public disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1132
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "f":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;, "TCFG;"
    iget v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1133
    return-void
.end method

.method public enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1120
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "f":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;, "TCFG;"
    iget v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1121
    return-void
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 1102
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    iget v0, p0, Lorg/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1147
    .local p0, "this":Lorg/codehaus/jackson/map/MapperConfig$Impl;, "Lorg/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, "f":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;, "TCFG;"
    if-eqz p2, :cond_0

    .line 1148
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    goto :goto_0
.end method

.method public varargs abstract with([Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lorg/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract without([Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lorg/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method
