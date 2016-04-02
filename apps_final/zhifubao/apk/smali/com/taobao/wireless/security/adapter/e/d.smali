.class public final Lcom/taobao/wireless/security/adapter/e/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "((((ftp:|https:|http:)([\\Q/\\\\E])*)|())(((%[0-9a-fA-F][0-9a-fA-F])|([a-zA-Z0-9])|([\\Q$-_.+!*\'(),;?&=\\E]))+(:((%[0-9a-fA-F][0-9a-fA-F])|([a-zA-Z0-9])|([\\Q$-_.+!*\'(),;?&=\\E]))*)?@)?(((((([a-zA-Z0-9]){1}([a-zA-Z0-9\\-])*([a-zA-Z0-9]{1}))|([a-zA-Z0-9]))\\.)+(biz|com|edu|gov|info|int|mil|name|net|org|pro|aero|cat|coop|jobs|museum|travel|arpa|root|mobi|post|tel|asia|geo|kid|mail|sco|web|xxx|nato|example|invalid|test|bitnet|csnet|onion|uucp|ac|ad|ae|af|ag|ai|al|am|an|ao|aq|ar|as|at|au|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bv|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|eh|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gb|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|nz|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sj|sk|sl|sm|sn|so|sr|st|su|sv|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tp|tr|tt|tv|tw|tz|ua|ug|uk|um|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|yu|za|zm|zw))|([0-9]{1,3}(\\.[0-9]{1,3}){3}))(\\:([0-9]+))?(([\\Q/\\\\E])+((((%[0-9a-fA-F][0-9a-fA-F])|([a-zA-Z0-9])|([\\Q$-_.+\\!*\'(),;:@&=\\E]))*)(([\\Q/\\\\E])*((%[0-9a-fA-F]{2})|([a-zA-Z0-9])|([\\Q$-_.+\\!*\'(),;:@&=\\E]))*)*)(\\?((%[0-9a-fA-F]{2})|([a-zA-Z0-9])|([\\Q$-_.+!*\'(),;:@&=<>#\"{}[] ^`~|\\/\\E]))*)*)*)"

    sput-object v0, Lcom/taobao/wireless/security/adapter/e/d;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/wireless/security/adapter/e/d;->b:Ljava/lang/String;

    const-string/jumbo v0, "http://wlc.alibaba-inc.com/kgbreport"

    sput-object v0, Lcom/taobao/wireless/security/adapter/e/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)I
    .locals 2

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    new-instance v1, Lcom/taobao/dp/http/DefaultUrlRequestService;

    invoke-direct {v1}, Lcom/taobao/dp/http/DefaultUrlRequestService;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/dp/DeviceSecuritySDK;->init(Lcom/taobao/dp/http/IUrlRequestService;)V

    invoke-static {p1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/taobao/wireless/security/adapter/e/d;->c(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/taobao/wireless/security/adapter/e/d;->a(Ljava/util/HashSet;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/util/HashSet;Ljava/lang/String;Landroid/content/Context;)I
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const/4 v0, 0x4

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "urls"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "token"

    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "appname"

    const-string/jumbo v2, "mobileclient"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "3"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v6

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDataCollectionComp()Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;->getNick()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v6}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/taobao/wireless/security/adapter/e/d;->b:Ljava/lang/String;

    if-eqz v7, :cond_9

    sget-object v7, Lcom/taobao/wireless/security/adapter/e/d;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    sget-object v1, Lcom/taobao/wireless/security/adapter/e/d;->b:Ljava/lang/String;

    invoke-interface {v4, v1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    :goto_1
    const-string/jumbo v2, "sendertbaccount"

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    :cond_4
    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, ""

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v4, v5}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-nez v2, :cond_5

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, ""

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    invoke-static {v3}, Lcom/taobao/wireless/security/adapter/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "alibaba_antitrojan_client"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/wireless/security/adapter/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "t"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v6, "sign"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appkey"

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "keymd5"

    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "content"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/taobao/wireless/security/adapter/e/d;->c:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/taobao/wireless/security/adapter/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    invoke-static {v1}, Lcom/taobao/wireless/security/adapter/e/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v1, 0x64

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_8
    move-object v2, v1

    goto/16 :goto_2

    :cond_9
    move-object v4, v2

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/taobao/wireless/security/adapter/e/d;->b:Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz p0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 3

    sget-object v0, Lcom/taobao/wireless/security/adapter/e/d;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
