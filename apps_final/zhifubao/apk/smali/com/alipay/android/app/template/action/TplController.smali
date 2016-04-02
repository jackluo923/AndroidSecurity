.class public Lcom/alipay/android/app/template/action/TplController;
.super Ljava/lang/Object;
.source "TplController.java"

# interfaces
.implements Lcom/alipay/android/app/template/event/TElementEventHandler;


# static fields
.field private static synthetic $SWITCH_TABLE$com$alipay$android$app$template$action$DynamicTemplateActionType:[I = null

.field private static final TAG:Ljava/lang/String; = "DynamicTemplateActionHandler"

.field public static final TEMPORARY_CACHE_KEY:Ljava/lang/String; = "temporaryCacheKey"

.field private static mInstance:Lcom/alipay/android/app/template/action/TplController;


# instance fields
.field private final mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private final mTemporaryCacheView:Ljava/util/Map;

.field private final mTplManager:Lcom/alipay/android/app/template/TemplateManager;

.field private final mTplRpcService:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$android$app$template$action$DynamicTemplateActionType()[I
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/android/app/template/action/TplController;->$SWITCH_TABLE$com$alipay$android$app$template$action$DynamicTemplateActionType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->values()[Lcom/alipay/android/app/template/action/DynamicTemplateActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->alipays:Lcom/alipay/android/app/template/action/DynamicTemplateActionType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->closePage:Lcom/alipay/android/app/template/action/DynamicTemplateActionType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->link:Lcom/alipay/android/app/template/action/DynamicTemplateActionType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->rpc:Lcom/alipay/android/app/template/action/DynamicTemplateActionType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->tel:Lcom/alipay/android/app/template/action/DynamicTemplateActionType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/android/app/template/action/TplController;->$SWITCH_TABLE$com$alipay$android$app$template$action$DynamicTemplateActionType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTemporaryCacheView:Ljava/util/Map;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 75
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 76
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getInstance()Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTplManager:Lcom/alipay/android/app/template/TemplateManager;

    .line 77
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 79
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 80
    const-class v1, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    iput-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTplRpcService:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/app/template/action/TplController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct/range {p0 .. p7}, Lcom/alipay/android/app/template/action/TplController;->loadTemplateInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/app/template/action/TplController;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/action/TplController;->handleError(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/app/template/action/TplController;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTemporaryCacheView:Ljava/util/Map;

    return-object v0
.end method

.method public static convertTplLayoutToList(Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)Ljava/util/List;
    .locals 5

    .prologue
    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    if-eqz p0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/result/Row;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    .line 292
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v0, :cond_2

    .line 316
    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/result/Row;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    .line 318
    iget-object v1, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    .line 319
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_2
    return-object v2

    .line 295
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;

    .line 296
    iget-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v1, :cond_4

    .line 297
    new-instance v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    invoke-direct {v1}, Lcom/alipay/mobiletms/common/service/facade/result/Row;-><init>()V

    .line 298
    iget-object v4, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v4, v4, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    .line 299
    iget-object v4, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v4, v4, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    .line 300
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 307
    iget-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v1, :cond_1

    .line 308
    new-instance v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    invoke-direct {v1}, Lcom/alipay/mobiletms/common/service/facade/result/Row;-><init>()V

    .line 309
    iget-object v4, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v4, v4, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    .line 310
    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    .line 311
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    .line 304
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static convertTplLayoutToMaps(Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)Ljava/util/Map;
    .locals 6

    .prologue
    .line 257
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 258
    if-eqz p0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_2
    return-object v2

    .line 263
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;

    .line 264
    iget-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->header:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 272
    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/result/Section;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;->footer:Lcom/alipay/mobiletms/common/service/facade/result/Row;

    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;

    .line 269
    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static getInstance()Lcom/alipay/android/app/template/action/TplController;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/alipay/android/app/template/action/TplController;->mInstance:Lcom/alipay/android/app/template/action/TplController;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/alipay/android/app/template/action/TplController;

    invoke-direct {v0}, Lcom/alipay/android/app/template/action/TplController;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/action/TplController;->mInstance:Lcom/alipay/android/app/template/action/TplController;

    .line 91
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/action/TplController;->mInstance:Lcom/alipay/android/app/template/action/TplController;

    return-object v0
.end method

.method private handleError(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 193
    :cond_0
    instance-of v0, p2, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_1

    .line 195
    check-cast p2, Lcom/alipay/mobile/common/rpc/RpcException;

    throw p2

    .line 197
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 200
    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 202
    :cond_2
    return-void
.end method

.method private loadHtmlFileContent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 209
    new-instance v2, Ljava/io/BufferedReader;

    .line 210
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 209
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 211
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 213
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_1

    .line 216
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    if-eqz v0, :cond_0

    .line 219
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 220
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private loadTemplateInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 331
    invoke-static {p3, p5, p1, p2}, Lcom/alipay/android/app/template/DynamicTemplateApp;->verifyLaunchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the params passed to loadTemplateInternal is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    const-string/jumbo v2, ""

    .line 340
    instance-of v0, p7, Landroid/app/Activity;

    if-eqz v0, :cond_b

    move-object v0, p7

    .line 341
    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    .line 344
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTplManager:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_a

    .line 347
    iget-object v2, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    iget-object p1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 350
    :cond_1
    iget-object v2, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    move-object v0, v1

    move v5, v3

    move-object v1, p1

    .line 376
    :goto_1
    if-eqz v5, :cond_5

    .line 377
    iget-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->templateLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    invoke-static {v1}, Lcom/alipay/android/app/template/action/TplController;->convertTplLayoutToMaps(Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)Ljava/util/Map;

    move-result-object v1

    .line 378
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    :goto_2
    return-void

    .line 352
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 353
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/template/action/TplController;->fetchTplData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;

    move-result-object v5

    .line 354
    if-eqz v5, :cond_9

    iget-boolean v0, v5, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->success:Z

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, v5, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, v5, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController;->mTplManager:Lcom/alipay/android/app/template/TemplateManager;

    iget-object v2, v5, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move v1, v3

    .line 364
    :goto_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 365
    iget-object p5, v5, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->pageData:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v5

    move v5, v1

    move-object v1, p1

    goto :goto_1

    .line 359
    :cond_3
    iget-object v0, v5, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->templateLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    if-eqz v0, :cond_9

    .line 361
    const/4 v0, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 381
    :cond_4
    iget-object v2, v0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->templateLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    .line 382
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 384
    const-class v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 382
    new-instance v3, Lcom/alipay/android/app/template/action/TplController$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/alipay/android/app/template/action/TplController$3;-><init>(Lcom/alipay/android/app/template/action/TplController;Ljava/util/Map;Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)V

    .line 406
    const-string/jumbo v1, "TplListViewActivity"

    .line 385
    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_2

    .line 409
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    sget v0, Lcom/alipay/android/app/template/R$string;->template_data_error:I

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/alipay/android/app/template/exception/DynamicTemplateException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/template/exception/DynamicTemplateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_6
    invoke-static {p5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 417
    const-string/jumbo v0, "showMode"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 418
    const-string/jumbo v0, "showMode"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    .line 421
    :goto_4
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p6

    move-object v3, p7

    .line 422
    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/template/action/TplController;->startFullScreenTplActivity(Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Landroid/app/Activity;ILcom/alibaba/fastjson/JSONObject;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :cond_7
    move v5, v3

    goto :goto_4

    :cond_8
    move-object v2, v0

    move-object v0, v5

    move v5, v1

    move-object v1, p1

    goto/16 :goto_1

    :cond_9
    move-object v0, v2

    move v1, v3

    goto :goto_3

    :cond_a
    move-object v0, v1

    move v5, v3

    move-object v1, p1

    goto/16 :goto_1

    :cond_b
    move-object v4, v1

    goto/16 :goto_0
.end method

.method private startFullScreenTplActivity(Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Landroid/app/Activity;ILcom/alibaba/fastjson/JSONObject;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 462
    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController;->mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v8

    .line 464
    instance-of v0, p3, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    .line 465
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/alipay/android/app/template/action/TplController$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object/from16 v5, p6

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/alipay/android/app/template/action/TplController$4;-><init>(Lcom/alipay/android/app/template/action/TplController;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    instance-of v0, p3, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/app/template/action/TplController$5;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p6

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/alipay/android/app/template/action/TplController$5;-><init>(Lcom/alipay/android/app/template/action/TplController;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public fetchTplData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 431
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 433
    :try_start_0
    const-string/jumbo v2, "tplId"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string/jumbo v2, "version"

    iget-object v3, p0, Lcom/alipay/android/app/template/action/TplController;->mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v3}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getBirdNestEnv()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "{"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    const-string/jumbo v2, "{\"tplContext\":%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_0
    new-instance v2, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;

    invoke-direct {v2}, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;-><init>()V

    .line 447
    iput-object v0, v2, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;->bizReq:Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;->tplContext:Ljava/util/Map;

    .line 450
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTplRpcService:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    invoke-interface {v0, v2}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;->queryDemo(Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;)Lcom/alipay/mobiletms/common/service/facade/rpc/DemoRes;
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 457
    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoRes;->templateResult:Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;

    .line 458
    :goto_1
    return-object v0

    .line 436
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 438
    goto :goto_1

    .line 444
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    move-object v0, v1

    .line 455
    goto :goto_1
.end method

.method public getTemporaryCachedView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTemporaryCacheView:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mTemporaryCacheView:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 527
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTemplate(Landroid/os/Bundle;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 1

    .prologue
    .line 232
    if-eqz p3, :cond_0

    .line 233
    const-string/jumbo v0, "\u6a21\u677f\u52a0\u8f7d\u4e2d..."

    invoke-interface {p3, v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    .line 235
    :cond_0
    new-instance v0, Lcom/alipay/android/app/template/action/TplController$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/template/action/TplController$2;-><init>(Lcom/alipay/android/app/template/action/TplController;Landroid/os/Bundle;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p3, :cond_0

    const-string/jumbo v1, "param"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const-string/jumbo v1, "param"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    .line 114
    const-string/jumbo v2, "actionType"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string/jumbo v3, "actionParam"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    :try_start_0
    invoke-static {v2}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/action/DynamicTemplateActionType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    .line 124
    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 125
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->$SWITCH_TABLE$com$alipay$android$app$template$action$DynamicTemplateActionType()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/alipay/android/app/template/action/DynamicTemplateActionType;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    .line 176
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :pswitch_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 129
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_1

    .line 135
    :pswitch_1
    invoke-static {v3, v0}, Lcom/alipay/android/app/template/UiAssistantor;->openWeb(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 139
    :pswitch_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 147
    :pswitch_3
    instance-of v2, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v2, :cond_2

    .line 148
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 149
    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    .line 150
    new-instance v2, Lcom/alipay/android/app/template/action/TplController$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/alipay/android/app/template/action/TplController$1;-><init>(Lcom/alipay/android/app/template/action/TplController;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 173
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroy(Landroid/os/Bundle;)V

    goto :goto_1

    .line 120
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method readFileFromSdcard(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 504
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 505
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 506
    const/16 v2, 0x800

    new-array v2, v2, [C

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_0

    .line 512
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 513
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 510
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1
.end method

.method public setDynamicApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 85
    return-void
.end method
