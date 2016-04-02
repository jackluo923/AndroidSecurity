.class final Lcom/alipay/mobile/rome/pushservice/adapter/h;
.super Ljava/lang/Object;
.source "AlipayPushDownloadHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/pushservice/adapter/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/h;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 153
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/h;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
