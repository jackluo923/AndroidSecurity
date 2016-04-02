.class public Lcom/alipay/mobile/phonecashier/PhonecashierInitial;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/PhonecashierInitial;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/phonecashier/PhonecashierInitial;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/PhonecashierInitial;->a:Z

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->v()V

    :cond_0
    return-void
.end method
