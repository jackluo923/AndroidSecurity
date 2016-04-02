.class public Lcom/taobao/updatecenter/hotpatch/HotPatchManager;
.super Ljava/lang/Object;
.source "HotPatchManager.java"


# instance fields
.field private a:Landroid/app/Application;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;

.field private e:Lcom/taobao/updatecenter/hotpatch/PatchStateListener;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->d:Ljava/util/HashMap;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->f:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->g:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;-><init>()V

    return-void
.end method

.method public static a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/taobao/updatecenter/hotpatch/a;->a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 236
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteHotPatchFile:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 241
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    const-string/jumbo v1, "hotpatch_filepath_md5_storage"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "is_enable_hotpatch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string/jumbo v2, "is_enable_hotpatch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 200
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "hotpatch"

    const-string/jumbo v3, "loadpatch, apk:%s, version:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "hotpatch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6b64\u6587\u4ef6\u5df2\u7ecf\u52a0\u8f7d\u8fc7:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->d:Ljava/util/HashMap;

    invoke-static {v0, p1, v1}, Lcom/taobao/hotpatch/patch/PatchMain;->load(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v0

    .line 208
    if-eqz v0, :cond_2

    .line 209
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "hotpatch"

    const-string/jumbo v3, "loadPatch\u6210\u529f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->g:Ljava/lang/String;

    .line 211
    iput p2, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->f:I

    .line 212
    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->e:Lcom/taobao/updatecenter/hotpatch/PatchStateListener;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->e:Lcom/taobao/updatecenter/hotpatch/PatchStateListener;

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "hotpatch"

    const-string/jumbo v4, "loadPatch\u5931\u8d25"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-virtual {v1}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v3

    invoke-virtual {v1}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    move-result v4

    invoke-virtual {v1}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/taobao/hotpatch/patch/PatchResult;->getThrowbale()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->a(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    iget-object v2, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->e:Lcom/taobao/updatecenter/hotpatch/PatchStateListener;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->e:Lcom/taobao/updatecenter/hotpatch/PatchStateListener;

    invoke-virtual {v1}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    invoke-virtual {v1}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    const-string/jumbo v1, "hotpatch_filepath_md5_storage"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    const-string/jumbo v0, "com.taobao.service.hotpatch"

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v2, v0, v1}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Application;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/updatecenter/hotpatch/HotPatchManager;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    .line 74
    iput-object p2, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->d:Ljava/util/HashMap;

    .line 76
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 253
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDownloadFinsh:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->a(Ljava/lang/String;)I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v1, p1, p2}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    const-string/jumbo v2, "hotpatch_filepath_md5_storage"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    const-string/jumbo v2, "com.taobao.service.hotpatch"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "hotpatch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lastPatchFile:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "hotpatch"

    const-string/jumbo v5, "\u6709\u65b0\u7684hotpatch\u6587\u4ef6\uff0c\u5220\u9664\u8001\u6587\u4ef6"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, v2}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 272
    const-string/jumbo v2, "com.taobao.service.hotpatch"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    const-string/jumbo v2, "main_version"

    iget-object v3, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    :goto_0
    return v0

    .line 278
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "download verify false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->b(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "unhookAllMethods"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/taobao/hotpatch/patch/PatchMain;->clearAllCallbacks()V

    .line 86
    invoke-static {}, Lcom/taobao/android/dexposed/XposedBridge;->unhookAllMethods()V

    .line 88
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    const-string/jumbo v1, "hotpatch_filepath_md5_storage"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "com.taobao.service.hotpatch"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->a(Landroid/app/Application;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "\u4e0d\u652f\u6301hotpatch"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->b(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    const-string/jumbo v1, "hotpatch_filepath_md5_storage"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "use_support"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "PATCHABLE = false return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/taobao/android/dexposed/XposedBridge;->unhookAllMethods()V

    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v1, "main_version"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6700\u65b0hotpatch\u5bf9\u5e94\u7248\u672c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5f53\u524d\u5e94\u7528\u7248\u672c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    const-string/jumbo v2, "main_version"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    const-string/jumbo v1, "com.taobao.service.hotpatch"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "!mMainVersion.equals(settings.getString(HOTPATCH_ON_MAIN_VERSION))"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c:Ljava/lang/String;

    const-string/jumbo v2, "main_version"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 130
    const-string/jumbo v1, "com.taobao.service.hotpatch"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "!mMainVersion.equals(settings.getString(HOTPATCH_ON_MAIN_VERSION))"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_4
    invoke-direct {p0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->b:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "debug\u6a21\u5f0f\uff0c\u76f4\u63a5\u4ecesd\u5361\u627e\u6587\u4ef6"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "HotpatchAlipay.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->b:Ljava/lang/String;

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 143
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "\u627e\u4e0d\u5230\u53ef\u7528\u7684patch\u6587\u4ef6"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->f()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    const-string/jumbo v2, "\u627e\u4e0d\u5230\u53ef\u7528\u7684patch\u6587\u4ef6"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/updatecenter/util/UpdateCenterUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;I)Z

    goto :goto_0
.end method
