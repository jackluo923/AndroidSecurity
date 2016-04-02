.class final Lcom/alipay/android/app/hardwarepay/bracelet/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/m;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/m;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/n;->a:Lcom/alipay/android/app/hardwarepay/bracelet/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x2

    const-string/jumbo v1, "query"

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/Object;)V

    return-void
.end method
