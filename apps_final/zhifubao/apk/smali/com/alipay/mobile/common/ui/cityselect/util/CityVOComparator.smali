.class public Lcom/alipay/mobile/common/ui/cityselect/util/CityVOComparator;
.super Ljava/lang/Object;
.source "CityVOComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFirstHanzi([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    const-string/jumbo v0, "~"

    .line 22
    array-length v1, p1

    if-lez v1, :cond_0

    .line 23
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getFullPy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->isStartWithAlphabet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_2
    const-string/jumbo v0, "~"

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;)I
    .locals 2

    .prologue
    .line 13
    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 14
    iget-object v1, p2, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/cityselect/util/CityVOComparator;->getFirstHanzi([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/ui/cityselect/util/CityVOComparator;->getFirstHanzi([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    check-cast p2, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/ui/cityselect/util/CityVOComparator;->compare(Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;)I

    move-result v0

    return v0
.end method
