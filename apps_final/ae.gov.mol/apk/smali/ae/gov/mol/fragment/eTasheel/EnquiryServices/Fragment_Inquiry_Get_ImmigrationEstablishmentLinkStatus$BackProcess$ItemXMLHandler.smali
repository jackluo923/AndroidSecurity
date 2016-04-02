.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemXMLHandler"
.end annotation


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentTag:Ljava/lang/String;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field final synthetic this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)V
    .locals 1

    .prologue
    .line 226
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 227
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 255
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->isDataRecieved:Z

    .line 258
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "MOLCOMCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMCODE:Ljava/lang/String;

    .line 277
    :cond_2
    :goto_0
    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "MOLCOMNAMEARB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMNAMEARB:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "MOLCOMNAMEENG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMNAMEENG:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "MOICOMCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMCODE:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "MOICOMNAMEARB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMNAMEARB:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "MOICOMNAMEENG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMNAMEENG:Ljava/lang/String;

    goto :goto_0

    .line 270
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrSTATUS:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_9
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "INTSTATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 273
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrINTSTATUS:Ljava/lang/String;

    goto/16 :goto_0

    .line 274
    :cond_a
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "REMARKS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->this$1:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrREMARK:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 245
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 234
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 235
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 236
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;->currentTag:Ljava/lang/String;

    .line 237
    return-void
.end method
