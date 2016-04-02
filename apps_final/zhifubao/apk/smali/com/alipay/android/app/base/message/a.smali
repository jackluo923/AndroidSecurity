.class final Lcom/alipay/android/app/base/message/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/base/message/MspMessage;

.field final synthetic b:Lcom/alipay/android/app/base/message/HandlerThreadObserver;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/base/message/HandlerThreadObserver;Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/base/message/a;->b:Lcom/alipay/android/app/base/message/HandlerThreadObserver;

    iput-object p2, p0, Lcom/alipay/android/app/base/message/a;->a:Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/base/message/a;->a:Lcom/alipay/android/app/base/message/MspMessage;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method
