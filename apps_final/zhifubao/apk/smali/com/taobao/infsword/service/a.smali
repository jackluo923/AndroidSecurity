.class Lcom/taobao/infsword/service/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/taobao/infsword/service/AppInstall;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/infsword/service/AppInstall;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/service/a;->a:Lcom/taobao/infsword/service/AppInstall;

    iput-object p2, p0, Lcom/taobao/infsword/service/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/service/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/infsword/client/b;->a(Landroid/content/Context;)Lcom/taobao/infsword/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/infsword/client/b;->a()V

    return-void
.end method
