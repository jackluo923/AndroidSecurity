.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;
.super Ljava/lang/Object;
.source "OpenplatformQueryListener.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/QueryListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    return-object v0
.end method


# virtual methods
.method public final doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public final doQuery(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    return-void
.end method

.method public final doQuery(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    return-void
.end method
