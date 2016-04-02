.class public abstract Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# static fields
.field public static final SERVICE_TYPE_FREE_WIFI_DEBUG:Ljava/lang/String; = "wifidaily"

.field public static final SERVICE_TYPE_FREE_WIFI_ONLINE:Ljava/lang/String; = "wifionline"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract decrypt(Landroid/content/ContextWrapper;[B)[B
.end method

.method public abstract decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
.end method

.method public abstract dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract dynamicDecrypt(Landroid/content/ContextWrapper;[B)[B
.end method

.method public abstract dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract dynamicEncrypt(Landroid/content/ContextWrapper;[B)[B
.end method

.method public abstract encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt(Landroid/content/ContextWrapper;[B)[B
.end method

.method public abstract encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
.end method
