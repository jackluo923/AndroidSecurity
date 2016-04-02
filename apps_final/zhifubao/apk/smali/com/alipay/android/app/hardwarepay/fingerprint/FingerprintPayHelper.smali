.class public abstract Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->b:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.hardwarepay.fingerprint.impl.FingerprintPayHelperImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    sput-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v2, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->b:Z

    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;ILjava/util/Properties;)I
.end method

.method public abstract a(Ljava/lang/String;)I
.end method

.method public abstract a(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract a(IILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/Object;ILjava/lang/String;)V
.end method

.method public abstract b()[Ljava/lang/String;
.end method

.method public abstract c()I
.end method
