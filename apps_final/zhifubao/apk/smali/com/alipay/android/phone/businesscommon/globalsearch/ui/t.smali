.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;
.super Ljava/lang/Object;
.source "MoreChatMessageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V

    .line 86
    return-void
.end method
