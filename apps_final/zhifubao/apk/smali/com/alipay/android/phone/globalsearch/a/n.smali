.class public final Lcom/alipay/android/phone/globalsearch/a/n;
.super Ljava/lang/Object;
.source "StaticDataManager.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->a:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->b:Ljava/util/Map;

    .line 10
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/a/b;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/a/b;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->a:Ljava/util/Map;

    const-string/jumbo v1, "server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/a/b;

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/phone/globalsearch/a/b;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/alipay/android/phone/globalsearch/a/n;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
