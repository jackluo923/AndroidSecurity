.class final Lcom/alipay/android/app/hardwarepay/bracelet/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->c:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iput p5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/tmp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->c:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->d:I

    # invokes: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->download(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$900(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownloadService:Z
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$702(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/o;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/tmp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
