.class final Lcom/alipay/android/app/source/http/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/source/http/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/source/http/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/source/http/c;->a:Lcom/alipay/android/app/source/http/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    new-instance v0, Lcom/alipay/android/app/source/http/a$a;

    iget-object v1, p0, Lcom/alipay/android/app/source/http/c;->a:Lcom/alipay/android/app/source/http/a;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/source/http/a$a;-><init>(Lcom/alipay/android/app/source/http/a;)V

    return-object v0
.end method
