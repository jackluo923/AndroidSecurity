.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

.field private b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->a:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    return-object v0
.end method

.method public final b()Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d:Z

    return v0
.end method
