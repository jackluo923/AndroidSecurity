.class public final Lcom/taobao/dp/service/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Lcom/taobao/dp/bean/TDMessage;)Lcom/taobao/dp/bean/TDMessage;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/dp/bean/TDMessage;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/taobao/dp/a/a;->a()Lcom/taobao/dp/a/a;

    invoke-static {v0}, Lcom/taobao/dp/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/dp/bean/TDMessage;->setUuid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/dp/client/a;)Lcom/taobao/dp/service/b$a;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "Uj3BupcjWxbdyjTYNih+bEMDX7ziXmFaFxMIr6gHoJ36nXl0feBiBf7XrA4qiRMm2VqctR7y3Ewhk03JQtcpoCwWupm9GR58zBH0XU39JzHsiHdSiHHB6fczny8EBaF7wnNa/rJyQLPhdmiWuv+pGWFHMfJbs+p7BzpS/AjIDtMNBOdPywfN/3hw6Mno5uthkgExfgm/kpC1bSA6HwDp+MdQcqR3gEqKpg2Tb9YPSd0SssXHw7UmyhpKoQ6ezR2iFQJf4iaKArmSVFX03lgEWmnSDCYCMGIM51aShjngdAEwaSItwmNEzYwOeLUObjLF2wY1dyedlHr1YJ7Z6R2ucoNu3TrzojtjNKn5ASMXK0Y+1r8lZBWs+jQnjslbfU7TxA3bnduocnLMs/R/Y31QKZRCdSHecFBlYp7nCQrHqTOIb/viL5LmhOWTrU9qIPEv08GH3b/QtYF3VLrm4nZ/YTqVOXSkKQQGGmatz+u6h1QAlCwCyqVJAQO35yoGeBMNe5FnobJo4M5cOjL6YjFbxOP7AV6IfsYY8ve6vptM6hycYyN4WgjEvxtOMOZeJ1375H54dZPoxfYfP9aTC7bDcsyHejC4zkahmend8iySOgBB6WV5qZAQNa1aX12rfwkwRznYblC3m/OHGs5Gw3jh/uyM2MCaorp9UKjqPqLOXCKeFl/+DTtOSReMX8WZdMedoruHdAaLxC2RPy5UfyRG0/kXBUADSl0VPEe8IGtbkaNpBa6dcBpo3JIf268yxNslpMu4pPQ+H9LNKq31WR01CB48tXVqOYrGZwvB6LbxP1UwcVdwzs353Aj41PON9sWqBAT70tUWt4fUoXgSVeHXkE2S4DDWf0xXxePaSsHqf7vYvOPgLFFoM3omZ8oxzDLkNOalWHqgyKgMcSW1ehznCacvhiS4hLeXiM5rxFFKldIfNPAtKq/FsOTNZ6bMQ9/zfAB4qZLpsrDgqifQcNLVyndkBhon9xhsHTfAbY1mVHui/FIr2Ob9O7X/eX8Cjb/NB3zYr+MZXblqvOQJlLicy3QGq6A7Zxqr4sEeWJO6kBIn/r50Ea0Vb6WEeZ8Z/fT9AY0RI6EzFiFsRqqqCGITX/aLXENuJrGRpyQaKMBBtSELwRZtezPDuOH6atxa516z6GbeydeGlxG5+SBpsxzh6y0WC46UhN5BEBcahKlagZh7MT3DwPE8dit98CdnMXa8ut+aQfdAevVDMvlKNOqn4kIbTprD/jLaSKi3FCzFYLU0zrZuOP6Devu5w/bla3UOiOSNd6zCLwgQYUc5ci5OC00Vn+sD4bZONsu9sfsYrEtq2bWKznxUmbqNaxNWaWzjflqugmWlPWGDeZA4ye20oITKFrQHvzbJ/gxOFiQJpVQ="

    const-string/jumbo v2, "device_print_res_k1"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, p2}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/taobao/dp/service/b$a;

    move-result-object v1

    const-string/jumbo v2, "UUID_APP"

    invoke-virtual {p3}, Lcom/taobao/dp/client/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/taobao/dp/util/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/taobao/dp/service/b$a;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/taobao/dp/service/b$a;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/taobao/dp/service/b$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/taobao/dp/service/b$a;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/dp/a/c;->b([BLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/taobao/dp/a/d;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "781f5eb6"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "2f1a3871"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/taobao/dp/service/b$a;

    invoke-direct {v0, v3, v2}, Lcom/taobao/dp/service/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "com.ut.device.UTDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getUtdid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "unknown utdid"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getUTDID2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public static a(Lcom/taobao/dp/service/b$a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/dp/client/a;)V
    .locals 3

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "781f5eb6"

    iget-object v2, p0, Lcom/taobao/dp/service/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "2f1a3871"

    iget-object v2, p0, Lcom/taobao/dp/service/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/a/d;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, p1, p2, p3}, Lcom/taobao/dp/a/c;->a([BLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "UUID_APP"

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/taobao/dp/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()J
    .locals 5

    const-wide/16 v0, -0x1

    const-string/jumbo v2, "HARD-INFO"

    const-string/jumbo v3, "updateTime"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/taobao/dp/util/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertSystemSettings cache uuid"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/dp/bean/TDMessage;
    .locals 2

    iget-object v0, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/taobao/dp/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p2, p3}, Lcom/taobao/dp/service/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/taobao/dp/bean/TDMessage;

    invoke-direct {v1}, Lcom/taobao/dp/bean/TDMessage;-><init>()V

    invoke-virtual {v1, v0}, Lcom/taobao/dp/bean/TDMessage;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/taobao/dp/bean/TDMessage;->setAppId(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/dp/service/b;->a(Lcom/taobao/dp/bean/TDMessage;)Lcom/taobao/dp/bean/TDMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/taobao/dp/bean/ServiceData;

    invoke-direct {v1}, Lcom/taobao/dp/bean/ServiceData;-><init>()V

    invoke-virtual {v1, p2}, Lcom/taobao/dp/bean/ServiceData;->setApp(Ljava/lang/String;)V

    const-string/jumbo v2, "1.4.2"

    invoke-virtual {v1, v2}, Lcom/taobao/dp/bean/ServiceData;->setVersion(Ljava/lang/String;)V

    const-string/jumbo v2, "com.taobao.tdp"

    invoke-virtual {v1, v2}, Lcom/taobao/dp/bean/ServiceData;->setService(Ljava/lang/String;)V

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Lcom/taobao/dp/bean/ServiceData;->setOs(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/taobao/dp/bean/ServiceData;->setPayload(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/taobao/dp/bean/ServiceData;->setTimestamp(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/taobao/dp/bean/ServiceData;->getService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/dp/bean/ServiceData;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/dp/bean/ServiceData;->getApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/dp/bean/ServiceData;->getOs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/dp/bean/ServiceData;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v2, p2, p3, v3}, Lcom/taobao/dp/a/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/dp/bean/ServiceData;->setSignature(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/dp/util/f;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/util/e;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "com.ut.device.UTDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getUtdid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getUTDID1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final a(Lcom/taobao/dp/client/a;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/service/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "HARD-INFO"

    const-string/jumbo v2, "hardinfo"

    invoke-static {v0, v2, v1}, Lcom/taobao/dp/util/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, v2}, Lcom/taobao/dp/a/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "hardinfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v2, "hid.dat"

    invoke-static {v2}, Lcom/taobao/dp/service/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    invoke-static {}, Lcom/taobao/dp/a/a;->a()Lcom/taobao/dp/a/a;

    invoke-static {v2}, Lcom/taobao/dp/a/a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager getLocalUuid env.getUuidAppName()="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/taobao/dp/client/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager getLocalUuid env.getUuidAuthCode()="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/taobao/dp/client/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "UUID"

    invoke-virtual {p3}, Lcom/taobao/dp/client/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/taobao/dp/util/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DeviceInfoManager getLocalUuid context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, v2}, Lcom/taobao/dp/a/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/taobao/dp/client/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DeviceInfoManager getLocalUuid"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/dp/a/a;->a()Lcom/taobao/dp/a/a;

    invoke-static {p1}, Lcom/taobao/dp/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "app"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "payload"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "service"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "os"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "timestamp"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v1, p2, p3, v2}, Lcom/taobao/dp/a/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v4, p2, p3, v1}, Lcom/taobao/dp/a/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/taobao/dp/client/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager saveExactId start env="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/taobao/dp/client/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/taobao/dp/client/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/taobao/dp/service/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lcom/taobao/dp/client/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/dp/service/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager saveUUIDLocal jsonObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager saveUUIDLocal env.getUuidAppName()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager saveUUIDLocal env.getUuidAuthCode()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager saveUUIDLocal context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager saveUUIDLocal encryptedJsonObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v2, p2, p3, v3}, Lcom/taobao/dp/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UUID"

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, v3}, Lcom/taobao/dp/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/taobao/dp/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager setAppNameAndAuthCode env.getName()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager setAppNameAndAuthCode env.getUuidAppName()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager setAppNameAndAuthCode env.getUuidAuthCode()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UUID_APP"

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v0, "UUID_APP"

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/taobao/dp/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "UUID_APP"

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lcom/taobao/dp/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/dp/service/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/dp/bean/TDMessage;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager saveUUIDLocal tdMsg.getUuid()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/dp/bean/TDMessage;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/dp/bean/TDMessage;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/taobao/dp/service/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/dp/bean/TDMessage;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/dp/service/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager saveUUIDLocal"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b(Lcom/taobao/dp/client/a;)Lcom/taobao/dp/service/b$b;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager getAppNameAndAuthCode env.getName()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager getAppNameAndAuthCode env.getUuidAppName()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager getAppNameAndAuthCode env.getUuidAuthCode()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/taobao/dp/service/b$b;

    invoke-direct {v0}, Lcom/taobao/dp/service/b$b;-><init>()V

    const-string/jumbo v1, "UUID_APP"

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "UUID_APP"

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/taobao/dp/util/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/dp/service/b$b;->a:Ljava/lang/String;

    const-string/jumbo v2, "UUID_APP"

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->f()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/taobao/dp/util/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/dp/service/b$b;->b:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, ""

    iget-object v2, v0, Lcom/taobao/dp/service/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/dp/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/dp/service/b$b;->a:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager getAppNameAndAuthCode appName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/taobao/dp/service/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager getAppNameAndAuthCode authCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/taobao/dp/service/b$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "hardinfo"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "HARD-INFO"

    const-string/jumbo v2, "hardinfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, v3}, Lcom/taobao/dp/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/taobao/dp/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "HARD-INFO"

    const-string/jumbo v1, "updateTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/dp/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string/jumbo v0, "hid.dat"

    invoke-static {}, Lcom/taobao/dp/a/a;->a()Lcom/taobao/dp/a/a;

    invoke-static {p1}, Lcom/taobao/dp/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/dp/service/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager compatUUIDCache env.getUuidAppName()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceInfoManager compatUUIDCache env.getUuidAuthCode()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v0, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/dp/service/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/dp/bean/TDMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/dp/bean/TDMessage;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/taobao/dp/service/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p4}, Lcom/taobao/dp/client/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/dp/bean/TDMessage;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/dp/service/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final c(Lcom/taobao/dp/client/a;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceInfoManager getLocalExactId start env="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/dp/service/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/service/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_3
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
