.class Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;


# instance fields
.field private final synthetic a:Landroid/net/Uri;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->d:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$0(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Z)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$1(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
