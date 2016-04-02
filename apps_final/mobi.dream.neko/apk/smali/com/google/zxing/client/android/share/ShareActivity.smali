.class public final Lcom/google/zxing/client/android/share/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"


# static fields
.field private static final PICK_APP:I = 0x2

.field private static final PICK_BOOKMARK:I = 0x0

.field private static final PICK_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private final appListener:Landroid/view/View$OnClickListener;

.field private final bookmarkListener:Landroid/view/View$OnClickListener;

.field private clipboardButton:Landroid/widget/Button;

.field private final clipboardListener:Landroid/view/View$OnClickListener;

.field private final contactListener:Landroid/view/View$OnClickListener;

.field private final textListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$1;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->contactListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$2;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$2;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->bookmarkListener:Landroid/view/View$OnClickListener;

    .line 78
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$3;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$3;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->appListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$4;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$4;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/google/zxing/client/android/share/ShareActivity$5;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/ShareActivity$5;-><init>(Lcom/google/zxing/client/android/share/ShareActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->textListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/share/ShareActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/share/ShareActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/share/ShareActivity;->launchSearch(Ljava/lang/String;)V

    return-void
.end method

.method private launchSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method private static massageContactData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 295
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 296
    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 299
    const-string v0, "\r"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 301
    :cond_1
    return-object p0
.end method

.method private showContactAsBarcode(Landroid/net/Uri;)V
    .locals 25
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 179
    sget-object v3, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing contact URI as barcode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/share/ShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 184
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v8, "bundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 193
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 201
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 211
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 190
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 191
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 205
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 206
    .local v18, "id":Ljava/lang/String;
    const-string v3, "display_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 207
    .local v21, "name":Ljava/lang/String;
    const-string v3, "has_phone_number"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-lez v3, :cond_5

    const/16 v17, 0x1

    .line 211
    .local v17, "hasPhone":Z
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 215
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 216
    const-string v3, "name"

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_3
    if-eqz v17, :cond_7

    .line 220
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 225
    .local v23, "phonesCursor":Landroid/database/Cursor;
    if-eqz v23, :cond_7

    .line 227
    const/16 v16, 0x0

    .line 228
    .local v16, "foundPhone":I
    :try_start_3
    const-string v3, "data1"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 229
    .local v24, "phonesNumberColumn":I
    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    .line 230
    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 231
    .local v22, "number":Ljava/lang/String;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 232
    sget-object v3, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    :cond_4
    add-int/lit8 v16, v16, 0x1

    .line 235
    goto :goto_2

    .line 207
    .end local v16    # "foundPhone":I
    .end local v17    # "hasPhone":Z
    .end local v22    # "number":Ljava/lang/String;
    .end local v23    # "phonesCursor":Landroid/database/Cursor;
    .end local v24    # "phonesNumberColumn":I
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 211
    .end local v18    # "id":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 237
    .restart local v16    # "foundPhone":I
    .restart local v17    # "hasPhone":Z
    .restart local v18    # "id":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "phonesCursor":Landroid/database/Cursor;
    .restart local v24    # "phonesNumberColumn":I
    :cond_6
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 242
    .end local v16    # "foundPhone":I
    .end local v23    # "phonesCursor":Landroid/database/Cursor;
    .end local v24    # "phonesNumberColumn":I
    :cond_7
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 247
    .local v20, "methodsCursor":Landroid/database/Cursor;
    if-eqz v20, :cond_9

    .line 249
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 250
    const-string v3, "data1"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "data":Ljava/lang/String;
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 253
    const-string v3, "postal"

    invoke-static {v10}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 257
    .end local v10    # "data":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_9
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 266
    .local v14, "emailCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_c

    .line 268
    const/4 v15, 0x0

    .line 269
    .local v15, "foundEmail":I
    :try_start_5
    const-string v3, "data1"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 270
    .local v13, "emailColumn":I
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_b

    .line 271
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, "email":Ljava/lang/String;
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 273
    sget-object v3, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v15

    invoke-static {v12}, Lcom/google/zxing/client/android/share/ShareActivity;->massageContactData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 275
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 276
    goto :goto_3

    .line 237
    .end local v12    # "email":Ljava/lang/String;
    .end local v13    # "emailColumn":I
    .end local v14    # "emailCursor":Landroid/database/Cursor;
    .end local v15    # "foundEmail":I
    .end local v20    # "methodsCursor":Landroid/database/Cursor;
    .restart local v16    # "foundPhone":I
    .restart local v23    # "phonesCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v3

    .line 257
    .end local v16    # "foundPhone":I
    .end local v23    # "phonesCursor":Landroid/database/Cursor;
    .restart local v20    # "methodsCursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v3

    .line 278
    .restart local v13    # "emailColumn":I
    .restart local v14    # "emailCursor":Landroid/database/Cursor;
    .restart local v15    # "foundEmail":I
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v13    # "emailColumn":I
    .end local v15    # "foundEmail":I
    :cond_c
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.google.zxing.client.android.ENCODE"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v19, "intent":Landroid/content/Intent;
    const/high16 v3, 0x80000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    const-string v3, "ENCODE_TYPE"

    const-string v4, "CONTACT_TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v3, "ENCODE_DATA"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    const-string v3, "ENCODE_FORMAT"

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    sget-object v3, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending bundle for encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 278
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v15    # "foundEmail":I
    :catchall_3
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private showTextAsBarcode(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v1, Lcom/google/zxing/client/android/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing text as barcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const-string v0, "url"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->showTextAsBarcode(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->showContactAsBarcode(Landroid/net/Uri;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    new-instance v0, Lcom/google/zxing/FakeR;

    invoke-direct {v0, p0}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->fakeR:Lcom/google/zxing/FakeR;

    .line 126
    sget-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "layout"

    const-string v2, "share"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->setContentView(I)V

    .line 128
    sget-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "id"

    const-string v2, "share_contact_button"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->contactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "id"

    const-string v2, "share_bookmark_button"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->bookmarkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "id"

    const-string v2, "share_app_button"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->appListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "id"

    const-string v2, "share_clipboard_button"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget-object v0, Lcom/google/zxing/client/android/share/ShareActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "id"

    const-string v2, "share_text_view"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->textListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/share/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 140
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity;->clipboardButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    return-void
.end method
