.class Lcom/alipay/mobile/base/datatransfer/DataExportService$1;
.super Lcom/alipay/mobile/base/datatransfer/IDataExportService$Stub;
.source "DataExportService.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/datatransfer/DataExportService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/datatransfer/DataExportService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/datatransfer/DataExportService$1;->this$0:Lcom/alipay/mobile/base/datatransfer/DataExportService;

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/base/datatransfer/IDataExportService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dataExport(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/base/datatransfer/DataExportService$1;->this$0:Lcom/alipay/mobile/base/datatransfer/DataExportService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/datatransfer/DataExportService;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
