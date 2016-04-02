.class public Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;
.super Ljava/lang/Object;
.source "HotRecommendItem.java"


# instance fields
.field public id:Ljava/lang/String;

.field public jsonObj:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    .line 19
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->buildJsonObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    .line 20
    return-void
.end method

.method private buildJsonObject(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 25
    return-object v0
.end method
