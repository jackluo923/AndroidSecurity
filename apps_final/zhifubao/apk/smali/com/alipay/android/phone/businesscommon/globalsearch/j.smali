.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/j;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static a:I

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 31
    sput v2, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    .line 43
    sput v3, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->g:I

    .line 68
    const-string/jumbo v0, "9.0.0.000000"

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->h:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "WALLET-SEARCH|HeaderCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "WALLET-SEARCH|MoreCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "WALLET-SEARCH|DefaultCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@HelpCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "WALLET-SEARCH|ChatCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@StockCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@O2O"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@Bill"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "WALLET-SEARCH|CouponCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "WALLET-SEARCH|MessageBoxCell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b:Ljava/util/List;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@Gift"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "WALLET-SEARCH|DefaultCell"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "WALLET-SEARCH|HeaderCell"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "WALLET-SEARCH|MoreCell"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@HelpCell"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "WALLET-SEARCH|ChatCell"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@StockCell"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@O2O"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@Bill"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "WALLET-SEARCH|CouponCell"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "WALLET-SEARCH|MessageBoxCell"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    const-string/jumbo v1, "APGlobalSearch.bundle/bd/WALLET-SEARCH@Gift"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sput v3, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->g:I

    .line 101
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "publicplatform"

    const-string/jumbo v2, "\u670d\u52a1\u7a97"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "app"

    const-string/jumbo v2, "\u5e94\u7528"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "contact"

    const-string/jumbo v2, "\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "coupon"

    const-string/jumbo v2, "\u5361\u5305"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "messagebox"

    const-string/jumbo v2, "\u7cfb\u7edf\u6d88\u606f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "chatmsg"

    const-string/jumbo v2, "\u804a\u5929\u8bb0\u5f55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "group"

    const-string/jumbo v2, "\u7fa4\u804a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "publicplatform"

    const-string/jumbo v2, "publicplatform"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "app"

    const-string/jumbo v2, "app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "contact"

    const-string/jumbo v2, "contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "coupon"

    const-string/jumbo v2, "coupon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "messagebox"

    const-string/jumbo v2, "messagebox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "chatmsg"

    const-string/jumbo v2, "chatmsg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->e:Ljava/util/HashMap;

    const-string/jumbo v1, "group"

    const-string/jumbo v2, "group"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 126
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->g:I

    return v0
.end method

.method public static a(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 313
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 314
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;-><init>()V

    .line 223
    const-string/jumbo v1, "WALLET-SEARCH|MoreCell"

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->templateId:Ljava/lang/String;

    .line 224
    iput-object p0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->b:Ljava/lang/String;

    .line 225
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->name:Ljava/lang/String;

    .line 226
    iput-object p1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->c:Ljava/lang/String;

    .line 227
    iput-object p2, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    .line 228
    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/alipay/android/phone/globalsearch/api/IndexResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;)",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;"
        }
    .end annotation

    .prologue
    .line 262
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    const-string/jumbo v2, "u"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v0, "rt"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    const-string/jumbo v0, "dt"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v0, "pe"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    const-string/jumbo v0, "le"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    const-string/jumbo v0, "show_option_menu"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    const-string/jumbo v0, "showProgress"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 302
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 303
    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 307
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {v0, p0, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    sput-object p0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->c:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    sput-object p0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->i:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;-><init>()V

    .line 188
    const-string/jumbo v1, "WALLET-SEARCH|HeaderCell"

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->templateId:Ljava/lang/String;

    .line 189
    invoke-static {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->a:Ljava/lang/String;

    .line 190
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->name:Ljava/lang/String;

    .line 191
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;-><init>()V

    .line 196
    const-string/jumbo v1, "WALLET-SEARCH|HeaderCell"

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->templateId:Ljava/lang/String;

    .line 197
    iput-object p0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->a:Ljava/lang/String;

    .line 198
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->name:Ljava/lang/String;

    .line 199
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;-><init>()V

    .line 213
    const-string/jumbo v1, "WALLET-SEARCH|MoreCell"

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->templateId:Ljava/lang/String;

    .line 214
    iput-object p0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->b:Ljava/lang/String;

    .line 215
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->name:Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->c:Ljava/lang/String;

    .line 218
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 319
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 322
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->h:Ljava/lang/String;

    return-object v0

    .line 323
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 325
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-object p0

    .line 284
    :cond_1
    const-string/jumbo v0, "appId=20000003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string/jumbo v0, "appId=20000003"

    const-string/jumbo v1, "appId=20000090"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method
