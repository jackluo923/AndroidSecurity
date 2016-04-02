.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;
.super Ljava/lang/Object;
.source "BundleInfo.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a:Ljava/util/Map;

    .line 15
    const-string/jumbo v1, "android-phone-publicplatform-common"

    .line 16
    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.dbhelper.GlobalSearchBiz"

    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "android-phone-alipass-alipassapp"

    .line 18
    const-string/jumbo v2, "com.alipay.mobile.alipassapp.biz.LocalSearchBiz"

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a:Ljava/util/Map;

    .line 20
    const-string/jumbo v1, "android-phone-messagebox-messageboxstatic"

    .line 21
    const-string/jumbo v2, "com.alipay.android.phone.messageboxstatic.biz.GlobalSearchBiz"

    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 32
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    return-object v1

    .line 32
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
