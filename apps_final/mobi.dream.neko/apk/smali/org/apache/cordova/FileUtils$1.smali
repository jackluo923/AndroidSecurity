.class Lorg/apache/cordova/FileUtils$1;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/FileUtils;->readFileAs(Ljava/lang/String;IILorg/apache/cordova/api/CallbackContext;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/FileUtils;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$end:I

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$resultType:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lorg/apache/cordova/FileUtils;Ljava/lang/String;IIILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lorg/apache/cordova/FileUtils$1;->this$0:Lorg/apache/cordova/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/FileUtils$1;->val$filename:Ljava/lang/String;

    iput p3, p0, Lorg/apache/cordova/FileUtils$1;->val$start:I

    iput p4, p0, Lorg/apache/cordova/FileUtils$1;->val$end:I

    iput p5, p0, Lorg/apache/cordova/FileUtils$1;->val$resultType:I

    iput-object p6, p0, Lorg/apache/cordova/FileUtils$1;->val$encoding:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/cordova/FileUtils$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 932
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/FileUtils$1;->this$0:Lorg/apache/cordova/FileUtils;

    iget-object v7, p0, Lorg/apache/cordova/FileUtils$1;->val$filename:Ljava/lang/String;

    iget v8, p0, Lorg/apache/cordova/FileUtils$1;->val$start:I

    iget v9, p0, Lorg/apache/cordova/FileUtils$1;->val$end:I

    # invokes: Lorg/apache/cordova/FileUtils;->readAsBinaryHelper(Ljava/lang/String;II)[B
    invoke-static {v6, v7, v8, v9}, Lorg/apache/cordova/FileUtils;->access$000(Lorg/apache/cordova/FileUtils;Ljava/lang/String;II)[B

    move-result-object v1

    .line 935
    .local v1, "bytes":[B
    iget v6, p0, Lorg/apache/cordova/FileUtils$1;->val$resultType:I

    sparse-switch v6, :sswitch_data_0

    .line 946
    iget-object v6, p0, Lorg/apache/cordova/FileUtils$1;->val$filename:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/cordova/FileUtils$1;->this$0:Lorg/apache/cordova/FileUtils;

    iget-object v7, v7, Lorg/apache/cordova/FileUtils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {v6, v7}, Lorg/apache/cordova/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "contentType":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 948
    .local v0, "base64":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";base64,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 949
    .local v5, "s":Ljava/lang/String;
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v6, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 952
    .end local v0    # "base64":[B
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    .local v4, "result":Lorg/apache/cordova/api/PluginResult;
    :goto_0
    iget-object v6, p0, Lorg/apache/cordova/FileUtils$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v6, v4}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 959
    .end local v1    # "bytes":[B
    .end local v4    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_1
    return-void

    .line 937
    .restart local v1    # "bytes":[B
    :sswitch_0
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/cordova/FileUtils$1;->val$encoding:Ljava/lang/String;

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v6, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 938
    .restart local v4    # "result":Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 940
    .end local v4    # "result":Lorg/apache/cordova/api/PluginResult;
    :sswitch_1
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v6, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;[B)V

    .line 941
    .restart local v4    # "result":Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 943
    .end local v4    # "result":Lorg/apache/cordova/api/PluginResult;
    :sswitch_2
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v1, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;[BZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 944
    .restart local v4    # "result":Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 953
    .end local v1    # "bytes":[B
    .end local v4    # "result":Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v3

    .line 954
    .local v3, "e":Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lorg/apache/cordova/FileUtils$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v7, Lorg/apache/cordova/api/PluginResult;

    sget-object v8, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    sget v9, Lorg/apache/cordova/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    invoke-virtual {v6, v7}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_1

    .line 955
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 956
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "FileUtils"

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v6, p0, Lorg/apache/cordova/FileUtils$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v7, Lorg/apache/cordova/api/PluginResult;

    sget-object v8, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    sget v9, Lorg/apache/cordova/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    invoke-virtual {v6, v7}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_1

    .line 935
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
