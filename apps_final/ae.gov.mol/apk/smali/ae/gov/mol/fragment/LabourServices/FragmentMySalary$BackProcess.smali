.class public Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentMySalary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMySalary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mResultResponse:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 238
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v12, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v13, v13, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringPassportNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v14, v14, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringNationality:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v15, v15, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringYearOfBirth:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Lae/gov/mol/webservices/WebServiceResponse;->getMySalaryDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 251
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 254
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 257
    .local v7, "spf1":Ljavax/xml/parsers/SAXParserFactory;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    .line 262
    .local v8, "spf2":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 263
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 264
    .local v9, "xr":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    new-instance v13, Lae/gov/xmlhandler/MySalaryDetailsHandler;

    invoke-direct {v13}, Lae/gov/xmlhandler/MySalaryDetailsHandler;-><init>()V

    invoke-static {v12, v13}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$0(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Lae/gov/xmlhandler/MySalaryDetailsHandler;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryDetailsHandler:Lae/gov/xmlhandler/MySalaryDetailsHandler;
    invoke-static {v12}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$1(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryDetailsHandler;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 266
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 267
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    const-string v12, "UTF-8"

    invoke-virtual {v2, v12}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 268
    new-instance v12, Ljava/io/StringReader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 269
    invoke-interface {v9, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryDetailsHandler:Lae/gov/xmlhandler/MySalaryDetailsHandler;
    invoke-static {v13}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$1(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryDetailsHandler;

    move-result-object v13

    invoke-virtual {v13}, Lae/gov/xmlhandler/MySalaryDetailsHandler;->getMySalaryVo()Lae/gov/mol/vo/MySalaryVo;

    move-result-object v13

    iput-object v13, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v12, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    if-nez v12, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v13, v13, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    move-object/from16 v0, p0

    iget-object v14, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v13

    iput-object v13, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    .line 275
    :cond_0
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 276
    .local v4, "sp1":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 278
    .local v10, "xr1":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    new-instance v13, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;

    invoke-direct {v13}, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;-><init>()V

    invoke-static {v12, v13}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$2(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mySalaryRadioButtonVoHandler:Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;
    invoke-static {v12}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$3(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 280
    new-instance v2, Lorg/xml/sax/InputSource;

    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 281
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v12, "UTF-8"

    invoke-virtual {v2, v12}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 282
    new-instance v12, Ljava/io/StringReader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 283
    invoke-interface {v10, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mySalaryRadioButtonVoHandler:Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;
    invoke-static {v13}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$3(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;

    move-result-object v13

    invoke-virtual {v13}, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v13

    iput-object v13, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayListRaButtonVos:Ljava/util/ArrayList;

    .line 285
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v12, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayListRaButtonVos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v13, v13, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    move-object/from16 v0, p0

    iget-object v14, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v13

    iput-object v13, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    .line 289
    :cond_1
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 290
    .local v5, "sp2":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v11

    .line 292
    .local v11, "xr2":Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    new-instance v13, Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;

    invoke-direct {v13}, Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;-><init>()V

    invoke-static {v12, v13}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$4(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryCheckBoxVoHandler:Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;
    invoke-static {v12}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$5(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 294
    new-instance v2, Lorg/xml/sax/InputSource;

    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 295
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v12, "UTF-8"

    invoke-virtual {v2, v12}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 296
    new-instance v12, Ljava/io/StringReader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 297
    invoke-interface {v11, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryCheckBoxVoHandler:Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;
    invoke-static {v13}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$5(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;

    move-result-object v13

    invoke-virtual {v13}, Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v13

    iput-object v13, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v12, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v13, v13, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    move-object/from16 v0, p0

    iget-object v14, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v13

    iput-object v13, v12, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "sp1":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "sp2":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xr":Lorg/xml/sax/XMLReader;
    .end local v10    # "xr1":Lorg/xml/sax/XMLReader;
    .end local v11    # "xr2":Lorg/xml/sax/XMLReader;
    :cond_2
    :goto_0
    const/4 v12, 0x0

    return-object v12

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 311
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    invoke-virtual {v2}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    invoke-virtual {v2}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    .line 314
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 315
    const-string v2, "dismiss in About us Pager"

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 317
    :cond_2
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v2, v2, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v2, :cond_3

    .line 318
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 340
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v2, v2, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v2, :cond_4

    .line 320
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 321
    :cond_4
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v2, v2, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v2, :cond_5

    .line 322
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    const v4, 0x7f09009a

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 325
    :cond_5
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 326
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayListRaButtonVos:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayListRaButtonVos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 328
    new-instance v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    invoke-direct {v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;-><init>()V

    .line 329
    .local v1, "mFragmentLabourServicesMySalaryDetails":Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 330
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->mMySalaryVo:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->mMySalaryRadioButtonVo:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayListRaButtonVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 332
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->mMySalaryCheckBoxVo:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 333
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->setArguments(Landroid/os/Bundle;)V

    .line 334
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 337
    .end local v0    # "mBundle":Landroid/os/Bundle;
    .end local v1    # "mFragmentLabourServicesMySalaryDetails":Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;
    :cond_6
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 243
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 244
    return-void
.end method
