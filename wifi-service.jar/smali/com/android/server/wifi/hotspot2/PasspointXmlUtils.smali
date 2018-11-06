.class public Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;
.super Ljava/lang/Object;
.source "PasspointXmlUtils.java"


# static fields
.field private static final XML_TAG_ABLE_TO_SHARE:Ljava/lang/String; = "AbleToShare"

.field private static final XML_TAG_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "CertSHA256Fingerprint"

.field private static final XML_TAG_CERT_TYPE:Ljava/lang/String; = "CertType"

.field private static final XML_TAG_CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field private static final XML_TAG_COUNTRIES:Ljava/lang/String; = "Countries"

.field private static final XML_TAG_CREATION_TIME:Ljava/lang/String; = "CreationTime"

.field private static final XML_TAG_CREDENTIAL_PRIORITY:Ljava/lang/String; = "CredentialPriority"

.field private static final XML_TAG_EAP_TYPE:Ljava/lang/String; = "EAPType"

.field private static final XML_TAG_EXCLUDED_SSID_LIST:Ljava/lang/String; = "ExcludedSSIDList"

.field private static final XML_TAG_EXPIRATION_TIME:Ljava/lang/String; = "ExpirationTime"

.field private static final XML_TAG_FQDN:Ljava/lang/String; = "FQDN"

.field private static final XML_TAG_FQDN_EXACT_MATCH:Ljava/lang/String; = "FQDNExactMatch"

.field private static final XML_TAG_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final XML_TAG_HOME_NETWORK_IDS:Ljava/lang/String; = "HomeNetworkIDs"

.field private static final XML_TAG_ICON_URL:Ljava/lang/String; = "IconURL"

.field private static final XML_TAG_IMSI:Ljava/lang/String; = "IMSI"

.field private static final XML_TAG_MACHINE_MANAGED:Ljava/lang/String; = "MachineManaged"

.field private static final XML_TAG_MATCH_ALL_OIS:Ljava/lang/String; = "MatchAllOIs"

.field private static final XML_TAG_MATCH_ANY_OIS:Ljava/lang/String; = "MatchAnyOIs"

.field private static final XML_TAG_MAXIMUM_BSS_LOAD_VALUE:Ljava/lang/String; = "MaximumBSSLoadValue"

.field private static final XML_TAG_MIN_HOME_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "MinHomeDownlinkBandwidth"

.field private static final XML_TAG_MIN_HOME_UPLINK_BANDWIDTH:Ljava/lang/String; = "MinHomeUplinkBandwidth"

.field private static final XML_TAG_MIN_ROAMING_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "MinRoamingDownlinkBandwidth"

.field private static final XML_TAG_MIN_ROAMING_UPLINK_BANDWIDTH:Ljava/lang/String; = "MinRoamingUplinkBandwidth"

.field private static final XML_TAG_NON_EAP_INNER_METHOD:Ljava/lang/String; = "NonEAPInnerMethod"

.field private static final XML_TAG_OTHER_HOME_PARTNERS:Ljava/lang/String; = "OtherHomePartners"

.field private static final XML_TAG_PASSWORD:Ljava/lang/String; = "Password"

.field private static final XML_TAG_PORTS:Ljava/lang/String; = "Ports"

.field private static final XML_TAG_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final XML_TAG_PROTO:Ljava/lang/String; = "Proto"

.field private static final XML_TAG_REALM:Ljava/lang/String; = "Realm"

.field private static final XML_TAG_RESTRICTION:Ljava/lang/String; = "Restriction"

.field private static final XML_TAG_ROAMING_CONSORTIUM_OIS:Ljava/lang/String; = "RoamingConsortiumOIs"

.field private static final XML_TAG_SECTION_HEADER_CERT_CREDENTIAL:Ljava/lang/String; = "CertCredential"

.field private static final XML_TAG_SECTION_HEADER_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final XML_TAG_SECTION_HEADER_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final XML_TAG_SECTION_HEADER_POLICY:Ljava/lang/String; = "Policy"

.field private static final XML_TAG_SECTION_HEADER_POLICY_UPDATE:Ljava/lang/String; = "PolicyUpdate"

.field private static final XML_TAG_SECTION_HEADER_PREFERRED_ROAMING_PARTNER_LIST:Ljava/lang/String; = "RoamingPartnerList"

.field private static final XML_TAG_SECTION_HEADER_PROTO_PORT:Ljava/lang/String; = "ProtoPort"

.field private static final XML_TAG_SECTION_HEADER_REQUIRED_PROTO_PORT_MAP:Ljava/lang/String; = "RequiredProtoPortMap"

.field private static final XML_TAG_SECTION_HEADER_ROAMING_PARTNER:Ljava/lang/String; = "RoamingPartner"

.field private static final XML_TAG_SECTION_HEADER_SIM_CREDENTIAL:Ljava/lang/String; = "SimCredential"

.field private static final XML_TAG_SECTION_HEADER_SUBSCRIPTION_UPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field private static final XML_TAG_SECTION_HEADER_USER_CREDENTIAL:Ljava/lang/String; = "UserCredential"

.field private static final XML_TAG_SERVER_URI:Ljava/lang/String; = "ServerURI"

.field private static final XML_TAG_SOFT_TOKEN_APP:Ljava/lang/String; = "SoftTokenApp"

.field private static final XML_TAG_SUBSCRIPTION_CREATION_TIME:Ljava/lang/String; = "SubscriptionCreationTime"

.field private static final XML_TAG_SUBSCRIPTION_EXPIRATION_TIME:Ljava/lang/String; = "SubscriptionExpirationTime"

.field private static final XML_TAG_SUBSCRIPTION_TYPE:Ljava/lang/String; = "SubscriptionType"

.field private static final XML_TAG_TRUST_ROOT_CERT_LIST:Ljava/lang/String; = "TrustRootCertList"

.field private static final XML_TAG_TRUST_ROOT_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "TrustRootCertSHA256Fingerprint"

.field private static final XML_TAG_TRUST_ROOT_CERT_URL:Ljava/lang/String; = "TrustRootCertURL"

.field private static final XML_TAG_UPDATE_IDENTIFIER:Ljava/lang/String; = "UpdateIdentifier"

.field private static final XML_TAG_UPDATE_INTERVAL:Ljava/lang/String; = "UpdateInterval"

.field private static final XML_TAG_UPDATE_METHOD:Ljava/lang/String; = "UpdateMethod"

.field private static final XML_TAG_USAGE_LIMIT_DATA_LIMIT:Ljava/lang/String; = "UsageLimitDataLimit"

.field private static final XML_TAG_USAGE_LIMIT_START_TIME:Ljava/lang/String; = "UsageLimitStartTime"

.field private static final XML_TAG_USAGE_LIMIT_TIME_LIMIT:Ljava/lang/String; = "UsageLimitTimeLimit"

.field private static final XML_TAG_USAGE_LIMIT_TIME_PERIOD:Ljava/lang/String; = "UsageLimitTimePeriod"

.field private static final XML_TAG_USERNAME:Ljava/lang/String; = "Username"

.field private static final XML_TAG_VENDOR_SSID:Ljava/lang/String; = "IsVendorSpecificSsid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deserializeCertCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v3, v2, v6

    if-nez v3, :cond_0

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "Missing value name"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    aget-object v3, v2, v6

    const-string/jumbo v4, "CertType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "CertSHA256Fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v1, [B

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown value under CertCredential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-object v0
.end method

.method private static deserializeCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aget-object v3, v1, v6

    const-string/jumbo v4, "CreationTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "ExpirationTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "Realm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "CheckAAAServerCertStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown value under Credential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UserCredential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeUserCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "CertCredential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeCertCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "SimCredential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeSimCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown section under Credential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    return-object v0
.end method

.method private static deserializeHomeSP(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aget-object v4, v3, v7

    if-nez v4, :cond_0

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v5, "Missing value name"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    aget-object v4, v3, v7

    const-string/jumbo v5, "FQDN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "FriendlyName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "IconURL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "HomeNetworkIDs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "MatchAllOIs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    check-cast v2, [J

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "MatchAnyOIs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    check-cast v2, [J

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "RoamingConsortiumOIs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v2, [J

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "OtherHomePartners"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "IsVendorSpecificSsid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v1, 0x0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setSsidType(I)V

    goto/16 :goto_0

    :cond_a
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown data under HomeSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    :cond_c
    return-object v0
.end method

.method public static deserializePasspointConfiguration(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string/jumbo v4, "UpdateIdentifier"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "CredentialPriority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "TrustRootCertList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "SubscriptionCreationTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "SubscriptionExpirationTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "SubscriptionType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "UsageLimitTimePeriod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "UsageLimitStartTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "UsageLimitDataLimit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "UsageLimitTimeLimit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    goto/16 :goto_0

    :cond_9
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown value under PasspointConfiguration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HomeSP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeHomeSP(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "Credential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v4, "Policy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializePolicy(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v4, "SubscriptionUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeUpdateParameter(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    goto/16 :goto_0

    :cond_e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown section under PasspointConfiguration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    return-object v0
.end method

.method private static deserializePolicy(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v1}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string/jumbo v4, "MinHomeDownlinkBandwidth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "MinHomeUplinkBandwidth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "MinRoamingDownlinkBandwidth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "MinRoamingUplinkBandwidth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "ExcludedSSIDList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "MaximumBSSLoadValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RequiredProtoPortMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeProtoPortMap(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "PolicyUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeUpdateParameter(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "RoamingPartnerList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown section under Policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    return-object v1
.end method

.method private static deserializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string/jumbo v1, "RoamingPartner"

    invoke-static {p0, v1, p1}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializeRoamingPartner(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static deserializeProtoPortMap(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string/jumbo v3, "ProtoPort"

    invoke-static {p0, v3, p1}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Proto"

    invoke-static {p0, v3}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "Ports"

    invoke-static {p0, v3}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static deserializeRoamingPartner(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v3, v2, v6

    if-nez v3, :cond_0

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "Missing value name"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    aget-object v3, v2, v6

    const-string/jumbo v4, "FQDN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "FQDNExactMatch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "Priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "Countries"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown value under RoamingPartner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    return-object v0
.end method

.method private static deserializeSimCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v3, v2, v6

    if-nez v3, :cond_0

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "Missing value name"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    aget-object v3, v2, v6

    const-string/jumbo v4, "IMSI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "EAPType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown value under CertCredential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    return-object v0
.end method

.method private static deserializeUpdateParameter(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v3, v2, v6

    if-nez v3, :cond_0

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "Missing value name"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    aget-object v3, v2, v6

    const-string/jumbo v4, "UpdateInterval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "UpdateMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "Restriction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "ServerURI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "Username"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "Password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "TrustRootCertURL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "TrustRootCertSHA256Fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v1, [B

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    goto/16 :goto_0

    :cond_8
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown value under UpdateParameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    return-object v0
.end method

.method private static deserializeUserCredential(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v3, v2, v6

    if-nez v3, :cond_0

    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "Missing value name"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    aget-object v3, v2, v6

    const-string/jumbo v4, "Username"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "Password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "MachineManaged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "SoftTokenApp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "AbleToShare"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "EAPType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "NonEAPInnerMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown value under UserCredential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    return-object v0
.end method

.method private static isValueElement(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "name"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static serializeCertCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "CertCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "CertType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CertSHA256Fingerprint"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertSha256Fingerprint()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CertCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private static serializeCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "Credential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "CreationTime"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCreationTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ExpirationTime"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getExpirationTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "Realm"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CheckAAAServerCertStatus"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCheckAaaServerCertStatus()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeUserCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeCertCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeSimCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    const-string/jumbo v0, "Credential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private static serializeHomeSp(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "HomeSP"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "FQDN"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "FriendlyName"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "IconURL"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "HomeNetworkIDs"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getHomeNetworkIds()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MatchAllOIs"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getMatchAllOis()[J

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MatchAnyOIs"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getMatchAnyOis()[J

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "OtherHomePartners"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getOtherHomePartners()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "RoamingConsortiumOIs"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "IsVendorSpecificSsid"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "HomeSP"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method public static serializePasspointConfiguration(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "UpdateIdentifier"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUpdateIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CredentialPriority"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredentialPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "TrustRootCertList"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getTrustRootCertList()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "SubscriptionCreationTime"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionCreationTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "SubscriptionExpirationTime"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "SubscriptionType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UsageLimitTimePeriod"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitUsageTimePeriodInMinutes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UsageLimitStartTime"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitStartTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UsageLimitDataLimit"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitDataLimit()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UsageLimitTimeLimit"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUsageLimitTimeLimitInMinutes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeHomeSp(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getPolicy()Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializePolicy(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Policy;)V

    const-string/jumbo v0, "SubscriptionUpdate"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeUpdateParameter(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    return-void
.end method

.method private static serializePolicy(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "Policy"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "MinHomeDownlinkBandwidth"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinHomeDownlinkBandwidth()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MinHomeUplinkBandwidth"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinHomeUplinkBandwidth()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MinRoamingDownlinkBandwidth"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinRoamingDownlinkBandwidth()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MinRoamingUplinkBandwidth"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMinRoamingUplinkBandwidth()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ExcludedSSIDList"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getExcludedSsidList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MaximumBSSLoadValue"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getMaximumBssLoadValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getRequiredProtoPortMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeProtoPortMap(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    const-string/jumbo v0, "PolicyUpdate"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getPolicyUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializeUpdateParameter(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Policy;->getPreferredRoamingPartnerList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    const-string/jumbo v0, "Policy"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private static serializePreferredRoamingPartnerList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "RoamingPartnerList"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    const-string/jumbo v2, "RoamingPartner"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v2, "FQDN"

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "FQDNExactMatch"

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getFqdnExactMatch()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "Priority"

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "Countries"

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->getCountries()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "RoamingPartner"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "RoamingPartnerList"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private static serializeProtoPortMap(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "RequiredProtoPortMap"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string/jumbo v2, "ProtoPort"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v2, "Proto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "Ports"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "ProtoPort"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "RequiredProtoPortMap"

    invoke-static {p0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private static serializeSimCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "SimCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "IMSI"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "EAPType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "SimCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private static serializeUpdateParameter(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "UpdateInterval"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getUpdateIntervalInMinutes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UpdateMethod"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getUpdateMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "Restriction"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getRestriction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ServerURI"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getServerUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "Username"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "Password"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getBase64EncodedPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "TrustRootCertURL"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getTrustRootCertUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "TrustRootCertSHA256Fingerprint"

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->getTrustRootCertSha256Fingerprint()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private static serializeUserCredential(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "UserCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "Username"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "Password"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MachineManaged"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getMachineManaged()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "SoftTokenApp"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getSoftTokenApp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "AbleToShare"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getAbleToShare()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "EAPType"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getEapType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "NonEAPInnerMethod"

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UserCredential"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method
