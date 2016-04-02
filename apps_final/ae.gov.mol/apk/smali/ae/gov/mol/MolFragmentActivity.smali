.class public Lae/gov/mol/MolFragmentActivity;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "MolFragmentActivity.java"


# static fields
.field public static mCurrentPosition:I


# instance fields
.field app:Lae/gov/mol/MolApplication;

.field final context:Landroid/content/Context;

.field isDataRecieved:Z

.field private mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

.field public mMobilePathVo:Lae/gov/mol/vo/MobilePathVo;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mobilePath:Lae/gov/xmlhandler/MobilePath_Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 43
    iput-object p0, p0, Lae/gov/mol/MolFragmentActivity;->context:Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/MolFragmentActivity;->isDataRecieved:Z

    .line 36
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/MolFragmentActivity;)Lae/gov/mol/fragment/Fragment_Home;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    return-object v0
.end method


# virtual methods
.method public MobilePath()V
    .locals 28

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/MolFragmentActivity;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    move-object/from16 v23, v0

    const-string v24, "http://tempuri.org/"

    const-string v25, "getPath"

    const-string v26, "http://tempuri.org/getPath"

    const-string v27, "http://www.mol.gov.ae/MobileLocationWS/MObilePath.asmx"

    invoke-virtual/range {v23 .. v27}, Lae/gov/mol/webservices/WebServiceResponse;->getServiceResponse1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 222
    .local v13, "mobile":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v18

    .line 226
    .local v18, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v17

    .line 227
    .local v17, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v22

    .line 229
    .local v22, "xr":Lorg/xml/sax/XMLReader;
    new-instance v23, Lae/gov/xmlhandler/MobilePath_Handler;

    invoke-direct/range {v23 .. v23}, Lae/gov/xmlhandler/MobilePath_Handler;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/gov/mol/MolFragmentActivity;->mobilePath:Lae/gov/xmlhandler/MobilePath_Handler;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/MolFragmentActivity;->mobilePath:Lae/gov/xmlhandler/MobilePath_Handler;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 231
    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10}, Lorg/xml/sax/InputSource;-><init>()V

    .line 232
    .local v10, "inputSource":Lorg/xml/sax/InputSource;
    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 233
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 234
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/MolFragmentActivity;->mobilePath:Lae/gov/xmlhandler/MobilePath_Handler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lae/gov/xmlhandler/MobilePath_Handler;->getmMobilePath()Lae/gov/mol/vo/MobilePathVo;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/gov/mol/MolFragmentActivity;->mMobilePathVo:Lae/gov/mol/vo/MobilePathVo;

    .line 240
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/gov/mol/MolFragmentActivity;->isDataRecieved:Z

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/MolFragmentActivity;->mobilePath:Lae/gov/xmlhandler/MobilePath_Handler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lae/gov/xmlhandler/MobilePath_Handler;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 245
    .local v14, "newPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/MolFragmentActivity;->mobilePath:Lae/gov/xmlhandler/MobilePath_Handler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lae/gov/xmlhandler/MobilePath_Handler;->getVersion()Ljava/lang/String;

    move-result-object v15

    .line 247
    .local v15, "newVersion":Ljava/lang/String;
    invoke-static {v14, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {v15, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "Storage"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 254
    .local v16, "settings":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 255
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v23, "newmobilepath"

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v23, "newmobileversion"

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->intValue()I

    move-result v8

    .line 264
    .local v8, "finalVersionCode":I
    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->intValue()I

    .line 268
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/MolFragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 269
    .local v11, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/MolFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 271
    .local v9, "info":Landroid/content/pm/PackageInfo;
    iget v0, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v21, v0

    .line 273
    .local v21, "versioncode":I
    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "arabic":Ljava/lang/String;
    move/from16 v0, v21

    if-le v8, v0, :cond_0

    .line 280
    const-string v23, "ar"

    move-object/from16 v0, v23

    if-ne v5, v0, :cond_1

    .line 282
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/MolFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090063

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 283
    .local v20, "upgradeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/MolFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090064

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 284
    .local v19, "titleString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/MolFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090065

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, "messageString":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/MolFragmentActivity;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 288
    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v4, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 297
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 298
    new-instance v24, Lae/gov/mol/MolFragmentActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/gov/mol/MolFragmentActivity$2;-><init>(Lae/gov/mol/MolFragmentActivity;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 317
    .local v3, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 374
    .end local v3    # "alertDialog":Landroid/app/AlertDialog;
    .end local v4    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "arabic":Ljava/lang/String;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "finalVersionCode":I
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v11    # "manager":Landroid/content/pm/PackageManager;
    .end local v12    # "messageString":Ljava/lang/String;
    .end local v14    # "newPath":Ljava/lang/String;
    .end local v15    # "newVersion":Ljava/lang/String;
    .end local v16    # "settings":Landroid/content/SharedPreferences;
    .end local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v19    # "titleString":Ljava/lang/String;
    .end local v20    # "upgradeString":Ljava/lang/String;
    .end local v21    # "versioncode":I
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    return-void

    .line 321
    .restart local v5    # "arabic":Ljava/lang/String;
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v8    # "finalVersionCode":I
    .restart local v9    # "info":Landroid/content/pm/PackageInfo;
    .restart local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v11    # "manager":Landroid/content/pm/PackageManager;
    .restart local v14    # "newPath":Ljava/lang/String;
    .restart local v15    # "newVersion":Ljava/lang/String;
    .restart local v16    # "settings":Landroid/content/SharedPreferences;
    .restart local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v21    # "versioncode":I
    .restart local v22    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/MolFragmentActivity;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 321
    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    .restart local v4    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v23, "New Version!"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 329
    const-string v23, "New version of MOL Mobile Application available in App Store"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 330
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 331
    const-string v24, "Upgrade"

    new-instance v25, Lae/gov/mol/MolFragmentActivity$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/gov/mol/MolFragmentActivity$3;-><init>(Lae/gov/mol/MolFragmentActivity;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 351
    .restart local v3    # "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v3    # "alertDialog":Landroid/app/AlertDialog;
    .end local v4    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "arabic":Ljava/lang/String;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "finalVersionCode":I
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v11    # "manager":Landroid/content/pm/PackageManager;
    .end local v14    # "newPath":Ljava/lang/String;
    .end local v15    # "newVersion":Ljava/lang/String;
    .end local v16    # "settings":Landroid/content/SharedPreferences;
    .end local v17    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v21    # "versioncode":I
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v6

    .line 368
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-virtual {p0}, Lae/gov/mol/MolFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 129
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lae/gov/mol/MolFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/MolFragmentActivity;->finish()V

    goto :goto_0
.end method

.method public getFragmentHome()Lae/gov/mol/fragment/Fragment_Home;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lae/gov/mol/MolFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "mystring":Ljava/lang/String;
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lae/gov/mol/MolFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "mystring":Ljava/lang/String;
    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/MOLLocationManager;->stopListener()V

    .line 144
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Home;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    iget-boolean v0, v0, Lae/gov/mol/fragment/Fragment_Home;->doubleBackToExitPressedOnce:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 153
    :cond_0
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->onBackPressed()V

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/Fragment_Home;->doubleBackToExitPressedOnce:Z

    .line 157
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lae/gov/mol/MolFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lae/gov/mol/MolFragmentActivity$1;

    invoke-direct {v1, p0}, Lae/gov/mol/MolFragmentActivity$1;-><init>(Lae/gov/mol/MolFragmentActivity;)V

    .line 163
    const-wide/16 v2, 0xbb8

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 165
    :cond_2
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 188
    const-string v0, "jd"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 189
    new-instance v0, Lae/gov/mol/fragment/Fragment_Home;

    invoke-direct {v0}, Lae/gov/mol/fragment/Fragment_Home;-><init>()V

    iput-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    .line 190
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    const/4 v1, 0x1

    const/16 v2, 0x1001

    invoke-virtual {p0, v0, v1, v2}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 191
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x1001

    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lae/gov/mol/helper/MOLLocationManager;->basicInitializations(Landroid/content/Context;)V

    .line 68
    const v1, 0x7f0300dd

    invoke-virtual {p0, v1}, Lae/gov/mol/MolFragmentActivity;->setContentView(I)V

    .line 69
    new-instance v1, Lae/gov/mol/MolApplication;

    invoke-direct {v1}, Lae/gov/mol/MolApplication;-><init>()V

    iput-object v1, p0, Lae/gov/mol/MolFragmentActivity;->app:Lae/gov/mol/MolApplication;

    .line 71
    new-instance v1, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-direct {v1, p0}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lae/gov/mol/MolFragmentActivity;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 72
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 74
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 77
    new-instance v1, Lae/gov/mol/vo/MobilePathVo;

    invoke-direct {v1}, Lae/gov/mol/vo/MobilePathVo;-><init>()V

    iput-object v1, p0, Lae/gov/mol/MolFragmentActivity;->mMobilePathVo:Lae/gov/mol/vo/MobilePathVo;

    .line 78
    new-instance v1, Lae/gov/mol/fragment/Fragment_Home;

    invoke-direct {v1}, Lae/gov/mol/fragment/Fragment_Home;-><init>()V

    iput-object v1, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    .line 81
    iget-object v1, p0, Lae/gov/mol/MolFragmentActivity;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v1}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lae/gov/mol/MolFragmentActivity;->MobilePath()V

    .line 85
    iget-object v1, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {p0, v1, v2, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {p0, v1, v2, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->onDestroy()V

    .line 181
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/MOLLocationManager;->stopListener()V

    .line 182
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v0, ""

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Home;->ismLayoutOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {v2}, Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V

    .line 212
    :cond_0
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;

    const/16 v1, 0x1001

    invoke-virtual {p0, v0, v2, v1}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 213
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->onPause()V

    .line 174
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/MOLLocationManager;->stopListener()V

    .line 176
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lae/gov/mol/MolFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 101
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0601be

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 102
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    if-eqz p2, :cond_0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 106
    return-void
.end method
