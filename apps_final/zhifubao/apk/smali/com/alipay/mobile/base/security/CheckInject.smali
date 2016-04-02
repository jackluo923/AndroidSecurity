.class public Lcom/alipay/mobile/base/security/CheckInject;
.super Ljava/lang/Object;
.source "CheckInject.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final HOOK_APP:B = 0x1t

.field private static final HOOK_NO:B = 0x0t

.field private static final HOOK_SYS:B = 0x2t

.field private static final INNER_SCRIPT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CheckInject"

.field private static final file:Ljava/io/File;

.field private static mIsLoged:Z


# instance fields
.field private mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

.field private mContext:Landroid/content/Context;

.field private mHookReg:Ljava/lang/String;

.field private mInjectKeywords:Ljava/lang/String;

.field private mInjectPath:Ljava/lang/String;

.field private mPtracekilled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "aGFja3xpbmplY3R8aG9va3xjYWxs"

    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/alipay/mobile/base/security/CheckInject;->INNER_SCRIPT:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/base/security/CheckInject;->file:Ljava/io/File;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/base/security/CheckInject;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/base/security/CheckInject;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/security/CheckInject;->alert(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/security/CheckInject;->exit(Landroid/app/Activity;)V

    return-void
.end method

.method private alert(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 426
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    new-instance v1, Ljava/lang/String;

    .line 428
    const-string/jumbo v2, "6Z2e5rOV5pON5L2c77yM5b2T5YmN5omL5py65LiN5a6J5YWo77yB"

    .line 429
    const/4 v3, 0x0

    .line 427
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 429
    const-string/jumbo v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 427
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 431
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "56Gu5a6a"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 432
    const-string/jumbo v3, "utf-8"

    .line 431
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 432
    new-instance v2, Lcom/alipay/mobile/base/security/CheckInject$3;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/base/security/CheckInject$3;-><init>(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    sget v1, Lcom/alipay/android/tablauncher/R$string;->detail:I

    new-instance v2, Lcom/alipay/mobile/base/security/CheckInject$4;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/base/security/CheckInject$4;-><init>(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static checkInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/base/security/CheckInject$CheckResult;
    .locals 9

    .prologue
    .line 155
    new-instance v3, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;

    invoke-direct {v3}, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;-><init>()V

    .line 156
    invoke-static {}, Lcom/alipay/mobile/base/security/CheckInject;->rooted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    .line 159
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    .line 162
    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    sget-object v5, Lcom/alipay/mobile/base/security/CheckInject;->file:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 201
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :cond_1
    :goto_4
    return-object v3

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 166
    :cond_4
    :try_start_1
    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string/jumbo v5, ".so"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ".*("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/base/security/CheckInject;->INNER_SCRIPT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 173
    const-string/jumbo v7, ").*\\.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "root"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "inject so:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->setInject(Z)V

    .line 176
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->setInjectPath(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 195
    :catch_0
    move-exception v2

    .line 196
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "root"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 202
    :catch_1
    move-exception v0

    .line 203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "root"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "check\u3000Inject\u3000Error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 180
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ".*("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "."

    const-string/jumbo v8, "\\."

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 182
    const-string/jumbo v7, "/system/|/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 183
    const-string/jumbo v7, "."

    const-string/jumbo v8, "\\."

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 184
    const-string/jumbo v7, "/app_plugins_lib/|/data/app-lib/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 185
    const-string/jumbo v7, "."

    const-string/jumbo v8, "\\."

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 187
    const-string/jumbo v7, "|/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 188
    const-string/jumbo v7, "."

    const-string/jumbo v8, "\\."

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 189
    const-string/jumbo v7, "/lib/).*\\.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "root"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "inject so file error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->setInject(Z)V

    .line 193
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->setInjectPath(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2
.end method

.method private exit(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 415
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 420
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 76
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "hook_reg"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mHookReg:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mHookReg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mHookReg:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "inject_so"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectKeywords:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectKeywords:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectKeywords:Ljava/lang/String;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "inject_path"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectPath:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectPath:Ljava/lang/String;

    .line 94
    :cond_2
    const-string/jumbo v0, "true"

    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "inject_kill"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mPtracekilled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "CheckInject"

    const-string/jumbo v3, "ext:\u521d\u59cb\u5316\u662f\u5426\u8fdb\u884c\u65e5\u5fd7\u52a0\u8f7d\u5f02\u5e38"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isCh(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)B
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 323
    const/4 v3, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 326
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 328
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 363
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 336
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 338
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    move v0, v2

    .line 363
    goto :goto_1

    .line 336
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string/jumbo v4, "alipay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 341
    const-string/jumbo v4, "taobao"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 342
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "hook "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "qq"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 344
    goto :goto_1

    .line 346
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".*("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ").*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    .line 348
    goto/16 :goto_1

    .line 350
    :cond_6
    const-string/jumbo v4, "android.support"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 351
    const-string/jumbo v4, "javax."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 352
    const-string/jumbo v4, "android.webkit"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 353
    const-string/jumbo v4, "java.util"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 354
    const-string/jumbo v4, "android.widget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 355
    const-string/jumbo v4, "sun."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 356
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "qq"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 360
    :catch_1
    move-exception v0

    .line 361
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "root"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "matcherror:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static rooted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 371
    :try_start_0
    const-string/jumbo v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 373
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 374
    const-string/jumbo v5, "get"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 375
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ro.secure"

    aput-object v6, v4, v5

    .line 376
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 380
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 386
    :goto_1
    if-nez v1, :cond_3

    .line 387
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    :cond_0
    :goto_2
    return v0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "root"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "root "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 382
    :cond_1
    if-eqz v1, :cond_4

    const-string/jumbo v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    .line 383
    goto :goto_1

    .line 391
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public checkHook()V
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Lcom/alipay/mobile/base/security/CheckInject;->rooted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "CheckInject"

    const-string/jumbo v2, "not root."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject;->mHookReg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/base/security/CheckInject;->isHook(Ljava/lang/ClassLoader;Ljava/lang/String;)B

    move-result v0

    .line 107
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/base/security/CheckInject$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/security/CheckInject$1;-><init>(Lcom/alipay/mobile/base/security/CheckInject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 116
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Hook"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkInject()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectKeywords:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject;->mInjectPath:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/alipay/mobile/base/security/CheckInject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/base/security/CheckInject;->checkInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/base/security/CheckInject$CheckResult;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->isInject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-boolean v0, Lcom/alipay/mobile/base/security/CheckInject;->mIsLoged:Z

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Inject"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/base/security/CheckInject;->mIsLoged:Z

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/base/security/CheckInject;->mPtracekilled:Z

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/base/security/CheckInject$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/security/CheckInject$2;-><init>(Lcom/alipay/mobile/base/security/CheckInject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_1
    return-void
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "CheckInject"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHook(Ljava/lang/ClassLoader;Ljava/lang/String;)B
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 281
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    const-string/jumbo v3, "de.robv.android.xposed.XposedHelpers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 293
    :try_start_2
    const-string/jumbo v3, "fieldCache"

    invoke-direct {p0, v2, v3, p2}, Lcom/alipay/mobile/base/security/CheckInject;->isCh(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)B

    move-result v3

    .line 294
    if-ne v3, v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "root"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "check Xposed::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 290
    goto :goto_0

    .line 297
    :cond_1
    const-string/jumbo v4, "methodCache"

    invoke-direct {p0, v2, v4, p2}, Lcom/alipay/mobile/base/security/CheckInject;->isCh(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)B

    move-result v4

    .line 298
    if-eq v4, v0, :cond_0

    .line 301
    const-string/jumbo v5, "constructorCache"

    invoke-direct {p0, v2, v5, p2}, Lcom/alipay/mobile/base/security/CheckInject;->isCh(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 302
    if-eq v2, v0, :cond_0

    .line 305
    if-gtz v3, :cond_2

    if-gtz v4, :cond_2

    if-lez v2, :cond_3

    .line 306
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_3
    move v0, v1

    .line 311
    goto :goto_0
.end method
