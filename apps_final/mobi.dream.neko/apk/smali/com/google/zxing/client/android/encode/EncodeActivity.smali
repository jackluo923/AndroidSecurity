.class public final Lcom/google/zxing/client/android/encode/EncodeActivity;
.super Landroid/app/Activity;
.source "EncodeActivity.java"


# static fields
.field private static final MAX_BARCODE_FILENAME_LENGTH:I = 0x18

.field private static final NOT_ALPHANUMERIC:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final USE_VCARD_KEY:Ljava/lang/String; = "USE_VCARD"

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/zxing/client/android/encode/EncodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    .line 59
    const-string v0, "[^A-Za-z0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/encode/EncodeActivity;->NOT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static makeBarcodeFileName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x18

    .line 179
    sget-object v1, Lcom/google/zxing/client/android/encode/EncodeActivity;->NOT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    return-object v0
.end method

.method private share()V
    .locals 17

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    .line 120
    .local v6, "encoder":Lcom/google/zxing/client/android/encode/QRCodeEncoder;
    if-nez v6, :cond_1

    .line 121
    sget-object v12, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    const-string v13, "No existing barcode to send?"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {v6}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->getContents()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "contents":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 127
    sget-object v12, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    const-string v13, "No existing barcode to send?"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 138
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 142
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "BarcodeScanner"

    invoke-direct {v4, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v4, "bsRoot":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v12, "Barcodes"

    invoke-direct {v2, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v2, "barcodesRoot":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_3

    .line 145
    sget-object v12, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t make dir "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v12, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v13, "string"

    const-string v14, "msg_unmount_usb"

    invoke-virtual {v12, v13, v14}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/zxing/client/android/encode/EncodeActivity;->showErrorMessage(I)V

    goto :goto_0

    .line 134
    .end local v2    # "barcodesRoot":Ljava/io/File;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bsRoot":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 135
    .local v11, "we":Lcom/google/zxing/WriterException;
    sget-object v12, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 149
    .end local v11    # "we":Lcom/google/zxing/WriterException;
    .restart local v2    # "barcodesRoot":Ljava/io/File;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "bsRoot":Ljava/io/File;
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/google/zxing/client/android/encode/EncodeActivity;->makeBarcodeFileName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v1, "barcodeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 151
    const/4 v8, 0x0

    .line 153
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    if-eqz v9, :cond_4

    .line 162
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    :cond_4
    :goto_1
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    const-string v13, "mailto:"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .local v10, "intent":Landroid/content/Intent;
    const-string v12, "android.intent.extra.SUBJECT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v15, "string"

    const-string v16, "app_name"

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/zxing/client/android/encode/EncodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v12, "android.intent.extra.TEXT"

    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v12, "android.intent.extra.STREAM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const-string v12, "image/png"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/high16 v12, 0x80000

    invoke-virtual {v10, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    const/4 v12, 0x0

    invoke-static {v10, v12}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/zxing/client/android/encode/EncodeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 155
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 156
    .local v7, "fnfe":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    sget-object v12, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t access file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " due to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v12, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v13, "string"

    const-string v14, "msg_unmount_usb"

    invoke-virtual {v12, v13, v14}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/zxing/client/android/encode/EncodeActivity;->showErrorMessage(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    if-eqz v8, :cond_0

    .line 162
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 163
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 160
    .end local v7    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v8, :cond_5

    .line 162
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 165
    :cond_5
    :goto_4
    throw v12

    .line 163
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v12

    goto/16 :goto_1

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v13

    goto :goto_4

    .line 160
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 155
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private showErrorMessage(I)V
    .locals 4
    .param p1, "message"    # I

    .prologue
    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 234
    sget-object v1, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "string"

    const-string v3, "button_ok"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    new-instance v1, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v1, Lcom/google/zxing/FakeR;

    invoke-direct {v1, p0}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    .line 69
    invoke-virtual {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v1, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "layout"

    const-string v3, "encode"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/encode/EncodeActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 85
    .local v3, "menuInflater":Landroid/view/MenuInflater;
    sget-object v6, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v7, "menu"

    const-string v8, "encode"

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    iget-object v6, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->isUseVCard()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    .line 87
    .local v5, "useVcard":Z
    :goto_0
    if-eqz v5, :cond_2

    sget-object v6, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v7, "string"

    const-string v8, "menu_encode_mecard"

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "encodeNameResource":I
    :goto_1
    sget-object v6, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v7, "id"

    const-string v8, "menu_encode"

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 89
    .local v0, "encodeItem":Landroid/view/MenuItem;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 90
    invoke-virtual {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 91
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 92
    const-string v6, "ENCODE_TYPE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "type":Ljava/lang/String;
    const-string v6, "CONTACT_TYPE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    return v6

    .line 86
    .end local v0    # "encodeItem":Landroid/view/MenuItem;
    .end local v1    # "encodeNameResource":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "useVcard":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 87
    .restart local v5    # "useVcard":Z
    :cond_2
    sget-object v6, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v7, "string"

    const-string v8, "menu_encode_vcard"

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 101
    .local v1, "itemId":I
    sget-object v4, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v5, "id"

    const-string v6, "menu_share"

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->share()V

    .line 114
    :goto_0
    return v3

    .line 104
    :cond_0
    sget-object v4, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v5, "id"

    const-string v6, "menu_encode"

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    move v3, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    const-string v4, "USE_VCARD"

    iget-object v5, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->isUseVCard()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->finish()V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    move v3, v2

    .line 114
    goto :goto_0
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    const-string v11, "window"

    invoke-virtual {p0, v11}, Lcom/google/zxing/client/android/encode/EncodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 191
    .local v6, "manager":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 192
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 193
    .local v10, "width":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 194
    .local v4, "height":I
    if-ge v10, v4, :cond_0

    move v7, v10

    .line 195
    .local v7, "smallerDimension":I
    :goto_0
    mul-int/lit8 v11, v7, 0x7

    div-int/lit8 v7, v11, 0x8

    .line 197
    invoke-virtual {p0}, Lcom/google/zxing/client/android/encode/EncodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 198
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_1

    .line 229
    :goto_1
    return-void

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "smallerDimension":I
    :cond_0
    move v7, v4

    .line 194
    goto :goto_0

    .line 203
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "smallerDimension":I
    :cond_1
    :try_start_0
    const-string v11, "USE_VCARD"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 204
    .local v8, "useVCard":Z
    new-instance v11, Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-direct {v11, p0, v5, v7, v8}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V

    iput-object v11, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    .line 205
    iget-object v11, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-virtual {v11}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 207
    sget-object v11, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    const-string v12, "Could not encode barcode"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v11, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v12, "string"

    const-string v13, "msg_encode_contents_failed"

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/google/zxing/client/android/encode/EncodeActivity;->showErrorMessage(I)V

    .line 209
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "useVCard":Z
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Lcom/google/zxing/WriterException;
    sget-object v11, Lcom/google/zxing/client/android/encode/EncodeActivity;->TAG:Ljava/lang/String;

    const-string v12, "Could not encode barcode"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    sget-object v11, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v12, "string"

    const-string v13, "msg_encode_contents_failed"

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/google/zxing/client/android/encode/EncodeActivity;->showErrorMessage(I)V

    .line 227
    iput-object v14, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    goto :goto_1

    .line 213
    .end local v3    # "e":Lcom/google/zxing/WriterException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "useVCard":Z
    :cond_2
    :try_start_1
    sget-object v11, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v12, "id"

    const-string v13, "image_view"

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/google/zxing/client/android/encode/EncodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 214
    .local v9, "view":Landroid/widget/ImageView;
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    sget-object v11, Lcom/google/zxing/client/android/encode/EncodeActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v12, "id"

    const-string v13, "contents_text_view"

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/google/zxing/client/android/encode/EncodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, "contents":Landroid/widget/TextView;
    const-string v11, "ENCODE_SHOW_CONTENTS"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 218
    iget-object v11, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-virtual {v11}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->getDisplayContents()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v11, p0, Lcom/google/zxing/client/android/encode/EncodeActivity;->qrCodeEncoder:Lcom/google/zxing/client/android/encode/QRCodeEncoder;

    invoke-virtual {v11}, Lcom/google/zxing/client/android/encode/QRCodeEncoder;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/google/zxing/client/android/encode/EncodeActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 221
    :cond_3
    const-string v11, ""

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const-string v11, ""

    invoke-virtual {p0, v11}, Lcom/google/zxing/client/android/encode/EncodeActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
