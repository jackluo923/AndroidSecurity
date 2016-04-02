.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$10;
.super Lcom/alipay/android/app/display/event/SubmitEventArgs;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$10;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    iput-object p2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$10;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/display/event/SubmitEventArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$10;->val$id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
