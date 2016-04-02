.class public Lcom/alipay/mobile/common/helper/SafeDataTransferHelper;
.super Ljava/lang/Object;
.source "SafeDataTransferHelper.java"


# static fields
.field public static final NEW_CLIENT_PKG_NAME:Ljava/lang/String; = "com.alipay.android.wallet"

.field public static final NEW_CLIENT_SIGNATURE:Ljava/lang/String; = "30820249308201b2a0030201020204537afbdb300d06092a864886f70d01010505003068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e7368693020170d3134303532303036353331355a180f32313134303432363036353331355a3068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e73686930819f300d06092a864886f70d010101050003818d003081890281810091394e92a3049fe381bf49e7df284f22699b1baa17787c294b82d22a9ba73777613a3c02b84b81ad43740f65a4183b7fa9ba7d4447cdd17d9c84f3098d5044d34ccc473874ae81f6e3d6e56932a7dd0c61203d496ef55e8d3698181555784cae4395bb7e005fe88d716755a8f060603dc1ca0a2749e5bfd9ffdb1ac7cdc2bc9d0203010001300d06092a864886f70d010105050003818100118e0cf5a141a612ca9f56585a02a315afb669cad38739e9acc7cda882ad4cd3fd2a750394c53385665d54a85158beb632b8376d0c2ec07fc4424fc65d7f1fa39e366fd3d8ed13d3830a2e01b2f5546ba415859542f8629f0fb9d79d3761f82c5d4a2fafef8e30eca751dbfcb760ceab4fc9c6100fc513095a8f9045f076dc00"

.field public static final OLD_CLIENT_PKG_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final OLD_CLIENT_SIGNATURE:Ljava/lang/String; = "30820244308201ad02044b28a3c9300d06092a864886f70d01010405003068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e7368693020170d3039313231363039303932395a180f32303531303131303039303932395a3068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e73686930819f300d06092a864886f70d010101050003818d0030818902818100b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d6490203010001300d06092a864886f70d010104050003818100b6b5e3854b2d5daaa02d127195d13a1927991176047982feaa3d1625740788296443e9000fe14dfe6701d7e86be06b9282e68d4eff32b19d48555b8a0838a6e146238f048aca986715d7eab0fb445796bbd19360a7721b8d99ba04581af957a290c47302055f813862f3c40b840e95898e72a1de03b6257a1acad4b482cd815c"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 119
    :cond_0
    :goto_1
    return v0

    .line 109
    :cond_1
    aget-object v4, v2, v1

    .line 110
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    const/4 v0, 0x1

    goto :goto_1

    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static checkAndUninstallOldClient(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 54
    const/4 v1, 0x0

    .line 57
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    const-string/jumbo v2, "com.alipay.android.wallet"

    const-string/jumbo v3, "30820249308201b2a0030201020204537afbdb300d06092a864886f70d01010505003068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e7368693020170d3134303532303036353331355a180f32313134303432363036353331355a3068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e73686930819f300d06092a864886f70d010101050003818d003081890281810091394e92a3049fe381bf49e7df284f22699b1baa17787c294b82d22a9ba73777613a3c02b84b81ad43740f65a4183b7fa9ba7d4447cdd17d9c84f3098d5044d34ccc473874ae81f6e3d6e56932a7dd0c61203d496ef55e8d3698181555784cae4395bb7e005fe88d716755a8f060603dc1ca0a2749e5bfd9ffdb1ac7cdc2bc9d0203010001300d06092a864886f70d010105050003818100118e0cf5a141a612ca9f56585a02a315afb669cad38739e9acc7cda882ad4cd3fd2a750394c53385665d54a85158beb632b8376d0c2ec07fc4424fc65d7f1fa39e366fd3d8ed13d3830a2e01b2f5546ba415859542f8629f0fb9d79d3761f82c5d4a2fafef8e30eca751dbfcb760ceab4fc9c6100fc513095a8f9045f076dc00"

    invoke-static {p0, v2, v3}, Lcom/alipay/mobile/common/helper/SafeDataTransferHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    const-string/jumbo v1, "\u5df2\u5b89\u88c5\u65b0\u7248\u652f\u4ed8\u5b9d\u94b1\u5305\uff0c\u8bf7\u5378\u8f7d\u8001\u7248\u672c\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/mobile/common/helper/SafeDataTransferHelper$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/helper/SafeDataTransferHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 85
    :cond_1
    return-void

    .line 63
    :cond_2
    const-string/jumbo v2, "com.alipay.android.wallet"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    const-string/jumbo v3, "30820244308201ad02044b28a3c9300d06092a864886f70d01010405003068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e7368693020170d3039313231363039303932395a180f32303531303131303039303932395a3068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e73686930819f300d06092a864886f70d010101050003818d0030818902818100b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d6490203010001300d06092a864886f70d010104050003818100b6b5e3854b2d5daaa02d127195d13a1927991176047982feaa3d1625740788296443e9000fe14dfe6701d7e86be06b9282e68d4eff32b19d48555b8a0838a6e146238f048aca986715d7eab0fb445796bbd19360a7721b8d99ba04581af957a290c47302055f813862f3c40b840e95898e72a1de03b6257a1acad4b482cd815c"

    invoke-static {p0, v2, v3}, Lcom/alipay/mobile/common/helper/SafeDataTransferHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isNewClientHasInstalled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "com.alipay.android.wallet"

    const-string/jumbo v1, "30820249308201b2a0030201020204537afbdb300d06092a864886f70d01010505003068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e7368693020170d3134303532303036353331355a180f32313134303432363036353331355a3068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e73686930819f300d06092a864886f70d010101050003818d003081890281810091394e92a3049fe381bf49e7df284f22699b1baa17787c294b82d22a9ba73777613a3c02b84b81ad43740f65a4183b7fa9ba7d4447cdd17d9c84f3098d5044d34ccc473874ae81f6e3d6e56932a7dd0c61203d496ef55e8d3698181555784cae4395bb7e005fe88d716755a8f060603dc1ca0a2749e5bfd9ffdb1ac7cdc2bc9d0203010001300d06092a864886f70d010105050003818100118e0cf5a141a612ca9f56585a02a315afb669cad38739e9acc7cda882ad4cd3fd2a750394c53385665d54a85158beb632b8376d0c2ec07fc4424fc65d7f1fa39e366fd3d8ed13d3830a2e01b2f5546ba415859542f8629f0fb9d79d3761f82c5d4a2fafef8e30eca751dbfcb760ceab4fc9c6100fc513095a8f9045f076dc00"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/SafeDataTransferHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
