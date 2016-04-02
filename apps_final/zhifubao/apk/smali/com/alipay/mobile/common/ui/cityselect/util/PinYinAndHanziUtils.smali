.class public Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;
.super Ljava/lang/Object;
.source "PinYinAndHanziUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertChinese2Pinyin(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 16
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 17
    array-length v0, v2

    new-array v3, v0, [Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_3

    .line 27
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    array-length v0, v2

    if-lez v0, :cond_2

    invoke-static {p0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->hasHanzi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 21
    :cond_3
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getFullPy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 20
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_4
    aget-object v4, v2, v0

    aput-object v4, v3, v0

    goto :goto_2
.end method

.method private static doExchange([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 48
    :goto_0
    array-length v6, p0

    .line 49
    if-lt v6, v2, :cond_3

    .line 50
    aget-object v0, p0, v3

    array-length v7, v0

    .line 51
    aget-object v0, p0, v12

    array-length v8, v0

    .line 52
    mul-int v0, v7, v8

    .line 53
    new-array v9, v0, [Ljava/lang/String;

    move v5, v3

    move v0, v3

    .line 56
    :goto_1
    if-lt v5, v7, :cond_0

    .line 62
    add-int/lit8 v0, v6, -0x1

    new-array v0, v0, [[Ljava/lang/String;

    move v1, v2

    .line 63
    :goto_2
    if-lt v1, v6, :cond_2

    .line 66
    aput-object v9, v0, v3

    move-object p0, v0

    .line 67
    goto :goto_0

    :cond_0
    move v1, v0

    move v0, v3

    .line 57
    :goto_3
    if-lt v0, v8, :cond_1

    .line 56
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v1

    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v4, v1, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    aget-object v11, p0, v3

    aget-object v11, v11, v5

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "##"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p0, v12

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 57
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_3

    .line 64
    :cond_2
    add-int/lit8 v4, v1, -0x1

    aget-object v5, p0, v1

    aput-object v5, v0, v4

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 69
    :cond_3
    return-object p0
.end method

.method private static hasHanzi(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, ".*[\\u4e00-\\u9fa5]+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAlphabet(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "[a-zA-Z]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isContainHanzi(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, ".*[\\u4e00-\\u9fa5]+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHanzi(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "[\\u4e00-\\u9fa5]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHanziAndAlphabet(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "[\\u4e00-\\u9fa5[a-zA-Z ]]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHanziSting(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    if-eqz p0, :cond_0

    move v0, v1

    .line 84
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 91
    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 85
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isStartWithAlphabet(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "[a-zA-Z]+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static processResult([[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->doExchange([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 40
    array-length v3, v2

    :goto_0
    if-lt v0, v3, :cond_0

    .line 44
    return-object v1

    .line 40
    :cond_0
    aget-object v4, v2, v0

    .line 41
    const-string/jumbo v5, "##"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 103
    const-string/jumbo v0, "([\\u4e00-\\u9fa5 ])"

    const-string/jumbo v1, "###$1###"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "#{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 106
    :cond_0
    aget-object v4, v1, v0

    .line 107
    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
