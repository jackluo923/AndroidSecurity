.class public Lcom/alipay/android/app/template/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# static fields
.field private static h:Lcom/alipay/android/app/template/TemplateManager;

.field private static i:I


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Ljava/lang/String;

.field private final e:Lcom/alipay/android/app/template/TemplateStorage;

.field private f:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

.field private g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/template/TemplateManager;->i:I

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "DynamicTemplateService"

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "TemplateManager"

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->b:Ljava/lang/String;

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/android/app/template/TemplateManager;->c:I

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/alipay/android/app/template/TemplateStorage;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateStorage;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/android/app/template/TemplateStorage;

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 70
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 71
    const-class v1, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 74
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 72
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 75
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/alipay/android/app/template/TemplateManager;->i:I

    return v0
.end method

.method static synthetic a(Ljava/lang/Object;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 241
    invoke-static {p0}, Lcom/alipay/android/app/template/TemplateManager;->b(Ljava/lang/Object;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateManager;)Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 57
    sput p0, Lcom/alipay/android/app/template/TemplateManager;->i:I

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateManager;)Lcom/alipay/android/app/template/TemplateStorage;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/android/app/template/TemplateStorage;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 242
    .line 243
    if-eqz p0, :cond_2

    .line 244
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 245
    check-cast p0, Ljava/lang/String;

    const-class v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 269
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TemplateManager"

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parse template "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "success"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-object v0

    .line 247
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TemplateManager"

    .line 248
    const-string/jumbo v3, "Maybe the template item is of wrong type"

    .line 247
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :try_start_1
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 254
    const-string/jumbo v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tag:Ljava/lang/String;

    .line 255
    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    .line 256
    const-string/jumbo v3, "html"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->html:Ljava/lang/String;

    .line 257
    const-string/jumbo v3, "tplId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 258
    const-string/jumbo v3, "format"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    .line 259
    const-string/jumbo v3, "dataObserver"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->dataObserver:Ljava/lang/String;

    .line 260
    const-string/jumbo v3, "tplVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 261
    :catch_0
    move-exception v2

    .line 262
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TemplateManager"

    .line 263
    const-string/jumbo v5, "template is not of json format"

    .line 262
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v3, "DynamicTemplateService.getTemplateItem"

    .line 265
    const-string/jumbo v4, "exception on parse json template"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {v3, v4, v2, v1}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 270
    :cond_1
    const-string/jumbo v1, "fail"

    goto/16 :goto_1

    .line 261
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/alipay/android/app/template/TemplateManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->h:Lcom/alipay/android/app/template/TemplateManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/alipay/android/app/template/TemplateManager;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TemplateManager;->h:Lcom/alipay/android/app/template/TemplateManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->h:Lcom/alipay/android/app/template/TemplateManager;

    return-object v0
.end method


# virtual methods
.method public compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 362
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 364
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    const/4 v1, 0x1

    goto :goto_0

    .line 367
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 368
    const/4 v1, -0x1

    goto :goto_0

    .line 371
    :cond_3
    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 372
    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    move v0, v1

    .line 374
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 375
    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 376
    aget-object v1, v2, v0

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 374
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public createBirdParamsFromTemplate(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;-><init>()V

    .line 347
    const-string/jumbo v1, "android"

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->platform:Ljava/lang/String;

    .line 348
    iput-object p2, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->tplId:Ljava/lang/String;

    .line 349
    iget-object v1, p1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->time:Ljava/lang/String;

    .line 350
    iget-object v1, p1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->publishVersion:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->tplVersion:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 355
    const-string/jumbo v1, "uid"

    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;-><init>()V

    .line 331
    const-string/jumbo v1, "android"

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->platform:Ljava/lang/String;

    .line 332
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->tplId:Ljava/lang/String;

    .line 333
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->time:Ljava/lang/String;

    .line 334
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->publishVersion:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateDimension;->tplVersion:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 339
    const-string/jumbo v1, "uid"

    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteTemplate(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->b(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public downloadTemplate(Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 199
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 236
    :goto_0
    return-object v0

    .line 203
    :cond_1
    :try_start_0
    new-instance v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;

    invoke-direct {v4}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;->tplVersion:Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;->templateReqModelList:Ljava/util/List;

    .line 206
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    invoke-interface {v0, v4}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;->queryTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;)Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;

    move-result-object v4

    .line 214
    if-eqz v4, :cond_6

    iget-boolean v0, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->success:Z

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 215
    iget-object v0, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 216
    const-string/jumbo v0, "DynamicTemplateService.downloadTemplate"

    .line 217
    const-string/jumbo v1, "download"

    iget-object v5, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 216
    invoke-static {v0, v1, v5, v6}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    const/4 v0, 0x0

    :goto_2
    iget-object v1, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_2
    move-object v0, v2

    .line 231
    goto :goto_0

    .line 207
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    new-instance v6, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;

    invoke-direct {v6}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;-><init>()V

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;->tplId:Ljava/lang/String;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;->birdParams:Ljava/lang/String;

    .line 211
    iget-object v0, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;->templateReqModelList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string/jumbo v1, "DynamicTemplateService.downloadTemplate"

    .line 234
    const-string/jumbo v4, "exception on download"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-static {v1, v4, v5, v3}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    const-string/jumbo v1, "TemplateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "downloadTemplate error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 236
    goto/16 :goto_0

    .line 219
    :cond_4
    :try_start_1
    iget-object v1, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateManager;->b(Ljava/lang/Object;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 220
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v5

    .line 221
    iget-object v6, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    :goto_3
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :cond_5
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto :goto_3

    .line 225
    :cond_6
    const-string/jumbo v1, "DynamicTemplateService.downloadTemplate"

    .line 226
    const-string/jumbo v5, "download fail"

    if-nez v4, :cond_7

    move-object v0, v3

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 225
    invoke-static {v1, v5, v0, v4}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 226
    :cond_7
    iget-boolean v0, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->success:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4
.end method

.method public downloadTemplates(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;->queryTemplateListByTag(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 304
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 310
    :cond_0
    return-void

    .line 305
    :cond_1
    iget-object v3, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/template/TemplateManager;->b(Ljava/lang/Object;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v3

    .line 307
    invoke-virtual {p0, v3}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 286
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 287
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 289
    :cond_1
    :goto_0
    return-object v0

    .line 287
    :cond_2
    invoke-static {p1, p2}, Lcom/alipay/android/app/template/util/UiUtil;->readAssertFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/TemplateStorage;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getRpcService()Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    return-object v0
.end method

.method public getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->a(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 322
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 323
    invoke-virtual {v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getBirdNestEnv()Ljava/util/Map;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "version"

    .line 323
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Ljava/lang/String;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 412
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 410
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v0

    return v0
.end method

.method public saveTemplates(Ljava/util/List;)Ljava/util/Map;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/android/app/template/TemplateStorage;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "TemplateStorage.saveTemplate"

    const-string/jumbo v2, "templates is null or empty"

    invoke-static {v1, v2, v0, v0}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/TemplateStorage;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v4

    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public triggerTemplateUpdateTask()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 84
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 82
    new-instance v1, Lcom/alipay/android/app/template/TemplateManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/TemplateManager$1;-><init>(Lcom/alipay/android/app/template/TemplateManager;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public whetherTemplateNeedUpdate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 387
    if-nez p1, :cond_0

    .line 388
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "whetherTemplateNeedUpdate"

    const-string/jumbo v3, "tpl from server is null"

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 405
    :goto_0
    return v7

    .line 391
    :cond_0
    if-nez p2, :cond_1

    .line 392
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "whetherTemplateNeedUpdate"

    const-string/jumbo v3, "tpl exist local is null"

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v7, v8

    .line 393
    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    .line 395
    :goto_1
    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    move v0, v7

    .line 403
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v5

    const-string/jumbo v6, "DynamicTemplateService"

    const-string/jumbo v7, "whetherTemplateNeedUpdate"

    .line 404
    if-eqz v0, :cond_4

    const-string/jumbo v8, "update"

    :goto_3
    iget-object v9, p2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    move-object v10, v4

    move-object v11, v4

    .line 403
    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v7, v0

    .line 405
    goto :goto_0

    :cond_2
    move v0, v7

    .line 396
    goto :goto_1

    :cond_3
    move v0, v8

    .line 402
    goto :goto_2

    .line 404
    :cond_4
    const-string/jumbo v8, "not update"

    goto :goto_3
.end method
