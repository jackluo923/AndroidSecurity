.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iput p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;->b:I

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;->b:I

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(ILjava/util/List;)V

    return-void
.end method
