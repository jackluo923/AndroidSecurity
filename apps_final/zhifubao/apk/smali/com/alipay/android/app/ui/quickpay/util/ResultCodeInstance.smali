.class public Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c:Z

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->e:Z

    return-void
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    return-object v0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a:Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->e:Z

    return-void
.end method
