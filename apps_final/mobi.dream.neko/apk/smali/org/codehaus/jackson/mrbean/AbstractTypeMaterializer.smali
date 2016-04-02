.class public Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;
.super Lorg/codehaus/jackson/map/AbstractTypeResolver;
.source "AbstractTypeMaterializer.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;,
        Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURE_FLAGS:I

.field public static final DEFAULT_PACKAGE_FOR_GENERATED:Ljava/lang/String; = "org.codehaus.jackson.generated."


# instance fields
.field protected final _classLoader:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;

.field protected _defaultPackage:Ljava/lang/String;

.field protected _featureFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->DEFAULT_FEATURE_FLAGS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;-><init>(Ljava/lang/ClassLoader;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parentClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AbstractTypeResolver;-><init>()V

    .line 89
    sget v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_featureFlags:I

    .line 94
    const-string v0, "org.codehaus.jackson.generated."

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_defaultPackage:Ljava/lang/String;

    .line 108
    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 111
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_classLoader:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;

    .line 112
    return-void
.end method


# virtual methods
.method public disable(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;)V
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    .prologue
    .line 143
    iget v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_featureFlags:I

    .line 144
    return-void
.end method

.method public enable(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;)V
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    .prologue
    .line 136
    iget v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_featureFlags:I

    .line 137
    return-void
.end method

.method public final isEnabled(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    .prologue
    .line 129
    iget v0, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->getMask()I

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

.method protected materializeClass(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_defaultPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "newName":Ljava/lang/String;
    new-instance v0, Lorg/codehaus/jackson/mrbean/BeanBuilder;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/mrbean/BeanBuilder;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)V

    .line 213
    .local v0, "builder":Lorg/codehaus/jackson/mrbean/BeanBuilder;
    sget-object v4, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->FAIL_ON_UNMATERIALIZED_METHOD:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->isEnabled(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->implement(Z)Lorg/codehaus/jackson/mrbean/BeanBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/mrbean/BeanBuilder;->build(Ljava/lang/String;)[B

    move-result-object v1

    .line 214
    .local v1, "bytecode":[B
    iget-object v4, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_classLoader:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;

    invoke-virtual {v4, v2, v1, p2}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;->loadAndResolve(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 215
    .local v3, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v3
.end method

.method public resolveAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isThrowable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v1

    .line 185
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 190
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    sget-object v2, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;->FAIL_ON_NON_PUBLIC_TYPES:Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->isEnabled(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not materialize implementation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " since it is not public "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->materializeClass(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    goto :goto_0
.end method

.method public set(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->enable(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->disable(Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$Feature;)V

    goto :goto_0
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "defPkg"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;->_defaultPackage:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
