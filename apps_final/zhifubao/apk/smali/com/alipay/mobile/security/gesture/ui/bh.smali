.class final Lcom/alipay/mobile/security/gesture/ui/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bh;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "MM-1225-7"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000183"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    const-string/jumbo v1, "sztkc"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bh;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V

    return-void
.end method
