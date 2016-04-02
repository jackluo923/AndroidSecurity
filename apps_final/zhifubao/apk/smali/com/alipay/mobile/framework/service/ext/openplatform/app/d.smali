.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 956
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 957
    return-void
.end method
