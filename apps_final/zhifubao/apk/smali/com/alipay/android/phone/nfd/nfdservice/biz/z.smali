.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/y;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/y;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/y;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/z;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
