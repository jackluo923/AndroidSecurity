.class public Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static initial(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u521d\u59cb\u5316Iconfont\u8fd0\u884c\u73af\u5883,\u4e0d\u5141\u8bb8context\u4e3a\u7a7a."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->a:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->b:Z

    return v0
.end method
