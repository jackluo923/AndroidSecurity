.class Lcom/alipay/mobile/mpass/badge/BadgeManager$1;
.super Ljava/lang/Object;
.source "BadgeManager.java"

# interfaces
.implements Lcom/alipay/mobile/mpass/badge/BadgeDataTransfer$Callback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/mpass/badge/BadgeManager;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mpass/badge/BadgeManager;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager$1;->this$0:Lcom/alipay/mobile/mpass/badge/BadgeManager;

    iput-object p2, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .prologue
    .line 216
    # getter for: Lcom/alipay/mobile/mpass/badge/BadgeManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ack fail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/BadgeManager$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    return-void
.end method
