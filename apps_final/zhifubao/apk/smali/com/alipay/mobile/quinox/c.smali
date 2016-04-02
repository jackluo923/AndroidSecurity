.class final Lcom/alipay/mobile/quinox/c;
.super Ldalvik/system/DexClassLoader;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/c;->a:Lcom/alipay/mobile/quinox/b;

    invoke-direct {p0, p2, p3, p4, p5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
