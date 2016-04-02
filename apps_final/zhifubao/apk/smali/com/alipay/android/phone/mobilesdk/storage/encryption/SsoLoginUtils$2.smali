.class Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$mcContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils$2;->val$mcContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils$2;->val$mcContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V

    return-void
.end method
