.class public Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;
.super Ljava/lang/Object;
.source "PasspointVendorConfiguration.java"


# static fields
.field private static final CERTIFICATE_FINGERPRINT_BYTES:I = 0x20

.field private static DBG:Z = false

.field private static final MAX_URL_BYTES:I = 0x3ff

.field private static final SEC_FRIENDLY_NAME:Ljava/lang/String; = "Samsung Hotspot2.0 Profile"

.field public static final SSID_TYPE_DEFAULT:I = 0x0

.field public static final SSID_TYPE_SEC_TEST:I = 0x2

.field public static final SSID_TYPE_VENDOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PasspointVendorConfiguration"

.field private static final VENDOR_FRIENDLY_NAME:Ljava/lang/String; = "Vendor Hotspot2.0 Profile"

.field private static mSsidType:I


# instance fields
.field public mCaCertificateKey:Ljava/lang/String;

.field public mClientCertificate:Ljava/lang/String;

.field public mClientKeyPassword:Ljava/lang/String;

.field public mClientPrivateKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mEapType:Ljava/lang/String;

.field public mFqdn:Ljava/lang/String;

.field public mFriendlyName:Ljava/lang/String;

.field public mImsi:Ljava/lang/String;

.field private final mLocalLog:Landroid/util/LocalLog;

.field public mNonEAPInnerMethod:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPriority:Ljava/lang/String;

.field public mRealm:Ljava/lang/String;

.field public mRoamingConsortiumOis:[J

.field public mUpdateIdentifier:I

.field public mUsername:Ljava/lang/String;

.field sb:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mSsidType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/LocalLog;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->sb:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mLocalLog:Landroid/util/LocalLog;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUsername:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mNonEAPInnerMethod:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mCaCertificateKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientCertificate:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientPrivateKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientKeyPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPriority:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUpdateIdentifier:I

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRoamingConsortiumOis:[J

    return-void
.end method

.method private createCredential()Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    :cond_0
    new-instance v1, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v1}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    const/16 v2, 0x12

    const-string/jumbo v5, "SIM"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "AKA"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "AKA\'"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "PasspointVendorConfiguration"

    const-string/jumbo v6, "createCredential, mImsi is empty."

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "?"

    iput-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    :cond_2
    const-string/jumbo v5, "?"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->isUSimPresent()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->getImsi()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "00101*"

    iput-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    const-string/jumbo v5, "PasspointVendorConfiguration"

    const-string/jumbo v6, "createCredential, USIM is present, but IMSI is null. so set 00101 to IMSI"

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string/jumbo v5, "SIM"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v2, 0x12

    :goto_1
    sget-boolean v5, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->DBG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "PasspointVendorConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createCredential, mRealm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mEapType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mImsi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v3, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    invoke-virtual {v1, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    invoke-virtual {v1, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    :goto_2
    invoke-virtual {v1, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    return-object v1

    :cond_5
    sget-boolean v5, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "PasspointVendorConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createCredential, getSubscriberId from sim, IMSI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "00101*"

    iput-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "AKA"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v2, 0x17

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x32

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v5, "TLS"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v2, 0xd

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    const-string/jumbo v5, "x509v3"

    invoke-virtual {v0, v5}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setSecHS20Managed(Z)V

    invoke-virtual {v1, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    const-string/jumbo v5, "PasspointVendorConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createCredential, TLS , mRealm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mEapType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v5, "TTLS"

    iget-object v6, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUsername:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPassword:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f

    :cond_b
    const/16 v2, 0x15

    new-instance v4, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v4}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "TTLS"

    iput-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPassword:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mNonEAPInnerMethod:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "MS-CHAP-V2"

    iput-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mNonEAPInnerMethod:Ljava/lang/String;

    :cond_e
    invoke-virtual {v4, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mNonEAPInnerMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSecHS20Managed(Z)V

    invoke-virtual {v1, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    invoke-virtual {v1, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    const-string/jumbo v5, "PasspointVendorConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createCredential, TTLS, mRealm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mEapType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mUsername: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUsername:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mPassword:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mNonEAPInnerMethod:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mNonEAPInnerMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v5, "PasspointVendorConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createCredential, mEapType("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") is unknow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private createHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PasspointVendorConfiguration"

    const-string/jumbo v3, "createHomeSp fqdn is empty."

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    const-string/jumbo v2, "PasspointVendorConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createHomeSp, mFqdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mFriendlyName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mSsidType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "Vendor Hotspot2.0 Profile"

    iput-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRoamingConsortiumOis:[J

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRoamingConsortiumOis:[J

    array-length v2, v2

    if-ge v1, v2, :cond_4

    const-string/jumbo v2, "PasspointVendorConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createHomeSp, mRoamingConsortiumOis["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRoamingConsortiumOis:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mSsidType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "Samsung Hotspot2.0 Profile"

    iput-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRoamingConsortiumOis:[J

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    sget v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mSsidType:I

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setSsidType(I)V

    return-object v0
.end method

.method private createPolicy()Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    return-object v0
.end method

.method private createSubscriptionUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    return-object v0
.end method

.method private getImsi()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string/jumbo v3, "PasspointVendorConfiguration"

    const-string/jumbo v4, "getImsi, TelephonyManager is null"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PasspointVendorConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getImsi, actualSubscriberId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private isUSimPresent()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    const-string/jumbo v4, "PasspointVendorConfiguration"

    const-string/jumbo v5, "isUSimPresent, TelephonyManager is null."

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sget-boolean v4, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "PasspointVendorConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUSimPresent, simSlotCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-eq v4, v8, :cond_2

    const/4 v0, 0x1

    sget-boolean v4, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "PasspointVendorConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUSimPresent, getSubscriberId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v4, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "PasspointVendorConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUSimPresent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    return v8

    :cond_5
    return v7
.end method


# virtual methods
.method public createConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 2

    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->createHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->createCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUpdateIdentifier:I

    iget v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUpdateIdentifier:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    return-object v0
.end method

.method protected logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setSsidType(I)V
    .locals 0

    sput p1, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mSsidType:I

    return-void
.end method
