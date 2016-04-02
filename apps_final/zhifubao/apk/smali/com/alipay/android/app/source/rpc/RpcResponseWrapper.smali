.class public Lcom/alipay/android/app/source/rpc/RpcResponseWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/source/IResponseWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
