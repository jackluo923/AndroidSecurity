.class public final Lcom/taobao/wireless/security/adapter/i/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/i/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/i/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->isRootNative()Z

    move-result v0

    return v0
.end method
