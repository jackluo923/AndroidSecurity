.class Lcom/alipay/mobile/common/ui/SelectCityActivity$2;
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
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p2, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 171
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    check-cast p2, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;->compare(Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;)I

    move-result v0

    return v0
.end method
