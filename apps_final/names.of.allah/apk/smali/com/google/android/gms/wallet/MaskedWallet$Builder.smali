.class public final Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.super Ljava/lang/Object;


# instance fields
.field final synthetic ajB:Lcom/google/android/gms/wallet/MaskedWallet;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;Lcom/google/android/gms/wallet/MaskedWallet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWallet;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/MaskedWallet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object v0
.end method

.method public final setBillingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Lcom/google/android/gms/wallet/Address;

    return-object p0
.end method

.method public final setBuyerBillingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object p0
.end method

.method public final setBuyerShippingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object p0
.end method

.method public final setEmail(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;

    return-object p0
.end method

.method public final setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiN:Ljava/lang/String;

    return-object p0
.end method

.method public final setInstrumentInfos([Lcom/google/android/gms/wallet/InstrumentInfo;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object p0
.end method

.method public final setLoyaltyWalletObjects([Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->ajz:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object p0
.end method

.method public final setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiO:Ljava/lang/String;

    return-object p0
.end method

.method public final setOfferWalletObjects([Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->ajA:[Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object p0
.end method

.method public final setPaymentDescriptions([Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:[Ljava/lang/String;

    return-object p0
.end method

.method public final setShippingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiS:Lcom/google/android/gms/wallet/Address;

    return-object p0
.end method
