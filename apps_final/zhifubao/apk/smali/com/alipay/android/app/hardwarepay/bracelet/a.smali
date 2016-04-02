.class final Lcom/alipay/android/app/hardwarepay/bracelet/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->b:Landroid/content/Context;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v5, 0x64

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->b:Landroid/content/Context;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:I

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->properties:Ljava/util/Properties;
    invoke-static {v4}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v1

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)I

    sget v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v0, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)I

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callBack:Ljava/lang/Object;
    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$200(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:I

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v5

    # invokes: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->createInitReplyJson(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$300(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$400(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u94b1\u5305\u53d1\u8d77\u8bf7\u6c42\u624b\u73af\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->supportHardwarePay:I
    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    return-void
.end method
