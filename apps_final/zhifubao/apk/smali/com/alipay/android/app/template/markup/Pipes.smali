.class public Lcom/alipay/android/app/template/markup/Pipes;
.super Ljava/lang/Object;
.source "Pipes.java"


# static fields
.field private static final a:[Ljava/lang/Object;

.field private static final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/alipay/android/app/template/markup/Pipes;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/markup/Pipes;->b:Ljava/lang/Class;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)F
    .locals 2

    .prologue
    .line 245
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "\\d*\\.*\\d*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static add(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 272
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v1

    .line 273
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 276
    return v1

    .line 274
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v2

    add-float/2addr v1, v2

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static and(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 416
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v1, v2

    .line 418
    :goto_0
    if-eqz v0, :cond_0

    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 421
    :cond_0
    return v0

    .line 419
    :cond_1
    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)F
    .locals 2

    .prologue
    .line 253
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string/jumbo v1, "\\d*\\.*\\d*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static choose(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 477
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    goto :goto_0
.end method

.method public static chop(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public static contains(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 459
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 460
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 460
    goto :goto_0

    .line 461
    :cond_1
    instance-of v2, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2

    .line 462
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 463
    :cond_2
    instance-of v2, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_3

    .line 464
    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 466
    goto :goto_0
.end method

.method public static division(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 302
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v1

    .line 303
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 306
    return v1

    .line 304
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v2

    div-float/2addr v1, v2

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static downcase(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    if-eqz p0, :cond_0

    .line 127
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static empty(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 96
    if-nez p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    instance-of v2, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2

    .line 99
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 100
    :cond_2
    instance-of v2, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_3

    .line 101
    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gt(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 392
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v1

    .line 393
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static intAdd(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 332
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v1

    .line 333
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 336
    return v1

    .line 334
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v2

    add-float/2addr v1, v2

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static intDivision(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 362
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v1

    .line 363
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 366
    return v1

    .line 364
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v2

    div-float/2addr v1, v2

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static intMultiply(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 377
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v1

    .line 378
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 381
    return v1

    .line 379
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static intSub(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 347
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v1

    .line 348
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 351
    return v1

    .line 349
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->b(Ljava/lang/Object;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static length(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/markup/Pipes;->size(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static lt(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 404
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v1

    .line 405
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static multiply(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 317
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v1

    .line 318
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 321
    return v1

    .line 319
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static not(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 448
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static notempty(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/markup/Pipes;->empty(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static notequals(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/markup/Pipes;->equals(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static or(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 432
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v1, v2

    .line 434
    :goto_0
    if-nez v0, :cond_0

    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 437
    :cond_0
    return v0

    .line 435
    :cond_1
    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public static varargs pipe(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 42
    :try_start_0
    const-class v0, Lcom/alipay/android/app/template/markup/Pipes;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/app/template/markup/Pipes;->b:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/template/markup/Pipes;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 45
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static reverse(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 212
    if-nez p0, :cond_1

    .line 213
    const-string/jumbo p0, ""

    .line 224
    :cond_0
    :goto_0
    return-object p0

    .line 214
    :cond_1
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_3

    .line 215
    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    .line 216
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    move-object p0, v0

    .line 220
    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 221
    :cond_3
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static round(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    if-eqz p0, :cond_0

    .line 169
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static size(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 184
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    .line 185
    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    goto :goto_0

    .line 186
    :cond_1
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2

    .line 187
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v0

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static sub(Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 287
    invoke-static {p0}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v1

    .line 288
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 291
    return v1

    .line 289
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alipay/android/app/template/markup/Pipes;->a(Ljava/lang/Object;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static trim(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    if-eqz p0, :cond_0

    .line 155
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static upcase(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    if-eqz p0, :cond_0

    .line 141
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
