.class public Lcom/alipay/mobile/common/ui/cityselect/util/Cityfilter;
.super Ljava/lang/Object;
.source "Cityfilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMatchedContact(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 61
    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    .line 47
    iget-object v3, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 48
    iget-object v4, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->isHanziSting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/common/ui/cityselect/util/PinYinAndHanziUtils;->isAlphabet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
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


# virtual methods
.method public resetTransferToAccount(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 75
    :cond_0
    return-void

    .line 70
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method
