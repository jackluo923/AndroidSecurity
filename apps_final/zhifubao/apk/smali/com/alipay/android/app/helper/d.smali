.class final Lcom/alipay/android/app/helper/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/helper/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string/jumbo v0, "QUICKPAY@cashier-pre-confirm"

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    const-string/jumbo v0, "CASHIER-GSW"

    iget-object v1, p0, Lcom/alipay/android/app/helper/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->c(Ljava/lang/String;)V

    return-void
.end method
