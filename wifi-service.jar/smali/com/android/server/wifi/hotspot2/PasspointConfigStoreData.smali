.class public Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;
.super Ljava/lang/Object;
.source "PasspointConfigStoreData.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigStore$StoreData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;
    }
.end annotation


# static fields
.field private static final XML_TAG_CA_CERTIFICATE_ALIAS:Ljava/lang/String; = "CaCertificateAlias"

.field private static final XML_TAG_CLIENT_CERTIFICATE_ALIAS:Ljava/lang/String; = "ClientCertificateAlias"

.field private static final XML_TAG_CLIENT_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "ClientPrivateKeyAlias"

.field private static final XML_TAG_CREATOR_UID:Ljava/lang/String; = "CreatorUID"

.field private static final XML_TAG_PROVIDER_ID:Ljava/lang/String; = "ProviderID"

.field private static final XML_TAG_PROVIDER_INDEX:Ljava/lang/String; = "ProviderIndex"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_CONFIGURATION:Ljava/lang/String; = "Configuration"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_CONFIG_DATA:Ljava/lang/String; = "PasspointConfigData"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER:Ljava/lang/String; = "Provider"

.field private static final XML_TAG_SECTION_HEADER_PASSPOINT_PROVIDER_LIST:Ljava/lang/String; = "ProviderList"


# instance fields
.field private final mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

.field private final mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mSimAccessor:Lcom/android/server/wifi/SIMAccessor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    return-void
.end method

.method private deserializeProvider(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "name"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    invoke-static {p1, v10}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const/4 v0, 0x0

    aget-object v0, v10, v0

    const-string/jumbo v2, "ProviderID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "CreatorUID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "CaCertificateAlias"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v7, v11

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "ClientCertificateAlias"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v8, v11

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "ClientPrivateKeyAlias"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v9, v11

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Configuration"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected section under Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->deserializePasspointConfiguration(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Missing provider ID"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v1, :cond_9

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Missing Passpoint configuration"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private deserializeProviderList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
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
    const-string/jumbo v1, "Provider"

    invoke-static {p1, v1, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeProvider(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/wifi/hotspot2/PasspointProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private deserializeShareData(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aget-object v2, v1, v6

    if-nez v2, :cond_0

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "Missing value name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    aget-object v2, v1, v6

    const-string/jumbo v3, "ProviderIndex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviderIndex(J)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown value under share store data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method private deserializeUserData(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, v4

    const-string/jumbo v2, "ProviderList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeProviderList(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviders(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown Passpoint user store data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private resetShareData()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviderIndex(J)V

    return-void
.end method

.method private resetUserData()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->setProviders(Ljava/util/List;)V

    return-void
.end method

.method private serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hotspot2/PasspointProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "Provider"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "ProviderID"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getProviderId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CreatorUID"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getCreatorUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "CaCertificateAlias"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ClientCertificateAlias"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "ClientPrivateKeyAlias"

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getClientPrivateKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Configuration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/hotspot2/PasspointXmlUtils;->serializePasspointConfiguration(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    const-string/jumbo v0, "Configuration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "Provider"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private serializeProviderList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "ProviderList"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/hotspot2/PasspointProvider;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "ProviderList"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private serializeShareData(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "ProviderIndex"

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    invoke-interface {v1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->getProviderIndex()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private serializeUserData(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->mDataSource:Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;

    invoke-interface {v0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeProviderList(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeShareData(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->deserializeUserData(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PasspointConfigData"

    return-object v0
.end method

.method public resetData(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->resetShareData()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->resetUserData()V

    goto :goto_0
.end method

.method public serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeShareData(Lorg/xmlpull/v1/XmlSerializer;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;->serializeUserData(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0
.end method

.method public supportShareData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
