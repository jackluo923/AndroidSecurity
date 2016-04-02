.class public Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;
.super Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/b;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->a:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAppenv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getBizcontext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAppenv(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->b:Ljava/util/Map;

    return-void
.end method

.method public setBizcontext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->a:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrderExp;->b:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    :cond_1
    return-void
.end method
