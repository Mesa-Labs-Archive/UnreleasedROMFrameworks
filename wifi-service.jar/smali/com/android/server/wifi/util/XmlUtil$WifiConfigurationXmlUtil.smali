.class public Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/XmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiConfigurationXmlUtil"
.end annotation


# static fields
.field public static final XML_TAG_ALLOWED_AUTH_ALGOS:Ljava/lang/String; = "AllowedAuthAlgos"

.field public static final XML_TAG_ALLOWED_GROUP_CIPHERS:Ljava/lang/String; = "AllowedGroupCiphers"

.field public static final XML_TAG_ALLOWED_KEY_MGMT:Ljava/lang/String; = "AllowedKeyMgmt"

.field public static final XML_TAG_ALLOWED_PAIRWISE_CIPHERS:Ljava/lang/String; = "AllowedPairwiseCiphers"

.field public static final XML_TAG_ALLOWED_PROTOCOLS:Ljava/lang/String; = "AllowedProtocols"

.field public static final XML_TAG_AUTHENTICATED:Ljava/lang/String; = "Authenticated"

.field public static final XML_TAG_AUTO_RECONNECT:Ljava/lang/String; = "AutoReconnect"

.field public static final XML_TAG_AUTO_WIFI_SCORE_KEY:Ljava/lang/String; = "SEM_AUTO_WIFI_SCORE"

.field public static final XML_TAG_BSSID:Ljava/lang/String; = "BSSID"

.field public static final XML_TAG_BSSID_WHITELIST_KEY:Ljava/lang/String; = "BssidWhitelist"

.field public static final XML_TAG_BSSID_WHITELIST_UPDATE_TIME_KEY:Ljava/lang/String; = "BssidWhitelistUpdateTime"

.field public static final XML_TAG_CAPTIVE_PORTAL:Ljava/lang/String; = "CaptivePortal"

.field public static final XML_TAG_CONFIG_KEY:Ljava/lang/String; = "ConfigKey"

.field public static final XML_TAG_CREATION_TIME:Ljava/lang/String; = "CreationTime"

.field public static final XML_TAG_CREATOR_NAME:Ljava/lang/String; = "CreatorName"

.field public static final XML_TAG_CREATOR_UID:Ljava/lang/String; = "CreatorUid"

.field public static final XML_TAG_DEFAULT_GW_MAC_ADDRESS:Ljava/lang/String; = "DefaultGwMacAddress"

.field public static final XML_TAG_FQDN:Ljava/lang/String; = "FQDN"

.field public static final XML_TAG_HIDDEN_SSID:Ljava/lang/String; = "HiddenSSID"

.field public static final XML_TAG_IS_LEGACY_PASSPOINT_CONFIG:Ljava/lang/String; = "IsLegacyPasspointConfig"

.field public static final XML_TAG_LAST_CONNECTED_TIME_KEY:Ljava/lang/String; = "LastConnectedTime"

.field public static final XML_TAG_LAST_CONNECT_UID:Ljava/lang/String; = "LastConnectUid"

.field public static final XML_TAG_LAST_UPDATE_NAME:Ljava/lang/String; = "LastUpdateName"

.field public static final XML_TAG_LAST_UPDATE_UID:Ljava/lang/String; = "LastUpdateUid"

.field public static final XML_TAG_LINKED_NETWORKS_LIST:Ljava/lang/String; = "LinkedNetworksList"

.field public static final XML_TAG_LOGIN_URL:Ljava/lang/String; = "LoginUrl"

.field public static final XML_TAG_METERED_HINT:Ljava/lang/String; = "MeteredHint"

.field public static final XML_TAG_NEXT_TARGET_RSSI:Ljava/lang/String; = "NextTargetRssi"

.field public static final XML_TAG_NO_INTERNET_ACCESS_EXPECTED:Ljava/lang/String; = "NoInternetAccessExpected"

.field public static final XML_TAG_NUM_ASSOCIATION:Ljava/lang/String; = "NumAssociation"

.field public static final XML_TAG_PRE_SHARED_KEY:Ljava/lang/String; = "PreSharedKey"

.field public static final XML_TAG_PROVIDER_FRIENDLY_NAME:Ljava/lang/String; = "ProviderFriendlyName"

.field public static final XML_TAG_REQUIRE_PMF:Ljava/lang/String; = "RequirePMF"

.field public static final XML_TAG_ROAMING_CONSORTIUM_OIS:Ljava/lang/String; = "RoamingConsortiumOIs"

.field public static final XML_TAG_SAMSUNG_SPECIFIC_FLAGS:Ljava/lang/String; = "SamsungSpecificFlags"

.field public static final XML_TAG_SEM_CREATION_TIME_KEY:Ljava/lang/String; = "semCreationTime"

.field public static final XML_TAG_SEM_UPDATE_TIME_KEY:Ljava/lang/String; = "semUpdateTime"

.field public static final XML_TAG_SHARED:Ljava/lang/String; = "Shared"

.field public static final XML_TAG_SKIP_INTERNET_CHECK:Ljava/lang/String; = "SkipInternetCheck"

.field public static final XML_TAG_SSID:Ljava/lang/String; = "SSID"

.field public static final XML_TAG_STATUS:Ljava/lang/String; = "Status"

.field public static final XML_TAG_USABLE_INTERNET:Ljava/lang/String; = "UsableInternet"

.field public static final XML_TAG_USER_APPROVED:Ljava/lang/String; = "UserApproved"

.field public static final XML_TAG_USE_EXTERNAL_SCORES:Ljava/lang/String; = "UseExternalScores"

.field public static final XML_TAG_VALIDATED_INTERNET_ACCESS:Ljava/lang/String; = "ValidatedInternetAccess"

.field public static final XML_TAG_VENDOR_SSID:Ljava/lang/String; = "isVendorSpecificSsid"

.field public static final XML_TAG_WAPI_AS_CERT:Ljava/lang/String; = "WapiAsCert"

.field public static final XML_TAG_WAPI_CERT_INDEX:Ljava/lang/String; = "WapiCertIndex"

.field public static final XML_TAG_WAPI_PSK_KEY_TYPE:Ljava/lang/String; = "WapiPskKeyType"

.field public static final XML_TAG_WAPI_USER_CERT:Ljava/lang/String; = "WapiUserCert"

.field public static final XML_TAG_WEP_KEYS:Ljava/lang/String; = "WEPKeys"

.field public static final XML_TAG_WEP_TX_KEY_INDEX:Ljava/lang/String; = "WEPTxKeyIndex"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;IZ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFromXml(Lorg/xmlpull/v1/XmlPullParser;IZ)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "IZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v13, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v13}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v12, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    :cond_0
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v22

    if-nez v22, :cond_38

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    const/16 v22, 0x0

    aget-object v22, v21, v22

    if-nez v22, :cond_1

    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v23, "Missing value name"

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_1
    const/16 v22, 0x0

    aget-object v22, v21, v22

    const-string/jumbo v23, "ConfigKey"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v12, v20

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v22, "WifiXmlUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "SSID: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v23, "SSID"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v23, "BSSID"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v23, "PreSharedKey"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    if-eqz p2, :cond_36

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/util/StringUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v23, "WEPKeys"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->populateWepKeysFromXmlValue(Ljava/lang/Object;[Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v23, "WEPTxKeyIndex"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v23, "HiddenSSID"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v23, "RequirePMF"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v23, "AllowedKeyMgmt"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object/from16 v6, v20

    check-cast v6, [B

    invoke-static {v6}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v23, "AllowedProtocols"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v8, v20

    check-cast v8, [B

    invoke-static {v8}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v23, "AllowedAuthAlgos"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    move-object/from16 v4, v20

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v23, "AllowedGroupCiphers"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v5, v20

    check-cast v5, [B

    invoke-static {v5}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v23, "AllowedPairwiseCiphers"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v7, v20

    check-cast v7, [B

    invoke-static {v7}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v23, "Shared"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->shared:Z

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v23, "Status"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, 0x2

    :cond_10
    move/from16 v0, v17

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v23, "FQDN"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v23, "ProviderFriendlyName"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v23, "LinkedNetworksList"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    check-cast v20, Ljava/util/HashMap;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v23, "DefaultGwMacAddress"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v23, "ValidatedInternetAccess"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v23, "NoInternetAccessExpected"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v23, "UserApproved"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v23, "MeteredHint"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v23, "UseExternalScores"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v23, "NumAssociation"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v23, "CreatorUid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v23, "CreatorName"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v23, "CreationTime"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v23, "LastUpdateUid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v23, "LastUpdateName"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v23, "LastConnectUid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v23, "IsLegacyPasspointConfig"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v23, "RoamingConsortiumOIs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_23

    check-cast v20, [J

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v23, "isVendorSpecificSsid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_24

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v23, "AutoReconnect"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v23, "SamsungSpecificFlags"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_26

    move-object/from16 v16, v20

    check-cast v16, [B

    invoke-static/range {v16 .. v16}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v23, "SEM_AUTO_WIFI_SCORE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_27

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v23, "semCreationTime"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v13, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v23, "semUpdateTime"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_29

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v13, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v23, "LastConnectedTime"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2a

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v13, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v23, "BssidWhitelist"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2b

    move-object/from16 v9, v20

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v23, "BssidWhitelistUpdateTime"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2c

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    if-eqz v9, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-eqz v22, :cond_0

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    move-object/from16 v22, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v23

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v23, "WapiPskKeyType"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2d

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v23, "WapiCertIndex"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2e

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v23, "WapiAsCert"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2f

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2f
    const-string/jumbo v23, "WapiUserCert"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_30

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v23, "CaptivePortal"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v23, "Authenticated"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_32

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v23, "LoginUrl"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_33

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v23, "UsableInternet"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_34

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    goto/16 :goto_0

    :cond_34
    const-string/jumbo v23, "SkipInternetCheck"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_35

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    goto/16 :goto_0

    :cond_35
    const-string/jumbo v23, "NextTargetRssi"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_37

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    goto/16 :goto_0

    :cond_36
    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_37
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown value name found: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v21, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_38
    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v22

    return-object v22
.end method

.method private static populateWepKeysFromXmlValue(Ljava/lang/Object;[Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v2, v1

    array-length v3, p1

    if-eq v2, v3, :cond_1

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid Wep Keys length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    aput-object v4, p1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    goto :goto_1

    :cond_3
    aget-object v2, v1, v0

    aput-object v2, p1, v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static writeCommonElementsToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v3, "ConfigKey"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "SSID"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "BSSID"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string/jumbo v3, "PreSharedKey"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi/util/StringUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p0, v3, p2}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeWepKeysToXml(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;Z)V

    const-string/jumbo v3, "WEPTxKeyIndex"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "HiddenSSID"

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "RequirePMF"

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "AllowedKeyMgmt"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "AllowedProtocols"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "AllowedAuthAlgos"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "AllowedGroupCiphers"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "AllowedPairwiseCiphers"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "Shared"

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "isVendorSpecificSsid"

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "AutoReconnect"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "SamsungSpecificFlags"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "SEM_AUTO_WIFI_SCORE"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "semCreationTime"

    iget-wide v4, p1, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "semUpdateTime"

    iget-wide v4, p1, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "LastConnectedTime"

    iget-wide v4, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    monitor-enter v4

    :try_start_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string/jumbo v3, "BssidWhitelist"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "BssidWhitelistUpdateTime"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    const-string/jumbo v3, "PreSharedKey"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    monitor-exit v4

    :cond_2
    const-string/jumbo v3, "WapiPskKeyType"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "WapiCertIndex"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "WapiAsCert"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "WapiUserCert"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "CaptivePortal"

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "Authenticated"

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "LoginUrl"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "UsableInternet"

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "SkipInternetCheck"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "NextTargetRssi"

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static writeToXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeCommonElementsToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;Z)V

    return-void
.end method

.method public static writeToXmlForConfigStore(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeCommonElementsToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;Z)V

    const-string/jumbo v0, "Status"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "FQDN"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ProviderFriendlyName"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "LinkedNetworksList"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "DefaultGwMacAddress"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ValidatedInternetAccess"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "NoInternetAccessExpected"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UserApproved"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "MeteredHint"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "UseExternalScores"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "NumAssociation"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CreatorUid"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CreatorName"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CreationTime"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "LastUpdateUid"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "LastUpdateName"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "LastConnectUid"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "IsLegacyPasspointConfig"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "RoamingConsortiumOIs"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CaptivePortal"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "Authenticated"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "LoginUrl"

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v0, "UsableInternet"

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "SkipInternetCheck"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "NextTargetRssi"

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static writeWepKeysToXml(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-object v3, p1, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v1

    aput-object v3, v2, v1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v3, "WEPKeys"

    invoke-static {p0, v3, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_3
    const-string/jumbo v3, "WEPKeys"

    invoke-static {p0, v3, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method
