.class final Lcom/alipay/mobile/quinox/utils/CfgUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;


# instance fields
.field final synthetic val$buf:Ljava/lang/StringBuilder;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;->val$version:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;->val$buf:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBundleReadFromCfg(Lcom/alipay/mobile/quinox/bundle/a;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;->val$name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;->val$version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;->val$version:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/CfgUtil$1;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
