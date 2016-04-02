.class public Lcom/alipay/android/phone/publicplatform/common/api/impl/PinyinUtils;
.super Ljava/lang/Object;
.source "PinyinUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name2Pinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 11
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 12
    :cond_0
    const-string/jumbo v0, ""

    .line 25
    :goto_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 15
    const-string/jumbo v0, ""

    .line 16
    array-length v4, v3

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_2

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_2
    aget-char v5, v3, v1

    .line 17
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->getPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v6

    .line 18
    if-eqz v6, :cond_3

    array-length v7, v6

    if-nez v7, :cond_4

    .line 19
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v6, v2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
