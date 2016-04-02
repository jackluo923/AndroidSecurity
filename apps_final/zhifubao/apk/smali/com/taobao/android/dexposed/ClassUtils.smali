.class public Lcom/taobao/android/dexposed/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# static fields
.field public static final INNER_CLASS_SEPARATOR:Ljava/lang/String;

.field public static final INNER_CLASS_SEPARATOR_CHAR:C = '$'

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String;

.field public static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field public static final STRING_EMPTY:Ljava/lang/String; = ""

.field private static final abbreviationMap:Ljava/util/Map;

.field private static final primitiveWrapperMap:Ljava/util/Map;

.field private static final reverseAbbreviationMap:Ljava/util/Map;

.field private static final wrapperPrimitiveMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "."

    sput-object v0, Lcom/taobao/android/dexposed/ClassUtils;->PACKAGE_SEPARATOR:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "$"

    sput-object v0, Lcom/taobao/android/dexposed/ClassUtils;->INNER_CLASS_SEPARATOR:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    sput-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    .line 89
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 90
    sget-object v1, Lcom/taobao/android/dexposed/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    sget-object v3, Lcom/taobao/android/dexposed/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/ClassUtils;->abbreviationMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    .line 122
    const-string/jumbo v0, "int"

    const-string/jumbo v1, "I"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "boolean"

    const-string/jumbo v1, "Z"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "float"

    const-string/jumbo v1, "F"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "long"

    const-string/jumbo v1, "J"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "short"

    const-string/jumbo v1, "S"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "byte"

    const-string/jumbo v1, "B"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "double"

    const-string/jumbo v1, "D"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, "char"

    const-string/jumbo v1, "C"

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method private static addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public static convertClassNamesToClasses(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 396
    if-nez p0, :cond_0

    move-object v0, v1

    .line 407
    :goto_0
    return-object v0

    .line 399
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 404
    :catch_0
    move-exception v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 407
    goto :goto_0
.end method

.method public static convertClassesToClassNames(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 423
    if-nez p0, :cond_0

    move-object v0, v1

    .line 434
    :goto_0
    return-object v0

    .line 426
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 428
    if-nez v0, :cond_1

    .line 429
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 431
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 434
    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 596
    invoke-static {p0}, Lcom/taobao/android/dexposed/ClassUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-object p0

    .line 599
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 600
    new-array v5, v4, [C

    move v2, v3

    move v1, v3

    .line 602
    :goto_1
    if-ge v2, v4, :cond_2

    .line 603
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 604
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v1

    .line 602
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 607
    :cond_2
    if-eq v1, v4, :cond_0

    .line 610
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .locals 2

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 356
    invoke-static {p0, v1}, Lcom/taobao/android/dexposed/ClassUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private static getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V
    .locals 5

    .prologue
    .line 368
    :goto_0
    if-eqz p0, :cond_2

    .line 369
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 371
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 372
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    invoke-static {v3, p1}, Lcom/taobao/android/dexposed/ClassUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 379
    :cond_2
    return-void
.end method

.method public static getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 2

    .prologue
    .line 325
    if-nez p0, :cond_1

    .line 326
    const/4 v0, 0x0

    .line 334
    :cond_0
    return-object v0

    .line 328
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 330
    :goto_0
    if-eqz v1, :cond_0

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/taobao/android/dexposed/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4

    .prologue
    .line 455
    :try_start_0
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v0, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    .line 459
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dexposed/ClassUtils;->toCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 464
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 466
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 468
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/taobao/android/dexposed/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 476
    :cond_1
    throw v0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/taobao/android/dexposed/ClassUtils;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 523
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 524
    if-nez v0, :cond_0

    const-class v0, Lcom/taobao/android/dexposed/ClassUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 525
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/taobao/android/dexposed/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 280
    const-string/jumbo v0, ""

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 269
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/ClassUtils;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    const-string/jumbo v0, ""

    .line 312
    :goto_0
    return-object v0

    .line 300
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 301
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 304
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_3

    .line 305
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 308
    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 309
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 310
    const-string/jumbo v0, ""

    goto :goto_0

    .line 312
    :cond_4
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const-string/jumbo v0, ""

    .line 174
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 157
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getShortClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x2e

    const/16 v6, 0x24

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 191
    const-string/jumbo v0, ""

    .line 222
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 194
    const-string/jumbo v0, ""

    goto :goto_0

    .line 197
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_2

    .line 202
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 203
    const-string/jumbo v0, "[]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_3

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 211
    :cond_3
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 216
    if-ne v3, v4, :cond_5

    :goto_3
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 218
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eq v1, v4, :cond_4

    .line 220
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 216
    :cond_5
    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    :cond_6
    move-object v0, p0

    goto :goto_2
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    if-nez p0, :cond_0

    .line 235
    const-string/jumbo v0, ""

    .line 237
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimpleName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 253
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/ClassUtils;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 635
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 536
    invoke-static {p0}, Lcom/taobao/android/dexposed/ClassUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "className must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 541
    :goto_0
    const-string/jumbo v0, "[]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string/jumbo v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    goto :goto_0

    .line 545
    :cond_1
    sget-object v0, Lcom/taobao/android/dexposed/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    if-eqz v0, :cond_3

    .line 547
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_2
    return-object v0

    .line 549
    :cond_3
    const-string/jumbo v0, "L"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static varargs toClass([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 567
    if-nez p0, :cond_0

    .line 576
    :goto_0
    return-object v2

    .line 569
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 570
    new-array v2, v0, [Ljava/lang/Class;

    goto :goto_0

    .line 572
    :cond_1
    array-length v1, p0

    new-array v3, v1, [Ljava/lang/Class;

    .line 573
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 574
    aget-object v1, p0, v0

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_2
    aput-object v1, v3, v0

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 576
    goto :goto_0
.end method
