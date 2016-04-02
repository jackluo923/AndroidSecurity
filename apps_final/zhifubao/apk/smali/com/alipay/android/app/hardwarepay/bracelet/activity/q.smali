.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/q;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    check-cast p2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-virtual {p1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
