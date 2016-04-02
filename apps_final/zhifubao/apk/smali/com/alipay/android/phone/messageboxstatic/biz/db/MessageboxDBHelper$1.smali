.class Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper$1;
.super Ljava/lang/Object;
.source "MessageboxDBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

.field private final synthetic val$db:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper$1;->this$0:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    iput-object p2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper$1;->val$db:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    :try_start_0
    const-string/jumbo v0, "search"

    .line 83
    const-string/jumbo v1, "Messagebox onOpen,sleep 10000 ms for index "

    .line 82
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper$1;->this$0:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper$1;->val$db:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    # invokes: Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->startIndex(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->access$0(Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
