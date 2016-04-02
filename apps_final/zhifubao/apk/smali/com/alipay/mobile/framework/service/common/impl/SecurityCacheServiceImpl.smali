.class public Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
.source "SecurityCacheServiceImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

.field private c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private d:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;-><init>()V

    .line 37
    const-string/jumbo v0, "SecurityCacheServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->a:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->e:Z

    .line 50
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    .line 53
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    .line 56
    const v0, 0x278d00

    iput v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->h:I

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 65
    const-class v1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 64
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 67
    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 66
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 68
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 221
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 226
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 227
    iget-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 229
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 232
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "SecurityCacheServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isDynamicEncrypt "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-eqz p3, :cond_0

    .line 235
    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v0, v2

    .line 252
    :goto_1
    if-eqz v0, :cond_3

    .line 258
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    .line 260
    :goto_3
    return-object v0

    .line 237
    :cond_0
    :try_start_2
    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityCacheServiceImpl"

    const-string/jumbo v3, "decrypt fail"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 255
    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    move-object v0, v1

    goto :goto_3

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    .line 259
    throw v0

    .line 248
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 159
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 170
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, p3, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v0, :cond_3

    .line 196
    invoke-direct {p0, p1, p2, p4}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    .line 197
    if-eqz v0, :cond_3

    .line 198
    const-class v1, [B

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 202
    const-class v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    invoke-static {v1, p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 205
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 148
    const-class v0, [B

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    const-string/jumbo v0, "ALL"

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 273
    const-string/jumbo v0, "MEM"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ALL"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    :cond_1
    const-string/jumbo v0, "DISK"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ALL"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->remove(Ljava/lang/String;)V

    .line 284
    :cond_3
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 84
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 85
    iget v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->h:I

    int-to-long v7, v0

    const-string/jumbo v9, "txt"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 84
    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;)V

    .line 86
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;)V
    .locals 11

    .prologue
    .line 96
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JJLjava/lang/String;Z)V
    .locals 12

    .prologue
    .line 104
    invoke-static {p3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p4, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v3, 0x0

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->f:Z

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-object/from16 v0, p4

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_2
    move-object/from16 v0, p4

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 116
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 120
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->g:Z

    if-eqz v1, :cond_8

    .line 121
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v11, 0x1

    .line 125
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->e:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SecurityCacheServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isDynamicEncrypt "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_5

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->dynamicEncrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v2

    :goto_2
    if-nez v2, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "SecurityCacheServiceImpl"

    const-string/jumbo v4, "encrypt fail"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_3

    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :cond_3
    :goto_4
    if-eqz v11, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    goto :goto_0

    .line 118
    :cond_4
    :try_start_3
    check-cast p4, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 125
    :cond_5
    :try_start_4
    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move-object v5, v2

    goto :goto_3

    .line 128
    :catch_1
    move-exception v1

    move v2, v3

    .line 129
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SecurityCacheServiceImpl"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 131
    if-eqz v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    goto/16 :goto_0

    .line 130
    :catchall_0
    move-exception v1

    move v11, v3

    .line 131
    :goto_6
    if-eqz v11, :cond_7

    .line 132
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    .line 134
    :cond_7
    throw v1

    .line 130
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move v11, v2

    goto :goto_6

    .line 128
    :catch_2
    move-exception v1

    move v2, v11

    goto :goto_5

    :cond_8
    move v11, v3

    goto :goto_4
.end method
