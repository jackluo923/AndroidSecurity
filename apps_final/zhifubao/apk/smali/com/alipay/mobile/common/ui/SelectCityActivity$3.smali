.class Lcom/alipay/mobile/common/ui/SelectCityActivity$3;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

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


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$3;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 279
    iget-object v1, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    iget-object v1, p2, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const/4 v0, -0x1

    goto :goto_0

    .line 285
    :cond_1
    iget-object v1, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p2, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    check-cast p2, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/ui/SelectCityActivity$3;->compare(Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;)I

    move-result v0

    return v0
.end method
