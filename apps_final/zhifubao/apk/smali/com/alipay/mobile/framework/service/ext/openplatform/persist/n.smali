.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/n;
.super Ljava/lang/Object;
.source "AppDbHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

.field private final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/n;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/n;->b:Ljava/util/Map;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/n;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/n;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method
