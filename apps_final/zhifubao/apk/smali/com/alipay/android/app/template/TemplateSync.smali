.class Lcom/alipay/android/app/template/TemplateSync;
.super Ljava/lang/Object;
.source "TemplateSync.java"


# static fields
.field private static b:Lcom/alipay/android/app/template/TemplateSync;


# instance fields
.field protected final a:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private d:Lcom/alipay/android/app/template/TemplateManager;

.field private e:Ljava/lang/String;

.field private final f:Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "public-template"

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/alipay/android/app/template/TemplateSync$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/TemplateSync$1;-><init>(Lcom/alipay/android/app/template/TemplateSync;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->f:Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    .line 45
    return-void
.end method

.method public static a()Lcom/alipay/android/app/template/TemplateSync;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/android/app/template/TemplateSync;->b:Lcom/alipay/android/app/template/TemplateSync;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alipay/android/app/template/TemplateSync;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateSync;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TemplateSync;->b:Lcom/alipay/android/app/template/TemplateSync;

    .line 51
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateSync;->b:Lcom/alipay/android/app/template/TemplateSync;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateSync;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->c:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateSync;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateSync;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "public-template"

    invoke-interface {v0, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 102
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "public-template"

    const-string/jumbo v3, "process push success"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_1
    return v0

    .line 103
    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    const-string/jumbo v4, "pl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "pfq"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "plStr = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getBirdNestEnv()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v5, "version"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateSync;->b(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "tplVersion"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/template/TemplateSync;->b(Ljava/lang/String;)I

    move-result v5

    if-lt v0, v5, :cond_2

    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V

    const-string/jumbo v5, "tplId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    const-string/jumbo v5, "tag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tag:Ljava/lang/String;

    const-string/jumbo v5, "time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    const-string/jumbo v5, "html"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->html:Ljava/lang/String;

    const-string/jumbo v5, "dataObserver"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->dataObserver:Ljava/lang/String;

    const-string/jumbo v5, "tplVersion"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    const-string/jumbo v5, "publishVersion"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    const-string/jumbo v5, "format"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    iget-object v6, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "gziped"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "md5"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Lcom/alipay/android/app/template/TemplateSync;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    .line 102
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    iget-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/template/TemplateManager;->deleteTemplate(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v6, v0}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "public-template"

    const-string/jumbo v4, "process push fail"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 111
    goto/16 :goto_1

    .line 104
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v6, v0, v5}, Lcom/alipay/android/app/template/TemplateManager;->whetherTemplateNeedUpdate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "gziped"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "md5"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Lcom/alipay/android/app/template/TemplateSync;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    iget-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/template/TemplateManager;->deleteTemplate(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v6, v0}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    const-string/jumbo v1, "true"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 190
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    const/4 v2, 0x0

    .line 193
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    const/16 v2, 0x64

    :try_start_2
    new-array v2, v2, [C

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-gtz v5, :cond_2

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/MD5Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    if-nez v4, :cond_3

    .line 212
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 213
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 199
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v4, v2, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v2, v3

    .line 212
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 206
    :cond_3
    :try_start_6
    iput-object v2, p2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 207
    const-string/jumbo v4, "pfq"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "jsonString = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 212
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 213
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 221
    :cond_4
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    .line 212
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 213
    if-eqz v1, :cond_5

    .line 214
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 219
    :cond_5
    :goto_5
    throw v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    .line 210
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 226
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    const-string/jumbo v1, "."

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 231
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 55
    const-string/jumbo v0, "pfq"

    const-string/jumbo v1, "TemplateSync init()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getInstance()Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/TemplateSync;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 58
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->c:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync;->c:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "public-template"

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateSync;->f:Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 60
    return-void
.end method
