.class public Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;
.super Ljava/lang/Object;
.source "ContactsUploader.java"


# static fields
.field public static final NO_CONTACTS:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final NO_PERMISSION:I = 0x1

.field public static final UPLOAD_FAIL:I = 0x3

.field public static final UPLOAD_SIZE_PER_PACKAGE:I = 0x7d0


# instance fields
.field private a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 38
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    .line 93
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "uploaded_contacts"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v5, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFile;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v3, "com.alipay.android.phone.businesscommon"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uploaded_contacts"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v3, v4}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {v2, v5}, Lcom/alipay/android/phone/mobilesdk/storage/utils/FileUtils;->moveFile(Ljava/io/File;Lcom/alipay/android/phone/mobilesdk/storage/file/BaseFile;)Z

    .line 99
    :cond_0
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFile;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 136
    :cond_1
    :goto_0
    return-object v0

    .line 102
    :cond_2
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;-><init>(Ljava/io/File;Landroid/content/ContextWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->available()I

    move-result v0

    .line 104
    new-array v0, v0, [B

    .line 105
    invoke-virtual {v4, v0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->read([B)I

    .line 106
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 109
    :try_start_4
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFile;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 113
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 120
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 127
    :goto_2
    :try_start_7
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 111
    :goto_3
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 113
    if-eqz v3, :cond_3

    .line 115
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 120
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 122
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 127
    :cond_4
    :goto_5
    if-eqz v4, :cond_1

    .line 129
    :try_start_b
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_0

    .line 130
    :catch_2
    move-exception v1

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    :catch_3
    move-exception v1

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-interface {v3, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 123
    :catch_4
    move-exception v1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 112
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    .line 113
    :goto_6
    if-eqz v3, :cond_5

    .line 115
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 120
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 122
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 127
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 129
    :try_start_e
    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 134
    :cond_7
    :goto_9
    throw v0

    .line 116
    :catch_5
    move-exception v2

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-interface {v3, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 123
    :catch_6
    move-exception v1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 130
    :catch_7
    move-exception v1

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 116
    :catch_8
    move-exception v1

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-interface {v3, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 123
    :catch_9
    move-exception v1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 112
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 110
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_3

    :catch_b
    move-exception v0

    move-object v3, v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_3

    :catch_c
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_3
.end method


# virtual methods
.method public getStoredList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    move-object v0, v1

    .line 78
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;

    .line 75
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    aput-object v0, v3, v4

    .line 76
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isContactsUploadPermitted()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->isContactsUploadPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public permitContactsUpload()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->permitContactsUpload(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public uploadContactsWithErrorCode(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->uploadSystemContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;ZZ)V

    .line 62
    return-void
.end method

.method public uploadContactsWithStrategy(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderCallBack;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader;->a:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->uploadSystemContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;ZZ)V

    .line 66
    return-void
.end method
