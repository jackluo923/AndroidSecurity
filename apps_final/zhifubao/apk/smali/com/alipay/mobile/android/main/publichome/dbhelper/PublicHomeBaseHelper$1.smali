.class Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper$1;
.super Ljava/lang/Object;
.source "PublicHomeBaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field final synthetic this$0:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper$1;->this$0:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper$1;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper$1;->this$0:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper$1;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 726
    return-void

    .line 722
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
