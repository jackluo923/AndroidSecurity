.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$2;->this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;

    iput-object p2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$2;->this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;

    iget-object v0, v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    iget-object v1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$13$2;->val$text:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V

    return-void
.end method
