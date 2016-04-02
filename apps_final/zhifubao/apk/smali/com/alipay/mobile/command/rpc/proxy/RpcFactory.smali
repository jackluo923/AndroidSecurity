.class public Lcom/alipay/mobile/command/rpc/proxy/RpcFactory;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/alipay/mobile/command/rpc/proxy/RpcFactory;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->values()[Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->JSON:Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/alipay/mobile/command/rpc/proxy/RpcFactory;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static buildRpcProxy(Ljava/lang/Class;Lcom/alipay/mobile/command/model/SerializeTypeEnum;Lcom/alipay/mobile/command/rpc/proxy/Config;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alipay/mobile/command/model/SerializeTypeEnum;",
            "Lcom/alipay/mobile/command/rpc/proxy/Config;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/mobile/command/rpc/proxy/RpcFactory;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/alipay/mobile/command/util/exception/RpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "without Serialize imple for type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/RpcException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;

    new-instance v1, Lcom/alipay/mobile/command/rpc/serialize/JsonSerializer;

    invoke-direct {v1}, Lcom/alipay/mobile/command/rpc/serialize/JsonSerializer;-><init>()V

    invoke-direct {v0, v1, p2}, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;-><init>(Lcom/alipay/mobile/command/rpc/serialize/Serializer;Lcom/alipay/mobile/command/rpc/proxy/Config;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance v3, Lcom/alipay/mobile/command/rpc/proxy/RpcInvocationHandler;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/command/rpc/proxy/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
