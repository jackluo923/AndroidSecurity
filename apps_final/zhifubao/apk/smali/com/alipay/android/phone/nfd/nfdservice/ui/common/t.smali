.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iput p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->b:I

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->b:I

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
