.class final Lcom/google/zxing/client/android/encode/QRCodeEncoder;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE:I = -0x1

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private contents:Ljava/lang/String;

.field private final dimension:I

.field private displayContents:Ljava/lang/String;

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;

.field private final useVCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dimension"    # I
    .param p4, "useVCard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Lcom/google/zxing/FakeR;

    invoke-direct {v1, p1}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    .line 76
    iput-object p1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    .line 77
    iput p3, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->dimension:I

    .line 78
    iput-boolean p4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeContentsFromZXingIntent(Landroid/content/Intent;)Z

    .line 85
    return-void
.end method

.method private encodeContentsFromShareIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeFromStreamExtra(Landroid/content/Intent;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeFromTextExtras(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private encodeContentsFromZXingIntent(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 107
    const-string v4, "ENCODE_FORMAT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "formatString":Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 109
    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    invoke-static {v1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v4, v5, :cond_5

    .line 117
    :cond_1
    const-string v4, "ENCODE_TYPE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 131
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .line 121
    .restart local v2    # "type":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 122
    invoke-direct {p0, p1, v2}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V

    .line 131
    .end local v2    # "type":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    .line 124
    :cond_5
    const-string v4, "ENCODE_DATA"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 126
    iput-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 128
    iget-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v6, "string"

    const-string v7, "contents_text"

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_2

    .line 112
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private encodeFromStreamExtra(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v11, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v11, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 183
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 184
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 185
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "No extras"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 187
    :cond_0
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 188
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_1

    .line 189
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "No EXTRA_STREAM"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 194
    :cond_1
    :try_start_0
    iget-object v11, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 195
    .local v7, "stream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v1, v11, [B

    .line 198
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    if-lez v3, :cond_2

    .line 199
    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v7    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 204
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v11, Lcom/google/zxing/WriterException;

    invoke-direct {v11, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 201
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v7    # "stream":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 202
    .local v9, "vcard":[B
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v9

    const-string v13, "UTF-8"

    invoke-direct {v10, v9, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    .local v10, "vcardString":Ljava/lang/String;
    sget-object v11, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->TAG:Ljava/lang/String;

    const-string v12, "Encoding share intent content:"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v11, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->TAG:Ljava/lang/String;

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v6, Lcom/google/zxing/Result;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v10, v9, v11, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 209
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v5

    .line 210
    .local v5, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    instance-of v11, v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v11, :cond_3

    .line 211
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "Result was not an address"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 213
    :cond_3
    check-cast v5, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .end local v5    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-direct {p0, v5}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V

    .line 214
    iget-object v11, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 215
    :cond_4
    new-instance v11, Lcom/google/zxing/WriterException;

    const-string v12, "No content to encode"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 217
    :cond_5
    return-void
.end method

.method private encodeFromTextExtras(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "theContents":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 148
    const-string v2, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    if-nez v1, :cond_0

    .line 151
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    if-nez v1, :cond_0

    .line 153
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 155
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .end local v0    # "emails":[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 165
    :cond_1
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string v3, "Empty EXTRA_TEXT"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    .restart local v0    # "emails":[Ljava/lang/String;
    :cond_2
    const-string v1, "?"

    goto :goto_0

    .line 167
    .end local v0    # "emails":[Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 169
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v2, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 170
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 177
    :goto_1
    iget-object v2, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "string"

    const-string v5, "contents_text"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    .line 178
    return-void

    .line 172
    :cond_4
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_1

    .line 175
    :cond_5
    iget-object v2, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    goto :goto_1
.end method

.method private encodeQRCodeContents(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v3, "TEXT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 222
    .local v12, "data":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 223
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v18, "string"

    const-string v19, "contents_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    .line 297
    .end local v12    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v3, "EMAIL_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 229
    .restart local v12    # "data":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 231
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v18, "string"

    const-string v19, "contents_email"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto :goto_0

    .line 234
    .end local v12    # "data":Ljava/lang/String;
    :cond_2
    const-string v3, "PHONE_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 236
    .restart local v12    # "data":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 238
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v18, "string"

    const-string v19, "contents_phone"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    .end local v12    # "data":Ljava/lang/String;
    :cond_3
    const-string v3, "SMS_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 243
    .restart local v12    # "data":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 245
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v18, "string"

    const-string v19, "contents_sms"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 248
    .end local v12    # "data":Ljava/lang/String;
    :cond_4
    const-string v3, "CONTACT_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 250
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 251
    .local v11, "bundle":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 253
    const-string v3, "name"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 254
    .local v16, "name":Ljava/lang/String;
    const-string v3, "company"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "organization":Ljava/lang/String;
    const-string v3, "postal"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, "address":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    sget-object v3, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v6, "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    sget-object v3, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 258
    sget-object v3, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v17

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 260
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    sget-object v3, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .local v7, "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v17, 0x0

    :goto_2
    sget-object v3, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 262
    sget-object v3, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v17

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 264
    :cond_6
    const-string v3, "URL_KEY"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "url":Ljava/lang/String;
    const-string v3, "NOTE_KEY"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "note":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    if-eqz v3, :cond_7

    new-instance v2, Lcom/google/zxing/client/android/encode/VCardContactEncoder;

    invoke-direct {v2}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;-><init>()V

    .line 268
    .local v2, "mecardEncoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {v2 .. v9}, Lcom/google/zxing/client/android/encode/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 276
    .local v13, "encoded":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 277
    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 278
    const/4 v3, 0x1

    aget-object v3, v13, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v18, "string"

    const-string v19, "contents_contact"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 267
    .end local v2    # "mecardEncoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    .end local v13    # "encoded":[Ljava/lang/String;
    :cond_7
    new-instance v2, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;

    invoke-direct {v2}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;-><init>()V

    goto :goto_3

    .line 284
    .end local v4    # "organization":Ljava/lang/String;
    .end local v6    # "phones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "emails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "note":Ljava/lang/String;
    .end local v10    # "address":Ljava/lang/String;
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "x":I
    :cond_8
    const-string v3, "LOCATION_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 286
    .restart local v11    # "bundle":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 288
    const-string v3, "LAT"

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v14

    .line 289
    .local v14, "latitude":F
    const-string v3, "LONG"

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v11, v3, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v15

    .line 290
    .local v15, "longitude":F
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v15, v3

    if-eqz v3, :cond_0

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v18, "string"

    const-string v19, "contents_location"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private encodeQRCodeContents(Lcom/google/zxing/client/result/AddressBookParsedResult;)V
    .locals 10
    .param p1, "contact"    # Lcom/google/zxing/client/result/AddressBookParsedResult;

    .prologue
    const/4 v9, 0x1

    .line 300
    iget-boolean v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/zxing/client/android/encode/VCardContactEncoder;

    invoke-direct {v0}, Lcom/google/zxing/client/android/encode/VCardContactEncoder;-><init>()V

    .line 301
    .local v0, "encoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->toIterable([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURL()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/zxing/client/android/encode/ContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, "encoded":[Ljava/lang/String;
    aget-object v1, v8, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 310
    const/4 v1, 0x0

    aget-object v1, v8, v1

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 311
    aget-object v1, v8, v9

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "contents_contact"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    .line 314
    :cond_0
    return-void

    .line 300
    .end local v0    # "encoder":Lcom/google/zxing/client/android/encode/ContactEncoder;
    .end local v8    # "encoded":[Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;

    invoke-direct {v0}, Lcom/google/zxing/client/android/encode/MECARDContactEncoder;-><init>()V

    goto :goto_0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 357
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 358
    const-string v1, "UTF-8"

    .line 361
    :goto_1
    return-object v1

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static toIterable([Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method encodeAsBitmap()Landroid/graphics/Bitmap;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    .line 322
    .local v2, "contentsToEncode":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 323
    const/4 v7, 0x0

    .line 351
    :goto_0
    return-object v7

    .line 325
    :cond_0
    const/4 v6, 0x0

    .line 326
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 327
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 328
    new-instance v6, Ljava/util/EnumMap;

    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 329
    .restart local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_1
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 334
    .local v1, "writer":Lcom/google/zxing/MultiFormatWriter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->dimension:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->dimension:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 339
    .local v18, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 340
    .local v10, "width":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 341
    .local v14, "height":I
    mul-int v3, v10, v14

    new-array v8, v3, [I

    .line 342
    .local v8, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v14, :cond_4

    .line 343
    mul-int v17, v20, v10

    .line 344
    .local v17, "offset":I
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    .line 345
    add-int v4, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x1000000

    :goto_3
    aput v3, v8, v4

    .line 344
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 335
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v17    # "offset":I
    .end local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_0
    move-exception v16

    .line 337
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_0

    .line 345
    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v14    # "height":I
    .restart local v17    # "offset":I
    .restart local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_2
    const/4 v3, -0x1

    goto :goto_3

    .line 342
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 349
    .end local v17    # "offset":I
    .end local v19    # "x":I
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 350
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->contents:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->displayContents:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->title:Ljava/lang/String;

    return-object v0
.end method

.method isUseVCard()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->useVCard:Z

    return v0
.end method
