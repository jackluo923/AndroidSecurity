.class abstract Lorg/aspectj/runtime/reflect/SignatureImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/Signature;


# static fields
.field static EMPTY_CLASS_ARRAY:[Ljava/lang/Class; = null

.field static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field static final INNER_SEP:Ljava/lang/String; = ":"

.field static final SEP:C = '-'

.field private static a:Z


# instance fields
.field private b:Ljava/lang/String;

.field declaringType:Ljava/lang/Class;

.field declaringTypeName:Ljava/lang/String;

.field lookupClassLoader:Ljava/lang/ClassLoader;

.field modifiers:I

.field name:Ljava/lang/String;

.field stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    iput p1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    iput-object p2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getUseCache()Z
    .locals 1

    sget-boolean v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:Z

    return v0
.end method

.method static setUseCache(Z)V
    .locals 0

    sput-boolean p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:Z

    return-void
.end method


# virtual methods
.method addFullTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->fullTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method addShortTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->shortTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method addTypeArray(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/aspectj/runtime/reflect/SignatureImpl;->addFullTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    return-void
.end method

.method protected abstract createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
.end method

.method extractInt(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method extractString(I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2d

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method extractStrings(I)[Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ":"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method extractType(I)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->a()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method extractTypes(I)[Ljava/lang/Class;
    .locals 6

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ":"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->a()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method fullTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "ANONYMOUS"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->fullTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeclaringType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDeclaringTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    iget v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractInt(I)I

    move-result v0

    iput v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    :cond_0
    iget v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLookupClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method shortTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "ANONYMOUS"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->shortTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final toLongString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;

    if-nez v1, :cond_3

    :try_start_0
    new-instance v1, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;

    invoke-direct {v1}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;-><init>()V

    iput-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-boolean v1, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;

    iget v2, p1, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    invoke-interface {v1, v2, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;->set(ILjava/lang/String;)V

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    sput-boolean v1, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;

    iget v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    invoke-interface {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
